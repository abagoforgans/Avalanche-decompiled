contract main {




// =====================  Runtime code  =====================


#
#  - sub_f9348165(?)
#
const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct roleAdmin;
array of struct roleMember;
uint8 paused;
address configAddress;
array of struct sub_9a0e8964;

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

function sub_9a0e8964(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < sub_9a0e8964[arg1].field_0
    if sub_9a0e8964[arg1][arg2].field_88 >= 2:
        revert with 'NH{q', 33
    return Mask(88, 168, sub_9a0e8964[arg1][arg2].field_0), sub_9a0e8964[arg1][arg2].field_0, sub_9a0e8964[arg1][arg2].field_96
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleMember[arg1].field_0
}

function _fallback() payable {
    revert
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

function sub_85c01bde(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 252
    mem[64] = (32 * sub_9a0e8964[arg1].field_0) + 128
    mem[96] = sub_9a0e8964[arg1].field_0
    s = 128
    idx = 0
    while idx < sub_9a0e8964[arg1].field_0:
        mem[0] = sha3(arg1, 252)
        _13 = mem[64]
        mem[64] = mem[64] + 96
        mem[_13] = Mask(88, 168, sub_9a0e8964[arg1][idx].field_0)
        if sub_9a0e8964[arg1][idx].field_88 > 1:
            revert with 'NH{q', 33
        mem[_13 + 32] = sub_9a0e8964[arg1][idx].field_88
        mem[_13 + 64] = sub_9a0e8964[arg1][idx].field_96
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _15:
        _21 = mem[s]
        mem[t] = Mask(88, 168, mem[mem[s]])
        if mem[_21 + 32] >= 2:
            revert with 'NH{q', 33
        mem[t + 32] = mem[_21 + 32]
        mem[t + 64] = mem[_21 + 76 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _14 + (96 * _15) + -mem[64] + 64
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

function sub_852c338f(?) payable {
    require calldata.size - 4 >= 64
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
        _41 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require cd[idx] == Mask(88, 168, cd[idx])
        mem[_41] = cd[idx]
        require cd[(idx + 32)] < 2
        mem[_41 + 32] = cd[(idx + 32)]
        require cd[(idx + 64)] == address(cd[(idx + 64)])
        mem[_41 + 64] = cd[(idx + 64)]
        mem[s] = _41
        idx = idx + 96
        s = s + 32
        continue 
    require cd[36] == cd[36]
    mem[0] = msg.sender
    mem[32] = sha3(0, 101)
    if roleAdmin[0][address(msg.sender)].field_0:
        if mem[96] >= 255:
            revert with 0, 'RG4'
        _80 = mem[96]
        idx = 0
        while uint8(idx) < _80:
            mem[0] = cd[36]
            mem[32] = 252
            _82 = mem[64]
            mem[64] = mem[64] + (32 * sub_9a0e8964[cd[36]].field_0) + 32
            mem[_82] = sub_9a0e8964[cd[36]].field_0
            t = _82 + 32
            s = 0
            while s < sub_9a0e8964[cd[36]].field_0:
                mem[0] = sha3(cd[36], 252)
                _118 = mem[64]
                mem[64] = mem[64] + 96
                mem[_118] = Mask(88, 168, sub_9a0e8964[cd[36]][s].field_0)
                if sub_9a0e8964[cd[36]][s].field_88 > 1:
                    revert with 'NH{q', 33
                mem[_118 + 32] = sub_9a0e8964[cd[36]][s].field_88
                mem[_118 + 64] = sub_9a0e8964[cd[36]][s].field_96
                mem[t] = _118
                t = t + 32
                s = s + 1
                continue 
            if uint8(idx) >= mem[96]:
                revert with 'NH{q', 50
            _120 = mem[mem[(32 * uint8(idx)) + 128] + 64]
            _121 = mem[64]
            mem[mem[64]] = 0xa6f71ec00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _124 = mem[_82]
            mem[mem[64] + 68] = mem[_82]
            s = 0
            t = _82 + 32
            u = mem[64] + 100
            while s < _124:
                _174 = mem[t]
                mem[u] = Mask(88, 168, mem[mem[t]])
                if mem[_174 + 32] >= 2:
                    revert with 'NH{q', 33
                mem[u + 32] = mem[_174 + 32]
                mem[u + 64] = mem[_174 + 76 len 20]
                s = s + 1
                t = t + 32
                u = u + 96
                continue 
            mem[_121 + 36] = address(_120)
            delegate 0xfdaf41ccb9b7c520c7366aaeea00eb22f4bb57d3.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _121 + (96 * _124) + -mem[64] + 96]
            mem[mem[64] len 160] = delegate.return_data[0 len 160]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _179 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _181 = mem[_179]
            require mem[_179] == bool(mem[_179])
            _186 = mem[_179 + 32]
            require mem[_179 + 32] == mem[_179 + 63 len 1]
            require return_data.size - 64 >= 96
            _199 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 96
            require mem[_179 + 64] == Mask(88, 168, mem[_179 + 64])
            mem[_199] = mem[_179 + 64]
            require mem[_179 + 96] < 2
            mem[_199 + 32] = mem[_179 + 96]
            require mem[_179 + 128] == mem[_179 + 140 len 20]
            mem[_199 + 64] = mem[_179 + 128]
            if _181:
                if sub_9a0e8964[cd[36]].field_0 < 1:
                    revert with 'NH{q', 17
                if sub_9a0e8964[cd[36]].field_0 - 1 >= sub_9a0e8964[cd[36]].field_0:
                    revert with 'NH{q', 50
                if uint8(_186) >= sub_9a0e8964[cd[36]].field_0:
                    revert with 'NH{q', 50
                sub_9a0e8964[cd[36]][uint8(_186)].field_0 = 0
                sub_9a0e8964[cd[36]][uint8(_186)].field_256 = 0
                if sub_9a0e8964[cd[36]][sub_9a0e8964[cd[36]].field_0].field_0 > 1:
                    revert with 'NH{q', 33
                sub_9a0e8964[cd[36]][uint8(_186)].field_88 = sub_9a0e8964[cd[36]][sub_9a0e8964[cd[36]].field_0].field_0
                sub_9a0e8964[cd[36]][uint8(_186)].field_96 = sub_9a0e8964[cd[36]][sub_9a0e8964[cd[36]].field_0].field_0
                mem[32] = 252
                if not sub_9a0e8964[cd[36]].field_0:
                    revert with 'NH{q', 49
                mem[0] = sha3(cd[36], 252)
                sub_9a0e8964[cd[36]][sub_9a0e8964[cd[36]].field_0].field_0 = 0
                sub_9a0e8964[cd[36]][sub_9a0e8964[cd[36]].field_0].field_0 = 0
                sub_9a0e8964[cd[36]][sub_9a0e8964[cd[36]].field_0].field_0 = sub_9a0e8964[cd[36]][sub_9a0e8964[cd[36]].field_0].field_0
                sub_9a0e8964[cd[36]].field_0--
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
    _57 = mem[64]
    mem[mem[64]] = 42
    mem[64] = mem[64] + 96
    mem[_57 + 32 len 42] = call.data[calldata.size len 42]
    if 0 >= mem[_57]:
        revert with 'NH{q', 50
    mem[_57 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
    if 1 >= mem[_57]:
        revert with 'NH{q', 50
    mem[_57 + 33 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= mem[_57]:
            revert with 'NH{q', 50
        mem[idx + _57 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    _95 = mem[64]
    mem[mem[64]] = 66
    mem[64] = mem[64] + 128
    mem[_95 + 32 len 66] = call.data[calldata.size len 66]
    if 0 >= mem[_95]:
        revert with 'NH{q', 50
    mem[_95 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
    if 1 >= mem[_95]:
        revert with 'NH{q', 50
    mem[_95 + 33 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    while idx > 1:
        if idx >= mem[_95]:
            revert with 'NH{q', 50
        mem[idx + _95 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
    _123 = mem[64]
    mem[mem[64] + 32] = 'AccessControl: account '
    _126 = mem[_57]
    mem[mem[64] + 55 len ceil32(mem[_57])] = mem[_57 + 32 len ceil32(mem[_57])]
    mem[mem[64] + _126 + 55] = ' is missing role '
    if ceil32(_126) <= _126:
        _180 = mem[_95]
        mem[mem[64] + _126 + 72 len ceil32(mem[_95])] = mem[_95 + 32 len ceil32(mem[_95])]
        if ceil32(_180) <= _180:
            _224 = mem[64]
            mem[64] = mem[64] + _126 + _180 + 72
            mem[_123 + _126 + _180 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_123 + _126 + _180 + 76] = 32
            _232 = mem[_224]
            mem[_123 + _126 + _180 + 108] = mem[_224]
            mem[_123 + _126 + _180 + 140 len ceil32(_232)] = mem[_224 + 32 len ceil32(_232)]
            if ceil32(_232) > _232:
                mem[_123 + _126 + _180 + _232 + 140] = 0
            revert with 0, 32, mem[_123 + _126 + _180 + 108 len ceil32(_232) + 32]
        mem[mem[64] + _126 + _180 + 72] = 0
        _228 = mem[64]
        mem[64] = mem[64] + _126 + _180 + 72
        mem[_123 + _126 + _180 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_123 + _126 + _180 + 76] = 32
        _234 = mem[_228]
        mem[_123 + _126 + _180 + 108] = mem[_228]
        mem[_123 + _126 + _180 + 140 len ceil32(_234)] = mem[_228 + 32 len ceil32(_234)]
        if ceil32(_234) > _234:
            mem[_123 + _126 + _180 + _234 + 140] = 0
        revert with 0, 32, mem[_123 + _126 + _180 + 108 len ceil32(_234) + 32]
    _182 = mem[_95]
    mem[mem[64] + _126 + 72 len ceil32(mem[_95])] = mem[_95 + 32 len ceil32(mem[_95])]
    if ceil32(_182) <= _182:
        _226 = mem[64]
        mem[64] = mem[64] + _126 + _182 + 72
        mem[_123 + _126 + _182 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_123 + _126 + _182 + 76] = 32
        _233 = mem[_226]
        mem[_123 + _126 + _182 + 108] = mem[_226]
        mem[_123 + _126 + _182 + 140 len ceil32(_233)] = mem[_226 + 32 len ceil32(_233)]
        if ceil32(_233) > _233:
            mem[_123 + _126 + _182 + _233 + 140] = 0
        revert with 0, 32, mem[_123 + _126 + _182 + 108 len ceil32(_233) + 32]
    mem[mem[64] + _126 + _182 + 72] = 0
    _230 = mem[64]
    mem[64] = mem[64] + _126 + _182 + 72
    mem[_123 + _126 + _182 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_123 + _126 + _182 + 76] = 32
    _235 = mem[_230]
    mem[_123 + _126 + _182 + 108] = mem[_230]
    mem[_123 + _126 + _182 + 140 len ceil32(_235)] = mem[_230 + 32 len ceil32(_235)]
    if ceil32(_235) > _235:
        mem[_123 + _126 + _182 + _235 + 140] = 0
    revert with 0, 32, mem[_123 + _126 + _182 + 108 len ceil32(_235) + 32]
}

function sub_7f96a79d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    staticcall configAddress.0x7b103999 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0x85c01bde00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg2
    staticcall address(ext_call.return_data[0]).0x85c01bde with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    require _8 + (96 * _9) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _8 + 128
    s = (2 * ceil32(return_data.size)) + 128
    while idx < ceil32(return_data.size) + _8 + (96 * _9) + 128:
        require ceil32(return_data.size) + return_data.size + -idx + 96 >= 96
        _105 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require mem[idx] == Mask(88, 168, mem[idx])
        mem[_105] = mem[idx]
        require mem[idx + 32] < 2
        mem[_105 + 32] = mem[idx + 32]
        require mem[idx + 64] == mem[idx + 76 len 20]
        mem[_105 + 64] = mem[idx + 64]
        mem[s] = _105
        idx = idx + 96
        s = s + 32
        continue 
    _103 = mem[(2 * ceil32(return_data.size)) + 96]
    if mem[(2 * ceil32(return_data.size)) + 96] > test266151307():
        revert with 'NH{q', 65
    _104 = mem[64]
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 96]
    mem[64] = mem[64] + (32 * _103) + 32
    if not _103:
        _195 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while uint8(idx) < _195:
            if uint8(idx) >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 128] + 32] > 1:
                revert with 'NH{q', 33
            if mem[mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 128] + 32] == 1:
                if uint8(idx) >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                if uint8(idx) >= mem[_104]:
                    revert with 'NH{q', 50
                mem[mem[(32 * uint8(idx)) + _104 + 32]] = mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 128]
                if uint8(idx) >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                _215 = mem[mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 128] + 64]
                mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg1)
                staticcall address(_215).position(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _232 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _234 = mem[_232]
                require mem[_232] <= test266151307()
                require _232 + mem[_232] + 31 < _232 + return_data.size
                _238 = mem[_232 + mem[_232]]
                if mem[_232 + mem[_232]] > test266151307():
                    revert with 'NH{q', 65
                if _232 + ceil32(return_data.size) + floor32(mem[_232 + mem[_232]]) + 1 > test266151307() or floor32(mem[_232 + mem[_232]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _232 + ceil32(return_data.size) + floor32(mem[_232 + mem[_232]]) + 1
                mem[_232 + ceil32(return_data.size)] = _238
                require _234 + (128 * _238) + 32 <= return_data.size
                s = _232 + _234 + 32
                t = _232 + ceil32(return_data.size) + 32
                while s < _232 + _234 + (128 * _238) + 32:
                    require _232 + return_data.size - s >= 128
                    _289 = mem[64]
                    if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 64
                    require _232 + return_data.size - s >= 96
                    _298 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 96
                    require mem[s] == Mask(88, 168, mem[s])
                    mem[_298] = mem[s]
                    require mem[s + 32] == mem[s + 63 len 1]
                    mem[_298 + 32] = mem[s + 32]
                    require mem[s + 64] == mem[s + 76 len 20]
                    mem[_298 + 64] = mem[s + 64]
                    mem[_289] = _298
                    require mem[s + 96] == mem[s + 96]
                    mem[_289 + 32] = mem[s + 96]
                    mem[t] = _289
                    s = s + 128
                    t = t + 32
                    continue 
                if uint8(idx) >= mem[_104]:
                    revert with 'NH{q', 50
                mem[mem[(32 * uint8(idx)) + _104 + 32] + 32] = _232 + ceil32(return_data.size)
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        _197 = mem[64]
        mem[64] = mem[64] + 32
        mem[_197 + 32] = 32
        _204 = mem[_197]
        mem[_197 + 64] = mem[_197]
        idx = 0
        s = _197 + 32
        t = _197 + (32 * mem[_197]) + 96
        u = _197 + 96
        while idx < _204:
            mem[u] = t + -_197 - 96
            _282 = mem[s]
            _285 = mem[mem[s]]
            mem[t] = Mask(88, 168, mem[mem[mem[s]]])
            if mem[_285 + 32] >= 2:
                revert with 'NH{q', 33
            mem[t + 32] = mem[_285 + 32]
            mem[t + 64] = mem[_285 + 76 len 20]
            _310 = mem[_282 + 32]
            mem[t + 96] = 128
            _314 = mem[_310]
            mem[t + 128] = mem[_310]
            v = 0
            w = _310 + 32
            x = t + 160
            while v < _314:
                _349 = mem[w]
                _350 = mem[mem[w]]
                mem[x] = Mask(88, 168, mem[mem[mem[w]]])
                mem[x + 32] = mem[_350 + 63 len 1]
                mem[x + 64] = mem[_350 + 76 len 20]
                mem[x + 96] = mem[_349 + 32]
                v = v + 1
                w = w + 32
                x = x + 128
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (128 * _314) + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = _104 + (32 * _103) + 192
    mem[_104 + (32 * _103) + 96] = 0
    mem[var83002] = 0
    mem[var83002 + 32] = 0
    mem[var85002] = var85001
    mem[var85002 + 32] = 96
    mem[var87002] = var87001
    if not var87003 - 1:
        _573 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while uint8(idx) < _573:
            if uint8(idx) >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 128] + 32] > 1:
                revert with 'NH{q', 33
            if mem[mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 128] + 32] == 1:
                if uint8(idx) >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                if uint8(idx) >= mem[_104]:
                    revert with 'NH{q', 50
                mem[mem[(32 * uint8(idx)) + _104 + 32]] = mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 128]
                if uint8(idx) >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                _593 = mem[mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 128] + 64]
                mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg1)
                staticcall address(_593).position(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _610 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _613 = mem[_610]
                require mem[_610] <= test266151307()
                require _610 + mem[_610] + 31 < _610 + return_data.size
                _617 = mem[_610 + mem[_610]]
                if mem[_610 + mem[_610]] > test266151307():
                    revert with 'NH{q', 65
                if _610 + ceil32(return_data.size) + floor32(mem[_610 + mem[_610]]) + 1 > test266151307() or floor32(mem[_610 + mem[_610]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _610 + ceil32(return_data.size) + floor32(mem[_610 + mem[_610]]) + 1
                mem[_610 + ceil32(return_data.size)] = _617
                require _613 + (128 * _617) + 32 <= return_data.size
                s = _610 + _613 + 32
                t = _610 + ceil32(return_data.size) + 32
                while s < _610 + _613 + (128 * _617) + 32:
                    require _610 + return_data.size - s >= 128
                    _667 = mem[64]
                    if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 64
                    require _610 + return_data.size - s >= 96
                    _677 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 96
                    require mem[s] == Mask(88, 168, mem[s])
                    mem[_677] = mem[s]
                    require mem[s + 32] == mem[s + 63 len 1]
                    mem[_677 + 32] = mem[s + 32]
                    require mem[s + 64] == mem[s + 76 len 20]
                    mem[_677 + 64] = mem[s + 64]
                    mem[_667] = _677
                    require mem[s + 96] == mem[s + 96]
                    mem[_667 + 32] = mem[s + 96]
                    mem[t] = _667
                    s = s + 128
                    t = t + 32
                    continue 
                if uint8(idx) >= mem[_104]:
                    revert with 'NH{q', 50
                mem[mem[(32 * uint8(idx)) + _104 + 32] + 32] = _610 + ceil32(return_data.size)
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        _576 = mem[64]
        mem[64] = mem[64] + 32
        mem[_576 + 32] = 32
        _582 = mem[_576]
        mem[_576 + 64] = mem[_576]
        idx = 0
        s = _576 + 32
        t = _576 + (32 * mem[_576]) + 96
        u = _576 + 96
        while idx < _582:
            mem[u] = t + -_576 - 96
            _661 = mem[s]
            _663 = mem[mem[s]]
            mem[t] = Mask(88, 168, mem[mem[mem[s]]])
            if mem[_663 + 32] >= 2:
                revert with 'NH{q', 33
            mem[t + 32] = mem[_663 + 32]
            mem[t + 64] = mem[_663 + 76 len 20]
            _688 = mem[_661 + 32]
            mem[t + 96] = 128
            _693 = mem[_688]
            mem[t + 128] = mem[_688]
            v = 0
            w = _688 + 32
            x = t + 160
            while v < _693:
                _727 = mem[w]
                _728 = mem[mem[w]]
                mem[x] = Mask(88, 168, mem[mem[mem[w]]])
                mem[x + 32] = mem[_728 + 63 len 1]
                mem[x + 64] = mem[_728 + 76 len 20]
                mem[x + 96] = mem[_727 + 32]
                v = v + 1
                w = w + 32
                x = x + 128
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (128 * _693) + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = _104 + (32 * _103) + 352
    mem[_104 + (32 * _103) + 256] = 0
    mem[var95002] = 0
    mem[var95002 + 32] = 0
    mem[var97002] = var97001
    mem[var97002 + 32] = 96
    mem[var99002] = var99001
    if var99003 - 1:
        # nil
    else:
        _951 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while uint8(idx) < _951:
            if uint8(idx) >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 128] + 32] > 1:
                revert with 'NH{q', 33
            if mem[mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 128] + 32] == 1:
                if uint8(idx) >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                if uint8(idx) >= mem[_104]:
                    revert with 'NH{q', 50
                mem[mem[(32 * uint8(idx)) + _104 + 32]] = mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 128]
                if uint8(idx) >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                _971 = mem[mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 128] + 64]
                mem[mem[64]] = 0xb7648fb900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg1)
                staticcall address(_971).position(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _988 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _991 = mem[_988]
                require mem[_988] <= test266151307()
                require _988 + mem[_988] + 31 < _988 + return_data.size
                _995 = mem[_988 + mem[_988]]
                if mem[_988 + mem[_988]] > test266151307():
                    revert with 'NH{q', 65
                if _988 + ceil32(return_data.size) + floor32(mem[_988 + mem[_988]]) + 1 > test266151307() or floor32(mem[_988 + mem[_988]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _988 + ceil32(return_data.size) + floor32(mem[_988 + mem[_988]]) + 1
                mem[_988 + ceil32(return_data.size)] = _995
                require _991 + (128 * _995) + 32 <= return_data.size
                s = _988 + _991 + 32
                t = _988 + ceil32(return_data.size) + 32
                while s < _988 + _991 + (128 * _995) + 32:
                    require _988 + return_data.size - s >= 128
                    _1045 = mem[64]
                    if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 64
                    require _988 + return_data.size - s >= 96
                    _1055 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 96
                    require mem[s] == Mask(88, 168, mem[s])
                    mem[_1055] = mem[s]
                    require mem[s + 32] == mem[s + 63 len 1]
                    mem[_1055 + 32] = mem[s + 32]
                    require mem[s + 64] == mem[s + 76 len 20]
                    mem[_1055 + 64] = mem[s + 64]
                    mem[_1045] = _1055
                    require mem[s + 96] == mem[s + 96]
                    mem[_1045 + 32] = mem[s + 96]
                    mem[t] = _1045
                    s = s + 128
                    t = t + 32
                    continue 
                if uint8(idx) >= mem[_104]:
                    revert with 'NH{q', 50
                mem[mem[(32 * uint8(idx)) + _104 + 32] + 32] = _988 + ceil32(return_data.size)
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        _954 = mem[64]
        mem[64] = mem[64] + 32
        mem[_954 + 32] = 32
        _960 = mem[_954]
        mem[_954 + 64] = mem[_954]
        idx = 0
        s = _954 + 32
        t = _954 + (32 * mem[_954]) + 96
        u = _954 + 96
        while idx < _960:
            mem[u] = t + -_954 - 96
            _1039 = mem[s]
            _1041 = mem[mem[s]]
            mem[t] = Mask(88, 168, mem[mem[mem[s]]])
            if mem[_1041 + 32] >= 2:
                revert with 'NH{q', 33
            mem[t + 32] = mem[_1041 + 32]
            mem[t + 64] = mem[_1041 + 76 len 20]
            _1066 = mem[_1039 + 32]
            mem[t + 96] = 128
            _1071 = mem[_1066]
            mem[t + 128] = mem[_1066]
            v = 0
            w = _1066 + 32
            x = t + 160
            while v < _1071:
                _1105 = mem[w]
                _1106 = mem[mem[w]]
                mem[x] = Mask(88, 168, mem[mem[mem[w]]])
                mem[x + 32] = mem[_1106 + 63 len 1]
                mem[x + 64] = mem[_1106 + 76 len 20]
                mem[x + 96] = mem[_1105 + 32]
                v = v + 1
                w = w + 32
                x = x + 128
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (128 * _1071) + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
}



}
