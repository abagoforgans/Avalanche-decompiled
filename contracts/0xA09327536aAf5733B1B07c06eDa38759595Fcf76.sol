contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;

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

function sub_f4214a53(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98 > test266151307() or floor32(('cd', 100).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 68).length) + 129
    while idx < ('cd', 100).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == address(cd[132])
    if ('cd', 68).length < 1:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] = ('cd', 68).length
    mem[64] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + 130
    if not ('cd', 68).length:
        idx = 0
        s = cd[36]
        t = cd[4]
        while idx < ('cd', 68).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _779 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _786 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_786] == mem[_786 + 12 len 20]
            require ext_code.size(address(_779))
            staticcall address(_779).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_786 + 12 len 20] != address(s):
                _818 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _825 = mem[_818]
                require mem[_818] == mem[_818 + 18 len 14]
                _839 = mem[_818 + 32]
                require mem[_818 + 32] == mem[_818 + 50 len 14]
                require mem[_818 + 64] == mem[_818 + 92 len 4]
                require ext_code.size(address(_779))
                staticcall address(_779).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _879 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _883 = mem[_879]
                require mem[_879] == mem[_879 + 12 len 20]
                if idx >= mem[floor32(('cd', 68).length) + 97]:
                    revert with 'NH{q', 50
                if t <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if Mask(112, 0, _839) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, _825) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                    revert with 'NH{q', 17
                if t and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / t:
                    revert with 'NH{q', 17
                if t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _825) > -1 / t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                    revert with 'NH{q', 17
                if Mask(112, 0, _839) and 10000 > -1 / Mask(112, 0, _839):
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, _839) > (-1 * t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, _839)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                    revert with 'NH{q', 18
                if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _825) / (10000 * Mask(112, 0, _839)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
                if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _883
                t = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                continue 
            _819 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _826 = mem[_819]
            require mem[_819] == mem[_819 + 18 len 14]
            _840 = mem[_819 + 32]
            require mem[_819 + 32] == mem[_819 + 50 len 14]
            require mem[_819 + 64] == mem[_819 + 92 len 4]
            require ext_code.size(address(_779))
            staticcall address(_779).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _880 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _884 = mem[_880]
            require mem[_880] == mem[_880 + 12 len 20]
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            if t <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if Mask(112, 0, _826) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, _840) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                revert with 'NH{q', 17
            if t and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / t:
                revert with 'NH{q', 17
            if t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _840) > -1 / t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                revert with 'NH{q', 17
            if Mask(112, 0, _826) and 10000 > -1 / Mask(112, 0, _826):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, _826) > (-1 * t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, _826)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                revert with 'NH{q', 18
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _840) / (10000 * Mask(112, 0, _826)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _884
            t = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            continue 
        _1027 = mem[96]
        idx = 0
        s = 0
        t = 0
        u = cd[36]
        while idx < _1027:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1031 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            _1036 = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1043 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1043] == mem[_1043 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[_1043 + 12 len 20] != address(u):
                _1053 = mem[(32 * idx) + 128]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if idx == mem[96] - 1:
                    _1061 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1061 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1061 + 36] = _1036
                    mem[_1061 + 68] = 0
                    mem[_1061 + 100] = address(cd[132])
                    mem[_1061 + 132] = 128
                    mem[_1061 + 164] = mem[_1061]
                    s = 0
                    while s < mem[_1061]:
                        mem[_1061 + s + 196] = mem[_1061 + s + 32]
                        _1027 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1061]) > mem[_1061]:
                        mem[_1061 + mem[_1061] + 196] = 0
                    require ext_code.size(address(_1053))
                    call address(_1053).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1036, 0, address(cd[132]), 128, mem[_1061], mem[_1061 + 196 len ceil32(mem[_1061])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1031))
                    staticcall address(_1031).token0() with:
                            gas gas_remaining wei
                    mem[_1061 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1061 + ceil32(return_data.size) + 32
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1073 = mem[(32 * idx + 1) + 128]
                    _1077 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1077 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1077 + 36] = _1036
                    mem[_1077 + 68] = 0
                    mem[_1077 + 100] = address(_1073)
                    mem[_1077 + 132] = 128
                    mem[_1077 + 164] = mem[_1077]
                    s = 0
                    while s < mem[_1077]:
                        mem[_1077 + s + 196] = mem[_1077 + s + 32]
                        _1027 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1077]) > mem[_1077]:
                        mem[_1077 + mem[_1077] + 196] = 0
                    require ext_code.size(address(_1053))
                    call address(_1053).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1036, 0, address(_1073), 128, mem[_1077], mem[_1077 + 196 len ceil32(mem[_1077])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1031))
                    staticcall address(_1031).token0() with:
                            gas gas_remaining wei
                    mem[_1077 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1077 + ceil32(return_data.size) + 32
            else:
                _1055 = mem[(32 * idx) + 128]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if idx == mem[96] - 1:
                    _1062 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1062 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1062 + 36] = 0
                    mem[_1062 + 68] = _1036
                    mem[_1062 + 100] = address(cd[132])
                    mem[_1062 + 132] = 128
                    mem[_1062 + 164] = mem[_1062]
                    s = 0
                    while s < mem[_1062]:
                        mem[_1062 + s + 196] = mem[_1062 + s + 32]
                        _1027 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1062]) > mem[_1062]:
                        mem[_1062 + mem[_1062] + 196] = 0
                    require ext_code.size(address(_1055))
                    call address(_1055).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1036, address(cd[132]), 128, mem[_1062], mem[_1062 + 196 len ceil32(mem[_1062])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1031))
                    staticcall address(_1031).token1() with:
                            gas gas_remaining wei
                    mem[_1062 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1062 + ceil32(return_data.size) + 32
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1074 = mem[(32 * idx + 1) + 128]
                    _1078 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1078 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1078 + 36] = 0
                    mem[_1078 + 68] = _1036
                    mem[_1078 + 100] = address(_1074)
                    mem[_1078 + 132] = 128
                    mem[_1078 + 164] = mem[_1078]
                    s = 0
                    while s < mem[_1078]:
                        mem[_1078 + s + 196] = mem[_1078 + s + 32]
                        _1027 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1078]) > mem[_1078]:
                        mem[_1078 + mem[_1078] + 196] = 0
                    require ext_code.size(address(_1055))
                    call address(_1055).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1036, address(_1074), 128, mem[_1078], mem[_1078 + 196 len ceil32(mem[_1078])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1031))
                    staticcall address(_1031).token1() with:
                            gas gas_remaining wei
                    mem[_1078 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1078 + ceil32(return_data.size) + 32
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            _1027 = mem[96]
            idx = idx + 1
            s = ext_call.return_data[0]
            t = _1036
            u = ext_call.return_data[0]
            continue 
    else:
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        idx = 0
        s = cd[36]
        t = cd[4]
        while idx < ('cd', 68).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _782 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _788 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_788] == mem[_788 + 12 len 20]
            require ext_code.size(address(_782))
            staticcall address(_782).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_788 + 12 len 20] != address(s):
                _821 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _829 = mem[_821]
                require mem[_821] == mem[_821 + 18 len 14]
                _841 = mem[_821 + 32]
                require mem[_821 + 32] == mem[_821 + 50 len 14]
                require mem[_821 + 64] == mem[_821 + 92 len 4]
                require ext_code.size(address(_782))
                staticcall address(_782).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _881 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _885 = mem[_881]
                require mem[_881] == mem[_881 + 12 len 20]
                if idx >= mem[floor32(('cd', 68).length) + 97]:
                    revert with 'NH{q', 50
                if t <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if Mask(112, 0, _841) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, _829) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                    revert with 'NH{q', 17
                if t and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / t:
                    revert with 'NH{q', 17
                if t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _829) > -1 / t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                    revert with 'NH{q', 17
                if Mask(112, 0, _841) and 10000 > -1 / Mask(112, 0, _841):
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, _841) > (-1 * t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, _841)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                    revert with 'NH{q', 18
                if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _829) / (10000 * Mask(112, 0, _841)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
                if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _885
                t = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                continue 
            _822 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _830 = mem[_822]
            require mem[_822] == mem[_822 + 18 len 14]
            _842 = mem[_822 + 32]
            require mem[_822 + 32] == mem[_822 + 50 len 14]
            require mem[_822 + 64] == mem[_822 + 92 len 4]
            require ext_code.size(address(_782))
            staticcall address(_782).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _882 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _886 = mem[_882]
            require mem[_882] == mem[_882 + 12 len 20]
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            if t <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if Mask(112, 0, _830) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, _842) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                revert with 'NH{q', 17
            if t and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / t:
                revert with 'NH{q', 17
            if t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _842) > -1 / t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                revert with 'NH{q', 17
            if Mask(112, 0, _830) and 10000 > -1 / Mask(112, 0, _830):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, _830) > (-1 * t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, _830)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                revert with 'NH{q', 18
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _842) / (10000 * Mask(112, 0, _830)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _886
            t = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            continue 
        _1028 = mem[96]
        idx = 0
        s = 0
        t = 0
        u = cd[36]
        while idx < _1028:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1033 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            _1040 = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1044 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1044] == mem[_1044 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[_1044 + 12 len 20] != address(u):
                _1057 = mem[(32 * idx) + 128]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if idx == mem[96] - 1:
                    _1063 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1063 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1063 + 36] = _1040
                    mem[_1063 + 68] = 0
                    mem[_1063 + 100] = address(cd[132])
                    mem[_1063 + 132] = 128
                    mem[_1063 + 164] = mem[_1063]
                    s = 0
                    while s < mem[_1063]:
                        mem[_1063 + s + 196] = mem[_1063 + s + 32]
                        _1028 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1063]) > mem[_1063]:
                        mem[_1063 + mem[_1063] + 196] = 0
                    require ext_code.size(address(_1057))
                    call address(_1057).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1040, 0, address(cd[132]), 128, mem[_1063], mem[_1063 + 196 len ceil32(mem[_1063])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1033))
                    staticcall address(_1033).token0() with:
                            gas gas_remaining wei
                    mem[_1063 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1063 + ceil32(return_data.size) + 32
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1075 = mem[(32 * idx + 1) + 128]
                    _1079 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1079 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1079 + 36] = _1040
                    mem[_1079 + 68] = 0
                    mem[_1079 + 100] = address(_1075)
                    mem[_1079 + 132] = 128
                    mem[_1079 + 164] = mem[_1079]
                    s = 0
                    while s < mem[_1079]:
                        mem[_1079 + s + 196] = mem[_1079 + s + 32]
                        _1028 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1079]) > mem[_1079]:
                        mem[_1079 + mem[_1079] + 196] = 0
                    require ext_code.size(address(_1057))
                    call address(_1057).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1040, 0, address(_1075), 128, mem[_1079], mem[_1079 + 196 len ceil32(mem[_1079])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1033))
                    staticcall address(_1033).token0() with:
                            gas gas_remaining wei
                    mem[_1079 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1079 + ceil32(return_data.size) + 32
            else:
                _1059 = mem[(32 * idx) + 128]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if idx == mem[96] - 1:
                    _1064 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1064 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1064 + 36] = 0
                    mem[_1064 + 68] = _1040
                    mem[_1064 + 100] = address(cd[132])
                    mem[_1064 + 132] = 128
                    mem[_1064 + 164] = mem[_1064]
                    s = 0
                    while s < mem[_1064]:
                        mem[_1064 + s + 196] = mem[_1064 + s + 32]
                        _1028 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1064]) > mem[_1064]:
                        mem[_1064 + mem[_1064] + 196] = 0
                    require ext_code.size(address(_1059))
                    call address(_1059).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1040, address(cd[132]), 128, mem[_1064], mem[_1064 + 196 len ceil32(mem[_1064])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1033))
                    staticcall address(_1033).token1() with:
                            gas gas_remaining wei
                    mem[_1064 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1064 + ceil32(return_data.size) + 32
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1076 = mem[(32 * idx + 1) + 128]
                    _1080 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1080 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1080 + 36] = 0
                    mem[_1080 + 68] = _1040
                    mem[_1080 + 100] = address(_1076)
                    mem[_1080 + 132] = 128
                    mem[_1080 + 164] = mem[_1080]
                    s = 0
                    while s < mem[_1080]:
                        mem[_1080 + s + 196] = mem[_1080 + s + 32]
                        _1028 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1080]) > mem[_1080]:
                        mem[_1080 + mem[_1080] + 196] = 0
                    require ext_code.size(address(_1059))
                    call address(_1059).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1040, address(_1076), 128, mem[_1080], mem[_1080 + 196 len ceil32(mem[_1080])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1033))
                    staticcall address(_1033).token1() with:
                            gas gas_remaining wei
                    mem[_1080 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1080 + ceil32(return_data.size) + 32
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            _1028 = mem[96]
            idx = idx + 1
            s = ext_call.return_data[0]
            t = _1040
            u = ext_call.return_data[0]
            continue 
    return t, address(s)
}



}
