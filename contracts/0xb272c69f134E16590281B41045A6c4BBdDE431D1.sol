contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const MAINTAINER_ROLE = 0x339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab95


mapping of struct roleAdmin;
address volatilityAddress;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function volatility() payable {
    return volatilityAddress
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
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
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
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

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
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

function sub_17c9d79a(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99 > test266151307() or floor32(('cd', 68).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        require cd[s] <= test266151307()
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _121 = mem[64]
        if mem[64] + floor32(cd[(cd[68] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[68] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[68] + cd[s] + 36)]) + 1
        mem[_121] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[68] + cd[s] + 68
        w = _121 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == cd[v]
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _121
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    _122 = mem[64]
    if mem[64] + floor32(('cd', 100).length) + 1 > test266151307() or mem[64] + floor32(('cd', 100).length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(('cd', 100).length) + 1
    mem[_122] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = _122 + 32
    while idx < ('cd', 100).length:
        require cd[s] <= test266151307()
        require cd[100] + cd[s] + 67 < calldata.size
        if cd[(cd[100] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _159 = mem[64]
        if mem[64] + floor32(cd[(cd[100] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[100] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[100] + cd[s] + 36)]) + 1
        mem[_159] = cd[(cd[100] + cd[s] + 36)]
        require cd[100] + cd[s] + (32 * cd[(cd[100] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[100] + cd[s] + 68
        w = _159 + 32
        while u < cd[(cd[100] + cd[s] + 36)]:
            require cd[v] <= test266151307()
            require cd[100] + cd[s] + cd[v] + 99 < calldata.size
            if cd[(cd[100] + cd[s] + cd[v] + 68)] > test266151307():
                revert with 'NH{q', 65
            _203 = mem[64]
            if mem[64] + floor32(cd[(cd[100] + cd[s] + cd[v] + 68)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[100] + cd[s] + cd[v] + 68)]) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(cd[(cd[100] + cd[s] + cd[v] + 68)]) + 1
            mem[_203] = cd[(cd[100] + cd[s] + cd[v] + 68)]
            require cd[100] + cd[s] + cd[v] + (32 * cd[(cd[100] + cd[s] + cd[v] + 68)]) + 100 <= calldata.size
            t = 0
            x = cd[100] + cd[s] + cd[v] + 100
            y = _203 + 32
            while t < cd[(cd[100] + cd[s] + cd[v] + 68)]:
                require cd[x] == uint8(cd[x])
                mem[y] = cd[x]
                t = t + 1
                x = x + 32
                y = y + 32
                continue 
            mem[w] = _203
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _159
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    _160 = mem[64]
    if mem[64] + floor32(('cd', 132).length) + 1 > test266151307() or mem[64] + floor32(('cd', 132).length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(('cd', 132).length) + 1
    mem[_160] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = _160 + 32
    while idx < ('cd', 132).length:
        require cd[s] <= test266151307()
        require cd[132] + cd[s] + 67 < calldata.size
        if cd[(cd[132] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _202 = mem[64]
        if mem[64] + floor32(cd[(cd[132] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[132] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[132] + cd[s] + 36)]) + 1
        mem[_202] = cd[(cd[132] + cd[s] + 36)]
        require cd[132] + cd[s] + (32 * cd[(cd[132] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[132] + cd[s] + 68
        w = _202 + 32
        while u < cd[(cd[132] + cd[s] + 36)]:
            require cd[v] <= test266151307()
            require cd[132] + cd[s] + cd[v] + 99 < calldata.size
            if cd[(cd[132] + cd[s] + cd[v] + 68)] > test266151307():
                revert with 'NH{q', 65
            _241 = mem[64]
            if mem[64] + floor32(cd[(cd[132] + cd[s] + cd[v] + 68)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[132] + cd[s] + cd[v] + 68)]) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(cd[(cd[132] + cd[s] + cd[v] + 68)]) + 1
            mem[_241] = cd[(cd[132] + cd[s] + cd[v] + 68)]
            require cd[132] + cd[s] + cd[v] + (32 * cd[(cd[132] + cd[s] + cd[v] + 68)]) + 100 <= calldata.size
            t = 0
            x = cd[132] + cd[s] + cd[v] + 100
            y = _241 + 32
            while t < cd[(cd[132] + cd[s] + cd[v] + 68)]:
                require cd[x] == cd[x]
                mem[y] = cd[x]
                t = t + 1
                x = x + 32
                y = y + 32
                continue 
            mem[w] = _241
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _202
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0x339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab95, 0)
    if not roleAdmin[0x339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab95][address(msg.sender)].field_0:
        revert with 0, 'Oddz IV aggregator: caller has no access to the method'
    if mem[96] != mem[floor32(('cd', 4).length) + 97]:
        revert with 0, 'invalid assets'
    _229 = mem[96]
    idx = 0
    while idx < _229:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _231 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _233 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        _235 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
        if idx >= mem[_122]:
            revert with 'NH{q', 50
        _237 = mem[(32 * idx) + _122 + 32]
        if idx >= mem[_160]:
            revert with 'NH{q', 50
        _239 = mem[(32 * idx) + _160 + 32]
        _240 = mem[64]
        mem[mem[64]] = 0x1b52bc4700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _231
        mem[mem[64] + 36] = _233
        mem[mem[64] + 68] = 160
        _242 = mem[_235]
        mem[mem[64] + 164] = mem[_235]
        s = 0
        t = _235 + 32
        u = mem[64] + 196
        while s < _242:
            mem[u] = mem[t]
            _229 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 100] = (32 * _242) + 192
        _254 = mem[_237]
        mem[mem[64] + (32 * _242) + 196] = mem[_237]
        s = 0
        t = _237 + 32
        u = mem[64] + (32 * _242) + (32 * _254) + 228
        v = mem[64] + (32 * _242) + 228
        while s < _254:
            mem[v] = u + -_240 + -(32 * _242) - 228
            _263 = mem[t]
            _265 = mem[mem[t]]
            mem[u] = mem[mem[t]]
            idx = 0
            w = _263 + 32
            x = u + 32
            while idx < _265:
                mem[x] = mem[w + 31 len 1]
                _229 = mem[96]
                idx = idx + 1
                w = w + 32
                x = x + 32
                continue 
            _229 = mem[96]
            s = s + 1
            t = t + 32
            u = u + (32 * _265) + 32
            v = v + 32
            continue 
        mem[_240 + 132] = u + -_240 - 4
        _264 = mem[_239]
        mem[u] = mem[_239]
        s = 0
        t = _239 + 32
        v = u + (32 * _264) + 32
        w = u + 32
        while s < _264:
            mem[w] = v + -u - 32
            _271 = mem[t]
            _274 = mem[mem[t]]
            mem[v] = mem[mem[t]]
            idx = 0
            u = _271 + 32
            x = v + 32
            while idx < _274:
                mem[x] = mem[u]
                _229 = mem[96]
                idx = idx + 1
                u = u + 32
                x = x + 32
                continue 
            _229 = mem[96]
            s = s + 1
            t = t + 32
            v = v + (32 * _274) + 32
            w = w + 32
            continue 
        require ext_code.size(volatilityAddress)
        call volatilityAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len v + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        _229 = mem[96]
        idx = idx + 1
        continue 
}



}
