contract main {




// =====================  Runtime code  =====================


const RELAYER_ROLE = sha3(Mask(96, 160, 'RELAYER_ROLE') >> 160)

const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;
mapping of struct stor1;
mapping of struct stor99;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(roleAdmin[arg1].field_512)
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint256(roleAdmin[arg1].field_0) <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require arg2 < uint256(roleAdmin[arg1].field_0)
    return address(roleAdmin[arg1][arg2].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(roleAdmin[arg1].field_0)
}

function _fallback() payable {
    revert
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return not not uint256(roleAdmin[arg1][1][address(arg2)].field_0)
}

function refs(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor1[arg1[all]].field_0
    mem[ceil32(arg1.length) + 160] = stor1[arg1[all]].field_64
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
           stor1[arg1[all]].field_0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint256(roleAdmin[uint256(roleAdmin[arg1].field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not uint256(roleAdmin[arg1][1][address(arg2)].field_0):
        uint256(roleAdmin[arg1].field_0)++
        address(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0) = arg2
        Mask(96, 0, roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_160) = 0
        uint256(roleAdmin[arg1][1][address(arg2)].field_0) = uint256(roleAdmin[arg1].field_0)
        emit RoleGranted(arg1, arg2, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint256(roleAdmin[arg1][1][address(arg2)].field_0):
        require uint256(roleAdmin[arg1].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        require uint256(roleAdmin[arg1][1][address(arg2)].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1][1][address(arg2)].field_0)].field_0) = uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)
        uint256(roleAdmin[arg1][1][uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)].field_0) = uint256(roleAdmin[arg1][1][address(arg2)].field_0)
        require uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0) = 0
        uint256(roleAdmin[arg1].field_0)--
        uint256(roleAdmin[arg1][1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint256(roleAdmin[uint256(roleAdmin[arg1].field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if uint256(roleAdmin[arg1][1][address(arg2)].field_0):
        require uint256(roleAdmin[arg1].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        require uint256(roleAdmin[arg1][1][address(arg2)].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1][1][address(arg2)].field_0)].field_0) = uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)
        uint256(roleAdmin[arg1][1][uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)].field_0) = uint256(roleAdmin[arg1][1][address(arg2)].field_0)
        require uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0) = 0
        uint256(roleAdmin[arg1].field_0)--
        uint256(roleAdmin[arg1][1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function relay(string[] arg1, uint64[] arg2, uint64[] arg3, uint64[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require arg1 + cd[s] + 67 < calldata.size
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        _71 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32
        mem[_71] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 68 <= calldata.size
        mem[_71 + 32 len cd[(arg1 + cd[s] + 36)]] = call.data[arg1 + cd[s] + 68 len cd[(arg1 + cd[s] + 36)]]
        mem[_71 + cd[(arg1 + cd[s] + 36)] + 32] = 0
        mem[t] = _71
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    _72 = mem[64]
    require mem[64] + (32 * arg2.length) + 32 <= test266151307() and mem[64] + (32 * arg2.length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * arg2.length) + 32
    mem[_72] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = _72 + 32
    while idx < arg2.length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    _140 = mem[64]
    require mem[64] + (32 * arg3.length) + 32 <= test266151307() and mem[64] + (32 * arg3.length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_140] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = _140 + 32
    while idx < arg3.length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    _207 = mem[64]
    require mem[64] + (32 * arg4.length) + 32 <= test266151307() and mem[64] + (32 * arg4.length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * arg4.length) + 32
    mem[_207] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = _207 + 32
    while idx < arg4.length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 'RELAYER_ROLE'
    mem[0] = msg.sender
    mem[32] = sha3(sha3('RELAYER_ROLE'), 0) + 1
    if not uint256(roleAdmin['RELAYER_ROLE'][1][address(msg.sender)].field_0):
        revert with 0, 'NOT_A_RELAYER'
    _278 = mem[96]
    if mem[_72] != mem[96]:
        revert with 0, 'BAD_RATES_LENGTH'
    if mem[_140] != mem[96]:
        revert with 0, 'BAD_RESOLVE_TIMES_LENGTH'
    if arg4.length != mem[96]:
        revert with 0, 'BAD_REQUEST_IDS_LENGTH'
    idx = 0
    while idx < _278:
        _338 = mem[64]
        mem[64] = mem[64] + 96
        require idx < mem[_72]
        mem[_338] = mem[(32 * idx) + _72 + 56 len 8]
        require idx < mem[_140]
        mem[_338 + 32] = mem[(32 * idx) + _140 + 56 len 8]
        require idx < mem[_207]
        mem[_338 + 64] = mem[(32 * idx) + _207 + 56 len 8]
        require idx < mem[96]
        _346 = mem[(32 * idx) + 128]
        _347 = mem[64]
        _348 = mem[mem[(32 * idx) + 128]]
        s = 0
        while s < _348:
            mem[_347 + s] = mem[_346 + s + 32]
            s = s + 32
            continue 
        mem[_347 + _348] = 1
        stor[sha3(mem[mem[64] len _347 + _348 + -mem[64] + 32])].field_0 = mem[_338 + 24 len 8]
        stor[sha3(mem[mem[64] len _347 + _348 + -mem[64] + 32])].field_64 = mem[_338 + 56 len 8]
        stor[sha3(mem[mem[64] len _347 + _348 + -mem[64] + 32])].field_128 = mem[_338 + 88 len 8]
        require idx < mem[96]
        if ceil32(_348) > _348:
            _403 = mem[(32 * idx) + 128]
            require idx < mem[_72]
            _407 = mem[(32 * idx) + _72 + 32]
            require idx < mem[_140]
            _411 = mem[(32 * idx) + _140 + 32]
            require idx < mem[_207]
            _413 = mem[(32 * idx) + _207 + 32]
            mem[mem[64]] = 128
            _416 = mem[_403]
            mem[mem[64] + 128] = mem[_403]
            s = 0
            while s < _416:
                mem[mem[64] + s + 160] = mem[_403 + s + 32]
                s = s + 32
                continue 
            if ceil32(_416) > _416:
                mem[mem[64] + _416 + 160] = 0
            mem[mem[64] + 32] = uint64(_407)
            mem[mem[64] + 64] = uint64(_411)
            mem[mem[64] + 96] = uint64(_413)
            emit RefDataUpdate(string rg1, uint64 rg2, uint64 rg3, uint64 rg4):
                               128,
                               _407 << 192,
                               _411 << 192,
                               _413 << 192,
                               mem[mem[64] + 128 len ceil32(_416) + 32],
        else:
            _393 = mem[(32 * idx) + 128]
            require idx < mem[_72]
            _401 = mem[(32 * idx) + _72 + 32]
            require idx < mem[_140]
            _405 = mem[(32 * idx) + _140 + 32]
            require idx < mem[_207]
            _409 = mem[(32 * idx) + _207 + 32]
            _410 = mem[64]
            mem[mem[64]] = 128
            _415 = mem[_393]
            mem[mem[64] + 128] = mem[_393]
            s = 0
            while s < _415:
                mem[mem[64] + s + 160] = mem[_393 + s + 32]
                s = s + 32
                continue 
            if ceil32(_415) > _415:
                mem[_410 + _415 + 160] = 0
            mem[_410 + 32] = uint64(_401)
            mem[_410 + 64] = uint64(_405)
            mem[_410 + 96] = uint64(_409)
            emit RefDataUpdate(string rg1, uint64 rg2, uint64 rg3, uint64 rg4):
                               mem[mem[64] len _410 + ceil32(_415) + -mem[64] + 160],
        idx = idx + 1
        continue 
}

function getReferenceData(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg1.length) + ceil32(arg2.length) + 160 <= test266151307() and ceil32(arg2.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = 'USD'
    if sha3(arg1[all]) == sha3('USD'):
        if sha3(arg2[all]) == sha3('USD'):
            return 10^18, block.timestamp, block.timestamp
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 384] = 1
        if stor[mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 384 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256].field_64 <= 0:
            revert with 0, 'REF_DATA_NOT_AVAILABLE'
        if stor[mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 384 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256].field_0:
            return 1000000000 * 10^18 / stor[mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 384 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256].field_0, 
                   block.timestamp,
                   stor[mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 384 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256].field_64
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 320] = 1
        if ceil32(arg1.length) <= arg1.length:
            _125 = sha3(Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len arg1.length + -ceil32(arg1.length) + 32])
            if stor[mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256].field_64 <= 0:
                revert with 0, 'REF_DATA_NOT_AVAILABLE'
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = 3
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = 'USD'
            if sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) == sha3('USD'):
                return 10^18 * stor[_125].field_0 / 10^9, stor[_125].field_0, block.timestamp
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 384] = 1
            if stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])].field_64 <= 0:
                revert with 0, 'REF_DATA_NOT_AVAILABLE'
            if stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])].field_0:
                return 10^18 * stor[_125].field_0 / stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])].field_0, 
                       stor[_125].field_0,
                       stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])].field_64
        else:
            _130 = sha3(Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len arg1.length + -ceil32(arg1.length) + 32])
            if stor[mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256].field_64 <= 0:
                revert with 0, 'REF_DATA_NOT_AVAILABLE'
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = 3
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = 'USD'
            if sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) == sha3('USD'):
                return 10^18 * stor[_130].field_0 / 10^9, stor[_130].field_0, block.timestamp
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 384] = 1
            if stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])].field_64 <= 0:
                revert with 0, 'REF_DATA_NOT_AVAILABLE'
            if stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])].field_0:
                return 10^18 * stor[_130].field_0 / stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])].field_0, 
                       stor[_130].field_0,
                       stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])].field_64
        ('iszero', ('field', 0, ('stor', ('sha3', ('mem', ('range', ('add', 384, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), ('add', 32, ('data', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))))))))
    revert
}

