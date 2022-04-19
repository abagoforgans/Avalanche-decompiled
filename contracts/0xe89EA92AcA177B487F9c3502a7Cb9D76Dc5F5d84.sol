contract main {




// =====================  Runtime code  =====================


const RELAYER_ROLE = 0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
mapping of struct refs;
mapping of struct stor99;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(roleAdmin[arg1].field_256)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function refs(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    return refs[arg1[all]].field_0, refs[arg1[all]].field_0, refs[arg1[all]].field_128
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
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
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
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
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

function relay(string[] arg1, uint64[] arg2, uint64[] arg3, uint64[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require arg1 + cd[s] + 67 < calldata.size
        if cd[(arg1 + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _68 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + 36)])) + 1
        mem[_68] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 68 <= calldata.size
        mem[_68 + 32 len cd[(arg1 + cd[s] + 36)]] = call.data[arg1 + cd[s] + 68 len cd[(arg1 + cd[s] + 36)]]
        mem[_68 + cd[(arg1 + cd[s] + 36)] + 32] = 0
        mem[t] = _68
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    _69 = mem[64]
    if mem[64] + floor32(arg2.length) + 1 > test266151307() or mem[64] + floor32(arg2.length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(arg2.length) + 1
    mem[_69] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = _69 + 32
    while idx < arg2.length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    _134 = mem[64]
    if mem[64] + floor32(arg3.length) + 1 > test266151307() or mem[64] + floor32(arg3.length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(arg3.length) + 1
    mem[_134] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = _134 + 32
    while idx < arg3.length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    _198 = mem[64]
    if mem[64] + floor32(arg4.length) + 1 > test266151307() or mem[64] + floor32(arg4.length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(arg4.length) + 1
    mem[_198] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = _198 + 32
    while idx < arg4.length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4, 0)
    if not uint8(roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4][address(msg.sender)].field_0):
        revert with 0, 'NOTARELAYER'
    _263 = mem[96]
    if mem[_69] != mem[96]:
        revert with 0, 'BADRATESLENGTH'
    if mem[_134] != mem[96]:
        revert with 0, 'BADRESOLVETIMESLENGTH'
    if arg4.length != mem[96]:
        revert with 0, 'BADREQUESTIDSLENGTH'
    idx = 0
    while idx < _263:
        _323 = mem[64]
        mem[64] = mem[64] + 96
        if idx >= mem[_69]:
            revert with 'NH{q', 50
        mem[_323] = mem[(32 * idx) + _69 + 56 len 8]
        if idx >= mem[_134]:
            revert with 'NH{q', 50
        mem[_323 + 32] = mem[(32 * idx) + _134 + 56 len 8]
        if idx >= mem[_198]:
            revert with 'NH{q', 50
        mem[_323 + 64] = mem[(32 * idx) + _198 + 56 len 8]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _331 = mem[(32 * idx) + 128]
        _332 = mem[64]
        _333 = mem[mem[(32 * idx) + 128]]
        s = 0
        while s < _333:
            mem[_332 + s] = mem[_331 + s + 32]
            s = s + 32
            continue 
        mem[_332 + _333] = 1
        stor[sha3(mem[mem[64] len _332 + _333 + -mem[64] + 32])].field_0 = mem[_323 + 24 len 8]
        stor[sha3(mem[mem[64] len _332 + _333 + -mem[64] + 32])].field_64 = mem[_323 + 56 len 8]
        stor[sha3(mem[mem[64] len _332 + _333 + -mem[64] + 32])].field_128 = mem[_323 + 88 len 8]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if ceil32(_333) <= _333:
            _378 = mem[(32 * idx) + 128]
            if idx >= mem[_69]:
                revert with 'NH{q', 50
            _386 = mem[(32 * idx) + _69 + 32]
            if idx >= mem[_134]:
                revert with 'NH{q', 50
            _390 = mem[(32 * idx) + _134 + 32]
            if idx >= mem[_198]:
                revert with 'NH{q', 50
            _394 = mem[(32 * idx) + _198 + 32]
            mem[mem[64]] = 128
            _400 = mem[_378]
            mem[mem[64] + 128] = mem[_378]
            s = 0
            while s < _400:
                mem[mem[64] + s + 160] = mem[_378 + s + 32]
                s = s + 32
                continue 
            if ceil32(_400) > _400:
                mem[mem[64] + _400 + 160] = 0
            mem[mem[64] + 32] = uint64(_386)
            mem[mem[64] + 64] = uint64(_390)
            mem[mem[64] + 96] = uint64(_394)
            emit RefDataUpdate(string rg1, uint64 rg2, uint64 rg3, uint64 rg4):
                               128,
                               _386 << 192,
                               _390 << 192,
                               _394 << 192,
                               mem[mem[64] + 128 len ceil32(_400) + 32],
        else:
            _388 = mem[(32 * idx) + 128]
            if idx >= mem[_69]:
                revert with 'NH{q', 50
            _392 = mem[(32 * idx) + _69 + 32]
            if idx >= mem[_134]:
                revert with 'NH{q', 50
            _396 = mem[(32 * idx) + _134 + 32]
            if idx >= mem[_198]:
                revert with 'NH{q', 50
            _398 = mem[(32 * idx) + _198 + 32]
            mem[mem[64]] = 128
            _401 = mem[_388]
            mem[mem[64] + 128] = mem[_388]
            s = 0
            while s < _401:
                mem[mem[64] + s + 160] = mem[_388 + s + 32]
                s = s + 32
                continue 
            if ceil32(_401) > _401:
                mem[mem[64] + _401 + 160] = 0
            mem[mem[64] + 32] = uint64(_392)
            mem[mem[64] + 64] = uint64(_396)
            mem[mem[64] + 96] = uint64(_398)
            emit RefDataUpdate(string rg1, uint64 rg2, uint64 rg3, uint64 rg4):
                               128,
                               _392 << 192,
                               _396 << 192,
                               _398 << 192,
                               mem[mem[64] + 128 len ceil32(_401) + 32],
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getReferenceData(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307() or ceil32(ceil32(arg2.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if sha3(arg1[all]) == sha3('USD'):
        if sha3(arg2[all]) == sha3('USD'):
            return 10^18, block.timestamp, block.timestamp
        if stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 1)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_64 <= 0:
            revert with 0, 'REFDATANOTAVAILABLE'
        if not stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 1)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_0:
            revert with 'NH{q', 18
        return 1000000000 * 10^18 / stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 1)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_0, 
               block.timestamp,
               stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 1)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_64
    if stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 1)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_64 <= 0:
        revert with 0, 'REFDATANOTAVAILABLE'
    if sha3(arg2[all]) == sha3('USD'):
        if stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 1)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0 and 10^18 > -1 / stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 1)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0:
            revert with 'NH{q', 17
        return 10^18 * stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 1)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0 / 10^9, 
               stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 1)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0,
               block.timestamp
    if stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 1)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_64 <= 0:
        revert with 0, 'REFDATANOTAVAILABLE'
    if stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 1)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0 and 10^18 > -1 / stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 1)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0:
        revert with 'NH{q', 17
    if not stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 1)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_0:
        revert with 'NH{q', 18
    return 10^18 * stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 1)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0 / stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 1)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_0, 
           stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 1)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0,
           stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 1)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_64
}

