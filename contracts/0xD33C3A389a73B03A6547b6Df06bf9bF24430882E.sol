contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const sub_5d6f218a(?) = 0x35f075f92692a81a158b1a9ac894d6718b345a2041632e1d86ad41e77d4e86c8

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct roleAdmin;
array of struct roleMember;
mapping of uint256 balanceOf;
mapping of uint8 stor202;
array of uint256 stor203;
mapping of uint256 totalSupply;
uint8 paused;
mapping of struct stor501;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function paused() payable {
    return bool(paused)
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

function totalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalSupply[arg1]
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
    return bool(stor202[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (totalSupply[arg1] > 0)
}

function pause() payable {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC1155PresetMinterPauser: must have pauser role to pause'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor202[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function unpause() payable {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC1155PresetMinterPauser: must have pauser role to unpause'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0xe89341c00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5a05180f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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

function setURI(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not roleAdmin[0x35f075f92692a81a158b1a9ac894d6718b345a2041632e1d86ad41e77d4e86c8][address(msg.sender)].field_0:
        revert with 0, 'Hubbleverse: must have SET_URI_ROLE'
    if stor501[arg1].field_0:
        if stor501[arg1].field_0 == stor501[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor501[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor501[arg1].field_0 = 0
            idx = 0
            while stor501[arg1].field_1 + 31 / 32 > idx:
                stor501[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor501[arg1].field_0 == stor501[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor501[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor501[arg1].field_0 = 0
            idx = 0
            while stor501[arg1].field_1 + 31 / 32 > idx:
                stor501[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 != msg.sender:
        if not stor202[address(arg1)][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: caller is not owner nor approved'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    mem[128] = arg2
    mem[160] = 1
    mem[192] = arg3
    mem[224] = 0
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 'NH{q', 50
            if idx >= 1:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 251
            if totalSupply[mem[(32 * idx) + 128]] > -mem[(32 * idx) + 192] - 1:
                revert with 'NH{q', 17
            totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 'NH{q', 50
        if idx >= 1:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 251
        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
            revert with 'NH{q', 17
        totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if paused:
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    if balanceOf[arg2][address(arg1)] < arg3:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
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

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = floor32(arg1.length) + 129
    while idx < arg2 + (32 * arg2.length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + floor32(arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + floor32(arg1.length) + 129], 201)
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + floor32(arg2.length) + 130] = balanceOf[mem[(32 * idx) + floor32(arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length])
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

function mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        revert with 0, 'ERC1155PresetMinterPauser: must have minter role to mint'
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    mem[ceil32(ceil32(arg4.length)) + 129] = arg2
    mem[ceil32(ceil32(arg4.length)) + 161] = 1
    mem[ceil32(ceil32(arg4.length)) + 193] = arg3
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 'NH{q', 50
        if idx >= 1:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]
        mem[32] = 251
        if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]] > -mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193] - 1:
            revert with 'NH{q', 17
        totalSupply[mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]] += mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 'NH{q', 50
            if idx >= 1:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]
            mem[32] = 251
            if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]:
                revert with 'NH{q', 17
            totalSupply[mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if paused:
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    if balanceOf[arg2][address(arg1)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, arg3, 160, arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 1) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor202[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[ceil32(ceil32(arg5.length)) + 129] = arg3
    mem[ceil32(ceil32(arg5.length)) + 161] = 1
    mem[ceil32(ceil32(arg5.length)) + 193] = arg4
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 'NH{q', 50
            if idx >= 1:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
            mem[32] = 251
            if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] > -mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193] - 1:
                revert with 'NH{q', 17
            totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] += mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if not arg2:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 'NH{q', 50
            if idx >= 1:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
            mem[32] = 251
            if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                revert with 'NH{q', 17
            totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if paused:
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][address(arg2)] > -arg4 - 1:
        revert with 'NH{q', 17
    balanceOf[arg3][address(arg2)] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor501[arg1].field_0:
        if stor501[arg1].field_0 == stor501[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor501[arg1].field_0:
            if stor501[arg1].field_0 == stor501[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor501[arg1].field_1:
                if 31 < stor501[arg1].field_1:
                    mem[128] = stor501[arg1].field_0
                    idx = 128
                    s = 0
                    while stor501[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor501[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor501[arg1].field_1), data=mem[128 len ceil32(stor501[arg1].field_1)])
                mem[128] = 256 * stor501[arg1].field_8
        else:
            if stor501[arg1].field_0 == stor501[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor501[arg1].field_1:
                if 31 < stor501[arg1].field_1:
                    mem[128] = stor501[arg1].field_0
                    idx = 128
                    s = 0
                    while stor501[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor501[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor501[arg1].field_1), data=mem[128 len ceil32(stor501[arg1].field_1)])
                mem[128] = 256 * stor501[arg1].field_8
        mem[ceil32(stor501[arg1].field_1) + 192 len ceil32(stor501[arg1].field_1)] = mem[128 len ceil32(stor501[arg1].field_1)]
        if ceil32(stor501[arg1].field_1) > stor501[arg1].field_1:
            mem[ceil32(stor501[arg1].field_1) + stor501[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor501[arg1].field_1), data=mem[128 len ceil32(stor501[arg1].field_1)], mem[(2 * ceil32(stor501[arg1].field_1)) + 192 len 2 * ceil32(stor501[arg1].field_1)]), 
    if stor501[arg1].field_0 == stor501[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor501[arg1].field_0:
        if stor501[arg1].field_0 == stor501[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor501[arg1].field_1:
            if 31 < stor501[arg1].field_1:
                mem[128] = stor501[arg1].field_0
                idx = 128
                s = 0
                while stor501[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor501[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor501[arg1].field_0, data=mem[128 len ceil32(stor501[arg1].field_1)])
            mem[128] = 256 * stor501[arg1].field_8
    else:
        if stor501[arg1].field_0 == stor501[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor501[arg1].field_1:
            if 31 < stor501[arg1].field_1:
                mem[128] = stor501[arg1].field_0
                idx = 128
                s = 0
                while stor501[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor501[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor501[arg1].field_0, data=mem[128 len ceil32(stor501[arg1].field_1)])
            mem[128] = 256 * stor501[arg1].field_8
    mem[ceil32(stor501[arg1].field_1) + 192 len ceil32(stor501[arg1].field_1)] = mem[128 len ceil32(stor501[arg1].field_1)]
    if ceil32(stor501[arg1].field_1) > stor501[arg1].field_1:
        mem[ceil32(stor501[arg1].field_1) + stor501[arg1].field_1 + 192] = 0
    return Array(len=stor501[arg1].field_0, data=mem[128 len ceil32(stor501[arg1].field_1)], mem[(2 * ceil32(stor501[arg1].field_1)) + 192 len 2 * ceil32(stor501[arg1].field_1)]), 
}

function burnBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < arg2 + (32 * arg2.length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + floor32(arg3.length) + 98 > test266151307() or floor32(arg3.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg2.length) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = arg3 + 36
    s = floor32(arg2.length) + 129
    while idx < arg3 + (32 * arg3.length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if arg1 != msg.sender:
        if not stor202[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg1:
        revert with 0, 'ERC1155: burn from the zero address'
    if arg2.length != arg3.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    mem[floor32(arg2.length) + floor32(arg3.length) + 98] = 0
    if not arg1:
        idx = 0
        while idx < arg2.length:
            if idx >= arg3.length:
                revert with 'NH{q', 50
            if idx >= arg2.length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 251
            if totalSupply[mem[(32 * idx) + 128]] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
                revert with 'NH{q', 17
            totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(arg2.length) + 129]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 251
        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + floor32(arg2.length) + 129]:
            revert with 'NH{q', 17
        totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + floor32(arg2.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if paused:
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    idx = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg2.length) + 129]:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 201)
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg2.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
    mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
    mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[floor32(arg2.length) + floor32(arg3.length) + 162] = (32 * arg2.length) + 96
    mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 226] = arg3.length
    mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 258 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
    emit TransferBatch(Array(len=arg2.length, data=mem[floor32(arg2.length) + floor32(arg3.length) + 226 len (32 * arg2.length) + (32 * arg3.length) + 32]), (32 * arg2.length) + 96, msg.sender, arg1, 0);
}

function initialize(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor203.length):
        if bool(stor203.length) == stor203.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor203[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor203.length = 0
            idx = 0
            while stor203.length.field_1 + 31 / 32 > idx:
                stor203[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor203.length) == stor203.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor203[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor203.length = 0
            idx = 0
            while stor203.length.field_1 + 31 / 32 > idx:
                stor203[idx].field_0 = 0
                idx = idx + 1
                continue 
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    paused = 0
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleMember[0][1][address(msg.sender)].field_0:
        roleMember[0].field_0++
        roleMember[0][roleMember[0].field_0].field_0 = msg.sender
        roleMember[0][roleMember[0].field_0].field_160 = 0
        roleMember[0][1][address(msg.sender)].field_0 = roleMember[0].field_0
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0 = 1
        emit RoleGranted(0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, msg.sender, msg.sender);
    if not roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0:
        roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0++
        roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_0 = msg.sender
        roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_160 = 0
        roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0 = roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0 = 1
        emit RoleGranted(0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a, msg.sender, msg.sender);
    if not roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(msg.sender)].field_0:
        roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0++
        roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0].field_0 = msg.sender
        roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0].field_160 = 0
        roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(msg.sender)].field_0 = roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function sub_3d7b3f06(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + ceil32(ceil32(('cd', 100).length)) + 98 > test266151307() or ceil32(ceil32(('cd', 100).length)) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + ceil32(ceil32(('cd', 100).length)) + 98
    mem[floor32(('cd', 4).length) + 97] = ('cd', 100).length
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    mem[floor32(('cd', 4).length) + 129 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
    mem[floor32(('cd', 4).length) + ('cd', 100).length + 129] = 0
    mem[0] = msg.sender
    mem[32] = sha3(0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, 101)
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        revert with 0, 'Hubbleverse: must have minter role to mint'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _308 = mem[(32 * idx) + 128]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: mint to the zero address'
        _310 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        if 0 >= mem[_310]:
            revert with 'NH{q', 50
        mem[_310 + 32] = cd[36]
        mem[_310 + 64] = 1
        mem[64] = _310 + 128
        mem[_310 + 96] = cd[68]
        _457 = mem[_310]
        s = 0
        while s < _457:
            if s >= 1:
                revert with 'NH{q', 50
            if s >= mem[_310]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * s) + _310 + 32]
            mem[32] = 251
            if totalSupply[mem[0]] > -mem[(32 * s) + _310 + 96] - 1:
                revert with 'NH{q', 17
            totalSupply[mem[0]] += mem[(32 * s) + _310 + 96]
            if s == -1:
                revert with 'NH{q', 17
            _457 = mem[_310]
            s = s + 1
            continue 
        if address(_308):
            if paused:
                revert with 0, 'ERC1155Pausable: token transfer while paused'
            mem[0] = address(_308)
            mem[32] = sha3(cd[36], 201)
            if balanceOf[cd[36]][address(_308)] > -cd[68] - 1:
                revert with 'NH{q', 17
            balanceOf[cd[36]][address(_308)] += cd[68]
            mem[_310 + 128] = cd[36]
            mem[_310 + 160] = cd[68]
            emit TransferSingle(cd[36], cd[68], msg.sender, 0, address(_308));
            if ext_code.size(address(_308)) > 0:
                mem[_310 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                mem[_310 + 132] = msg.sender
                mem[_310 + 164] = 0
                mem[_310 + 196] = cd[36]
                mem[_310 + 228] = cd[68]
                mem[_310 + 260] = 160
                _483 = mem[floor32(('cd', 4).length) + 97]
                mem[_310 + 292] = mem[floor32(('cd', 4).length) + 97]
                s = 0
                while s < _483:
                    mem[_310 + s + 324] = mem[floor32(('cd', 4).length) + s + 129]
                    s = s + 32
                    continue 
                if ceil32(_483) > _483:
                    mem[_310 + _483 + 324] = 0
                require ext_code.size(address(_308))
                call address(_308).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, 0, cd[36], cd[68], 160, mem[_310 + 292 len ceil32(_483) + 32]
                mem[_310 + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[64] = _310 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            _599 = mem[_310]
            s = 0
            while s < _599:
                if s >= 1:
                    revert with 'NH{q', 50
                if s >= mem[_310]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * s) + _310 + 32]
                mem[32] = 251
                if totalSupply[mem[0]] < mem[(32 * s) + _310 + 96]:
                    revert with 'NH{q', 17
                totalSupply[mem[0]] -= mem[(32 * s) + _310 + 96]
                if s == -1:
                    revert with 'NH{q', 17
                _599 = mem[_310]
                s = s + 1
                continue 
            if paused:
                revert with 0, 'ERC1155Pausable: token transfer while paused'
            mem[0] = address(_308)
            mem[32] = sha3(cd[36], 201)
            if balanceOf[cd[36]][address(_308)] > -cd[68] - 1:
                revert with 'NH{q', 17
            balanceOf[cd[36]][address(_308)] += cd[68]
            mem[_310 + 128] = cd[36]
            mem[_310 + 160] = cd[68]
            emit TransferSingle(cd[36], cd[68], msg.sender, 0, address(_308));
            if ext_code.size(address(_308)) > 0:
                mem[_310 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                mem[_310 + 132] = msg.sender
                mem[_310 + 164] = 0
                mem[_310 + 196] = cd[36]
                mem[_310 + 228] = cd[68]
                mem[_310 + 260] = 160
                _669 = mem[floor32(('cd', 4).length) + 97]
                mem[_310 + 292] = mem[floor32(('cd', 4).length) + 97]
                s = 0
                while s < _669:
                    mem[_310 + s + 324] = mem[floor32(('cd', 4).length) + s + 129]
                    s = s + 32
                    continue 
                if ceil32(_669) > _669:
                    mem[_310 + _669 + 324] = 0
                require ext_code.size(address(_308))
                call address(_308).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, 0, cd[36], cd[68], 160, mem[_310 + 292 len ceil32(_669) + 32]
                mem[_310 + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[64] = _310 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function mintBatch(address arg1, uint256[] arg2, uint256[] arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < arg2 + (32 * arg2.length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + floor32(arg3.length) + 98 > test266151307() or floor32(arg3.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg2.length) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = arg3 + 36
    s = floor32(arg2.length) + 129
    while idx < arg3 + (32 * arg3.length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99 > test266151307() or ceil32(ceil32(arg4.length)) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(arg2.length) + floor32(arg3.length) + 98] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[floor32(arg2.length) + floor32(arg3.length) + 130 len arg4.length] = arg4[all]
    mem[floor32(arg2.length) + floor32(arg3.length) + arg4.length + 130] = 0
    mem[0] = msg.sender
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        revert with 0, 'ERC1155PresetMinterPauser: must have minter role to mint'
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if arg2.length != arg3.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 251
        if totalSupply[mem[(32 * idx) + 128]] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
            revert with 'NH{q', 17
        totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(arg2.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if arg1:
        if paused:
            revert with 0, 'ERC1155Pausable: token transfer while paused'
        idx = 0
        while idx < arg2.length:
            if idx >= arg3.length:
                revert with 'NH{q', 50
            if idx >= arg2.length:
                revert with 'NH{q', 50
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + 128], 201)
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
                revert with 'NH{q', 17
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + floor32(arg2.length) + 129]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99] = 64
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 163] = arg2.length
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 195 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 131] = (32 * arg2.length) + 96
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 195] = arg3.length
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 227 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
        emit TransferBatch(Array(len=arg2.length, data=mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 195 len (32 * arg2.length) + (32 * arg3.length) + 32]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
        if ext_code.size(arg1) <= 0:
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 103] = msg.sender
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 135] = 0
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 167] = 160
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 263] = arg2.length
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 295 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 199] = (32 * arg2.length) + 192
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 295] = arg3.length
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 327 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 231] = (32 * arg2.length) + (32 * arg3.length) + 224
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + 327] = arg4.length
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + 359 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
        if ceil32(arg4.length) <= arg4.length:
            require ext_code.size(arg1)
            call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 295 len (32 * arg2.length) + (32 * arg3.length) + 32], arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
            mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
                revert with 'NH{q', 65
            mem[64] = floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99:
                mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _1377 = floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1389 = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_1389)] = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 131 len ceil32(_1389)]
            if ceil32(_1389) <= _1389:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1389) + 32]
            mem[mem[64] + _1389 + 68] = 0
            revert with memory
              from mem[64]
               len _1377 + ceil32(_1389) + -mem[64] + 68
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + arg4.length + 359] = 0
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 295 len (32 * arg2.length) + (32 * arg3.length) + 32], arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
            revert with 'NH{q', 65
        mem[64] = floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99:
            mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1384 = floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1395 = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_1395)] = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 131 len ceil32(_1395)]
        if ceil32(_1395) <= _1395:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1395) + 32]
        mem[mem[64] + _1395 + 68] = 0
        revert with memory
          from mem[64]
           len _1384 + ceil32(_1395) + -mem[64] + 68
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 251
        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + floor32(arg2.length) + 129]:
            revert with 'NH{q', 17
        totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + floor32(arg2.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if paused:
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 201)
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
            revert with 'NH{q', 17
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + floor32(arg2.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99] = 64
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 163] = arg2.length
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 195 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 131] = (32 * arg2.length) + 96
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 195] = arg3.length
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 227 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
    emit TransferBatch(Array(len=arg2.length, data=mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 195 len (32 * arg2.length) + (32 * arg3.length) + 32]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
    if ext_code.size(arg1) <= 0:
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 103] = msg.sender
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 135] = 0
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 167] = 160
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 263] = arg2.length
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 295 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 199] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 295] = arg3.length
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 327 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 231] = (32 * arg2.length) + (32 * arg3.length) + 224
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + 327] = arg4.length
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + 359 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
    if ceil32(arg4.length) <= arg4.length:
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 295 len (32 * arg2.length) + (32 * arg3.length) + 32], arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
            revert with 'NH{q', 65
        mem[64] = floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99:
            mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1478 = floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1484 = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_1484)] = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 131 len ceil32(_1484)]
        if ceil32(_1484) <= _1484:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1484) + 32]
        mem[mem[64] + _1484 + 68] = 0
        revert with memory
          from mem[64]
           len _1478 + ceil32(_1484) + -mem[64] + 68
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + arg4.length + 359] = 0
    require ext_code.size(arg1)
    call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 295 len (32 * arg2.length) + (32 * arg3.length) + 32], arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
    if not floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99:
        mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _1481 = floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
    mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1488 = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 36] = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 68 len ceil32(_1488)] = mem[floor32(arg2.length) + floor32(arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 131 len ceil32(_1488)]
    if ceil32(_1488) <= _1488:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1488) + 32]
    mem[mem[64] + _1488 + 68] = 0
    revert with memory
      from mem[64]
       len _1481 + ceil32(_1488) + -mem[64] + 68
}



}