function getReferenceDataBulk(string[] arg1, string[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require arg1 + cd[s] + 67 < calldata.size
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        _200 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32
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
    require arg2.length <= test266151307()
    _201 = mem[64]
    require mem[64] + (32 * arg2.length) + 32 <= test266151307() and mem[64] + (32 * arg2.length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * arg2.length) + 32
    mem[_201] = arg2.length
    idx = 0
    s = arg2 + 36
    t = _201 + 32
    while idx < arg2.length:
        require arg2 + cd[s] + 67 < calldata.size
        require cd[(arg2 + cd[s] + 36)] <= test266151307()
        _403 = mem[64]
        require mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32
        mem[_403] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_403 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_403 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _403
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] != mem[_201]:
        revert with 0, 'BAD_INPUT_LENGTH'
    _400 = mem[96]
    require mem[96] <= test266151307()
    _402 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _400) + 32
    if not _400:
        idx = 0
        while idx < _400:
            require idx < mem[96]
            _597 = mem[(32 * idx) + 128]
            require idx < mem[_201]
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
                    require idx < mem[_402]
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
                            revert with 0, 'REF_DATA_NOT_AVAILABLE'
                        _807 = mem[64]
                        mem[64] = mem[64] + 96
                        require stor[_792].field_0
                        mem[_807] = 1000000000 * 10^18 / stor[_792].field_0
                        mem[_807 + 32] = block.timestamp
                        mem[_807 + 64] = stor[_792].field_64
                        require idx < mem[_402]
                        mem[(32 * idx) + _402 + 32] = _807
                    else:
                        _799 = sha3(mem[mem[64] len _622 + _632 + -mem[64] + 32])
                        if stor[sha3(mem[mem[64] len _622 + _632 + -mem[64] + 32])].field_64 <= 0:
                            revert with 0, 'REF_DATA_NOT_AVAILABLE'
                        _813 = mem[64]
                        mem[64] = mem[64] + 96
                        require stor[_799].field_0
                        mem[_813] = 1000000000 * 10^18 / stor[_799].field_0
                        mem[_813 + 32] = block.timestamp
                        mem[_813 + 64] = stor[_799].field_64
                        require idx < mem[_402]
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
                        revert with 0, 'REF_DATA_NOT_AVAILABLE'
                    _808 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_808] = 3
                    mem[_808 + 32] = 'USD'
                    if sha3(mem[_599 + 32 len mem[_599]]) == sha3('USD'):
                        _831 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_831] = 10^18 * stor[_790].field_0 / 10^9
                        mem[_831 + 32] = stor[_790].field_64
                        mem[_831 + 64] = block.timestamp
                        require idx < mem[_402]
                        mem[(32 * idx) + _402 + 32] = _831
                    else:
                        _816 = mem[64]
                        _835 = mem[_599]
                        s = 0
                        while s < _835:
                            mem[_816 + s] = mem[_599 + s + 32]
                            s = s + 32
                            continue 
                        mem[_816 + _835] = 1
                        if ceil32(_835) <= _835:
                            _957 = sha3(mem[mem[64] len _816 + _835 + -mem[64] + 32])
                            if stor[sha3(mem[mem[64] len _816 + _835 + -mem[64] + 32])].field_64 <= 0:
                                revert with 0, 'REF_DATA_NOT_AVAILABLE'
                            _975 = mem[64]
                            mem[64] = mem[64] + 96
                            require stor[_957].field_0
                            mem[_975] = 10^18 * stor[_790].field_0 / stor[_957].field_0
                            mem[_975 + 32] = stor[_790].field_64
                            mem[_975 + 64] = stor[_957].field_64
                            require idx < mem[_402]
                            mem[(32 * idx) + _402 + 32] = _975
                        else:
                            _964 = sha3(mem[mem[64] len _816 + _835 + -mem[64] + 32])
                            if stor[sha3(mem[mem[64] len _816 + _835 + -mem[64] + 32])].field_64 <= 0:
                                revert with 0, 'REF_DATA_NOT_AVAILABLE'
                            _978 = mem[64]
                            mem[64] = mem[64] + 96
                            require stor[_964].field_0
                            mem[_978] = 10^18 * stor[_790].field_0 / stor[_964].field_0
                            mem[_978 + 32] = stor[_790].field_64
                            mem[_978 + 64] = stor[_964].field_64
                            require idx < mem[_402]
                            mem[(32 * idx) + _402 + 32] = _978
                else:
                    _796 = sha3(mem[mem[64] len _611 + _615 + -mem[64] + 32])
                    if stor[sha3(mem[mem[64] len _611 + _615 + -mem[64] + 32])].field_64 <= 0:
                        revert with 0, 'REF_DATA_NOT_AVAILABLE'
                    _817 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_817] = 3
                    mem[_817 + 32] = 'USD'
                    if sha3(mem[_599 + 32 len mem[_599]]) == sha3('USD'):
                        _836 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_836] = 10^18 * stor[_796].field_0 / 10^9
                        mem[_836 + 32] = stor[_796].field_64
                        mem[_836 + 64] = block.timestamp
                        require idx < mem[_402]
                        mem[(32 * idx) + _402 + 32] = _836
                    else:
                        _824 = mem[64]
                        _840 = mem[_599]
                        s = 0
                        while s < _840:
                            mem[_824 + s] = mem[_599 + s + 32]
                            s = s + 32
                            continue 
                        mem[_824 + _840] = 1
                        if ceil32(_840) <= _840:
                            _959 = sha3(mem[mem[64] len _824 + _840 + -mem[64] + 32])
                            if stor[sha3(mem[mem[64] len _824 + _840 + -mem[64] + 32])].field_64 <= 0:
                                revert with 0, 'REF_DATA_NOT_AVAILABLE'
                            _976 = mem[64]
                            mem[64] = mem[64] + 96
                            require stor[_959].field_0
                            mem[_976] = 10^18 * stor[_796].field_0 / stor[_959].field_0
                            mem[_976 + 32] = stor[_796].field_64
                            mem[_976 + 64] = stor[_959].field_64
                            require idx < mem[_402]
                            mem[(32 * idx) + _402 + 32] = _976
                        else:
                            _967 = sha3(mem[mem[64] len _824 + _840 + -mem[64] + 32])
                            if stor[sha3(mem[mem[64] len _824 + _840 + -mem[64] + 32])].field_64 <= 0:
                                revert with 0, 'REF_DATA_NOT_AVAILABLE'
                            _979 = mem[64]
                            mem[64] = mem[64] + 96
                            require stor[_967].field_0
                            mem[_979] = 10^18 * stor[_796].field_0 / stor[_967].field_0
                            mem[_979 + 32] = stor[_796].field_64
                            mem[_979 + 64] = stor[_967].field_64
                            require idx < mem[_402]
                            mem[(32 * idx) + _402 + 32] = _979
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
    mem[var38001] = _402 + (32 * _400) + 32
    s = var38001
    s = var38002
    while _201 + (32 * arg2.length) + 31:
        mem[64] = mem[64] + 96
        mem[_402 + (32 * _400) + 32] = 0
        mem[_402 + (32 * _400) + 64] = 0
        mem[_402 + (32 * _400) + 96] = 0
        mem[arg2 + (32 * arg2.length) + 68] = _402 + (32 * _400) + 32
        s = arg2 + (32 * arg2.length) + 68
        s = _201 + (32 * arg2.length) + 31
        continue 
    idx = 0
    while idx < _400:
        require idx < mem[96]
        _953 = mem[(32 * idx) + 128]
        require idx < mem[_201]
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
            _985 = mem[64]
            mem[64] = mem[64] + 64
            mem[_985] = 3
            mem[_985 + 32] = 'USD'
            if sha3(mem[_955 + 32 len mem[_955]]) == sha3('USD'):
                _998 = mem[64]
                mem[64] = mem[64] + 96
                mem[_998] = 10^18
                mem[_998 + 32] = block.timestamp
                mem[_998 + 64] = block.timestamp
                require idx < mem[_402]
                mem[(32 * idx) + _402 + 32] = _998
            else:
                _993 = mem[64]
                _999 = mem[_955]
                s = 0
                while s < _999:
                    mem[_993 + s] = mem[_955 + s + 32]
                    s = s + 32
                    continue 
                mem[_993 + _999] = 1
                if ceil32(_999) <= _999:
                    _1077 = sha3(mem[mem[64] len _993 + _999 + -mem[64] + 32])
                    if stor[sha3(mem[mem[64] len _993 + _999 + -mem[64] + 32])].field_64 <= 0:
                        revert with 0, 'REF_DATA_NOT_AVAILABLE'
                    _1087 = mem[64]
                    mem[64] = mem[64] + 96
                    require stor[_1077].field_0
                    mem[_1087] = 1000000000 * 10^18 / stor[_1077].field_0
                    mem[_1087 + 32] = block.timestamp
                    mem[_1087 + 64] = stor[_1077].field_64
                    require idx < mem[_402]
                    mem[(32 * idx) + _402 + 32] = _1087
                else:
                    _1083 = sha3(mem[mem[64] len _993 + _999 + -mem[64] + 32])
                    if stor[sha3(mem[mem[64] len _993 + _999 + -mem[64] + 32])].field_64 <= 0:
                        revert with 0, 'REF_DATA_NOT_AVAILABLE'
                    _1093 = mem[64]
                    mem[64] = mem[64] + 96
                    require stor[_1083].field_0
                    mem[_1093] = 1000000000 * 10^18 / stor[_1083].field_0
                    mem[_1093 + 32] = block.timestamp
                    mem[_1093 + 64] = stor[_1083].field_64
                    require idx < mem[_402]
                    mem[(32 * idx) + _402 + 32] = _1093
        else:
            _977 = mem[64]
            _984 = mem[_953]
            s = 0
            while s < _984:
                mem[_977 + s] = mem[_953 + s + 32]
                s = s + 32
                continue 
            mem[_977 + _984] = 1
            if ceil32(_984) <= _984:
                _1075 = sha3(mem[mem[64] len _977 + _984 + -mem[64] + 32])
                if stor[sha3(mem[mem[64] len _977 + _984 + -mem[64] + 32])].field_64 <= 0:
                    revert with 0, 'REF_DATA_NOT_AVAILABLE'
                _1088 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1088] = 3
                mem[_1088 + 32] = 'USD'
                if sha3(mem[_955 + 32 len mem[_955]]) == sha3('USD'):
                    _1104 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1104] = 10^18 * stor[_1075].field_0 / 10^9
                    mem[_1104 + 32] = stor[_1075].field_64
                    mem[_1104 + 64] = block.timestamp
                    require idx < mem[_402]
                    mem[(32 * idx) + _402 + 32] = _1104
                else:
                    _1094 = mem[64]
                    _1107 = mem[_955]
                    s = 0
                    while s < _1107:
                        mem[_1094 + s] = mem[_955 + s + 32]
                        s = s + 32
                        continue 
                    mem[_1094 + _1107] = 1
                    if ceil32(_1107) <= _1107:
                        _1143 = sha3(mem[mem[64] len _1094 + _1107 + -mem[64] + 32])
                        if stor[sha3(mem[mem[64] len _1094 + _1107 + -mem[64] + 32])].field_64 <= 0:
                            revert with 0, 'REF_DATA_NOT_AVAILABLE'
                        _1154 = mem[64]
                        mem[64] = mem[64] + 96
                        require stor[_1143].field_0
                        mem[_1154] = 10^18 * stor[_1075].field_0 / stor[_1143].field_0
                        mem[_1154 + 32] = stor[_1075].field_64
                        mem[_1154 + 64] = stor[_1143].field_64
                        require idx < mem[_402]
                        mem[(32 * idx) + _402 + 32] = _1154
                    else:
                        _1148 = sha3(mem[mem[64] len _1094 + _1107 + -mem[64] + 32])
                        if stor[sha3(mem[mem[64] len _1094 + _1107 + -mem[64] + 32])].field_64 <= 0:
                            revert with 0, 'REF_DATA_NOT_AVAILABLE'
                        _1156 = mem[64]
                        mem[64] = mem[64] + 96
                        require stor[_1148].field_0
                        mem[_1156] = 10^18 * stor[_1075].field_0 / stor[_1148].field_0
                        mem[_1156 + 32] = stor[_1075].field_64
                        mem[_1156 + 64] = stor[_1148].field_64
                        require idx < mem[_402]
                        mem[(32 * idx) + _402 + 32] = _1156
            else:
                _1080 = sha3(mem[mem[64] len _977 + _984 + -mem[64] + 32])
                if stor[sha3(mem[mem[64] len _977 + _984 + -mem[64] + 32])].field_64 <= 0:
                    revert with 0, 'REF_DATA_NOT_AVAILABLE'
                _1095 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1095] = 3
                mem[_1095 + 32] = 'USD'
                if sha3(mem[_955 + 32 len mem[_955]]) == sha3('USD'):
                    _1108 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1108] = 10^18 * stor[_1080].field_0 / 10^9
                    mem[_1108 + 32] = stor[_1080].field_64
                    mem[_1108 + 64] = block.timestamp
                    require idx < mem[_402]
                    mem[(32 * idx) + _402 + 32] = _1108
                else:
                    _1102 = mem[64]
                    _1112 = mem[_955]
                    s = 0
                    while s < _1112:
                        mem[_1102 + s] = mem[_955 + s + 32]
                        s = s + 32
                        continue 
                    mem[_1102 + _1112] = 1
                    if ceil32(_1112) <= _1112:
                        _1145 = sha3(mem[mem[64] len _1102 + _1112 + -mem[64] + 32])
                        if stor[sha3(mem[mem[64] len _1102 + _1112 + -mem[64] + 32])].field_64 <= 0:
                            revert with 0, 'REF_DATA_NOT_AVAILABLE'
                        _1155 = mem[64]
                        mem[64] = mem[64] + 96
                        require stor[_1145].field_0
                        mem[_1155] = 10^18 * stor[_1080].field_0 / stor[_1145].field_0
                        mem[_1155 + 32] = stor[_1080].field_64
                        mem[_1155 + 64] = stor[_1145].field_64
                        require idx < mem[_402]
                        mem[(32 * idx) + _402 + 32] = _1155
                    else:
                        _1151 = sha3(mem[mem[64] len _1102 + _1112 + -mem[64] + 32])
                        if stor[sha3(mem[mem[64] len _1102 + _1112 + -mem[64] + 32])].field_64 <= 0:
                            revert with 0, 'REF_DATA_NOT_AVAILABLE'
                        _1157 = mem[64]
                        mem[64] = mem[64] + 96
                        require stor[_1151].field_0
                        mem[_1157] = 10^18 * stor[_1080].field_0 / stor[_1151].field_0
                        mem[_1157 + 32] = stor[_1080].field_64
                        mem[_1157 + 64] = stor[_1151].field_64
                        require idx < mem[_402]
                        mem[(32 * idx) + _402 + 32] = _1157
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
