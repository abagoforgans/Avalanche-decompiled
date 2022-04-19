contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6


mapping of struct roleAdmin;
array of struct roleMember;
array of struct stor2;
array of struct stor3;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor7;
uint256 stor8;
array of struct stor9;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor11;
array of uint256 tokenByIndex;
mapping of uint256 stor13;
mapping of uint8 stor14;
uint256 sub_bea42ea1;
uint256 stakingPower;
array of struct stor17;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor14[Mask(32, 224, arg1)])
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

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
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

function sub_3c15a3b8(?) payable {
    return stakingPower
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
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

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function classType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_bea42ea1
}

function sub_bea42ea1(?) payable {
    return sub_bea42ea1
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function stakingPower(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return stakingPower
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
    stor7[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function sub_2580cc99(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[address(msg.sender)].field_0:
        sub_bea42ea1 = arg1
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_add076b8(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[address(msg.sender)].field_0:
        stakingPower = arg1
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function tokensOfOwner(address arg1) payable {
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
        mem[32] = sha3(address(arg1), 10)
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
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
            if not stor7[stor4[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor4[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor4[arg1]] - 1 != stor11[arg1]:
            tokenOfOwnerByIndex[stor4[arg1]][stor11[arg1]] = tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1]
            stor11[stor10[stor4[arg1]][stor5[stor4[arg1]] - 1]] = stor11[arg1]
        stor11[arg1] = 0
        tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor13[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor13[arg1]] = tokenByIndex[tokenByIndex.length]
    stor13[stor12[stor12.length]] = stor13[arg1]
    stor13[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor4[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor4[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
}

function setBaseUri(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if roleAdmin[address(msg.sender)].field_0:
        if bool(stor9.length):
            if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                revert with 0, 34
            if arg1.length:
                stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor9.length = 0
                idx = 0
                while (uint255(stor9.length) * 0.5) + 31 / 32 > idx:
                    stor9[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if arg1.length:
                stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor9.length = 0
                idx = 0
                while stor9.length.field_1 + 31 / 32 > idx:
                    stor9[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    mem[ceil32(ceil32(arg1.length)) + 129 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg1.length)) + 225 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(ceil32(arg1.length)) + 161 len 42], 8297, mem[ceil32(ceil32(arg1.length)) + 289 len 66], 0, 0 >> 928,
                0
}

function sub_13c4e957(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if roleAdmin[address(msg.sender)].field_0:
        if bool(stor17.length):
            if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
                revert with 0, 34
            if arg1.length:
                stor17[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor17.length = 0
                idx = 0
                while (uint255(stor17.length) * 0.5) + 31 / 32 > idx:
                    stor17[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 0, 34
            if arg1.length:
                stor17[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor17.length = 0
                idx = 0
                while stor17.length.field_1 + 31 / 32 > idx:
                    stor17[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    mem[ceil32(ceil32(arg1.length)) + 129 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg1.length)) + 225 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(ceil32(arg1.length)) + 161 len 42], 8297, mem[ceil32(ceil32(arg1.length)) + 289 len 66], 0, 0 >> 928,
                0
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function tokenData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor17.length):
            if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor17.length):
                if 31 >= uint255(stor17.length) * 0.5:
                    mem[320] = 256 * stor17.length.field_8
                else:
                    mem[320] = uint256(stor17.field_0)
                    idx = 320
                    s = 0
                    while (uint255(stor17.length) * 0.5) + 288 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 0, 34
            if stor17.length.field_1:
                if 31 >= stor17.length.field_1:
                    mem[320] = 256 * stor17.length.field_8
                else:
                    mem[320] = uint256(stor17.field_0)
                    idx = 320
                    s = 0
                    while stor17.length.field_1 + 288 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, sub_bea42ea1, stakingPower, 96, 2 * Mask(256, -1, stor17.length), mem[320 len ceil32(uint255(stor17.length) * 0.5)]
    if bool(stor17.length) == stor17.length.field_1 < 32:
        revert with 0, 34
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor17.length):
            if 31 >= uint255(stor17.length) * 0.5:
                mem[320] = 256 * stor17.length.field_8
            else:
                mem[320] = uint256(stor17.field_0)
                idx = 320
                s = 0
                while (uint255(stor17.length) * 0.5) + 288 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 0, 34
        if stor17.length.field_1:
            if 31 >= stor17.length.field_1:
                mem[320] = 256 * stor17.length.field_8
            else:
                mem[320] = uint256(stor17.field_0)
                idx = 320
                s = 0
                while stor17.length.field_1 + 288 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, sub_bea42ea1, stakingPower, 96, stor17.length % 128, mem[320 len ceil32(stor17.length.field_1)]
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
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor13[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor11[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor11[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor11[stor10[address(arg1)][stor5[address(arg1)] - 1]] = stor11[arg3]
            stor11[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor11[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor13[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor13[arg3]] = tokenByIndex[tokenByIndex.length]
        stor13[stor12[stor12.length]] = stor13[arg3]
        stor13[arg3] = 0
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

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor8]:
        revert with 0, 'ERC721: token already minted'
    stor13[stor8] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor8
    if arg1:
        if arg1:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)]] = stor8
            stor11[stor8] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor13[stor8] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor13[stor8]] = tokenByIndex[tokenByIndex.length]
        stor13[stor12[stor12.length]] = stor13[stor8]
        stor13[stor8] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor8] = arg1
    emit Transfer(0, arg1, stor8);
    if ext_code.size(arg1):
        require ext_code.size(arg1)
        call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, stor8, 128, 0
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
    stor8++
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
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor13[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor11[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor11[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor11[stor10[address(arg1)][stor5[address(arg1)] - 1]] = stor11[arg3]
            stor11[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor11[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor13[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor13[arg3]] = tokenByIndex[tokenByIndex.length]
        stor13[stor12[stor12.length]] = stor13[arg3]
        stor13[arg3] = 0
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

function name() payable {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() payable {
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

function sub_d31c419b(?) payable {
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor17.length):
            if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor17.length):
                if 31 < uint255(stor17.length) * 0.5:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor17.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * stor17.length.field_8
        else:
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * stor17.length.field_8
        mem[ceil32(uint255(stor17.length) * 0.5) + 192 len ceil32(uint255(stor17.length) * 0.5)] = mem[128 len ceil32(uint255(stor17.length) * 0.5)]
        if ceil32(uint255(stor17.length) * 0.5) > uint255(stor17.length) * 0.5:
            mem[(uint255(stor17.length) * 0.5) + ceil32(uint255(stor17.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)], mem[(2 * ceil32(uint255(stor17.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor17.length) * 0.5)]), 
    if bool(stor17.length) == stor17.length.field_1 < 32:
        revert with 0, 34
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor17.length):
            if 31 < uint255(stor17.length) * 0.5:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while (uint255(stor17.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
            mem[128] = 256 * stor17.length.field_8
    else:
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor17.length.field_1 + ceil32(stor17.length.field_1) + 192] = 0
    return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)], mem[(2 * ceil32(stor17.length.field_1)) + 192 len 2 * ceil32(stor17.length.field_1)]), 
}

function extraData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor17.length):
            if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor17.length):
                if 31 < uint255(stor17.length) * 0.5:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor17.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * stor17.length.field_8
        else:
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * stor17.length.field_8
        mem[ceil32(uint255(stor17.length) * 0.5) + 192 len ceil32(uint255(stor17.length) * 0.5)] = mem[128 len ceil32(uint255(stor17.length) * 0.5)]
        if ceil32(uint255(stor17.length) * 0.5) > uint255(stor17.length) * 0.5:
            mem[(uint255(stor17.length) * 0.5) + ceil32(uint255(stor17.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)], mem[(2 * ceil32(uint255(stor17.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor17.length) * 0.5)]), 
    if bool(stor17.length) == stor17.length.field_1 < 32:
        revert with 0, 34
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor17.length):
            if 31 < uint255(stor17.length) * 0.5:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while (uint255(stor17.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
            mem[128] = 256 * stor17.length.field_8
    else:
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor17.length.field_1 + ceil32(stor17.length.field_1) + 192] = 0
    return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)], mem[(2 * ceil32(stor17.length.field_1)) + 192 len 2 * ceil32(stor17.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
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
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor13[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor11[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor11[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor11[stor10[address(arg1)][stor5[address(arg1)] - 1]] = stor11[arg3]
            stor11[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor11[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor13[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor13[arg3]] = tokenByIndex[tokenByIndex.length]
        stor13[stor12[stor12.length]] = stor13[arg3]
        stor13[arg3] = 0
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

function sub_e3d8bbe5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
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
    mem[0] = msg.sender
    mem[32] = sha3(0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, 0)
    if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _264 = mem[(32 * idx) + 128]
            _268 = mem[64]
            mem[64] = mem[64] + 32
            mem[_268] = 0
            if not address(_264):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor8]:
                revert with 0, 'ERC721: token already minted'
            stor13[stor8] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor8
            if address(_264):
                if not address(_264):
                    if balanceOf[address(_264)] > -2:
                        revert with 0, 17
                    balanceOf[address(_264)]++
                    mem[0] = stor8
                    mem[32] = 4
                    ownerOf[stor8] = address(_264)
                    emit Transfer(0, address(_264), stor8);
                    if ext_code.size(address(_264)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor8
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _268 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_264))
                        call address(_264).onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor8, 128, 0
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
                        _407 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_407] == Mask(32, 224, mem[_407])
                        if Mask(32, 224, mem[_407]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not address(_264):
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(_264)][stor5[address(_264)]] = stor8
                    stor11[stor8] = balanceOf[address(_264)]
                    if balanceOf[address(_264)] > -2:
                        revert with 0, 17
                    balanceOf[address(_264)]++
                    mem[0] = stor8
                    mem[32] = 4
                    ownerOf[stor8] = address(_264)
                    emit Transfer(0, address(_264), stor8);
                    if ext_code.size(address(_264)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor8
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _268 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_264))
                        call address(_264).onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor8, 128, 0
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
                        _409 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_409] == Mask(32, 224, mem[_409])
                        if Mask(32, 224, mem[_409]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor13[stor8] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor13[stor8]] = tokenByIndex[tokenByIndex.length]
                stor13[stor12[stor12.length]] = stor13[stor8]
                stor13[stor8] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(_264)] > -2:
                    revert with 0, 17
                balanceOf[address(_264)]++
                mem[0] = stor8
                mem[32] = 4
                ownerOf[stor8] = address(_264)
                emit Transfer(0, address(_264), stor8);
                if ext_code.size(address(_264)):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor8
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _268 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(_264))
                    call address(_264).onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor8, 128, 0
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
                    _411 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_411] == Mask(32, 224, mem[_411])
                    if Mask(32, 224, mem[_411]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            stor8++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[ceil32(32 * ('cd', 4).length) + 129 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(32 * ('cd', 4).length) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(32 * ('cd', 4).length) + 225 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(32 * ('cd', 4).length) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(32 * ('cd', 4).length) + 161 len 42], 8297, mem[ceil32(32 * ('cd', 4).length) + 289 len 66], 0, 0 >> 928,
                0
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 4
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        mem[96] = uint255(stor9.length) * 0.5
        if bool(stor9.length):
            if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor9.length):
                if uint255(stor9.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
                    mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 257] = mem[ceil32(uint255(stor9.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])] = mem[ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192]) > mem[ceil32(uint255(stor9.length) * 0.5) + 192]:
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 192] + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289] = 0
                    return Array(len=mem[ceil32(uint255(stor9.length) * 0.5) + 192], data=mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])]), 
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
                mem[ceil32(uint255(stor9.length) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor9.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
                    if ceil32(uint255(stor9.length) * 0.5) <= uint255(stor9.length) * 0.5:
                        mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                        mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                        if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                            _3686 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3686)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3686)]
                            if ceil32(_3686) > _3686:
                                mem[_3686 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                            return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3686) + 32], 
                        _3687 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3687)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3687)]
                        if ceil32(_3687) > _3687:
                            mem[_3687 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3687) + 32], 
                    mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                        _3688 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3688)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3688)]
                        if ceil32(_3688) > _3688:
                            mem[_3688 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3688) + 32], 
                    _3689 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3689)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3689)]
                    if ceil32(_3689) > _3689:
                        mem[_3689 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3689) + 32], 
                mem[ceil32(uint255(stor9.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor9.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
                if ceil32(uint255(stor9.length) * 0.5) <= uint255(stor9.length) * 0.5:
                    mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                        _3690 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3690)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3690)]
                        if ceil32(_3690) > _3690:
                            mem[_3690 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3690) + 32], 
                    _3691 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3691)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3691)]
                    if ceil32(_3691) > _3691:
                        mem[_3691 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3691) + 32], 
                mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                    _3692 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3692)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3692)]
                    if ceil32(_3692) > _3692:
                        mem[_3692 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3692) + 32], 
                _3693 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3693)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3693)]
                if ceil32(_3693) > _3693:
                    mem[_3693 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3693) + 32], 
            if 31 >= uint255(stor9.length) * 0.5:
                mem[128] = 256 * stor9.length.field_8
                if uint255(stor9.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
                    mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 257] = mem[ceil32(uint255(stor9.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])] = mem[ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192]) > mem[ceil32(uint255(stor9.length) * 0.5) + 192]:
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 192] + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289] = 0
                    return Array(len=mem[ceil32(uint255(stor9.length) * 0.5) + 192], data=mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])]), 
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
                mem[ceil32(uint255(stor9.length) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor9.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
                    if ceil32(uint255(stor9.length) * 0.5) <= uint255(stor9.length) * 0.5:
                        mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                        mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                        if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                            _3694 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3694)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3694)]
                            if ceil32(_3694) > _3694:
                                mem[_3694 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                            return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3694) + 32], 
                        _3695 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3695)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3695)]
                        if ceil32(_3695) > _3695:
                            mem[_3695 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3695) + 32], 
                    mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                        _3696 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3696)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3696)]
                        if ceil32(_3696) > _3696:
                            mem[_3696 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3696) + 32], 
                    _3697 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3697)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3697)]
                    if ceil32(_3697) > _3697:
                        mem[_3697 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3697) + 32], 
                mem[ceil32(uint255(stor9.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor9.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
                if ceil32(uint255(stor9.length) * 0.5) <= uint255(stor9.length) * 0.5:
                    mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                        _3698 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3698)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3698)]
                        if ceil32(_3698) > _3698:
                            mem[_3698 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3698) + 32], 
                    _3699 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3699)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3699)]
                    if ceil32(_3699) > _3699:
                        mem[_3699 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3699) + 32], 
                mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                    _3700 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3700)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3700)]
                    if ceil32(_3700) > _3700:
                        mem[_3700 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3700) + 32], 
                _3701 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3701)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3701)]
                if ceil32(_3701) > _3701:
                    mem[_3701 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3701) + 32], 
            mem[0] = 9
            mem[128] = uint256(stor9.field_0)
            idx = 128
            s = 0
            while (uint255(stor9.length) * 0.5) + 96 > idx:
                mem[idx + 32] = stor9[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if uint255(stor9.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
                mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 257] = mem[ceil32(uint255(stor9.length) * 0.5) + 192]
                mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])] = mem[ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192]) > mem[ceil32(uint255(stor9.length) * 0.5) + 192]:
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 192] + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289] = 0
                return Array(len=mem[ceil32(uint255(stor9.length) * 0.5) + 192], data=mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])]), 
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
            mem[ceil32(uint255(stor9.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor9.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
                if ceil32(uint255(stor9.length) * 0.5) <= uint255(stor9.length) * 0.5:
                    mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                        _4406 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_4406)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_4406)]
                        if ceil32(_4406) > _4406:
                            mem[_4406 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_4406) + 32], 
                    _4407 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_4407)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_4407)]
                    if ceil32(_4407) > _4407:
                        mem[_4407 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_4407) + 32], 
                mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                    _4408 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_4408)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_4408)]
                    if ceil32(_4408) > _4408:
                        mem[_4408 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_4408) + 32], 
                _4409 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_4409)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_4409)]
                if ceil32(_4409) > _4409:
                    mem[_4409 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_4409) + 32], 
            mem[ceil32(uint255(stor9.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor9.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
            if ceil32(uint255(stor9.length) * 0.5) <= uint255(stor9.length) * 0.5:
                mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                    _4410 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_4410)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_4410)]
                    if ceil32(_4410) > _4410:
                        mem[_4410 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_4410) + 32], 
                _4411 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_4411)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_4411)]
                if ceil32(_4411) > _4411:
                    mem[_4411 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_4411) + 32], 
            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                _4412 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_4412)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_4412)]
                if ceil32(_4412) > _4412:
                    mem[_4412 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_4412) + 32], 
            _4413 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_4413)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_4413)]
            if ceil32(_4413) > _4413:
                mem[_4413 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_4413) + 32], 
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if not stor9.length.field_1:
            if uint255(stor9.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
                mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 257] = mem[ceil32(uint255(stor9.length) * 0.5) + 192]
                mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])] = mem[ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192]) > mem[ceil32(uint255(stor9.length) * 0.5) + 192]:
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 192] + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289] = 0
                return Array(len=mem[ceil32(uint255(stor9.length) * 0.5) + 192], data=mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])]), 
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
            mem[ceil32(uint255(stor9.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor9.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
                if ceil32(uint255(stor9.length) * 0.5) <= uint255(stor9.length) * 0.5:
                    mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                        _3702 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3702)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3702)]
                        if ceil32(_3702) > _3702:
                            mem[_3702 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3702) + 32], 
                    _3703 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3703)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3703)]
                    if ceil32(_3703) > _3703:
                        mem[_3703 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3703) + 32], 
                mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                    _3704 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3704)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3704)]
                    if ceil32(_3704) > _3704:
                        mem[_3704 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3704) + 32], 
                _3705 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3705)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3705)]
                if ceil32(_3705) > _3705:
                    mem[_3705 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3705) + 32], 
            mem[ceil32(uint255(stor9.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor9.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
            if ceil32(uint255(stor9.length) * 0.5) <= uint255(stor9.length) * 0.5:
                mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                    _3706 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3706)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3706)]
                    if ceil32(_3706) > _3706:
                        mem[_3706 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3706) + 32], 
                _3707 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3707)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3707)]
                if ceil32(_3707) > _3707:
                    mem[_3707 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3707) + 32], 
            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                _3708 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3708)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3708)]
                if ceil32(_3708) > _3708:
                    mem[_3708 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3708) + 32], 
            _3709 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3709)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3709)]
            if ceil32(_3709) > _3709:
                mem[_3709 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3709) + 32], 
        if 31 >= stor9.length.field_1:
            mem[128] = 256 * stor9.length.field_8
            if uint255(stor9.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
                mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 257] = mem[ceil32(uint255(stor9.length) * 0.5) + 192]
                mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])] = mem[ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192]) > mem[ceil32(uint255(stor9.length) * 0.5) + 192]:
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 192] + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289] = 0
                return Array(len=mem[ceil32(uint255(stor9.length) * 0.5) + 192], data=mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])]), 
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
            mem[ceil32(uint255(stor9.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor9.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
                if ceil32(uint255(stor9.length) * 0.5) <= uint255(stor9.length) * 0.5:
                    mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                        _3710 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3710)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3710)]
                        if ceil32(_3710) > _3710:
                            mem[_3710 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3710) + 32], 
                    _3711 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3711)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3711)]
                    if ceil32(_3711) > _3711:
                        mem[_3711 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3711) + 32], 
                mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                    _3712 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3712)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3712)]
                    if ceil32(_3712) > _3712:
                        mem[_3712 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3712) + 32], 
                _3713 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3713)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3713)]
                if ceil32(_3713) > _3713:
                    mem[_3713 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3713) + 32], 
            mem[ceil32(uint255(stor9.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor9.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
            if ceil32(uint255(stor9.length) * 0.5) <= uint255(stor9.length) * 0.5:
                mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                    _3714 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3714)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3714)]
                    if ceil32(_3714) > _3714:
                        mem[_3714 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3714) + 32], 
                _3715 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3715)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3715)]
                if ceil32(_3715) > _3715:
                    mem[_3715 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3715) + 32], 
            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                _3716 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3716)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3716)]
                if ceil32(_3716) > _3716:
                    mem[_3716 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3716) + 32], 
            _3717 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_3717)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_3717)]
            if ceil32(_3717) > _3717:
                mem[_3717 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_3717) + 32], 
        mem[0] = 9
        mem[128] = uint256(stor9.field_0)
        idx = 128
        s = 0
        while stor9.length.field_1 + 96 > idx:
            mem[idx + 32] = stor9[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if uint255(stor9.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
            mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 257] = mem[ceil32(uint255(stor9.length) * 0.5) + 192]
            mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])] = mem[ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192]) > mem[ceil32(uint255(stor9.length) * 0.5) + 192]:
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 192] + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289] = 0
            return Array(len=mem[ceil32(uint255(stor9.length) * 0.5) + 192], data=mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 192])]), 
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
        mem[ceil32(uint255(stor9.length) * 0.5) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor9.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
            if ceil32(uint255(stor9.length) * 0.5) <= uint255(stor9.length) * 0.5:
                mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                    _4414 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_4414)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_4414)]
                    if ceil32(_4414) > _4414:
                        mem[_4414 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_4414) + 32], 
                _4415 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_4415)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_4415)]
                if ceil32(_4415) > _4415:
                    mem[_4415 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_4415) + 32], 
            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                _4416 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_4416)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_4416)]
                if ceil32(_4416) > _4416:
                    mem[_4416 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_4416) + 32], 
            _4417 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_4417)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_4417)]
            if ceil32(_4417) > _4417:
                mem[_4417 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_4417) + 32], 
        mem[ceil32(uint255(stor9.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor9.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
        if ceil32(uint255(stor9.length) * 0.5) <= uint255(stor9.length) * 0.5:
            mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
                _4418 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_4418)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_4418)]
                if ceil32(_4418) > _4418:
                    mem[_4418 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_4418) + 32], 
            _4419 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_4419)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_4419)]
            if ceil32(_4419) > _4419:
                mem[_4419 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_4419) + 32], 
        mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128])]
        mem[64] = mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 192] = 32
        if ceil32(mem[ceil32(uint255(stor9.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor9.length) * 0.5) + 128]:
            _4420 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_4420)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_4420)]
            if ceil32(_4420) > _4420:
                mem[_4420 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_4420) + 32], 
        _4421 = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256 len ceil32(_4421)] = mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + 192 len ceil32(_4421)]
        if ceil32(_4421) > _4421:
            mem[_4421 + mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor9.length) * 0.5) + 128] + ceil32(uint255(stor9.length) * 0.5) + ceil32(s) + (uint255(stor9.length) * 0.5) + 224 len ceil32(_4421) + 32], 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 0, 34
    mem[96] = stor9.length.field_1
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor9.length):
            if stor9.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor9.length.field_1) + 224 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
                mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 225] = 32
                mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 257] = mem[ceil32(stor9.length.field_1) + 192]
                mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 289 len ceil32(mem[ceil32(stor9.length.field_1) + 192])] = mem[ceil32(stor9.length.field_1) + 224 len ceil32(mem[ceil32(stor9.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor9.length.field_1) + 192]) <= mem[ceil32(stor9.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor9.length.field_1) + 192], data=mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 289 len ceil32(mem[ceil32(stor9.length.field_1) + 192])]), 
                mem[mem[ceil32(stor9.length.field_1) + 192] + ceil32(stor9.length.field_1) + stor9.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 257 len ceil32(mem[ceil32(stor9.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor9.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor9.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor9.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
                if ceil32(stor9.length.field_1) <= stor9.length.field_1:
                    mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                        _3718 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3718)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3718)]
                        if ceil32(_3718) > _3718:
                            mem[_3718 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3718) + 32], 
                    _3719 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3719)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3719)]
                    if ceil32(_3719) > _3719:
                        mem[_3719 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3719) + 32], 
                mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                    _3720 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3720)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3720)]
                    if ceil32(_3720) > _3720:
                        mem[_3720 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3720) + 32], 
                _3721 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3721)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3721)]
                if ceil32(_3721) > _3721:
                    mem[_3721 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3721) + 32], 
            mem[ceil32(stor9.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor9.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor9.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
            if ceil32(stor9.length.field_1) <= stor9.length.field_1:
                mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                    _3722 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3722)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3722)]
                    if ceil32(_3722) > _3722:
                        mem[_3722 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3722) + 32], 
                _3723 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3723)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[_3723 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3723) + 32], 
            mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                _3724 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3724)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3724)]
                if ceil32(_3724) > _3724:
                    mem[_3724 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3724) + 32], 
            _3725 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3725)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3725)]
            if ceil32(_3725) > _3725:
                mem[_3725 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3725) + 32], 
        if 31 >= uint255(stor9.length) * 0.5:
            mem[128] = 256 * stor9.length.field_8
            if stor9.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor9.length.field_1) + 224 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
                mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 225] = 32
                mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 257] = mem[ceil32(stor9.length.field_1) + 192]
                mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 289 len ceil32(mem[ceil32(stor9.length.field_1) + 192])] = mem[ceil32(stor9.length.field_1) + 224 len ceil32(mem[ceil32(stor9.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor9.length.field_1) + 192]) <= mem[ceil32(stor9.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor9.length.field_1) + 192], data=mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 289 len ceil32(mem[ceil32(stor9.length.field_1) + 192])]), 
                mem[mem[ceil32(stor9.length.field_1) + 192] + ceil32(stor9.length.field_1) + stor9.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 257 len ceil32(mem[ceil32(stor9.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor9.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor9.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor9.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
                if ceil32(stor9.length.field_1) <= stor9.length.field_1:
                    mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                        _3726 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3726)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3726)]
                        if ceil32(_3726) > _3726:
                            mem[_3726 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3726) + 32], 
                    _3727 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3727)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3727)]
                    if ceil32(_3727) > _3727:
                        mem[_3727 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3727) + 32], 
                mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                    _3728 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3728)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3728)]
                    if ceil32(_3728) > _3728:
                        mem[_3728 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3728) + 32], 
                _3729 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3729)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3729)]
                if ceil32(_3729) > _3729:
                    mem[_3729 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3729) + 32], 
            mem[ceil32(stor9.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor9.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor9.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
            if ceil32(stor9.length.field_1) <= stor9.length.field_1:
                mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                    _3730 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3730)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3730)]
                    if ceil32(_3730) > _3730:
                        mem[_3730 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3730) + 32], 
                _3731 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3731)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3731)]
                if ceil32(_3731) > _3731:
                    mem[_3731 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3731) + 32], 
            mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                _3732 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3732)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3732)]
                if ceil32(_3732) > _3732:
                    mem[_3732 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3732) + 32], 
            _3733 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3733)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3733)]
            if ceil32(_3733) > _3733:
                mem[_3733 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3733) + 32], 
        mem[0] = 9
        mem[128] = uint256(stor9.field_0)
        idx = 128
        s = 0
        while (uint255(stor9.length) * 0.5) + 96 > idx:
            mem[idx + 32] = stor9[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor9.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor9.length.field_1) + 224 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 225] = 32
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 257] = mem[ceil32(stor9.length.field_1) + 192]
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 289 len ceil32(mem[ceil32(stor9.length.field_1) + 192])] = mem[ceil32(stor9.length.field_1) + 224 len ceil32(mem[ceil32(stor9.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor9.length.field_1) + 192]) <= mem[ceil32(stor9.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor9.length.field_1) + 192], data=mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 289 len ceil32(mem[ceil32(stor9.length.field_1) + 192])]), 
            mem[mem[ceil32(stor9.length.field_1) + 192] + ceil32(stor9.length.field_1) + stor9.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 257 len ceil32(mem[ceil32(stor9.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor9.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor9.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor9.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
            if ceil32(stor9.length.field_1) <= stor9.length.field_1:
                mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                    _4422 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_4422)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_4422)]
                    if ceil32(_4422) > _4422:
                        mem[_4422 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_4422) + 32], 
                _4423 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_4423)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_4423)]
                if ceil32(_4423) > _4423:
                    mem[_4423 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_4423) + 32], 
            mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                _4424 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_4424)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_4424)]
                if ceil32(_4424) > _4424:
                    mem[_4424 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_4424) + 32], 
            _4425 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_4425)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_4425)]
            if ceil32(_4425) > _4425:
                mem[_4425 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_4425) + 32], 
        mem[ceil32(stor9.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor9.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor9.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) <= stor9.length.field_1:
            mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                _4426 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_4426)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_4426)]
                if ceil32(_4426) > _4426:
                    mem[_4426 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_4426) + 32], 
            _4427 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_4427)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_4427)]
            if ceil32(_4427) > _4427:
                mem[_4427 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_4427) + 32], 
        mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
            _4428 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_4428)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_4428)]
            if ceil32(_4428) > _4428:
                mem[_4428 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_4428) + 32], 
        _4429 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_4429)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_4429)]
        if ceil32(_4429) > _4429:
            mem[_4429 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_4429) + 32], 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 0, 34
    if not stor9.length.field_1:
        if stor9.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor9.length.field_1) + 224 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 225] = 32
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 257] = mem[ceil32(stor9.length.field_1) + 192]
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 289 len ceil32(mem[ceil32(stor9.length.field_1) + 192])] = mem[ceil32(stor9.length.field_1) + 224 len ceil32(mem[ceil32(stor9.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor9.length.field_1) + 192]) <= mem[ceil32(stor9.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor9.length.field_1) + 192], data=mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 289 len ceil32(mem[ceil32(stor9.length.field_1) + 192])]), 
            mem[mem[ceil32(stor9.length.field_1) + 192] + ceil32(stor9.length.field_1) + stor9.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 257 len ceil32(mem[ceil32(stor9.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor9.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor9.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor9.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
            if ceil32(stor9.length.field_1) <= stor9.length.field_1:
                mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                    _3734 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3734)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3734)]
                    if ceil32(_3734) > _3734:
                        mem[_3734 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3734) + 32], 
                _3735 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3735)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3735)]
                if ceil32(_3735) > _3735:
                    mem[_3735 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3735) + 32], 
            mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                _3736 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3736)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3736)]
                if ceil32(_3736) > _3736:
                    mem[_3736 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3736) + 32], 
            _3737 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3737)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3737)]
            if ceil32(_3737) > _3737:
                mem[_3737 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3737) + 32], 
        mem[ceil32(stor9.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor9.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor9.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) <= stor9.length.field_1:
            mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                _3738 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3738)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3738)]
                if ceil32(_3738) > _3738:
                    mem[_3738 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3738) + 32], 
            _3739 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3739)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3739)]
            if ceil32(_3739) > _3739:
                mem[_3739 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3739) + 32], 
        mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
            _3740 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3740)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3740)]
            if ceil32(_3740) > _3740:
                mem[_3740 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3740) + 32], 
        _3741 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3741)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3741)]
        if ceil32(_3741) > _3741:
            mem[_3741 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3741) + 32], 
    if 31 >= stor9.length.field_1:
        mem[128] = 256 * stor9.length.field_8
        if stor9.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor9.length.field_1) + 224 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 225] = 32
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 257] = mem[ceil32(stor9.length.field_1) + 192]
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 289 len ceil32(mem[ceil32(stor9.length.field_1) + 192])] = mem[ceil32(stor9.length.field_1) + 224 len ceil32(mem[ceil32(stor9.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor9.length.field_1) + 192]) <= mem[ceil32(stor9.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor9.length.field_1) + 192], data=mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 289 len ceil32(mem[ceil32(stor9.length.field_1) + 192])]), 
            mem[mem[ceil32(stor9.length.field_1) + 192] + ceil32(stor9.length.field_1) + stor9.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 257 len ceil32(mem[ceil32(stor9.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor9.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor9.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor9.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
            if ceil32(stor9.length.field_1) <= stor9.length.field_1:
                mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                    _3742 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3742)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3742)]
                    if ceil32(_3742) > _3742:
                        mem[_3742 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3742) + 32], 
                _3743 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3743)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3743)]
                if ceil32(_3743) > _3743:
                    mem[_3743 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3743) + 32], 
            mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                _3744 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3744)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3744)]
                if ceil32(_3744) > _3744:
                    mem[_3744 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3744) + 32], 
            _3745 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3745)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3745)]
            if ceil32(_3745) > _3745:
                mem[_3745 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3745) + 32], 
        mem[ceil32(stor9.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor9.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor9.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) <= stor9.length.field_1:
            mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                _3746 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3746)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3746)]
                if ceil32(_3746) > _3746:
                    mem[_3746 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3746) + 32], 
            _3747 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3747)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3747)]
            if ceil32(_3747) > _3747:
                mem[_3747 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3747) + 32], 
        mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
            _3748 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3748)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3748)]
            if ceil32(_3748) > _3748:
                mem[_3748 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3748) + 32], 
        _3749 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_3749)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_3749)]
        if ceil32(_3749) > _3749:
            mem[_3749 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_3749) + 32], 
    mem[0] = 9
    mem[128] = uint256(stor9.field_0)
    idx = 128
    s = 0
    while stor9.length.field_1 + 96 > idx:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor9.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor9.length.field_1) + 224 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 225] = 32
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 257] = mem[ceil32(stor9.length.field_1) + 192]
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 289 len ceil32(mem[ceil32(stor9.length.field_1) + 192])] = mem[ceil32(stor9.length.field_1) + 224 len ceil32(mem[ceil32(stor9.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor9.length.field_1) + 192]) <= mem[ceil32(stor9.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor9.length.field_1) + 192], data=mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 289 len ceil32(mem[ceil32(stor9.length.field_1) + 192])]), 
        mem[mem[ceil32(stor9.length.field_1) + 192] + ceil32(stor9.length.field_1) + stor9.length.field_1 + 289] = 0
        return 32, mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 257 len ceil32(mem[ceil32(stor9.length.field_1) + 192]) + 32], 
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
    mem[ceil32(stor9.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor9.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor9.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) <= stor9.length.field_1:
            mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
                _4430 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_4430)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_4430)]
                if ceil32(_4430) > _4430:
                    mem[_4430 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_4430) + 32], 
            _4431 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_4431)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[_4431 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_4431) + 32], 
        mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
            _4432 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_4432)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_4432)]
            if ceil32(_4432) > _4432:
                mem[_4432 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_4432) + 32], 
        _4433 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_4433)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[_4433 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_4433) + 32], 
    mem[ceil32(stor9.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor9.length.field_1) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor9.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) <= stor9.length.field_1:
        mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
            _4434 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_4434)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[_4434 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_4434) + 32], 
        _4435 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_4435)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[_4435 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_4435) + 32], 
    mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + ceil32(s) + 192] = 0
    mem[ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192 len ceil32(mem[ceil32(stor9.length.field_1) + 128])] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(mem[ceil32(stor9.length.field_1) + 128])]
    mem[64] = mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192
    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 192] = 32
    if ceil32(mem[ceil32(stor9.length.field_1) + 128]) <= mem[ceil32(stor9.length.field_1) + 128]:
        _4436 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_4436)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[_4436 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_4436) + 32], 
    _4437 = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256 len ceil32(_4437)] = mem[ceil32(stor9.length.field_1) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[_4437 + mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 256] = 0
    return 32, mem[mem[ceil32(stor9.length.field_1) + 128] + ceil32(stor9.length.field_1) + ceil32(s) + stor9.length.field_1 + 224 len ceil32(_4437) + 32], 
}



}
