contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct roleAdmin;
array of struct roleMember;
uint8 paused;
address configAddress;
array of struct stor252;
mapping of uint256 stor253;
array of struct stor254;
mapping of uint256 stor255;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function paused() payable {
    return bool(paused)
}

function config() payable {
    return configAddress
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

function _fallback() payable {
    revert
}

function sub_b97d445b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return not not stor255[address(arg1)]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x5a05180f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function _initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
    configAddress = arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleMember[0][1][address(msg.sender)].field_0:
        roleMember[0].field_0++
        roleMember[0][roleMember[0].field_0].field_0 = msg.sender
        roleMember[0][roleMember[0].field_0].field_160 = 0
        roleMember[0][1][address(msg.sender)].field_0 = roleMember[0].field_0
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
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

function sub_a742982c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (96 * ('cd', 4).length) + 36:
        require calldata.size - idx >= 96
        _30 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require cd[idx] == Mask(88, 168, cd[idx])
        mem[_30] = cd[idx]
        require cd[(idx + 32)] < 3
        mem[_30 + 32] = cd[(idx + 32)]
        require cd[(idx + 64)] == address(cd[(idx + 64)])
        mem[_30 + 64] = cd[(idx + 64)]
        mem[s] = _30
        idx = idx + 96
        s = s + 32
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0, 101)
    if roleAdmin[0][address(msg.sender)].field_0:
        idx = 0
        while uint8(idx) < mem[96]:
            if uint8(idx) >= mem[96]:
                revert with 'NH{q', 50
            _63 = mem[mem[(32 * uint8(idx)) + 128] + 64]
            if mem[mem[(32 * uint8(idx)) + 128] + 32] > 2:
                revert with 'NH{q', 33
            _65 = mem[mem[(32 * uint8(idx)) + 128]]
            mem[0] = Mask(88, 168, mem[mem[(32 * uint8(idx)) + 128]]) or mem[mem[(32 * uint8(idx)) + 128] + 88 len 8]
            mem[32] = 253
            if stor253[mem[0]]:
                if uint8(idx) >= mem[96]:
                    revert with 'NH{q', 50
                _73 = mem[mem[(32 * uint8(idx)) + 128] + 64]
                mem[0] = mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]
                mem[32] = 255
                if not stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]]:
                    stor254.length++
                    stor254[stor254.length].field_0 = address(_73)
                    stor254[stor254.length].field_160 = 0
                    mem[0] = address(_73)
                    mem[32] = 255
                    stor255[address(_73)] = stor254.length
            else:
                stor252.length++
                stor252[stor252.length].field_0 = uint64(_63)
                stor252[stor252.length].field_64 = 0
                stor252[stor252.length].field_168 = Mask(88, 168, _65) >> 168
                mem[32] = 253
                stor253[Mask(88, 168, _65) or uint64(_63)] = stor252.length
                if uint8(idx) >= mem[96]:
                    revert with 'NH{q', 50
                _75 = mem[mem[(32 * uint8(idx)) + 128] + 64]
                mem[0] = mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]
                mem[32] = 255
                if not stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]]:
                    stor254.length++
                    stor254[stor254.length].field_0 = address(_75)
                    stor254[stor254.length].field_160 = 0
                    mem[0] = address(_75)
                    mem[32] = 255
                    stor255[address(_75)] = stor254.length
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
    _48 = mem[64]
    mem[mem[64]] = 42
    mem[64] = mem[64] + 96
    mem[_48 + 32 len 42] = call.data[calldata.size len 42]
    if 0 >= mem[_48]:
        revert with 'NH{q', 50
    mem[_48 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
    if 1 >= mem[_48]:
        revert with 'NH{q', 50
    mem[_48 + 33 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= mem[_48]:
            revert with 'NH{q', 50
        mem[idx + _48 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    _82 = mem[64]
    mem[mem[64]] = 66
    mem[64] = mem[64] + 128
    mem[_82 + 32 len 66] = call.data[calldata.size len 66]
    if 0 >= mem[_82]:
        revert with 'NH{q', 50
    mem[_82 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
    if 1 >= mem[_82]:
        revert with 'NH{q', 50
    mem[_82 + 33 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    while idx > 1:
        if idx >= mem[_82]:
            revert with 'NH{q', 50
        mem[idx + _82 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
    _87 = mem[64]
    mem[mem[64] + 32] = 'AccessControl: account '
    _88 = mem[_48]
    mem[mem[64] + 55 len ceil32(mem[_48])] = mem[_48 + 32 len ceil32(mem[_48])]
    mem[mem[64] + _88 + 55] = ' is missing role '
    if ceil32(_88) <= _88:
        _119 = mem[_82]
        mem[_87 + _88 + 72 len ceil32(mem[_82])] = mem[_82 + 32 len ceil32(mem[_82])]
        if ceil32(_119) <= _119:
            _149 = mem[64]
            mem[64] = _87 + _88 + _119 + 72
            mem[_87 + _88 + _119 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_87 + _88 + _119 + 76] = 32
            _157 = mem[_149]
            mem[_87 + _88 + _119 + 108] = mem[_149]
            mem[_87 + _88 + _119 + 140 len ceil32(_157)] = mem[_149 + 32 len ceil32(_157)]
            if ceil32(_157) > _157:
                mem[_87 + _88 + _119 + _157 + 140] = 0
            revert with 0, 32, mem[_87 + _88 + _119 + 108 len ceil32(_157) + 32]
        mem[_87 + _88 + _119 + 72] = 0
        _153 = mem[64]
        mem[64] = _87 + _88 + _119 + 72
        mem[_87 + _88 + _119 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_87 + _88 + _119 + 76] = 32
        _159 = mem[_153]
        mem[_87 + _88 + _119 + 108] = mem[_153]
        mem[_87 + _88 + _119 + 140 len ceil32(_159)] = mem[_153 + 32 len ceil32(_159)]
        if ceil32(_159) > _159:
            mem[_87 + _88 + _119 + _159 + 140] = 0
        revert with 0, 32, mem[_87 + _88 + _119 + 108 len ceil32(_159) + 32]
    _120 = mem[_82]
    mem[_87 + _88 + 72 len ceil32(mem[_82])] = mem[_82 + 32 len ceil32(mem[_82])]
    if ceil32(_120) <= _120:
        _151 = mem[64]
        mem[64] = _87 + _88 + _120 + 72
        mem[_87 + _88 + _120 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_87 + _88 + _120 + 76] = 32
        _158 = mem[_151]
        mem[_87 + _88 + _120 + 108] = mem[_151]
        mem[_87 + _88 + _120 + 140 len ceil32(_158)] = mem[_151 + 32 len ceil32(_158)]
        if ceil32(_158) > _158:
            mem[_87 + _88 + _120 + _158 + 140] = 0
        revert with 0, 32, mem[_87 + _88 + _120 + 108 len ceil32(_158) + 32]
    mem[_87 + _88 + _120 + 72] = 0
    _155 = mem[64]
    mem[64] = _87 + _88 + _120 + 72
    mem[_87 + _88 + _120 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_87 + _88 + _120 + 76] = 32
    _160 = mem[_155]
    mem[_87 + _88 + _120 + 108] = mem[_155]
    mem[_87 + _88 + _120 + 140 len ceil32(_160)] = mem[_155 + 32 len ceil32(_160)]
    if ceil32(_160) > _160:
        mem[_87 + _88 + _120 + _160 + 140] = 0
    revert with 0, 32, mem[_87 + _88 + _120 + 108 len ceil32(_160) + 32]
}

function sub_b045be0c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (96 * ('cd', 4).length) + 36:
        require calldata.size - idx >= 96
        _56 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require cd[idx] == Mask(88, 168, cd[idx])
        mem[_56] = cd[idx]
        require cd[(idx + 32)] < 3
        mem[_56 + 32] = cd[(idx + 32)]
        require cd[(idx + 64)] == address(cd[(idx + 64)])
        mem[_56 + 64] = cd[(idx + 64)]
        mem[s] = _56
        idx = idx + 96
        s = s + 32
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0, 101)
    if roleAdmin[0][address(msg.sender)].field_0:
        idx = 0
        while uint8(idx) < mem[96]:
            if uint8(idx) >= mem[96]:
                revert with 'NH{q', 50
            _115 = mem[mem[(32 * uint8(idx)) + 128] + 64]
            if mem[mem[(32 * uint8(idx)) + 128] + 32] > 2:
                revert with 'NH{q', 33
            _117 = mem[mem[(32 * uint8(idx)) + 128]]
            mem[0] = Mask(88, 168, mem[mem[(32 * uint8(idx)) + 128]]) or mem[mem[(32 * uint8(idx)) + 128] + 88 len 8]
            mem[32] = 253
            if not stor253[mem[0]]:
                if uint8(idx) >= mem[96]:
                    revert with 'NH{q', 50
                _122 = mem[mem[(32 * uint8(idx)) + 128] + 64]
                mem[0] = mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]
                mem[32] = 255
                if stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]]:
                    if stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]] < 1:
                        revert with 'NH{q', 17
                    if stor254.length < 1:
                        revert with 'NH{q', 17
                    if stor254.length - 1 != stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]] - 1:
                        if stor254.length - 1 >= stor254.length:
                            revert with 'NH{q', 50
                        if stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]] - 1 >= stor254.length:
                            revert with 'NH{q', 50
                        stor254[stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]]].field_0 = stor254[stor254.length].field_0
                        stor255[stor254[stor254.length].field_0] = stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]]
                    if not stor254.length:
                        revert with 'NH{q', 49
                    stor254[stor254.length].field_0 = 0
                    stor254.length--
                    mem[0] = address(_122)
                    mem[32] = 255
                    stor255[address(_122)] = 0
            else:
                if stor253[mem[0]] < 1:
                    revert with 'NH{q', 17
                if stor252.length < 1:
                    revert with 'NH{q', 17
                if stor252.length - 1 == stor253[mem[0]] - 1:
                    if not stor252.length:
                        revert with 'NH{q', 49
                    stor252[stor252.length].field_0 = 0
                    stor252.length--
                    mem[32] = 253
                    stor253[Mask(88, 168, _117) or uint64(_115)] = 0
                    if uint8(idx) >= mem[96]:
                        revert with 'NH{q', 50
                    _136 = mem[mem[(32 * uint8(idx)) + 128] + 64]
                    mem[0] = mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]
                    mem[32] = 255
                    if stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]]:
                        if stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]] < 1:
                            revert with 'NH{q', 17
                        if stor254.length < 1:
                            revert with 'NH{q', 17
                        if stor254.length - 1 != stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]] - 1:
                            if stor254.length - 1 >= stor254.length:
                                revert with 'NH{q', 50
                            if stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]] - 1 >= stor254.length:
                                revert with 'NH{q', 50
                            stor254[stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]]].field_0 = stor254[stor254.length].field_0
                            stor255[stor254[stor254.length].field_0] = stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]]
                        if not stor254.length:
                            revert with 'NH{q', 49
                        stor254[stor254.length].field_0 = 0
                        stor254.length--
                        mem[0] = address(_136)
                        mem[32] = 255
                        stor255[address(_136)] = 0
                else:
                    if stor252.length - 1 >= stor252.length:
                        revert with 'NH{q', 50
                    if stor253[mem[0]] - 1 >= stor252.length:
                        revert with 'NH{q', 50
                    stor252[stor253[mem[0]]].field_0 = stor252[stor252.length].field_0
                    stor253[stor252[stor252.length].field_0] = stor253[mem[0]]
                    if not stor252.length:
                        revert with 'NH{q', 49
                    stor252[stor252.length].field_0 = 0
                    stor252.length--
                    mem[32] = 253
                    stor253[Mask(88, 168, _117) or uint64(_115)] = 0
                    if uint8(idx) >= mem[96]:
                        revert with 'NH{q', 50
                    _143 = mem[mem[(32 * uint8(idx)) + 128] + 64]
                    mem[0] = mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]
                    mem[32] = 255
                    if stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]]:
                        if stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]] < 1:
                            revert with 'NH{q', 17
                        if stor254.length < 1:
                            revert with 'NH{q', 17
                        if stor254.length - 1 != stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]] - 1:
                            if stor254.length - 1 >= stor254.length:
                                revert with 'NH{q', 50
                            if stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]] - 1 >= stor254.length:
                                revert with 'NH{q', 50
                            stor254[stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]]].field_0 = stor254[stor254.length].field_0
                            stor255[stor254[stor254.length].field_0] = stor255[mem[mem[(32 * uint8(idx)) + 128] + 76 len 20]]
                        if not stor254.length:
                            revert with 'NH{q', 49
                        stor254[stor254.length].field_0 = 0
                        stor254.length--
                        mem[0] = address(_143)
                        mem[32] = 255
                        stor255[address(_143)] = 0
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
    _70 = mem[64]
    mem[mem[64]] = 42
    mem[64] = mem[64] + 96
    mem[_70 + 32 len 42] = call.data[calldata.size len 42]
    if 0 >= mem[_70]:
        revert with 'NH{q', 50
    mem[_70 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
    if 1 >= mem[_70]:
        revert with 'NH{q', 50
    mem[_70 + 33 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= mem[_70]:
            revert with 'NH{q', 50
        mem[idx + _70 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    _124 = mem[64]
    mem[mem[64]] = 66
    mem[64] = mem[64] + 128
    mem[_124 + 32 len 66] = call.data[calldata.size len 66]
    if 0 >= mem[_124]:
        revert with 'NH{q', 50
    mem[_124 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
    if 1 >= mem[_124]:
        revert with 'NH{q', 50
    mem[_124 + 33 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    while idx > 1:
        if idx >= mem[_124]:
            revert with 'NH{q', 50
        mem[idx + _124 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
    _165 = mem[64]
    mem[mem[64] + 32] = 'AccessControl: account '
    _166 = mem[_70]
    mem[mem[64] + 55 len ceil32(mem[_70])] = mem[_70 + 32 len ceil32(mem[_70])]
    mem[mem[64] + _166 + 55] = ' is missing role '
    if ceil32(_166) <= _166:
        _197 = mem[_124]
        mem[_165 + _166 + 72 len ceil32(mem[_124])] = mem[_124 + 32 len ceil32(mem[_124])]
        if ceil32(_197) <= _197:
            _227 = mem[64]
            mem[64] = _165 + _166 + _197 + 72
            mem[_165 + _166 + _197 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_165 + _166 + _197 + 76] = 32
            _235 = mem[_227]
            mem[_165 + _166 + _197 + 108] = mem[_227]
            mem[_165 + _166 + _197 + 140 len ceil32(_235)] = mem[_227 + 32 len ceil32(_235)]
            if ceil32(_235) > _235:
                mem[_165 + _166 + _197 + _235 + 140] = 0
            revert with 0, 32, mem[_165 + _166 + _197 + 108 len ceil32(_235) + 32]
        mem[_165 + _166 + _197 + 72] = 0
        _231 = mem[64]
        mem[64] = _165 + _166 + _197 + 72
        mem[_165 + _166 + _197 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_165 + _166 + _197 + 76] = 32
        _237 = mem[_231]
        mem[_165 + _166 + _197 + 108] = mem[_231]
        mem[_165 + _166 + _197 + 140 len ceil32(_237)] = mem[_231 + 32 len ceil32(_237)]
        if ceil32(_237) > _237:
            mem[_165 + _166 + _197 + _237 + 140] = 0
        revert with 0, 32, mem[_165 + _166 + _197 + 108 len ceil32(_237) + 32]
    _198 = mem[_124]
    mem[_165 + _166 + 72 len ceil32(mem[_124])] = mem[_124 + 32 len ceil32(mem[_124])]
    if ceil32(_198) <= _198:
        _229 = mem[64]
        mem[64] = _165 + _166 + _198 + 72
        mem[_165 + _166 + _198 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_165 + _166 + _198 + 76] = 32
        _236 = mem[_229]
        mem[_165 + _166 + _198 + 108] = mem[_229]
        mem[_165 + _166 + _198 + 140 len ceil32(_236)] = mem[_229 + 32 len ceil32(_236)]
        if ceil32(_236) > _236:
            mem[_165 + _166 + _198 + _236 + 140] = 0
        revert with 0, 32, mem[_165 + _166 + _198 + 108 len ceil32(_236) + 32]
    mem[_165 + _166 + _198 + 72] = 0
    _233 = mem[64]
    mem[64] = _165 + _166 + _198 + 72
    mem[_165 + _166 + _198 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_165 + _166 + _198 + 76] = 32
    _238 = mem[_233]
    mem[_165 + _166 + _198 + 108] = mem[_233]
    mem[_165 + _166 + _198 + 140 len ceil32(_238)] = mem[_233 + 32 len ceil32(_238)]
    if ceil32(_238) > _238:
        mem[_165 + _166 + _198 + _238 + 140] = 0
    revert with 0, 32, mem[_165 + _166 + _198 + 108 len ceil32(_238) + 32]
}

function sub_f8227f81(?) payable {
    mem[96] = stor252.length
    if stor252.length:
        mem[0] = 252
        mem[128] = uint256(stor252.field_0)
        idx = 128
        s = 0
        while (32 * stor252.length) + 96 > idx:
            mem[idx + 32] = stor252[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor252.length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * stor252.length) + 128] = stor252.length
        mem[64] = (64 * stor252.length) + 160
        if not stor252.length:
            idx = 0
            while idx < stor252.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _111 = mem[(32 * idx) + 128]
                _115 = mem[64]
                mem[64] = mem[64] + 96
                mem[_115] = 0
                mem[_115 + 32] = 0
                mem[_115 + 64] = 0
                _119 = mem[64]
                mem[64] = mem[64] + 96
                mem[_119] = Mask(88, 168, _111)
                mem[_119 + 32] = 0
                mem[_119 + 64] = uint64(_111)
                if idx >= mem[(32 * stor252.length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * stor252.length) + 160] = _119
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _113 = mem[64]
            mem[mem[64]] = 32
            _118 = mem[(32 * stor252.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor252.length) + 128]
            idx = 0
            s = (32 * stor252.length) + 160
            t = mem[64] + 64
            while idx < _118:
                _150 = mem[s]
                mem[t] = Mask(88, 168, mem[mem[s]])
                if mem[_150 + 32] >= 3:
                    revert with 'NH{q', 33
                mem[t + 32] = mem[_150 + 32]
                mem[t + 64] = mem[_150 + 76 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _113 + (96 * _118) + -mem[64] + 64
        mem[64] = (64 * stor252.length) + 256
        mem[(64 * stor252.length) + 160] = 0
        mem[var23002] = 0
        mem[var23002 + 32] = 0
        mem[var25002] = var25001
        if not var25003 - 1:
            idx = 0
            while idx < stor252.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _287 = mem[(32 * idx) + 128]
                _291 = mem[64]
                mem[64] = mem[64] + 96
                mem[_291] = 0
                mem[_291 + 32] = 0
                mem[_291 + 64] = 0
                _296 = mem[64]
                mem[64] = mem[64] + 96
                mem[_296] = Mask(88, 168, _287)
                mem[_296 + 32] = 0
                mem[_296 + 64] = uint64(_287)
                if idx >= mem[(32 * stor252.length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * stor252.length) + 160] = _296
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _289 = mem[64]
            mem[mem[64]] = 32
            _295 = mem[(32 * stor252.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor252.length) + 128]
            idx = 0
            s = (32 * stor252.length) + 160
            t = mem[64] + 64
            while idx < _295:
                _326 = mem[s]
                mem[t] = Mask(88, 168, mem[mem[s]])
                if mem[_326 + 32] >= 3:
                    revert with 'NH{q', 33
                mem[t + 32] = mem[_326 + 32]
                mem[t + 64] = mem[_326 + 76 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _289 + (96 * _295) + -mem[64] + 64
        mem[64] = (64 * stor252.length) + 352
        mem[(64 * stor252.length) + 256] = 0
        mem[var31002] = 0
        mem[var31002 + 32] = 0
        mem[var33002] = var33001
        if not var33003 - 1:
            idx = 0
            while idx < stor252.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _463 = mem[(32 * idx) + 128]
                _467 = mem[64]
                mem[64] = mem[64] + 96
                mem[_467] = 0
                mem[_467 + 32] = 0
                mem[_467 + 64] = 0
                _472 = mem[64]
                mem[64] = mem[64] + 96
                mem[_472] = Mask(88, 168, _463)
                mem[_472 + 32] = 0
                mem[_472 + 64] = uint64(_463)
                if idx >= mem[(32 * stor252.length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * stor252.length) + 160] = _472
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _465 = mem[64]
            mem[mem[64]] = 32
            _471 = mem[(32 * stor252.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor252.length) + 128]
            idx = 0
            s = (32 * stor252.length) + 160
            t = mem[64] + 64
            while idx < _471:
                _502 = mem[s]
                mem[t] = Mask(88, 168, mem[mem[s]])
                if mem[_502 + 32] >= 3:
                    revert with 'NH{q', 33
                mem[t + 32] = mem[_502 + 32]
                mem[t + 64] = mem[_502 + 76 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _465 + (96 * _471) + -mem[64] + 64
        mem[64] = (64 * stor252.length) + 448
        mem[(64 * stor252.length) + 352] = 0
        mem[var39002] = 0
        mem[var39002 + 32] = 0
        mem[var41002] = var41001
        if var41003 - 1:
            mem[64] = (64 * stor252.length) + 544
            mem[var47002] = 0
            mem[var47002 + 32] = 0
            mem[var49002] = var49001
            if not var49003 - 1:
                idx = 0
                while idx < stor252.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _815 = mem[(32 * idx) + 128]
                    _819 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_819] = 0
                    mem[_819 + 32] = 0
                    mem[_819 + 64] = 0
                    _824 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_824] = Mask(88, 168, _815)
                    mem[_824 + 32] = 0
                    mem[_824 + 64] = uint64(_815)
                    if idx >= mem[(32 * stor252.length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * stor252.length) + 160] = _824
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            # nil
        else:
            idx = 0
            while idx < stor252.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _639 = mem[(32 * idx) + 128]
                _643 = mem[64]
                mem[64] = mem[64] + 96
                mem[_643] = 0
                mem[_643 + 32] = 0
                mem[_643 + 64] = 0
                _648 = mem[64]
                mem[64] = mem[64] + 96
                mem[_648] = Mask(88, 168, _639)
                mem[_648 + 32] = 0
                mem[_648 + 64] = uint64(_639)
                if idx >= mem[(32 * stor252.length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * stor252.length) + 160] = _648
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _641 = mem[64]
            mem[mem[64]] = 32
            _647 = mem[(32 * stor252.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor252.length) + 128]
            idx = 0
            s = (32 * stor252.length) + 160
            t = mem[64] + 64
            while idx < _647:
                _678 = mem[s]
                mem[t] = Mask(88, 168, mem[mem[s]])
                if mem[_678 + 32] >= 3:
                    revert with 'NH{q', 33
                mem[t + 32] = mem[_678 + 32]
                mem[t + 64] = mem[_678 + 76 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _641 + (96 * _647) + -mem[64] + 64
    else:
        if stor252.length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * stor252.length) + 128] = stor252.length
        mem[64] = (64 * stor252.length) + 160
        if not stor252.length:
            idx = 0
            while idx < stor252.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _35 = mem[(32 * idx) + 128]
                _37 = mem[64]
                mem[64] = mem[64] + 96
                mem[_37] = 0
                mem[_37 + 32] = 0
                mem[_37 + 64] = 0
                _39 = mem[64]
                mem[64] = mem[64] + 96
                mem[_39] = Mask(88, 168, _35)
                mem[_39 + 32] = 0
                mem[_39 + 64] = uint64(_35)
                if idx >= mem[(32 * stor252.length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * stor252.length) + 160] = _39
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _36 = mem[64]
            mem[mem[64]] = 32
            _38 = mem[(32 * stor252.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor252.length) + 128]
            idx = 0
            s = (32 * stor252.length) + 160
            t = mem[64] + 64
            while idx < _38:
                _60 = mem[s]
                mem[t] = Mask(88, 168, mem[mem[s]])
                if mem[_60 + 32] >= 3:
                    revert with 'NH{q', 33
                mem[t + 32] = mem[_60 + 32]
                mem[t + 64] = mem[_60 + 76 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _36 + (96 * _38) + -mem[64] + 64
        mem[64] = (64 * stor252.length) + 256
        mem[(64 * stor252.length) + 160] = 0
        mem[var19002] = 0
        mem[var19002 + 32] = 0
        mem[var21002] = var21001
        if not var21003 - 1:
            idx = 0
            while idx < stor252.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _199 = mem[(32 * idx) + 128]
                _202 = mem[64]
                mem[64] = mem[64] + 96
                mem[_202] = 0
                mem[_202 + 32] = 0
                mem[_202 + 64] = 0
                _207 = mem[64]
                mem[64] = mem[64] + 96
                mem[_207] = Mask(88, 168, _199)
                mem[_207 + 32] = 0
                mem[_207 + 64] = uint64(_199)
                if idx >= mem[(32 * stor252.length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * stor252.length) + 160] = _207
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _200 = mem[64]
            mem[mem[64]] = 32
            _206 = mem[(32 * stor252.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor252.length) + 128]
            idx = 0
            s = (32 * stor252.length) + 160
            t = mem[64] + 64
            while idx < _206:
                _238 = mem[s]
                mem[t] = Mask(88, 168, mem[mem[s]])
                if mem[_238 + 32] >= 3:
                    revert with 'NH{q', 33
                mem[t + 32] = mem[_238 + 32]
                mem[t + 64] = mem[_238 + 76 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _200 + (96 * _206) + -mem[64] + 64
        mem[64] = (64 * stor252.length) + 352
        mem[(64 * stor252.length) + 256] = 0
        mem[var27002] = 0
        mem[var27002 + 32] = 0
        mem[var29002] = var29001
        if not var29003 - 1:
            idx = 0
            while idx < stor252.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _375 = mem[(32 * idx) + 128]
                _378 = mem[64]
                mem[64] = mem[64] + 96
                mem[_378] = 0
                mem[_378 + 32] = 0
                mem[_378 + 64] = 0
                _383 = mem[64]
                mem[64] = mem[64] + 96
                mem[_383] = Mask(88, 168, _375)
                mem[_383 + 32] = 0
                mem[_383 + 64] = uint64(_375)
                if idx >= mem[(32 * stor252.length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * stor252.length) + 160] = _383
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _376 = mem[64]
            mem[mem[64]] = 32
            _382 = mem[(32 * stor252.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor252.length) + 128]
            idx = 0
            s = (32 * stor252.length) + 160
            t = mem[64] + 64
            while idx < _382:
                _414 = mem[s]
                mem[t] = Mask(88, 168, mem[mem[s]])
                if mem[_414 + 32] >= 3:
                    revert with 'NH{q', 33
                mem[t + 32] = mem[_414 + 32]
                mem[t + 64] = mem[_414 + 76 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _376 + (96 * _382) + -mem[64] + 64
        mem[64] = (64 * stor252.length) + 448
        mem[(64 * stor252.length) + 352] = 0
        mem[var35002] = 0
        mem[var35002 + 32] = 0
        mem[var37002] = var37001
        if not var37003 - 1:
            idx = 0
            while idx < stor252.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _551 = mem[(32 * idx) + 128]
                _554 = mem[64]
                mem[64] = mem[64] + 96
                mem[_554] = 0
                mem[_554 + 32] = 0
                mem[_554 + 64] = 0
                _559 = mem[64]
                mem[64] = mem[64] + 96
                mem[_559] = Mask(88, 168, _551)
                mem[_559 + 32] = 0
                mem[_559 + 64] = uint64(_551)
                if idx >= mem[(32 * stor252.length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * stor252.length) + 160] = _559
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _552 = mem[64]
            mem[mem[64]] = 32
            _558 = mem[(32 * stor252.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor252.length) + 128]
            idx = 0
            s = (32 * stor252.length) + 160
            t = mem[64] + 64
            while idx < _558:
                _590 = mem[s]
                mem[t] = Mask(88, 168, mem[mem[s]])
                if mem[_590 + 32] >= 3:
                    revert with 'NH{q', 33
                mem[t + 32] = mem[_590 + 32]
                mem[t + 64] = mem[_590 + 76 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _552 + (96 * _558) + -mem[64] + 64
        mem[64] = (64 * stor252.length) + 544
        mem[(64 * stor252.length) + 448] = 0
        mem[var43002] = 0
        mem[var43002 + 32] = 0
        mem[var45002] = var45001
        if var45003 - 1:
            # nil
        else:
            idx = 0
            while idx < stor252.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _727 = mem[(32 * idx) + 128]
                _730 = mem[64]
                mem[64] = mem[64] + 96
                mem[_730] = 0
                mem[_730 + 32] = 0
                mem[_730 + 64] = 0
                _735 = mem[64]
                mem[64] = mem[64] + 96
                mem[_735] = Mask(88, 168, _727)
                mem[_735 + 32] = 0
                mem[_735 + 64] = uint64(_727)
                if idx >= mem[(32 * stor252.length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * stor252.length) + 160] = _735
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _728 = mem[64]
            mem[mem[64]] = 32
            _734 = mem[(32 * stor252.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor252.length) + 128]
            idx = 0
            s = (32 * stor252.length) + 160
            t = mem[64] + 64
            while idx < _734:
                _766 = mem[s]
                mem[t] = Mask(88, 168, mem[mem[s]])
                if mem[_766 + 32] >= 3:
                    revert with 'NH{q', 33
                mem[t + 32] = mem[_766 + 32]
                mem[t + 64] = mem[_766 + 76 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _728 + (96 * _734) + -mem[64] + 64
}

function sub_3ed50e0c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = stor252.length
    if stor252.length:
        mem[0] = 252
        mem[128] = uint256(stor252.field_0)
        idx = 128
        s = 0
        while (32 * stor252.length) + 96 > idx:
            mem[idx + 32] = stor252[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor252.length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * stor252.length) + 128] = stor252.length
        mem[64] = (64 * stor252.length) + 160
        if not stor252.length:
            idx = 0
            while idx < stor252.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _699 = mem[(32 * idx) + 128]
                _707 = mem[64]
                mem[64] = mem[64] + 96
                mem[_707] = 0
                mem[_707 + 32] = 0
                mem[_707 + 64] = 0
                _716 = mem[64]
                mem[64] = mem[64] + 96
                mem[_716] = Mask(88, 168, _699)
                mem[_716 + 32] = 0
                mem[_716 + 64] = uint64(_699)
                if idx >= mem[(32 * stor252.length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * stor252.length) + 160] = _716
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _698 = mem[(32 * stor252.length) + 128]
            if mem[(32 * stor252.length) + 128] > test266151307():
                revert with 'NH{q', 65
            _703 = mem[64]
            mem[mem[64]] = mem[(32 * stor252.length) + 128]
            mem[64] = mem[64] + (32 * _698) + 32
            if not _698:
                _1012 = mem[(32 * stor252.length) + 128]
                idx = 0
                while uint8(idx) < _1012:
                    if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                        revert with 'NH{q', 33
                    if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_703]:
                            revert with 'NH{q', 50
                        mem[mem[_703 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        _1049 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                        mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg1)
                        staticcall address(_1049).position(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1129 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1149 = mem[_1129]
                        require mem[_1129] <= test266151307()
                        require _1129 + mem[_1129] + 31 < _1129 + return_data.size
                        _1168 = mem[_1129 + mem[_1129]]
                        if mem[_1129 + mem[_1129]] > test266151307():
                            revert with 'NH{q', 65
                        if _1129 + ceil32(return_data.size) + floor32(mem[_1129 + mem[_1129]]) + 1 > test266151307() or floor32(mem[_1129 + mem[_1129]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1129 + ceil32(return_data.size) + floor32(mem[_1129 + mem[_1129]]) + 1
                        mem[_1129 + ceil32(return_data.size)] = _1168
                        require _1149 + (96 * _1168) + 32 <= return_data.size
                        s = _1129 + _1149 + 32
                        t = _1129 + ceil32(return_data.size) + 32
                        while s < _1129 + _1149 + (96 * _1168) + 32:
                            require _1129 + return_data.size - s >= 96
                            _1416 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 96
                            require mem[s] == mem[s + 12 len 20]
                            mem[_1416] = mem[s]
                            require mem[s + 32] == mem[s + 44 len 20]
                            mem[_1416 + 32] = mem[s + 32]
                            require mem[s + 64] == mem[s + 64]
                            mem[_1416 + 64] = mem[s + 64]
                            mem[t] = _1416
                            _1012 = mem[(32 * stor252.length) + 128]
                            s = s + 96
                            t = t + 32
                            continue 
                        if 0 >= mem[_703]:
                            revert with 'NH{q', 50
                        mem[mem[_703 + 32] + 32] = _1129 + ceil32(return_data.size)
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    _1012 = mem[(32 * stor252.length) + 128]
                    idx = uint8(idx) + 1
                    continue 
                _1017 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1017 + 32] = 32
                _1059 = mem[_1017]
                mem[_1017 + 64] = mem[_1017]
                idx = 0
                s = _1017 + 32
                t = _1017 + (32 * mem[_1017]) + 96
                u = _1017 + 96
                while idx < _1059:
                    mem[u] = t + -_1017 - 96
                    _1399 = mem[s]
                    _1405 = mem[mem[s]]
                    mem[t] = Mask(88, 168, mem[mem[mem[s]]])
                    if mem[_1405 + 32] >= 3:
                        revert with 'NH{q', 33
                    mem[t + 32] = mem[_1405 + 32]
                    mem[t + 64] = mem[_1405 + 76 len 20]
                    _1563 = mem[_1399 + 32]
                    mem[t + 96] = 128
                    _1580 = mem[_1563]
                    mem[t + 128] = mem[_1563]
                    v = 0
                    w = _1563 + 32
                    x = t + 160
                    while v < _1580:
                        _1758 = mem[w]
                        mem[x] = mem[mem[w] + 12 len 20]
                        mem[x + 32] = mem[_1758 + 44 len 20]
                        mem[x + 64] = mem[_1758 + 64]
                        v = v + 1
                        w = w + 32
                        x = x + 96
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (96 * _1580) + 160
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t - mem[64]
            mem[64] = _703 + (32 * _698) + 192
            mem[_703 + (32 * _698) + 96] = 0
            mem[var45002] = 0
            mem[var45002 + 32] = 0
            mem[var47002] = var47001
            mem[var47002 + 32] = 96
            mem[var49002] = var49001
            if not var49003 - 1:
                _3616 = mem[(32 * stor252.length) + 128]
                idx = 0
                while uint8(idx) < _3616:
                    if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                        revert with 'NH{q', 33
                    if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_703]:
                            revert with 'NH{q', 50
                        mem[mem[_703 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        _3681 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                        mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg1)
                        staticcall address(_3681).position(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3803 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3825 = mem[_3803]
                        require mem[_3803] <= test266151307()
                        require _3803 + mem[_3803] + 31 < _3803 + return_data.size
                        _3848 = mem[_3803 + mem[_3803]]
                        if mem[_3803 + mem[_3803]] > test266151307():
                            revert with 'NH{q', 65
                        if _3803 + ceil32(return_data.size) + floor32(mem[_3803 + mem[_3803]]) + 1 > test266151307() or floor32(mem[_3803 + mem[_3803]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3803 + ceil32(return_data.size) + floor32(mem[_3803 + mem[_3803]]) + 1
                        mem[_3803 + ceil32(return_data.size)] = _3848
                        require _3825 + (96 * _3848) + 32 <= return_data.size
                        s = _3803 + _3825 + 32
                        t = _3803 + ceil32(return_data.size) + 32
                        while s < _3803 + _3825 + (96 * _3848) + 32:
                            require _3803 + return_data.size - s >= 96
                            _4196 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 96
                            require mem[s] == mem[s + 12 len 20]
                            mem[_4196] = mem[s]
                            require mem[s + 32] == mem[s + 44 len 20]
                            mem[_4196 + 32] = mem[s + 32]
                            require mem[s + 64] == mem[s + 64]
                            mem[_4196 + 64] = mem[s + 64]
                            mem[t] = _4196
                            _3616 = mem[(32 * stor252.length) + 128]
                            s = s + 96
                            t = t + 32
                            continue 
                        if 0 >= mem[_703]:
                            revert with 'NH{q', 50
                        mem[mem[_703 + 32] + 32] = _3803 + ceil32(return_data.size)
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    _3616 = mem[(32 * stor252.length) + 128]
                    idx = uint8(idx) + 1
                    continue 
                _3626 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3626 + 32] = 32
                _3692 = mem[_3626]
                mem[_3626 + 64] = mem[_3626]
                idx = 0
                s = _3626 + 32
                t = _3626 + (32 * mem[_3626]) + 96
                u = _3626 + 96
                while idx < _3692:
                    mem[u] = t + -_3626 - 96
                    _4166 = mem[s]
                    _4178 = mem[mem[s]]
                    mem[t] = Mask(88, 168, mem[mem[mem[s]]])
                    if mem[_4178 + 32] >= 3:
                        revert with 'NH{q', 33
                    mem[t + 32] = mem[_4178 + 32]
                    mem[t + 64] = mem[_4178 + 76 len 20]
                    _4422 = mem[_4166 + 32]
                    mem[t + 96] = 128
                    _4453 = mem[_4422]
                    mem[t + 128] = mem[_4422]
                    v = 0
                    w = _4422 + 32
                    x = t + 160
                    while v < _4453:
                        _4703 = mem[w]
                        mem[x] = mem[mem[w] + 12 len 20]
                        mem[x + 32] = mem[_4703 + 44 len 20]
                        mem[x + 64] = mem[_4703 + 64]
                        v = v + 1
                        w = w + 32
                        x = x + 96
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (96 * _4453) + 160
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t - mem[64]
            mem[64] = _703 + (32 * _698) + 352
            mem[_703 + (32 * _698) + 256] = 0
            mem[var57002] = 0
            mem[var57002 + 32] = 0
            mem[var59002] = var59001
            mem[var59002 + 32] = 96
            mem[var61002] = var61001
            if var61003 - 1:
                # nil
            else:
                _7238 = mem[(32 * stor252.length) + 128]
                idx = 0
                while uint8(idx) < _7238:
                    if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                        revert with 'NH{q', 33
                    if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_703]:
                            revert with 'NH{q', 50
                        mem[mem[_703 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        _7332 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                        mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg1)
                        staticcall address(_7332).position(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7497 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7525 = mem[_7497]
                        require mem[_7497] <= test266151307()
                        require _7497 + mem[_7497] + 31 < _7497 + return_data.size
                        _7557 = mem[_7497 + mem[_7497]]
                        if mem[_7497 + mem[_7497]] > test266151307():
                            revert with 'NH{q', 65
                        if _7497 + ceil32(return_data.size) + floor32(mem[_7497 + mem[_7497]]) + 1 > test266151307() or floor32(mem[_7497 + mem[_7497]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _7497 + ceil32(return_data.size) + floor32(mem[_7497 + mem[_7497]]) + 1
                        mem[_7497 + ceil32(return_data.size)] = _7557
                        require _7525 + (96 * _7557) + 32 <= return_data.size
                        s = _7497 + _7525 + 32
                        t = _7497 + ceil32(return_data.size) + 32
                        while s < _7497 + _7525 + (96 * _7557) + 32:
                            require _7497 + return_data.size - s >= 96
                            _7994 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 96
                            require mem[s] == mem[s + 12 len 20]
                            mem[_7994] = mem[s]
                            require mem[s + 32] == mem[s + 44 len 20]
                            mem[_7994 + 32] = mem[s + 32]
                            require mem[s + 64] == mem[s + 64]
                            mem[_7994 + 64] = mem[s + 64]
                            mem[t] = _7994
                            _7238 = mem[(32 * stor252.length) + 128]
                            s = s + 96
                            t = t + 32
                            continue 
                        if 0 >= mem[_703]:
                            revert with 'NH{q', 50
                        mem[mem[_703 + 32] + 32] = _7497 + ceil32(return_data.size)
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    _7238 = mem[(32 * stor252.length) + 128]
                    idx = uint8(idx) + 1
                    continue 
                _7253 = mem[64]
                mem[64] = mem[64] + 32
                mem[_7253 + 32] = 32
                _7351 = mem[_7253]
                mem[_7253 + 64] = mem[_7253]
                idx = 0
                s = _7253 + 32
                t = _7253 + (32 * mem[_7253]) + 96
                u = _7253 + 96
                while idx < _7351:
                    mem[u] = t + -_7253 - 96
                    _7954 = mem[s]
                    _7967 = mem[mem[s]]
                    mem[t] = Mask(88, 168, mem[mem[mem[s]]])
                    if mem[_7967 + 32] >= 3:
                        revert with 'NH{q', 33
                    mem[t + 32] = mem[_7967 + 32]
                    mem[t + 64] = mem[_7967 + 76 len 20]
                    _8301 = mem[_7954 + 32]
                    mem[t + 96] = 128
                    _8339 = mem[_8301]
                    mem[t + 128] = mem[_8301]
                    v = 0
                    w = _8301 + 32
                    x = t + 160
                    while v < _8339:
                        _8668 = mem[w]
                        mem[x] = mem[mem[w] + 12 len 20]
                        mem[x + 32] = mem[_8668 + 44 len 20]
                        mem[x + 64] = mem[_8668 + 64]
                        v = v + 1
                        w = w + 32
                        x = x + 96
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (96 * _8339) + 160
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t - mem[64]
        else:
            mem[64] = (64 * stor252.length) + 256
            mem[(64 * stor252.length) + 160] = 0
            mem[var35002] = 0
            mem[var35002 + 32] = 0
            mem[var37002] = var37001
            if not var37003 - 1:
                idx = 0
                while idx < stor252.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2186 = mem[(32 * idx) + 128]
                    _2197 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2197] = 0
                    mem[_2197 + 32] = 0
                    mem[_2197 + 64] = 0
                    _2213 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2213] = Mask(88, 168, _2186)
                    mem[_2213 + 32] = 0
                    mem[_2213 + 64] = uint64(_2186)
                    if idx >= mem[(32 * stor252.length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * stor252.length) + 160] = _2213
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2185 = mem[(32 * stor252.length) + 128]
                if mem[(32 * stor252.length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _2192 = mem[64]
                mem[mem[64]] = mem[(32 * stor252.length) + 128]
                mem[64] = mem[64] + (32 * _2185) + 32
                if not _2185:
                    _2618 = mem[(32 * stor252.length) + 128]
                    idx = 0
                    while uint8(idx) < _2618:
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                            revert with 'NH{q', 33
                        if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                            if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                revert with 'NH{q', 50
                            if 0 >= mem[_2192]:
                                revert with 'NH{q', 50
                            mem[mem[_2192 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                            if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                revert with 'NH{q', 50
                            _2678 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                            mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg1)
                            staticcall address(_2678).position(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2787 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2810 = mem[_2787]
                            require mem[_2787] <= test266151307()
                            require _2787 + mem[_2787] + 31 < _2787 + return_data.size
                            _2834 = mem[_2787 + mem[_2787]]
                            if mem[_2787 + mem[_2787]] > test266151307():
                                revert with 'NH{q', 65
                            if _2787 + ceil32(return_data.size) + floor32(mem[_2787 + mem[_2787]]) + 1 > test266151307() or floor32(mem[_2787 + mem[_2787]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2787 + ceil32(return_data.size) + floor32(mem[_2787 + mem[_2787]]) + 1
                            mem[_2787 + ceil32(return_data.size)] = _2834
                            require _2810 + (96 * _2834) + 32 <= return_data.size
                            s = _2787 + _2810 + 32
                            t = _2787 + ceil32(return_data.size) + 32
                            while s < _2787 + _2810 + (96 * _2834) + 32:
                                require _2787 + return_data.size - s >= 96
                                _3153 = mem[64]
                                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 96
                                require mem[s] == mem[s + 12 len 20]
                                mem[_3153] = mem[s]
                                require mem[s + 32] == mem[s + 44 len 20]
                                mem[_3153 + 32] = mem[s + 32]
                                require mem[s + 64] == mem[s + 64]
                                mem[_3153 + 64] = mem[s + 64]
                                mem[t] = _3153
                                _2618 = mem[(32 * stor252.length) + 128]
                                s = s + 96
                                t = t + 32
                                continue 
                            if 0 >= mem[_2192]:
                                revert with 'NH{q', 50
                            mem[mem[_2192 + 32] + 32] = _2787 + ceil32(return_data.size)
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        _2618 = mem[(32 * stor252.length) + 128]
                        idx = uint8(idx) + 1
                        continue 
                    _2626 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2626 + 32] = 32
                    _2690 = mem[_2626]
                    mem[_2626 + 64] = mem[_2626]
                    idx = 0
                    s = _2626 + 32
                    t = _2626 + (32 * mem[_2626]) + 96
                    u = _2626 + 96
                    while idx < _2690:
                        mem[u] = t + -_2626 - 96
                        _3124 = mem[s]
                        _3136 = mem[mem[s]]
                        mem[t] = Mask(88, 168, mem[mem[mem[s]]])
                        if mem[_3136 + 32] >= 3:
                            revert with 'NH{q', 33
                        mem[t + 32] = mem[_3136 + 32]
                        mem[t + 64] = mem[_3136 + 76 len 20]
                        _3359 = mem[_3124 + 32]
                        mem[t + 96] = 128
                        _3386 = mem[_3359]
                        mem[t + 128] = mem[_3359]
                        v = 0
                        w = _3359 + 32
                        x = t + 160
                        while v < _3386:
                            _3621 = mem[w]
                            mem[x] = mem[mem[w] + 12 len 20]
                            mem[x + 32] = mem[_3621 + 44 len 20]
                            mem[x + 64] = mem[_3621 + 64]
                            v = v + 1
                            w = w + 32
                            x = x + 96
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (96 * _3386) + 160
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len t - mem[64]
                mem[64] = _2192 + (32 * _2185) + 192
                mem[_2192 + (32 * _2185) + 96] = 0
                mem[var55002] = 0
                mem[var55002 + 32] = 0
                mem[var57002] = var57001
                mem[var57002 + 32] = 96
                mem[var59002] = var59001
                if var59003 - 1:
                    # nil
                else:
                    _5902 = mem[(32 * stor252.length) + 128]
                    idx = 0
                    while uint8(idx) < _5902:
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                            revert with 'NH{q', 33
                        if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                            if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                revert with 'NH{q', 50
                            if 0 >= mem[_2192]:
                                revert with 'NH{q', 50
                            mem[mem[_2192 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                            if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                revert with 'NH{q', 50
                            _5993 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                            mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg1)
                            staticcall address(_5993).position(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6143 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6169 = mem[_6143]
                            require mem[_6143] <= test266151307()
                            require _6143 + mem[_6143] + 31 < _6143 + return_data.size
                            _6201 = mem[_6143 + mem[_6143]]
                            if mem[_6143 + mem[_6143]] > test266151307():
                                revert with 'NH{q', 65
                            if _6143 + ceil32(return_data.size) + floor32(mem[_6143 + mem[_6143]]) + 1 > test266151307() or floor32(mem[_6143 + mem[_6143]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _6143 + ceil32(return_data.size) + floor32(mem[_6143 + mem[_6143]]) + 1
                            mem[_6143 + ceil32(return_data.size)] = _6201
                            require _6169 + (96 * _6201) + 32 <= return_data.size
                            s = _6143 + _6169 + 32
                            t = _6143 + ceil32(return_data.size) + 32
                            while s < _6143 + _6169 + (96 * _6201) + 32:
                                require _6143 + return_data.size - s >= 96
                                _6615 = mem[64]
                                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 96
                                require mem[s] == mem[s + 12 len 20]
                                mem[_6615] = mem[s]
                                require mem[s + 32] == mem[s + 44 len 20]
                                mem[_6615 + 32] = mem[s + 32]
                                require mem[s + 64] == mem[s + 64]
                                mem[_6615 + 64] = mem[s + 64]
                                mem[t] = _6615
                                _5902 = mem[(32 * stor252.length) + 128]
                                s = s + 96
                                t = t + 32
                                continue 
                            if 0 >= mem[_2192]:
                                revert with 'NH{q', 50
                            mem[mem[_2192 + 32] + 32] = _6143 + ceil32(return_data.size)
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        _5902 = mem[(32 * stor252.length) + 128]
                        idx = uint8(idx) + 1
                        continue 
                    _5916 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5916 + 32] = 32
                    _6008 = mem[_5916]
                    mem[_5916 + 64] = mem[_5916]
                    idx = 0
                    s = _5916 + 32
                    t = _5916 + (32 * mem[_5916]) + 96
                    u = _5916 + 96
                    while idx < _6008:
                        mem[u] = t + -_5916 - 96
                        _6573 = mem[s]
                        _6589 = mem[mem[s]]
                        mem[t] = Mask(88, 168, mem[mem[mem[s]]])
                        if mem[_6589 + 32] >= 3:
                            revert with 'NH{q', 33
                        mem[t + 32] = mem[_6589 + 32]
                        mem[t + 64] = mem[_6589 + 76 len 20]
                        _6901 = mem[_6573 + 32]
                        mem[t + 96] = 128
                        _6939 = mem[_6901]
                        mem[t + 128] = mem[_6901]
                        v = 0
                        w = _6901 + 32
                        x = t + 160
                        while v < _6939:
                            _7247 = mem[w]
                            mem[x] = mem[mem[w] + 12 len 20]
                            mem[x + 32] = mem[_7247 + 44 len 20]
                            mem[x + 64] = mem[_7247 + 64]
                            v = v + 1
                            w = w + 32
                            x = x + 96
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (96 * _6939) + 160
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len t - mem[64]
            else:
                mem[64] = (64 * stor252.length) + 352
                mem[(64 * stor252.length) + 256] = 0
                mem[var43002] = 0
                mem[var43002 + 32] = 0
                mem[var45002] = var45001
                if var45003 - 1:
                    mem[64] = (64 * stor252.length) + 448
                    mem[(64 * stor252.length) + 352] = 0
                    mem[var51002] = 0
                    mem[var51002 + 32] = 0
                    mem[var53002] = var53001
                    if var53003 - 1:
                        mem[64] = (64 * stor252.length) + 544
                        mem[var59002] = 0
                        mem[var59002 + 32] = 0
                        mem[var61002] = var61001
                        if var61003 - 1:
                            # nil
                        else:
                            idx = 0
                            while idx < stor252.length:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _9423 = mem[(32 * idx) + 128]
                                _9446 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_9446] = 0
                                mem[_9446 + 32] = 0
                                mem[_9446 + 64] = 0
                                _9480 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_9480] = Mask(88, 168, _9423)
                                mem[_9480 + 32] = 0
                                mem[_9480 + 64] = uint64(_9423)
                                if idx >= mem[(32 * stor252.length) + 128]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (32 * stor252.length) + 160] = _9480
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                            if mem[(32 * stor252.length) + 128] > test266151307():
                                revert with 'NH{q', 65
                            # nil
                    else:
                        idx = 0
                        while idx < stor252.length:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _6577 = mem[(32 * idx) + 128]
                            _6596 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_6596] = 0
                            mem[_6596 + 32] = 0
                            mem[_6596 + 64] = 0
                            _6626 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_6626] = Mask(88, 168, _6577)
                            mem[_6626 + 32] = 0
                            mem[_6626 + 64] = uint64(_6577)
                            if idx >= mem[(32 * stor252.length) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * stor252.length) + 160] = _6626
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        _6576 = mem[(32 * stor252.length) + 128]
                        if mem[(32 * stor252.length) + 128] > test266151307():
                            revert with 'NH{q', 65
                        _6587 = mem[64]
                        mem[mem[64]] = mem[(32 * stor252.length) + 128]
                        mem[64] = mem[64] + (32 * _6576) + 32
                        if _6576:
                            # nil
                        else:
                            _7240 = mem[(32 * stor252.length) + 128]
                            idx = 0
                            while uint8(idx) < _7240:
                                if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                                    revert with 'NH{q', 33
                                if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                                    if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                        revert with 'NH{q', 50
                                    if 0 >= mem[_6587]:
                                        revert with 'NH{q', 50
                                    mem[mem[_6587 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                                    if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                        revert with 'NH{q', 50
                                    _7336 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                                    mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(arg1)
                                    staticcall address(_7336).position(address arg1) with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7500 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7528 = mem[_7500]
                                    require mem[_7500] <= test266151307()
                                    require _7500 + mem[_7500] + 31 < _7500 + return_data.size
                                    _7558 = mem[_7500 + mem[_7500]]
                                    if mem[_7500 + mem[_7500]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _7500 + ceil32(return_data.size) + floor32(mem[_7500 + mem[_7500]]) + 1 > test266151307() or floor32(mem[_7500 + mem[_7500]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _7500 + ceil32(return_data.size) + floor32(mem[_7500 + mem[_7500]]) + 1
                                    mem[_7500 + ceil32(return_data.size)] = _7558
                                    require _7528 + (96 * _7558) + 32 <= return_data.size
                                    s = _7500 + _7528 + 32
                                    t = _7500 + ceil32(return_data.size) + 32
                                    while s < _7500 + _7528 + (96 * _7558) + 32:
                                        require _7500 + return_data.size - s >= 96
                                        _7997 = mem[64]
                                        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                            revert with 'NH{q', 65
                                        mem[64] = mem[64] + 96
                                        require mem[s] == mem[s + 12 len 20]
                                        mem[_7997] = mem[s]
                                        require mem[s + 32] == mem[s + 44 len 20]
                                        mem[_7997 + 32] = mem[s + 32]
                                        require mem[s + 64] == mem[s + 64]
                                        mem[_7997 + 64] = mem[s + 64]
                                        mem[t] = _7997
                                        _7240 = mem[(32 * stor252.length) + 128]
                                        s = s + 96
                                        t = t + 32
                                        continue 
                                    if 0 >= mem[_6587]:
                                        revert with 'NH{q', 50
                                    mem[mem[_6587 + 32] + 32] = _7500 + ceil32(return_data.size)
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                _7240 = mem[(32 * stor252.length) + 128]
                                idx = uint8(idx) + 1
                                continue 
                            _7255 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_7255 + 32] = 32
                            _7353 = mem[_7255]
                            mem[_7255 + 64] = mem[_7255]
                            idx = 0
                            s = _7255 + 32
                            t = _7255 + (32 * mem[_7255]) + 96
                            u = _7255 + 96
                            while idx < _7353:
                                mem[u] = t + -_7255 - 96
                                _7955 = mem[s]
                                _7970 = mem[mem[s]]
                                mem[t] = Mask(88, 168, mem[mem[mem[s]]])
                                if mem[_7970 + 32] >= 3:
                                    revert with 'NH{q', 33
                                mem[t + 32] = mem[_7970 + 32]
                                mem[t + 64] = mem[_7970 + 76 len 20]
                                _8305 = mem[_7955 + 32]
                                mem[t + 96] = 128
                                _8342 = mem[_8305]
                                mem[t + 128] = mem[_8305]
                                v = 0
                                w = _8305 + 32
                                x = t + 160
                                while v < _8342:
                                    _8669 = mem[w]
                                    mem[x] = mem[mem[w] + 12 len 20]
                                    mem[x + 32] = mem[_8669 + 44 len 20]
                                    mem[x + 64] = mem[_8669 + 64]
                                    v = v + 1
                                    w = w + 32
                                    x = x + 96
                                    continue 
                                idx = idx + 1
                                s = s + 32
                                t = t + (96 * _8342) + 160
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len t - mem[64]
                else:
                    idx = 0
                    while idx < stor252.length:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _4171 = mem[(32 * idx) + 128]
                        _4186 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_4186] = 0
                        mem[_4186 + 32] = 0
                        mem[_4186 + 64] = 0
                        _4208 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_4208] = Mask(88, 168, _4171)
                        mem[_4208 + 32] = 0
                        mem[_4208 + 64] = uint64(_4171)
                        if idx >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * stor252.length) + 160] = _4208
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _4170 = mem[(32 * stor252.length) + 128]
                    if mem[(32 * stor252.length) + 128] > test266151307():
                        revert with 'NH{q', 65
                    _4179 = mem[64]
                    mem[mem[64]] = mem[(32 * stor252.length) + 128]
                    mem[64] = mem[64] + (32 * _4170) + 32
                    if not _4170:
                        _4700 = mem[(32 * stor252.length) + 128]
                        idx = 0
                        while uint8(idx) < _4700:
                            if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                                revert with 'NH{q', 33
                            if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                                if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                    revert with 'NH{q', 50
                                if 0 >= mem[_4179]:
                                    revert with 'NH{q', 50
                                mem[mem[_4179 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                                if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                    revert with 'NH{q', 50
                                _4774 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                                mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(arg1)
                                staticcall address(_4774).position(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4906 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4929 = mem[_4906]
                                require mem[_4906] <= test266151307()
                                require _4906 + mem[_4906] + 31 < _4906 + return_data.size
                                _4958 = mem[_4906 + mem[_4906]]
                                if mem[_4906 + mem[_4906]] > test266151307():
                                    revert with 'NH{q', 65
                                if _4906 + ceil32(return_data.size) + floor32(mem[_4906 + mem[_4906]]) + 1 > test266151307() or floor32(mem[_4906 + mem[_4906]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _4906 + ceil32(return_data.size) + floor32(mem[_4906 + mem[_4906]]) + 1
                                mem[_4906 + ceil32(return_data.size)] = _4958
                                require _4929 + (96 * _4958) + 32 <= return_data.size
                                s = _4906 + _4929 + 32
                                t = _4906 + ceil32(return_data.size) + 32
                                while s < _4906 + _4929 + (96 * _4958) + 32:
                                    require _4906 + return_data.size - s >= 96
                                    _5325 = mem[64]
                                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                        revert with 'NH{q', 65
                                    mem[64] = mem[64] + 96
                                    require mem[s] == mem[s + 12 len 20]
                                    mem[_5325] = mem[s]
                                    require mem[s + 32] == mem[s + 44 len 20]
                                    mem[_5325 + 32] = mem[s + 32]
                                    require mem[s + 64] == mem[s + 64]
                                    mem[_5325 + 64] = mem[s + 64]
                                    mem[t] = _5325
                                    _4700 = mem[(32 * stor252.length) + 128]
                                    s = s + 96
                                    t = t + 32
                                    continue 
                                if 0 >= mem[_4179]:
                                    revert with 'NH{q', 50
                                mem[mem[_4179 + 32] + 32] = _4906 + ceil32(return_data.size)
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            _4700 = mem[(32 * stor252.length) + 128]
                            idx = uint8(idx) + 1
                            continue 
                        _4709 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4709 + 32] = 32
                        _4788 = mem[_4709]
                        mem[_4709 + 64] = mem[_4709]
                        idx = 0
                        s = _4709 + 32
                        t = _4709 + (32 * mem[_4709]) + 96
                        u = _4709 + 96
                        while idx < _4788:
                            mem[u] = t + -_4709 - 96
                            _5290 = mem[s]
                            _5303 = mem[mem[s]]
                            mem[t] = Mask(88, 168, mem[mem[mem[s]]])
                            if mem[_5303 + 32] >= 3:
                                revert with 'NH{q', 33
                            mem[t + 32] = mem[_5303 + 32]
                            mem[t + 64] = mem[_5303 + 76 len 20]
                            _5588 = mem[_5290 + 32]
                            mem[t + 96] = 128
                            _5618 = mem[_5588]
                            mem[t + 128] = mem[_5588]
                            v = 0
                            w = _5588 + 32
                            x = t + 160
                            while v < _5618:
                                _5906 = mem[w]
                                mem[x] = mem[mem[w] + 12 len 20]
                                mem[x + 32] = mem[_5906 + 44 len 20]
                                mem[x + 64] = mem[_5906 + 64]
                                v = v + 1
                                w = w + 32
                                x = x + 96
                                continue 
                            idx = idx + 1
                            s = s + 32
                            t = t + (96 * _5618) + 160
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len t - mem[64]
                    mem[64] = _4179 + (32 * _4170) + 192
                    mem[_4179 + (32 * _4170) + 96] = 0
                    mem[var63002] = 0
                    mem[var63002 + 32] = 0
                    mem[var65002] = var65001
                    mem[var65002 + 32] = 96
                    mem[var67002] = var67001
                    if var67003 - 1:
                        # nil
                    else:
                        _8664 = mem[(32 * stor252.length) + 128]
                        idx = 0
                        while uint8(idx) < _8664:
                            if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                                revert with 'NH{q', 33
                            if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                                if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                    revert with 'NH{q', 50
                                if 0 >= mem[_4179]:
                                    revert with 'NH{q', 50
                                mem[mem[_4179 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                                if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                    revert with 'NH{q', 50
                                _8769 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                                mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(arg1)
                                staticcall address(_8769).position(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8942 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8968 = mem[_8942]
                                require mem[_8942] <= test266151307()
                                require _8942 + mem[_8942] + 31 < _8942 + return_data.size
                                _9005 = mem[_8942 + mem[_8942]]
                                if mem[_8942 + mem[_8942]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8942 + ceil32(return_data.size) + floor32(mem[_8942 + mem[_8942]]) + 1 > test266151307() or floor32(mem[_8942 + mem[_8942]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8942 + ceil32(return_data.size) + floor32(mem[_8942 + mem[_8942]]) + 1
                                mem[_8942 + ceil32(return_data.size)] = _9005
                                require _8968 + (96 * _9005) + 32 <= return_data.size
                                s = _8942 + _8968 + 32
                                t = _8942 + ceil32(return_data.size) + 32
                                while s < _8942 + _8968 + (96 * _9005) + 32:
                                    require _8942 + return_data.size - s >= 96
                                    _9467 = mem[64]
                                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                        revert with 'NH{q', 65
                                    mem[64] = mem[64] + 96
                                    require mem[s] == mem[s + 12 len 20]
                                    mem[_9467] = mem[s]
                                    require mem[s + 32] == mem[s + 44 len 20]
                                    mem[_9467 + 32] = mem[s + 32]
                                    require mem[s + 64] == mem[s + 64]
                                    mem[_9467 + 64] = mem[s + 64]
                                    mem[t] = _9467
                                    _8664 = mem[(32 * stor252.length) + 128]
                                    s = s + 96
                                    t = t + 32
                                    continue 
                                if 0 >= mem[_4179]:
                                    revert with 'NH{q', 50
                                mem[mem[_4179 + 32] + 32] = _8942 + ceil32(return_data.size)
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            _8664 = mem[(32 * stor252.length) + 128]
                            idx = uint8(idx) + 1
                            continue 
                        _8679 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_8679 + 32] = 32
                        mem[_8679 + 64] = mem[_8679]
                        if var120001 >= mem[_8679]:
                            return memory
                              from _8679 + 32
                               len var120004 + -_8679 - 32
                        mem[var120009] = var120004 + -_8679 - 96
                        _9436 = mem[mem[var120002]]
                        mem[var120004] = Mask(88, 168, mem[mem[mem[var120002]]])
                        if mem[_9436 + 32] >= 3:
                            revert with 'NH{q', 33
                        # nil
    else:
        if stor252.length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * stor252.length) + 128] = stor252.length
        mem[64] = (64 * stor252.length) + 160
        if not stor252.length:
            idx = 0
            while idx < stor252.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _182 = mem[(32 * idx) + 128]
                _184 = mem[64]
                mem[64] = mem[64] + 96
                mem[_184] = 0
                mem[_184 + 32] = 0
                mem[_184 + 64] = 0
                _187 = mem[64]
                mem[64] = mem[64] + 96
                mem[_187] = Mask(88, 168, _182)
                mem[_187 + 32] = 0
                mem[_187 + 64] = uint64(_182)
                if idx >= mem[(32 * stor252.length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * stor252.length) + 160] = _187
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _181 = mem[(32 * stor252.length) + 128]
            if mem[(32 * stor252.length) + 128] > test266151307():
                revert with 'NH{q', 65
            _183 = mem[64]
            mem[mem[64]] = mem[(32 * stor252.length) + 128]
            mem[64] = mem[64] + (32 * _181) + 32
            if not _181:
                _351 = mem[(32 * stor252.length) + 128]
                idx = 0
                while uint8(idx) < _351:
                    if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                        revert with 'NH{q', 33
                    if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_183]:
                            revert with 'NH{q', 50
                        mem[mem[_183 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        _378 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                        mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg1)
                        staticcall address(_378).position(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _434 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _456 = mem[_434]
                        require mem[_434] <= test266151307()
                        require _434 + mem[_434] + 31 < _434 + return_data.size
                        _471 = mem[_434 + mem[_434]]
                        if mem[_434 + mem[_434]] > test266151307():
                            revert with 'NH{q', 65
                        if _434 + ceil32(return_data.size) + floor32(mem[_434 + mem[_434]]) + 1 > test266151307() or floor32(mem[_434 + mem[_434]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _434 + ceil32(return_data.size) + floor32(mem[_434 + mem[_434]]) + 1
                        mem[_434 + ceil32(return_data.size)] = _471
                        require _456 + (96 * _471) + 32 <= return_data.size
                        s = _434 + _456 + 32
                        t = _434 + ceil32(return_data.size) + 32
                        while s < _434 + _456 + (96 * _471) + 32:
                            require _434 + return_data.size - s >= 96
                            _709 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 96
                            require mem[s] == mem[s + 12 len 20]
                            mem[_709] = mem[s]
                            require mem[s + 32] == mem[s + 44 len 20]
                            mem[_709 + 32] = mem[s + 32]
                            require mem[s + 64] == mem[s + 64]
                            mem[_709 + 64] = mem[s + 64]
                            mem[t] = _709
                            _351 = mem[(32 * stor252.length) + 128]
                            s = s + 96
                            t = t + 32
                            continue 
                        if 0 >= mem[_183]:
                            revert with 'NH{q', 50
                        mem[mem[_183 + 32] + 32] = _434 + ceil32(return_data.size)
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    _351 = mem[(32 * stor252.length) + 128]
                    idx = uint8(idx) + 1
                    continue 
                _354 = mem[64]
                mem[64] = mem[64] + 32
                mem[_354 + 32] = 32
                _383 = mem[_354]
                mem[_354 + 64] = mem[_354]
                idx = 0
                s = _354 + 32
                t = _354 + (32 * mem[_354]) + 96
                u = _354 + 96
                while idx < _383:
                    mem[u] = t + -_354 - 96
                    _694 = mem[s]
                    _701 = mem[mem[s]]
                    mem[t] = Mask(88, 168, mem[mem[mem[s]]])
                    if mem[_701 + 32] >= 3:
                        revert with 'NH{q', 33
                    mem[t + 32] = mem[_701 + 32]
                    mem[t + 64] = mem[_701 + 76 len 20]
                    _833 = mem[_694 + 32]
                    mem[t + 96] = 128
                    _851 = mem[_833]
                    mem[t + 128] = mem[_833]
                    v = 0
                    w = _833 + 32
                    x = t + 160
                    while v < _851:
                        _1014 = mem[w]
                        mem[x] = mem[mem[w] + 12 len 20]
                        mem[x + 32] = mem[_1014 + 44 len 20]
                        mem[x + 64] = mem[_1014 + 64]
                        v = v + 1
                        w = w + 32
                        x = x + 96
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (96 * _851) + 160
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t - mem[64]
            mem[64] = _183 + (32 * _181) + 192
            mem[_183 + (32 * _181) + 96] = 0
            mem[var41002] = 0
            mem[var41002 + 32] = 0
            mem[var43002] = var43001
            mem[var43002 + 32] = 96
            mem[var45002] = var45001
            if not var45003 - 1:
                _2615 = mem[(32 * stor252.length) + 128]
                idx = 0
                while uint8(idx) < _2615:
                    if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                        revert with 'NH{q', 33
                    if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_183]:
                            revert with 'NH{q', 50
                        mem[mem[_183 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        _2670 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                        mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg1)
                        staticcall address(_2670).position(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2780 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2803 = mem[_2780]
                        require mem[_2780] <= test266151307()
                        require _2780 + mem[_2780] + 31 < _2780 + return_data.size
                        _2824 = mem[_2780 + mem[_2780]]
                        if mem[_2780 + mem[_2780]] > test266151307():
                            revert with 'NH{q', 65
                        if _2780 + ceil32(return_data.size) + floor32(mem[_2780 + mem[_2780]]) + 1 > test266151307() or floor32(mem[_2780 + mem[_2780]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2780 + ceil32(return_data.size) + floor32(mem[_2780 + mem[_2780]]) + 1
                        mem[_2780 + ceil32(return_data.size)] = _2824
                        require _2803 + (96 * _2824) + 32 <= return_data.size
                        s = _2780 + _2803 + 32
                        t = _2780 + ceil32(return_data.size) + 32
                        while s < _2780 + _2803 + (96 * _2824) + 32:
                            require _2780 + return_data.size - s >= 96
                            _3145 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 96
                            require mem[s] == mem[s + 12 len 20]
                            mem[_3145] = mem[s]
                            require mem[s + 32] == mem[s + 44 len 20]
                            mem[_3145 + 32] = mem[s + 32]
                            require mem[s + 64] == mem[s + 64]
                            mem[_3145 + 64] = mem[s + 64]
                            mem[t] = _3145
                            _2615 = mem[(32 * stor252.length) + 128]
                            s = s + 96
                            t = t + 32
                            continue 
                        if 0 >= mem[_183]:
                            revert with 'NH{q', 50
                        mem[mem[_183 + 32] + 32] = _2780 + ceil32(return_data.size)
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    _2615 = mem[(32 * stor252.length) + 128]
                    idx = uint8(idx) + 1
                    continue 
                _2623 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2623 + 32] = 32
                _2681 = mem[_2623]
                mem[_2623 + 64] = mem[_2623]
                idx = 0
                s = _2623 + 32
                t = _2623 + (32 * mem[_2623]) + 96
                u = _2623 + 96
                while idx < _2681:
                    mem[u] = t + -_2623 - 96
                    _3121 = mem[s]
                    _3130 = mem[mem[s]]
                    mem[t] = Mask(88, 168, mem[mem[mem[s]]])
                    if mem[_3130 + 32] >= 3:
                        revert with 'NH{q', 33
                    mem[t + 32] = mem[_3130 + 32]
                    mem[t + 64] = mem[_3130 + 76 len 20]
                    _3350 = mem[_3121 + 32]
                    mem[t + 96] = 128
                    _3379 = mem[_3350]
                    mem[t + 128] = mem[_3350]
                    v = 0
                    w = _3350 + 32
                    x = t + 160
                    while v < _3379:
                        _3618 = mem[w]
                        mem[x] = mem[mem[w] + 12 len 20]
                        mem[x + 32] = mem[_3618 + 44 len 20]
                        mem[x + 64] = mem[_3618 + 64]
                        v = v + 1
                        w = w + 32
                        x = x + 96
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (96 * _3379) + 160
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t - mem[64]
            mem[64] = _183 + (32 * _181) + 352
            mem[_183 + (32 * _181) + 256] = 0
            mem[var53002] = 0
            mem[var53002 + 32] = 0
            mem[var55002] = var55001
            mem[var55002 + 32] = 96
            mem[var57002] = var57001
            if var57003 - 1:
                # nil
            else:
                _5897 = mem[(32 * stor252.length) + 128]
                idx = 0
                while uint8(idx) < _5897:
                    if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                        revert with 'NH{q', 33
                    if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_183]:
                            revert with 'NH{q', 50
                        mem[mem[_183 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        _5978 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                        mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg1)
                        staticcall address(_5978).position(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6132 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6160 = mem[_6132]
                        require mem[_6132] <= test266151307()
                        require _6132 + mem[_6132] + 31 < _6132 + return_data.size
                        _6186 = mem[_6132 + mem[_6132]]
                        if mem[_6132 + mem[_6132]] > test266151307():
                            revert with 'NH{q', 65
                        if _6132 + ceil32(return_data.size) + floor32(mem[_6132 + mem[_6132]]) + 1 > test266151307() or floor32(mem[_6132 + mem[_6132]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _6132 + ceil32(return_data.size) + floor32(mem[_6132 + mem[_6132]]) + 1
                        mem[_6132 + ceil32(return_data.size)] = _6186
                        require _6160 + (96 * _6186) + 32 <= return_data.size
                        s = _6132 + _6160 + 32
                        t = _6132 + ceil32(return_data.size) + 32
                        while s < _6132 + _6160 + (96 * _6186) + 32:
                            require _6132 + return_data.size - s >= 96
                            _6601 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 96
                            require mem[s] == mem[s + 12 len 20]
                            mem[_6601] = mem[s]
                            require mem[s + 32] == mem[s + 44 len 20]
                            mem[_6601 + 32] = mem[s + 32]
                            require mem[s + 64] == mem[s + 64]
                            mem[_6601 + 64] = mem[s + 64]
                            mem[t] = _6601
                            _5897 = mem[(32 * stor252.length) + 128]
                            s = s + 96
                            t = t + 32
                            continue 
                        if 0 >= mem[_183]:
                            revert with 'NH{q', 50
                        mem[mem[_183 + 32] + 32] = _6132 + ceil32(return_data.size)
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    _5897 = mem[(32 * stor252.length) + 128]
                    idx = uint8(idx) + 1
                    continue 
                _5909 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5909 + 32] = 32
                _5995 = mem[_5909]
                mem[_5909 + 64] = mem[_5909]
                idx = 0
                s = _5909 + 32
                t = _5909 + (32 * mem[_5909]) + 96
                u = _5909 + 96
                while idx < _5995:
                    mem[u] = t + -_5909 - 96
                    _6567 = mem[s]
                    _6579 = mem[mem[s]]
                    mem[t] = Mask(88, 168, mem[mem[mem[s]]])
                    if mem[_6579 + 32] >= 3:
                        revert with 'NH{q', 33
                    mem[t + 32] = mem[_6579 + 32]
                    mem[t + 64] = mem[_6579 + 76 len 20]
                    _6886 = mem[_6567 + 32]
                    mem[t + 96] = 128
                    _6925 = mem[_6886]
                    mem[t + 128] = mem[_6886]
                    v = 0
                    w = _6886 + 32
                    x = t + 160
                    while v < _6925:
                        _7242 = mem[w]
                        mem[x] = mem[mem[w] + 12 len 20]
                        mem[x + 32] = mem[_7242 + 44 len 20]
                        mem[x + 64] = mem[_7242 + 64]
                        v = v + 1
                        w = w + 32
                        x = x + 96
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (96 * _6925) + 160
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t - mem[64]
        else:
            mem[64] = (64 * stor252.length) + 256
            mem[(64 * stor252.length) + 160] = 0
            mem[var31002] = 0
            mem[var31002 + 32] = 0
            mem[var33002] = var33001
            if not var33003 - 1:
                idx = 0
                while idx < stor252.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1402 = mem[(32 * idx) + 128]
                    _1408 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1408] = 0
                    mem[_1408 + 32] = 0
                    mem[_1408 + 64] = 0
                    _1420 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1420] = Mask(88, 168, _1402)
                    mem[_1420 + 32] = 0
                    mem[_1420 + 64] = uint64(_1402)
                    if idx >= mem[(32 * stor252.length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * stor252.length) + 160] = _1420
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1401 = mem[(32 * stor252.length) + 128]
                if mem[(32 * stor252.length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _1403 = mem[64]
                mem[mem[64]] = mem[(32 * stor252.length) + 128]
                mem[64] = mem[64] + (32 * _1401) + 32
                if not _1401:
                    _1755 = mem[(32 * stor252.length) + 128]
                    idx = 0
                    while uint8(idx) < _1755:
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                            revert with 'NH{q', 33
                        if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                            if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                revert with 'NH{q', 50
                            if 0 >= mem[_1403]:
                                revert with 'NH{q', 50
                            mem[mem[_1403 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                            if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                revert with 'NH{q', 50
                            _1796 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                            mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg1)
                            staticcall address(_1796).position(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1887 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1906 = mem[_1887]
                            require mem[_1887] <= test266151307()
                            require _1887 + mem[_1887] + 31 < _1887 + return_data.size
                            _1926 = mem[_1887 + mem[_1887]]
                            if mem[_1887 + mem[_1887]] > test266151307():
                                revert with 'NH{q', 65
                            if _1887 + ceil32(return_data.size) + floor32(mem[_1887 + mem[_1887]]) + 1 > test266151307() or floor32(mem[_1887 + mem[_1887]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1887 + ceil32(return_data.size) + floor32(mem[_1887 + mem[_1887]]) + 1
                            mem[_1887 + ceil32(return_data.size)] = _1926
                            require _1906 + (96 * _1926) + 32 <= return_data.size
                            s = _1887 + _1906 + 32
                            t = _1887 + ceil32(return_data.size) + 32
                            while s < _1887 + _1906 + (96 * _1926) + 32:
                                require _1887 + return_data.size - s >= 96
                                _2202 = mem[64]
                                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 96
                                require mem[s] == mem[s + 12 len 20]
                                mem[_2202] = mem[s]
                                require mem[s + 32] == mem[s + 44 len 20]
                                mem[_2202 + 32] = mem[s + 32]
                                require mem[s + 64] == mem[s + 64]
                                mem[_2202 + 64] = mem[s + 64]
                                mem[t] = _2202
                                _1755 = mem[(32 * stor252.length) + 128]
                                s = s + 96
                                t = t + 32
                                continue 
                            if 0 >= mem[_1403]:
                                revert with 'NH{q', 50
                            mem[mem[_1403 + 32] + 32] = _1887 + ceil32(return_data.size)
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        _1755 = mem[(32 * stor252.length) + 128]
                        idx = uint8(idx) + 1
                        continue 
                    _1759 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1759 + 32] = 32
                    _1805 = mem[_1759]
                    mem[_1759 + 64] = mem[_1759]
                    idx = 0
                    s = _1759 + 32
                    t = _1759 + (32 * mem[_1759]) + 96
                    u = _1759 + 96
                    while idx < _1805:
                        mem[u] = t + -_1759 - 96
                        _2180 = mem[s]
                        _2191 = mem[mem[s]]
                        mem[t] = Mask(88, 168, mem[mem[mem[s]]])
                        if mem[_2191 + 32] >= 3:
                            revert with 'NH{q', 33
                        mem[t + 32] = mem[_2191 + 32]
                        mem[t + 64] = mem[_2191 + 76 len 20]
                        _2382 = mem[_2180 + 32]
                        mem[t + 96] = 128
                        _2407 = mem[_2382]
                        mem[t + 128] = mem[_2382]
                        v = 0
                        w = _2382 + 32
                        x = t + 160
                        while v < _2407:
                            _2620 = mem[w]
                            mem[x] = mem[mem[w] + 12 len 20]
                            mem[x + 32] = mem[_2620 + 44 len 20]
                            mem[x + 64] = mem[_2620 + 64]
                            v = v + 1
                            w = w + 32
                            x = x + 96
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (96 * _2407) + 160
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len t - mem[64]
                mem[64] = _1403 + (32 * _1401) + 192
                mem[_1403 + (32 * _1401) + 96] = 0
                mem[var51002] = 0
                mem[var51002 + 32] = 0
                mem[var53002] = var53001
                mem[var53002 + 32] = 96
                mem[var55002] = var55001
                if not var55003 - 1:
                    _4697 = mem[(32 * stor252.length) + 128]
                    idx = 0
                    while uint8(idx) < _4697:
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                            revert with 'NH{q', 33
                        if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                            if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                revert with 'NH{q', 50
                            if 0 >= mem[_1403]:
                                revert with 'NH{q', 50
                            mem[mem[_1403 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                            if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                revert with 'NH{q', 50
                            _4768 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                            mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg1)
                            staticcall address(_4768).position(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4902 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4926 = mem[_4902]
                            require mem[_4902] <= test266151307()
                            require _4902 + mem[_4902] + 31 < _4902 + return_data.size
                            _4955 = mem[_4902 + mem[_4902]]
                            if mem[_4902 + mem[_4902]] > test266151307():
                                revert with 'NH{q', 65
                            if _4902 + ceil32(return_data.size) + floor32(mem[_4902 + mem[_4902]]) + 1 > test266151307() or floor32(mem[_4902 + mem[_4902]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _4902 + ceil32(return_data.size) + floor32(mem[_4902 + mem[_4902]]) + 1
                            mem[_4902 + ceil32(return_data.size)] = _4955
                            require _4926 + (96 * _4955) + 32 <= return_data.size
                            s = _4902 + _4926 + 32
                            t = _4902 + ceil32(return_data.size) + 32
                            while s < _4902 + _4926 + (96 * _4955) + 32:
                                require _4902 + return_data.size - s >= 96
                                _5320 = mem[64]
                                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 96
                                require mem[s] == mem[s + 12 len 20]
                                mem[_5320] = mem[s]
                                require mem[s + 32] == mem[s + 44 len 20]
                                mem[_5320 + 32] = mem[s + 32]
                                require mem[s + 64] == mem[s + 64]
                                mem[_5320 + 64] = mem[s + 64]
                                mem[t] = _5320
                                _4697 = mem[(32 * stor252.length) + 128]
                                s = s + 96
                                t = t + 32
                                continue 
                            if 0 >= mem[_1403]:
                                revert with 'NH{q', 50
                            mem[mem[_1403 + 32] + 32] = _4902 + ceil32(return_data.size)
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        _4697 = mem[(32 * stor252.length) + 128]
                        idx = uint8(idx) + 1
                        continue 
                    _4707 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_4707 + 32] = 32
                    _4784 = mem[_4707]
                    mem[_4707 + 64] = mem[_4707]
                    idx = 0
                    s = _4707 + 32
                    t = _4707 + (32 * mem[_4707]) + 96
                    u = _4707 + 96
                    while idx < _4784:
                        mem[u] = t + -_4707 - 96
                        _5289 = mem[s]
                        _5300 = mem[mem[s]]
                        mem[t] = Mask(88, 168, mem[mem[mem[s]]])
                        if mem[_5300 + 32] >= 3:
                            revert with 'NH{q', 33
                        mem[t + 32] = mem[_5300 + 32]
                        mem[t + 64] = mem[_5300 + 76 len 20]
                        _5582 = mem[_5289 + 32]
                        mem[t + 96] = 128
                        _5615 = mem[_5582]
                        mem[t + 128] = mem[_5582]
                        v = 0
                        w = _5582 + 32
                        x = t + 160
                        while v < _5615:
                            _5905 = mem[w]
                            mem[x] = mem[mem[w] + 12 len 20]
                            mem[x + 32] = mem[_5905 + 44 len 20]
                            mem[x + 64] = mem[_5905 + 64]
                            v = v + 1
                            w = w + 32
                            x = x + 96
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (96 * _5615) + 160
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len t - mem[64]
                mem[64] = _1403 + (32 * _1401) + 352
                mem[_1403 + (32 * _1401) + 256] = 0
                mem[var63002] = 0
                mem[var63002 + 32] = 0
                mem[var65002] = var65001
                mem[var65002 + 32] = 96
                mem[var67002] = var67001
                if var67003 - 1:
                    # nil
                else:
                    _8661 = mem[(32 * stor252.length) + 128]
                    idx = 0
                    while uint8(idx) < _8661:
                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                            revert with 'NH{q', 33
                        if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                            if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                revert with 'NH{q', 50
                            if 0 >= mem[_1403]:
                                revert with 'NH{q', 50
                            mem[mem[_1403 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                            if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                revert with 'NH{q', 50
                            _8759 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                            mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg1)
                            staticcall address(_8759).position(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8935 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8962 = mem[_8935]
                            require mem[_8935] <= test266151307()
                            require _8935 + mem[_8935] + 31 < _8935 + return_data.size
                            _8995 = mem[_8935 + mem[_8935]]
                            if mem[_8935 + mem[_8935]] > test266151307():
                                revert with 'NH{q', 65
                            if _8935 + ceil32(return_data.size) + floor32(mem[_8935 + mem[_8935]]) + 1 > test266151307() or floor32(mem[_8935 + mem[_8935]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _8935 + ceil32(return_data.size) + floor32(mem[_8935 + mem[_8935]]) + 1
                            mem[_8935 + ceil32(return_data.size)] = _8995
                            require _8962 + (96 * _8995) + 32 <= return_data.size
                            s = _8935 + _8962 + 32
                            t = _8935 + ceil32(return_data.size) + 32
                            while s < _8935 + _8962 + (96 * _8995) + 32:
                                require _8935 + return_data.size - s >= 96
                                _9460 = mem[64]
                                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 96
                                require mem[s] == mem[s + 12 len 20]
                                mem[_9460] = mem[s]
                                require mem[s + 32] == mem[s + 44 len 20]
                                mem[_9460 + 32] = mem[s + 32]
                                require mem[s + 64] == mem[s + 64]
                                mem[_9460 + 64] = mem[s + 64]
                                mem[t] = _9460
                                _8661 = mem[(32 * stor252.length) + 128]
                                s = s + 96
                                t = t + 32
                                continue 
                            if 0 >= mem[_1403]:
                                revert with 'NH{q', 50
                            mem[mem[_1403 + 32] + 32] = _8935 + ceil32(return_data.size)
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        _8661 = mem[(32 * stor252.length) + 128]
                        idx = uint8(idx) + 1
                        continue 
                    _8675 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_8675 + 32] = 32
                    mem[_8675 + 64] = mem[_8675]
                    if var120001 >= mem[_8675]:
                        return memory
                          from _8675 + 32
                           len var120004 + -_8675 - 32
                    mem[var120009] = var120004 + -_8675 - 96
                    _9433 = mem[mem[var120002]]
                    mem[var120004] = Mask(88, 168, mem[mem[mem[var120002]]])
                    if mem[_9433 + 32] >= 3:
                        revert with 'NH{q', 33
                    # nil
            else:
                mem[64] = (64 * stor252.length) + 352
                mem[(64 * stor252.length) + 256] = 0
                mem[var39002] = 0
                mem[var39002 + 32] = 0
                mem[var41002] = var41001
                if not var41003 - 1:
                    idx = 0
                    while idx < stor252.length:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3127 = mem[(32 * idx) + 128]
                        _3139 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3139] = 0
                        mem[_3139 + 32] = 0
                        mem[_3139 + 64] = 0
                        _3157 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3157] = Mask(88, 168, _3127)
                        mem[_3157 + 32] = 0
                        mem[_3157 + 64] = uint64(_3127)
                        if idx >= mem[(32 * stor252.length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * stor252.length) + 160] = _3157
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _3126 = mem[(32 * stor252.length) + 128]
                    if mem[(32 * stor252.length) + 128] > test266151307():
                        revert with 'NH{q', 65
                    _3131 = mem[64]
                    mem[mem[64]] = mem[(32 * stor252.length) + 128]
                    mem[64] = mem[64] + (32 * _3126) + 32
                    if not _3126:
                        _3615 = mem[(32 * stor252.length) + 128]
                        idx = 0
                        while uint8(idx) < _3615:
                            if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                                revert with 'NH{q', 33
                            if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                                if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                    revert with 'NH{q', 50
                                if 0 >= mem[_3131]:
                                    revert with 'NH{q', 50
                                mem[mem[_3131 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                                if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                    revert with 'NH{q', 50
                                _3676 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                                mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(arg1)
                                staticcall address(_3676).position(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3800 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3823 = mem[_3800]
                                require mem[_3800] <= test266151307()
                                require _3800 + mem[_3800] + 31 < _3800 + return_data.size
                                _3845 = mem[_3800 + mem[_3800]]
                                if mem[_3800 + mem[_3800]] > test266151307():
                                    revert with 'NH{q', 65
                                if _3800 + ceil32(return_data.size) + floor32(mem[_3800 + mem[_3800]]) + 1 > test266151307() or floor32(mem[_3800 + mem[_3800]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _3800 + ceil32(return_data.size) + floor32(mem[_3800 + mem[_3800]]) + 1
                                mem[_3800 + ceil32(return_data.size)] = _3845
                                require _3823 + (96 * _3845) + 32 <= return_data.size
                                s = _3800 + _3823 + 32
                                t = _3800 + ceil32(return_data.size) + 32
                                while s < _3800 + _3823 + (96 * _3845) + 32:
                                    require _3800 + return_data.size - s >= 96
                                    _4192 = mem[64]
                                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                        revert with 'NH{q', 65
                                    mem[64] = mem[64] + 96
                                    require mem[s] == mem[s + 12 len 20]
                                    mem[_4192] = mem[s]
                                    require mem[s + 32] == mem[s + 44 len 20]
                                    mem[_4192 + 32] = mem[s + 32]
                                    require mem[s + 64] == mem[s + 64]
                                    mem[_4192 + 64] = mem[s + 64]
                                    mem[t] = _4192
                                    _3615 = mem[(32 * stor252.length) + 128]
                                    s = s + 96
                                    t = t + 32
                                    continue 
                                if 0 >= mem[_3131]:
                                    revert with 'NH{q', 50
                                mem[mem[_3131 + 32] + 32] = _3800 + ceil32(return_data.size)
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            _3615 = mem[(32 * stor252.length) + 128]
                            idx = uint8(idx) + 1
                            continue 
                        _3622 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3622 + 32] = 32
                        _3690 = mem[_3622]
                        mem[_3622 + 64] = mem[_3622]
                        idx = 0
                        s = _3622 + 32
                        t = _3622 + (32 * mem[_3622]) + 96
                        u = _3622 + 96
                        while idx < _3690:
                            mem[u] = t + -_3622 - 96
                            _4163 = mem[s]
                            _4174 = mem[mem[s]]
                            mem[t] = Mask(88, 168, mem[mem[mem[s]]])
                            if mem[_4174 + 32] >= 3:
                                revert with 'NH{q', 33
                            mem[t + 32] = mem[_4174 + 32]
                            mem[t + 64] = mem[_4174 + 76 len 20]
                            _4418 = mem[_4163 + 32]
                            mem[t + 96] = 128
                            _4446 = mem[_4418]
                            mem[t + 128] = mem[_4418]
                            v = 0
                            w = _4418 + 32
                            x = t + 160
                            while v < _4446:
                                _4701 = mem[w]
                                mem[x] = mem[mem[w] + 12 len 20]
                                mem[x + 32] = mem[_4701 + 44 len 20]
                                mem[x + 64] = mem[_4701 + 64]
                                v = v + 1
                                w = w + 32
                                x = x + 96
                                continue 
                            idx = idx + 1
                            s = s + 32
                            t = t + (96 * _4446) + 160
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len t - mem[64]
                    mem[64] = _3131 + (32 * _3126) + 192
                    mem[_3131 + (32 * _3126) + 96] = 0
                    mem[var59002] = 0
                    mem[var59002 + 32] = 0
                    mem[var61002] = var61001
                    mem[var61002 + 32] = 96
                    mem[var63002] = var63001
                    if var63003 - 1:
                        # nil
                    else:
                        _7237 = mem[(32 * stor252.length) + 128]
                        idx = 0
                        while uint8(idx) < _7237:
                            if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                                revert with 'NH{q', 33
                            if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                                if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                    revert with 'NH{q', 50
                                if 0 >= mem[_3131]:
                                    revert with 'NH{q', 50
                                mem[mem[_3131 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                                if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                    revert with 'NH{q', 50
                                _7328 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                                mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(arg1)
                                staticcall address(_7328).position(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7495 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7523 = mem[_7495]
                                require mem[_7495] <= test266151307()
                                require _7495 + mem[_7495] + 31 < _7495 + return_data.size
                                _7554 = mem[_7495 + mem[_7495]]
                                if mem[_7495 + mem[_7495]] > test266151307():
                                    revert with 'NH{q', 65
                                if _7495 + ceil32(return_data.size) + floor32(mem[_7495 + mem[_7495]]) + 1 > test266151307() or floor32(mem[_7495 + mem[_7495]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _7495 + ceil32(return_data.size) + floor32(mem[_7495 + mem[_7495]]) + 1
                                mem[_7495 + ceil32(return_data.size)] = _7554
                                require _7523 + (96 * _7554) + 32 <= return_data.size
                                s = _7495 + _7523 + 32
                                t = _7495 + ceil32(return_data.size) + 32
                                while s < _7495 + _7523 + (96 * _7554) + 32:
                                    require _7495 + return_data.size - s >= 96
                                    _7990 = mem[64]
                                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                        revert with 'NH{q', 65
                                    mem[64] = mem[64] + 96
                                    require mem[s] == mem[s + 12 len 20]
                                    mem[_7990] = mem[s]
                                    require mem[s + 32] == mem[s + 44 len 20]
                                    mem[_7990 + 32] = mem[s + 32]
                                    require mem[s + 64] == mem[s + 64]
                                    mem[_7990 + 64] = mem[s + 64]
                                    mem[t] = _7990
                                    _7237 = mem[(32 * stor252.length) + 128]
                                    s = s + 96
                                    t = t + 32
                                    continue 
                                if 0 >= mem[_3131]:
                                    revert with 'NH{q', 50
                                mem[mem[_3131 + 32] + 32] = _7495 + ceil32(return_data.size)
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            _7237 = mem[(32 * stor252.length) + 128]
                            idx = uint8(idx) + 1
                            continue 
                        _7250 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_7250 + 32] = 32
                        _7349 = mem[_7250]
                        mem[_7250 + 64] = mem[_7250]
                        idx = 0
                        s = _7250 + 32
                        t = _7250 + (32 * mem[_7250]) + 96
                        u = _7250 + 96
                        while idx < _7349:
                            mem[u] = t + -_7250 - 96
                            _7952 = mem[s]
                            _7963 = mem[mem[s]]
                            mem[t] = Mask(88, 168, mem[mem[mem[s]]])
                            if mem[_7963 + 32] >= 3:
                                revert with 'NH{q', 33
                            mem[t + 32] = mem[_7963 + 32]
                            mem[t + 64] = mem[_7963 + 76 len 20]
                            _8298 = mem[_7952 + 32]
                            mem[t + 96] = 128
                            _8334 = mem[_8298]
                            mem[t + 128] = mem[_8298]
                            v = 0
                            w = _8298 + 32
                            x = t + 160
                            while v < _8334:
                                _8666 = mem[w]
                                mem[x] = mem[mem[w] + 12 len 20]
                                mem[x + 32] = mem[_8666 + 44 len 20]
                                mem[x + 64] = mem[_8666 + 64]
                                v = v + 1
                                w = w + 32
                                x = x + 96
                                continue 
                            idx = idx + 1
                            s = s + 32
                            t = t + (96 * _8334) + 160
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len t - mem[64]
                else:
                    mem[64] = (64 * stor252.length) + 448
                    mem[(64 * stor252.length) + 352] = 0
                    mem[var47002] = 0
                    mem[var47002 + 32] = 0
                    mem[var49002] = var49001
                    if not var49003 - 1:
                        idx = 0
                        while idx < stor252.length:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _5294 = mem[(32 * idx) + 128]
                            _5306 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_5306] = 0
                            mem[_5306 + 32] = 0
                            mem[_5306 + 64] = 0
                            _5332 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_5332] = Mask(88, 168, _5294)
                            mem[_5332 + 32] = 0
                            mem[_5332 + 64] = uint64(_5294)
                            if idx >= mem[(32 * stor252.length) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * stor252.length) + 160] = _5332
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        _5293 = mem[(32 * stor252.length) + 128]
                        if mem[(32 * stor252.length) + 128] > test266151307():
                            revert with 'NH{q', 65
                        _5298 = mem[64]
                        mem[mem[64]] = mem[(32 * stor252.length) + 128]
                        mem[64] = mem[64] + (32 * _5293) + 32
                        if _5293:
                            # nil
                        else:
                            _5899 = mem[(32 * stor252.length) + 128]
                            idx = 0
                            while uint8(idx) < _5899:
                                if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                                    revert with 'NH{q', 33
                                if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                                    if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                        revert with 'NH{q', 50
                                    if 0 >= mem[_5298]:
                                        revert with 'NH{q', 50
                                    mem[mem[_5298 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                                    if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                        revert with 'NH{q', 50
                                    _5982 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                                    mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(arg1)
                                    staticcall address(_5982).position(address arg1) with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6135 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _6163 = mem[_6135]
                                    require mem[_6135] <= test266151307()
                                    require _6135 + mem[_6135] + 31 < _6135 + return_data.size
                                    _6187 = mem[_6135 + mem[_6135]]
                                    if mem[_6135 + mem[_6135]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _6135 + ceil32(return_data.size) + floor32(mem[_6135 + mem[_6135]]) + 1 > test266151307() or floor32(mem[_6135 + mem[_6135]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _6135 + ceil32(return_data.size) + floor32(mem[_6135 + mem[_6135]]) + 1
                                    mem[_6135 + ceil32(return_data.size)] = _6187
                                    require _6163 + (96 * _6187) + 32 <= return_data.size
                                    s = _6135 + _6163 + 32
                                    t = _6135 + ceil32(return_data.size) + 32
                                    while s < _6135 + _6163 + (96 * _6187) + 32:
                                        require _6135 + return_data.size - s >= 96
                                        _6604 = mem[64]
                                        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                            revert with 'NH{q', 65
                                        mem[64] = mem[64] + 96
                                        require mem[s] == mem[s + 12 len 20]
                                        mem[_6604] = mem[s]
                                        require mem[s + 32] == mem[s + 44 len 20]
                                        mem[_6604 + 32] = mem[s + 32]
                                        require mem[s + 64] == mem[s + 64]
                                        mem[_6604 + 64] = mem[s + 64]
                                        mem[t] = _6604
                                        _5899 = mem[(32 * stor252.length) + 128]
                                        s = s + 96
                                        t = t + 32
                                        continue 
                                    if 0 >= mem[_5298]:
                                        revert with 'NH{q', 50
                                    mem[mem[_5298 + 32] + 32] = _6135 + ceil32(return_data.size)
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                _5899 = mem[(32 * stor252.length) + 128]
                                idx = uint8(idx) + 1
                                continue 
                            _5911 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5911 + 32] = 32
                            _5997 = mem[_5911]
                            mem[_5911 + 64] = mem[_5911]
                            idx = 0
                            s = _5911 + 32
                            t = _5911 + (32 * mem[_5911]) + 96
                            u = _5911 + 96
                            while idx < _5997:
                                mem[u] = t + -_5911 - 96
                                _6568 = mem[s]
                                _6582 = mem[mem[s]]
                                mem[t] = Mask(88, 168, mem[mem[mem[s]]])
                                if mem[_6582 + 32] >= 3:
                                    revert with 'NH{q', 33
                                mem[t + 32] = mem[_6582 + 32]
                                mem[t + 64] = mem[_6582 + 76 len 20]
                                _6890 = mem[_6568 + 32]
                                mem[t + 96] = 128
                                _6928 = mem[_6890]
                                mem[t + 128] = mem[_6890]
                                v = 0
                                w = _6890 + 32
                                x = t + 160
                                while v < _6928:
                                    _7243 = mem[w]
                                    mem[x] = mem[mem[w] + 12 len 20]
                                    mem[x + 32] = mem[_7243 + 44 len 20]
                                    mem[x + 64] = mem[_7243 + 64]
                                    v = v + 1
                                    w = w + 32
                                    x = x + 96
                                    continue 
                                idx = idx + 1
                                s = s + 32
                                t = t + (96 * _6928) + 160
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len t - mem[64]
                    else:
                        mem[64] = (64 * stor252.length) + 544
                        mem[(64 * stor252.length) + 448] = 0
                        mem[var55002] = 0
                        mem[var55002 + 32] = 0
                        mem[var57002] = var57001
                        if var57003 - 1:
                            # nil
                        else:
                            idx = 0
                            while idx < stor252.length:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _7958 = mem[(32 * idx) + 128]
                                _7974 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_7974] = 0
                                mem[_7974 + 32] = 0
                                mem[_7974 + 64] = 0
                                _8004 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_8004] = Mask(88, 168, _7958)
                                mem[_8004 + 32] = 0
                                mem[_8004 + 64] = uint64(_7958)
                                if idx >= mem[(32 * stor252.length) + 128]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (32 * stor252.length) + 160] = _8004
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                            _7957 = mem[(32 * stor252.length) + 128]
                            if mem[(32 * stor252.length) + 128] > test266151307():
                                revert with 'NH{q', 65
                            _7961 = mem[64]
                            mem[mem[64]] = mem[(32 * stor252.length) + 128]
                            mem[64] = mem[64] + (32 * _7957) + 32
                            if _7957:
                                # nil
                            else:
                                _8659 = mem[(32 * stor252.length) + 128]
                                idx = 0
                                while uint8(idx) < _8659:
                                    if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] > 2:
                                        revert with 'NH{q', 33
                                    if mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 32] == 1:
                                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                            revert with 'NH{q', 50
                                        if 0 >= mem[_7961]:
                                            revert with 'NH{q', 50
                                        mem[mem[_7961 + 32]] = mem[(32 * uint8(idx)) + (32 * stor252.length) + 160]
                                        if uint8(idx) >= mem[(32 * stor252.length) + 128]:
                                            revert with 'NH{q', 50
                                        _8752 = mem[mem[(32 * uint8(idx)) + (32 * stor252.length) + 160] + 64]
                                        mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = address(arg1)
                                        staticcall address(_8752).position(address arg1) with:
                                                gas gas_remaining wei
                                               args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8931 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8960 = mem[_8931]
                                        require mem[_8931] <= test266151307()
                                        require _8931 + mem[_8931] + 31 < _8931 + return_data.size
                                        _8990 = mem[_8931 + mem[_8931]]
                                        if mem[_8931 + mem[_8931]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _8931 + ceil32(return_data.size) + floor32(mem[_8931 + mem[_8931]]) + 1 > test266151307() or floor32(mem[_8931 + mem[_8931]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _8931 + ceil32(return_data.size) + floor32(mem[_8931 + mem[_8931]]) + 1
                                        mem[_8931 + ceil32(return_data.size)] = _8990
                                        require _8960 + (96 * _8990) + 32 <= return_data.size
                                        s = _8931 + _8960 + 32
                                        t = _8931 + ceil32(return_data.size) + 32
                                        while s < _8931 + _8960 + (96 * _8990) + 32:
                                            require _8931 + return_data.size - s >= 96
                                            _9454 = mem[64]
                                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                                revert with 'NH{q', 65
                                            mem[64] = mem[64] + 96
                                            require mem[s] == mem[s + 12 len 20]
                                            mem[_9454] = mem[s]
                                            require mem[s + 32] == mem[s + 44 len 20]
                                            mem[_9454 + 32] = mem[s + 32]
                                            require mem[s + 64] == mem[s + 64]
                                            mem[_9454 + 64] = mem[s + 64]
                                            mem[t] = _9454
                                            _8659 = mem[(32 * stor252.length) + 128]
                                            s = s + 96
                                            t = t + 32
                                            continue 
                                        if 0 >= mem[_7961]:
                                            revert with 'NH{q', 50
                                        mem[mem[_7961 + 32] + 32] = _8931 + ceil32(return_data.size)
                                    if uint8(idx) == 255:
                                        revert with 'NH{q', 17
                                    _8659 = mem[(32 * stor252.length) + 128]
                                    idx = uint8(idx) + 1
                                    continue 
                                _8671 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8671 + 32] = 32
                                mem[_8671 + 64] = mem[_8671]
                                if var118001 >= mem[_8671]:
                                    return memory
                                      from _8671 + 32
                                       len var118004 + -_8671 - 32
                                mem[var118009] = var118004 + -_8671 - 96
                                _9429 = mem[mem[var118002]]
                                mem[var118004] = Mask(88, 168, mem[mem[mem[var118002]]])
                                if mem[_9429 + 32] >= 3:
                                    revert with 'NH{q', 33
                                # nil
}



}