function getReferenceDataBulk(string[] arg1, string[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require arg1 + cd[s] + 67 < calldata.size
        if cd[(arg1 + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _200 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + 36)])) + 1
        mem[_200] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 68 <= calldata.size
        mem[_200 + 32 len cd[(arg1 + cd[s] + 36)]] = call.data[arg1 + cd[s] + 68 len cd[(arg1 + cd[s] + 36)]]
        mem[_200 + cd[(arg1 + cd[s] + 36)] + 32] = 0
        mem[t] = _200
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    _201 = mem[64]
    if mem[64] + floor32(arg2.length) + 1 > test266151307() or mem[64] + floor32(arg2.length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(arg2.length) + 1
    mem[_201] = arg2.length
    idx = 0
    s = arg2 + 36
    t = _201 + 32
    while idx < arg2.length:
        require arg2 + cd[s] + 67 < calldata.size
        if cd[(arg2 + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _408 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1
        mem[_408] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_408 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_408 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _408
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] != mem[_201]:
        revert with 0, 'BAD_INPUT_LENGTH'
    _400 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _402 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _400) + 32
    if not _400:
        idx = 0
        while idx < _400:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _597 = mem[(32 * idx) + 128]
            if idx >= mem[_201]:
                revert with 'NH{q', 50
            _599 = mem[(32 * idx) + _201 + 32]
            _601 = mem[64]
            mem[64] = mem[64] + 96
            mem[_601] = 0
            mem[_601 + 32] = 0
            mem[_601 + 64] = 0
            _603 = mem[64]
            mem[64] = mem[64] + 64
            mem[_603] = 3
            mem[_603 + 32] = 'USD'
            if sha3(mem[_597 + 32 len mem[_597]]) == sha3('USD'):
                _616 = mem[64]
                mem[64] = mem[64] + 64
                mem[_616] = 3
                mem[_616 + 32] = 'USD'
                if sha3(mem[_599 + 32 len mem[_599]]) == sha3('USD'):
                    _631 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_631] = 10^18
                    mem[_631 + 32] = block.timestamp
                    mem[_631 + 64] = block.timestamp
                    if idx >= mem[_402]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _402 + 32] = _631
                else:
                    _622 = mem[64]
                    _632 = mem[_599]
                    s = 0
                    while s < _632:
                        mem[_622 + s] = mem[_599 + s + 32]
                        s = s + 32
                        continue 
                    mem[_622 + _632] = 1
                    if ceil32(_632) <= _632:
                        _792 = sha3(mem[mem[64] len _622 + _632 + -mem[64] + 32])
                        if stor[sha3(mem[mem[64] len _622 + _632 + -mem[64] + 32])].field_64 <= 0:
                            revert with 0, 'REFDATANOTAVAILABLE'
                        _807 = mem[64]
                        mem[64] = mem[64] + 96
                        if not stor[_792].field_0:
                            revert with 'NH{q', 18
                        mem[_807] = 1000000000 * 10^18 / stor[_792].field_0
                        mem[_807 + 32] = block.timestamp
                        mem[_807 + 64] = stor[_792].field_64
                        if idx >= mem[_402]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _402 + 32] = _807
                    else:
                        _799 = sha3(mem[mem[64] len _622 + _632 + -mem[64] + 32])
                        if stor[sha3(mem[mem[64] len _622 + _632 + -mem[64] + 32])].field_64 <= 0:
                            revert with 0, 'REFDATANOTAVAILABLE'
                        _813 = mem[64]
                        mem[64] = mem[64] + 96
                        if not stor[_799].field_0:
                            revert with 'NH{q', 18
                        mem[_813] = 1000000000 * 10^18 / stor[_799].field_0
                        mem[_813 + 32] = block.timestamp
                        mem[_813 + 64] = stor[_799].field_64
                        if idx >= mem[_402]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _402 + 32] = _813
            else:
                _611 = mem[64]
                _615 = mem[_597]
                s = 0
                while s < _615:
                    mem[_611 + s] = mem[_597 + s + 32]
                    s = s + 32
                    continue 
                mem[_611 + _615] = 1
                if ceil32(_615) <= _615:
                    _790 = sha3(mem[mem[64] len _611 + _615 + -mem[64] + 32])
                    if stor[sha3(mem[mem[64] len _611 + _615 + -mem[64] + 32])].field_64 <= 0:
                        revert with 0, 'REFDATANOTAVAILABLE'
                    _808 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_808] = 3
                    mem[_808 + 32] = 'USD'
                    if sha3(mem[_599 + 32 len mem[_599]]) == sha3('USD'):
                        _829 = mem[64]
                        mem[64] = mem[64] + 96
                        if stor[_790].field_0 and 10^18 > -1 / stor[_790].field_0:
                            revert with 'NH{q', 17
                        mem[_829] = 10^18 * stor[_790].field_0 / 10^9
                        mem[_829 + 32] = stor[_790].field_64
                        mem[_829 + 64] = block.timestamp
                        if idx >= mem[_402]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _402 + 32] = _829
                    else:
                        _816 = mem[64]
                        _831 = mem[_599]
                        s = 0
                        while s < _831:
                            mem[_816 + s] = mem[_599 + s + 32]
                            s = s + 32
                            continue 
                        mem[_816 + _831] = 1
                        if ceil32(_831) <= _831:
                            _957 = sha3(mem[mem[64] len _816 + _831 + -mem[64] + 32])
                            if stor[sha3(mem[mem[64] len _816 + _831 + -mem[64] + 32])].field_64 <= 0:
                                revert with 0, 'REFDATANOTAVAILABLE'
                            _975 = mem[64]
                            mem[64] = mem[64] + 96
                            if stor[_790].field_0 and 10^18 > -1 / stor[_790].field_0:
                                revert with 'NH{q', 17
                            if not stor[_957].field_0:
                                revert with 'NH{q', 18
                            mem[_975] = 10^18 * stor[_790].field_0 / stor[_957].field_0
                            mem[_975 + 32] = stor[_790].field_64
                            mem[_975 + 64] = stor[_957].field_64
                            if idx >= mem[_402]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _402 + 32] = _975
                        else:
                            _964 = sha3(mem[mem[64] len _816 + _831 + -mem[64] + 32])
                            if stor[sha3(mem[mem[64] len _816 + _831 + -mem[64] + 32])].field_64 <= 0:
                                revert with 0, 'REFDATANOTAVAILABLE'
                            _978 = mem[64]
                            mem[64] = mem[64] + 96
                            if stor[_790].field_0 and 10^18 > -1 / stor[_790].field_0:
                                revert with 'NH{q', 17
                            if not stor[_964].field_0:
                                revert with 'NH{q', 18
                            mem[_978] = 10^18 * stor[_790].field_0 / stor[_964].field_0
                            mem[_978 + 32] = stor[_790].field_64
                            mem[_978 + 64] = stor[_964].field_64
                            if idx >= mem[_402]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _402 + 32] = _978
                else:
                    _796 = sha3(mem[mem[64] len _611 + _615 + -mem[64] + 32])
                    if stor[sha3(mem[mem[64] len _611 + _615 + -mem[64] + 32])].field_64 <= 0:
                        revert with 0, 'REFDATANOTAVAILABLE'
                    _817 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_817] = 3
                    mem[_817 + 32] = 'USD'
                    if sha3(mem[_599 + 32 len mem[_599]]) == sha3('USD'):
                        _832 = mem[64]
                        mem[64] = mem[64] + 96
                        if stor[_796].field_0 and 10^18 > -1 / stor[_796].field_0:
                            revert with 'NH{q', 17
                        mem[_832] = 10^18 * stor[_796].field_0 / 10^9
                        mem[_832 + 32] = stor[_796].field_64
                        mem[_832 + 64] = block.timestamp
                        if idx >= mem[_402]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _402 + 32] = _832
                    else:
                        _823 = mem[64]
                        _834 = mem[_599]
                        s = 0
                        while s < _834:
                            mem[_823 + s] = mem[_599 + s + 32]
                            s = s + 32
                            continue 
                        mem[_823 + _834] = 1
                        if ceil32(_834) <= _834:
                            _959 = sha3(mem[mem[64] len _823 + _834 + -mem[64] + 32])
                            if stor[sha3(mem[mem[64] len _823 + _834 + -mem[64] + 32])].field_64 <= 0:
                                revert with 0, 'REFDATANOTAVAILABLE'
                            _976 = mem[64]
                            mem[64] = mem[64] + 96
                            if stor[_796].field_0 and 10^18 > -1 / stor[_796].field_0:
                                revert with 'NH{q', 17
                            if not stor[_959].field_0:
                                revert with 'NH{q', 18
                            mem[_976] = 10^18 * stor[_796].field_0 / stor[_959].field_0
                            mem[_976 + 32] = stor[_796].field_64
                            mem[_976 + 64] = stor[_959].field_64
                            if idx >= mem[_402]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _402 + 32] = _976
                        else:
                            _967 = sha3(mem[mem[64] len _823 + _834 + -mem[64] + 32])
                            if stor[sha3(mem[mem[64] len _823 + _834 + -mem[64] + 32])].field_64 <= 0:
                                revert with 0, 'REFDATANOTAVAILABLE'
                            _979 = mem[64]
                            mem[64] = mem[64] + 96
                            if stor[_796].field_0 and 10^18 > -1 / stor[_796].field_0:
                                revert with 'NH{q', 17
                            if not stor[_967].field_0:
                                revert with 'NH{q', 18
                            mem[_979] = 10^18 * stor[_796].field_0 / stor[_967].field_0
                            mem[_979 + 32] = stor[_796].field_64
                            mem[_979 + 64] = stor[_967].field_64
                            if idx >= mem[_402]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _402 + 32] = _979
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _596 = mem[64]
        mem[mem[64]] = 32
        _600 = mem[_402]
        mem[mem[64] + 32] = mem[_402]
        idx = 0
        s = _402 + 32
        t = mem[64] + 64
        while idx < _600:
            _784 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_784 + 32]
            mem[t + 64] = mem[_784 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _596 + (96 * _600) + -mem[64] + 64
    mem[64] = _402 + (32 * _400) + 128
    mem[_402 + (32 * _400) + 32] = 0
    mem[_402 + (32 * _400) + 64] = 0
    mem[_402 + (32 * _400) + 96] = 0
    mem[var54001] = _402 + (32 * _400) + 32
    s = var54001
    idx = var54002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[_402 + (32 * _400) + 32] = 0
        mem[_402 + (32 * _400) + 64] = 0
        mem[_402 + (32 * _400) + 96] = 0
        mem[s + 32] = _402 + (32 * _400) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < _400:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _953 = mem[(32 * idx) + 128]
        if idx >= mem[_201]:
            revert with 'NH{q', 50
        _955 = mem[(32 * idx) + _201 + 32]
        _961 = mem[64]
        mem[64] = mem[64] + 96
        mem[_961] = 0
        mem[_961 + 32] = 0
        mem[_961 + 64] = 0
        _970 = mem[64]
        mem[64] = mem[64] + 64
        mem[_970] = 3
        mem[_970 + 32] = 'USD'
        if sha3(mem[_953 + 32 len mem[_953]]) == sha3('USD'):
            _981 = mem[64]
            mem[64] = mem[64] + 64
            mem[_981] = 3
            mem[_981 + 32] = 'USD'
            if sha3(mem[_955 + 32 len mem[_955]]) == sha3('USD'):
                _992 = mem[64]
                mem[64] = mem[64] + 96
                mem[_992] = 10^18
                mem[_992 + 32] = block.timestamp
                mem[_992 + 64] = block.timestamp
                if idx >= mem[_402]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _402 + 32] = _992
            else:
                _987 = mem[64]
                _995 = mem[_955]
                s = 0
                while s < _995:
                    mem[_987 + s] = mem[_955 + s + 32]
                    s = s + 32
                    continue 
                mem[_987 + _995] = 1
                if ceil32(_995) <= _995:
                    _1077 = sha3(mem[mem[64] len _987 + _995 + -mem[64] + 32])
                    if stor[sha3(mem[mem[64] len _987 + _995 + -mem[64] + 32])].field_64 <= 0:
                        revert with 0, 'REFDATANOTAVAILABLE'
                    _1087 = mem[64]
                    mem[64] = mem[64] + 96
                    if not stor[_1077].field_0:
                        revert with 'NH{q', 18
                    mem[_1087] = 1000000000 * 10^18 / stor[_1077].field_0
                    mem[_1087 + 32] = block.timestamp
                    mem[_1087 + 64] = stor[_1077].field_64
                    if idx >= mem[_402]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _402 + 32] = _1087
                else:
                    _1083 = sha3(mem[mem[64] len _987 + _995 + -mem[64] + 32])
                    if stor[sha3(mem[mem[64] len _987 + _995 + -mem[64] + 32])].field_64 <= 0:
                        revert with 0, 'REFDATANOTAVAILABLE'
                    _1093 = mem[64]
                    mem[64] = mem[64] + 96
                    if not stor[_1083].field_0:
                        revert with 'NH{q', 18
                    mem[_1093] = 1000000000 * 10^18 / stor[_1083].field_0
                    mem[_1093 + 32] = block.timestamp
                    mem[_1093 + 64] = stor[_1083].field_64
                    if idx >= mem[_402]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _402 + 32] = _1093
        else:
            _977 = mem[64]
            _980 = mem[_953]
            s = 0
            while s < _980:
                mem[_977 + s] = mem[_953 + s + 32]
                s = s + 32
                continue 
            mem[_977 + _980] = 1
            if ceil32(_980) <= _980:
                _1075 = sha3(mem[mem[64] len _977 + _980 + -mem[64] + 32])
                if stor[sha3(mem[mem[64] len _977 + _980 + -mem[64] + 32])].field_64 <= 0:
                    revert with 0, 'REFDATANOTAVAILABLE'
                _1088 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1088] = 3
                mem[_1088 + 32] = 'USD'
                if sha3(mem[_955 + 32 len mem[_955]]) == sha3('USD'):
                    _1102 = mem[64]
                    mem[64] = mem[64] + 96
                    if stor[_1075].field_0 and 10^18 > -1 / stor[_1075].field_0:
                        revert with 'NH{q', 17
                    mem[_1102] = 10^18 * stor[_1075].field_0 / 10^9
                    mem[_1102 + 32] = stor[_1075].field_64
                    mem[_1102 + 64] = block.timestamp
                    if idx >= mem[_402]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _402 + 32] = _1102
                else:
                    _1094 = mem[64]
                    _1103 = mem[_955]
                    s = 0
                    while s < _1103:
                        mem[_1094 + s] = mem[_955 + s + 32]
                        s = s + 32
                        continue 
                    mem[_1094 + _1103] = 1
                    if ceil32(_1103) <= _1103:
                        _1143 = sha3(mem[mem[64] len _1094 + _1103 + -mem[64] + 32])
                        if stor[sha3(mem[mem[64] len _1094 + _1103 + -mem[64] + 32])].field_64 <= 0:
                            revert with 0, 'REFDATANOTAVAILABLE'
                        _1154 = mem[64]
                        mem[64] = mem[64] + 96
                        if stor[_1075].field_0 and 10^18 > -1 / stor[_1075].field_0:
                            revert with 'NH{q', 17
                        if not stor[_1143].field_0:
                            revert with 'NH{q', 18
                        mem[_1154] = 10^18 * stor[_1075].field_0 / stor[_1143].field_0
                        mem[_1154 + 32] = stor[_1075].field_64
                        mem[_1154 + 64] = stor[_1143].field_64
                        if idx >= mem[_402]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _402 + 32] = _1154
                    else:
                        _1148 = sha3(mem[mem[64] len _1094 + _1103 + -mem[64] + 32])
                        if stor[sha3(mem[mem[64] len _1094 + _1103 + -mem[64] + 32])].field_64 <= 0:
                            revert with 0, 'REFDATANOTAVAILABLE'
                        _1156 = mem[64]
                        mem[64] = mem[64] + 96
                        if stor[_1075].field_0 and 10^18 > -1 / stor[_1075].field_0:
                            revert with 'NH{q', 17
                        if not stor[_1148].field_0:
                            revert with 'NH{q', 18
                        mem[_1156] = 10^18 * stor[_1075].field_0 / stor[_1148].field_0
                        mem[_1156 + 32] = stor[_1075].field_64
                        mem[_1156 + 64] = stor[_1148].field_64
                        if idx >= mem[_402]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _402 + 32] = _1156
            else:
                _1080 = sha3(mem[mem[64] len _977 + _980 + -mem[64] + 32])
                if stor[sha3(mem[mem[64] len _977 + _980 + -mem[64] + 32])].field_64 <= 0:
                    revert with 0, 'REFDATANOTAVAILABLE'
                _1095 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1095] = 3
                mem[_1095 + 32] = 'USD'
                if sha3(mem[_955 + 32 len mem[_955]]) == sha3('USD'):
                    _1104 = mem[64]
                    mem[64] = mem[64] + 96
                    if stor[_1080].field_0 and 10^18 > -1 / stor[_1080].field_0:
                        revert with 'NH{q', 17
                    mem[_1104] = 10^18 * stor[_1080].field_0 / 10^9
                    mem[_1104 + 32] = stor[_1080].field_64
                    mem[_1104 + 64] = block.timestamp
                    if idx >= mem[_402]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _402 + 32] = _1104
                else:
                    _1101 = mem[64]
                    _1106 = mem[_955]
                    s = 0
                    while s < _1106:
                        mem[_1101 + s] = mem[_955 + s + 32]
                        s = s + 32
                        continue 
                    mem[_1101 + _1106] = 1
                    if ceil32(_1106) <= _1106:
                        _1145 = sha3(mem[mem[64] len _1101 + _1106 + -mem[64] + 32])
                        if stor[sha3(mem[mem[64] len _1101 + _1106 + -mem[64] + 32])].field_64 <= 0:
                            revert with 0, 'REFDATANOTAVAILABLE'
                        _1155 = mem[64]
                        mem[64] = mem[64] + 96
                        if stor[_1080].field_0 and 10^18 > -1 / stor[_1080].field_0:
                            revert with 'NH{q', 17
                        if not stor[_1145].field_0:
                            revert with 'NH{q', 18
                        mem[_1155] = 10^18 * stor[_1080].field_0 / stor[_1145].field_0
                        mem[_1155 + 32] = stor[_1080].field_64
                        mem[_1155 + 64] = stor[_1145].field_64
                        if idx >= mem[_402]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _402 + 32] = _1155
                    else:
                        _1151 = sha3(mem[mem[64] len _1101 + _1106 + -mem[64] + 32])
                        if stor[sha3(mem[mem[64] len _1101 + _1106 + -mem[64] + 32])].field_64 <= 0:
                            revert with 0, 'REFDATANOTAVAILABLE'
                        _1157 = mem[64]
                        mem[64] = mem[64] + 96
                        if stor[_1080].field_0 and 10^18 > -1 / stor[_1080].field_0:
                            revert with 'NH{q', 17
                        if not stor[_1151].field_0:
                            revert with 'NH{q', 18
                        mem[_1157] = 10^18 * stor[_1080].field_0 / stor[_1151].field_0
                        mem[_1157 + 32] = stor[_1080].field_64
                        mem[_1157 + 64] = stor[_1151].field_64
                        if idx >= mem[_402]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _402 + 32] = _1157
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _952 = mem[64]
    mem[mem[64]] = 32
    _960 = mem[_402]
    mem[mem[64] + 32] = mem[_402]
    idx = 0
    s = _402 + 32
    t = mem[64] + 64
    while idx < _960:
        _1069 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_1069 + 32]
        mem[t + 64] = mem[_1069 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _952 + (96 * _960) + -mem[64] + 64
}



}
