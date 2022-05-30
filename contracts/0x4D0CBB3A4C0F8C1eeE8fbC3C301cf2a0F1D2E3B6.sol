contract main {




// =====================  Runtime code  =====================


#
#  - sub_e9af84a3(?)
#
address governanceAddress;
array of uint256 stor1;
mapping of address stor3;
array of struct keys;
array of struct versions;

function keys(uint256 arg1) payable {
    return uint256(keys[arg1][0 len keys[arg1].length].field_0)
}

function governance() payable {
    return governanceAddress
}

function versions(uint256 arg1) payable {
    return uint256(versions[arg1][0 len versions[arg1].length].field_0)
}

function sub_df060638(?) payable {
    return address(stor1.length)
}

function keysCount() payable {
    return keys.length
}

function _fallback() payable {
    revert
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!gov'
    governanceAddress = arg1
}

function setDev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, '!gov'
    address(stor1.length) = arg1
}

function addresses(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[ceil32(arg1.length) + 128] = stor3[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_9039997d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    if governanceAddress != msg.sender:
        revert with 0, '!gov'
    versions.length++
    uint256(versions[versions.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    emit AddVersion(string arg1):
                    Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                    mem[arg1.length + 160 len (4 * ceil32(arg1.length)) + -arg1.length + 32],
}

function get(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 128] = 3
    mem[ceil32(arg1.length) + 128] = address(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0)
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not governanceAddress
    governanceAddress = arg1
    address(stor1.length) = 0
    versions.length++
    uint8(versions[versions.length].field_0) = 4
    Mask(232, 0, versions[versions.length].field_8) = 0
    uint16(versions[versions.length].field_240) = 30257
    idx = 0
    while versions[versions.length].length + 31 / 32 > idx:
        uint256(versions[versions.length + idx].field_0) = 0
        idx = idx + 1
        continue 
    versions.length++
    uint8(versions[versions.length].field_0) = 4
    Mask(232, 0, versions[versions.length].field_8) = 0
    uint16(versions[versions.length].field_240) = 30258
    idx = 0
    while versions[versions.length].length + 31 / 32 > idx:
        uint256(versions[versions.length + idx].field_0) = 0
        idx = idx + 1
        continue 
}

function add(string arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 128] = sha3(msg.sender, 2)
    if not uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][1][address(arg2)].field_0):
        uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0)++
        address(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0)].field_0) = arg2
        Mask(96, 0, stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0)].field_160) = 0
        uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][1][address(arg2)].field_0) = uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0)
        mem[ceil32(arg1.length) + 128] = msg.sender
        mem[ceil32(arg1.length) + 160] = 96
        mem[ceil32(arg1.length) + 224] = arg1.length
        mem[ceil32(arg1.length) + 192] = arg2
        emit NewVault(address arg1, string arg2, address arg3):
                      Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                      mem[arg1.length + 160 len (2 * ceil32(arg1.length)) + -arg1.length + 96],
}

function sub_28bb2117(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 128] = sha3(msg.sender, 2)
    if uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][1][address(arg2)].field_0):
        require uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0) - 1 < uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0)
        require uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][1][address(arg2)].field_0) - 1 < uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0)
        uint256(stor[uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][1][address(arg2)].field_0) + ('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))) - 1].field_0) = uint256(stor[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))) + uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0) - 1].field_0)
        uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][1][uint256(stor[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))) + uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0) - 1].field_0)].field_0) = uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][1][address(arg2)].field_0)
        require uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0)
        uint256(stor[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))) + uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0) - 1].field_0) = 0
        uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0)--
        uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][1][address(arg2)].field_0) = 0
        mem[ceil32(arg1.length) + 128] = msg.sender
        mem[ceil32(arg1.length) + 160] = 96
        mem[ceil32(arg1.length) + 224] = arg1.length
        mem[ceil32(arg1.length) + 192] = address(arg2)
        emit RemoveVault(address arg1, string arg2, address arg3):
                         Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                         mem[arg1.length + 160 len (2 * ceil32(arg1.length)) + -arg1.length + 96],
}

function sub_b2108bba(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    mem[0] = address(arg2)
    mem[32] = 2
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 128] = sha3(address(arg2), 2)
    if ceil32(arg1.length) <= arg1.length:
        _94 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
        require uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0) <= test266151307()
        mem[ceil32(arg1.length) + 128] = uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0)
        mem[64] = ceil32(arg1.length) + (32 * uint256(stor[_94].field_0)) + 160
        if not uint256(stor[_94].field_0):
            idx = 0
            while idx < uint256(stor[_94].field_0):
                mem[32] = 2
                _180 = mem[64]
                _187 = mem[96]
                s = 0
                while s < _187:
                    mem[s + _180] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[_187 + _180] = sha3(address(arg2), 2)
                if idx >= uint256(stor[sha3(mem[mem[64] len _187 + _180 + -mem[64] + 32])].field_0):
                    revert with 0, 'EnumerableSet: index out of bounds'
                mem[0] = sha3(mem[mem[64] len _187 + _180 + -mem[64] + 32])
                require idx < mem[ceil32(arg1.length) + 128]
                mem[(32 * idx) + ceil32(arg1.length) + 160] = address(stor[sha3(mem[0]) + idx].field_0)
                idx = idx + 1
                continue 
            _191 = mem[64]
            mem[mem[64]] = 32
            _195 = mem[ceil32(arg1.length) + 128]
            mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
            idx = 0
            s = mem[64] + 64
            t = ceil32(arg1.length) + 160
            while idx < _195:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _191 + (32 * _195) + -mem[64] + 64
        mem[ceil32(arg1.length) + 160 len 32 * uint256(stor[_94].field_0)] = call.data[calldata.size len 32 * uint256(stor[_94].field_0)]
        idx = 0
        while idx < uint256(stor[_94].field_0):
            mem[32] = 2
            _182 = mem[64]
            _188 = mem[96]
            s = 0
            while s < _188:
                mem[s + _182] = mem[s + 128]
                s = s + 32
                continue 
            mem[_188 + _182] = sha3(address(arg2), 2)
            if idx >= uint256(stor[sha3(mem[mem[64] len _188 + _182 + -mem[64] + 32])].field_0):
                revert with 0, 'EnumerableSet: index out of bounds'
            mem[0] = sha3(mem[mem[64] len _188 + _182 + -mem[64] + 32])
            require idx < mem[ceil32(arg1.length) + 128]
            mem[(32 * idx) + ceil32(arg1.length) + 160] = address(stor[sha3(mem[0]) + idx].field_0)
            idx = idx + 1
            continue 
        _192 = mem[64]
        mem[mem[64]] = 32
        _196 = mem[ceil32(arg1.length) + 128]
        mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
        idx = 0
        s = mem[64] + 64
        t = ceil32(arg1.length) + 160
        while idx < _196:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _192 + (32 * _196) + -mem[64] + 64
    _96 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
    require uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0) <= test266151307()
    mem[ceil32(arg1.length) + 128] = uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].field_0)
    mem[64] = ceil32(arg1.length) + (32 * uint256(stor[_96].field_0)) + 160
    if not uint256(stor[_96].field_0):
        idx = 0
        while idx < uint256(stor[_96].field_0):
            mem[32] = 2
            _184 = mem[64]
            _189 = mem[96]
            s = 0
            while s < _189:
                mem[s + _184] = mem[s + 128]
                s = s + 32
                continue 
            mem[_189 + _184] = sha3(address(arg2), 2)
            if idx >= uint256(stor[sha3(mem[mem[64] len _189 + _184 + -mem[64] + 32])].field_0):
                revert with 0, 'EnumerableSet: index out of bounds'
            mem[0] = sha3(mem[mem[64] len _189 + _184 + -mem[64] + 32])
            require idx < mem[ceil32(arg1.length) + 128]
            mem[(32 * idx) + ceil32(arg1.length) + 160] = address(stor[sha3(mem[0]) + idx].field_0)
            idx = idx + 1
            continue 
        _193 = mem[64]
        mem[mem[64]] = 32
        _197 = mem[ceil32(arg1.length) + 128]
        mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
        idx = 0
        s = mem[64] + 64
        t = ceil32(arg1.length) + 160
        while idx < _197:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _193 + (32 * _197) + -mem[64] + 64
    mem[ceil32(arg1.length) + 160 len 32 * uint256(stor[_96].field_0)] = call.data[calldata.size len 32 * uint256(stor[_96].field_0)]
    idx = 0
    while idx < uint256(stor[_96].field_0):
        mem[32] = 2
        _186 = mem[64]
        _190 = mem[96]
        s = 0
        while s < _190:
            mem[s + _186] = mem[s + 128]
            s = s + 32
            continue 
        mem[_190 + _186] = sha3(address(arg2), 2)
        if idx >= uint256(stor[sha3(mem[mem[64] len _190 + _186 + -mem[64] + 32])].field_0):
            revert with 0, 'EnumerableSet: index out of bounds'
        mem[0] = sha3(mem[mem[64] len _190 + _186 + -mem[64] + 32])
        require idx < mem[ceil32(arg1.length) + 128]
        mem[(32 * idx) + ceil32(arg1.length) + 160] = address(stor[sha3(mem[0]) + idx].field_0)
        idx = idx + 1
        continue 
    _194 = mem[64]
    mem[mem[64]] = 32
    _198 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
    idx = 0
    s = mem[64] + 64
    t = ceil32(arg1.length) + 160
    while idx < _198:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _194 + (32 * _198) + -mem[64] + 64
}

function set(string arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if governanceAddress != msg.sender:
        revert with 0, '!gov'
    idx = 0
    while idx < keys.length:
        mem[0] = 5
        _176 = mem[64]
        if not bool(keys[idx].field_0):
            mem[mem[64]] = Mask(248, 8, uint256(keys[idx].field_0))
            if sha3(mem[128 len mem[96]]) != sha3(mem[mem[64] len keys[idx].field_1 % 128]):
                idx = idx + 1
                continue 
            _193 = mem[64]
            _198 = mem[96]
            idx = 0
            while idx < _198:
                mem[idx + _193] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_198 + _193] = 3
            if ceil32(_198) <= _198:
                _347 = mem[64]
                address(stor[sha3(mem[mem[64] len _198 + _193 + -mem[64] + 32])].field_0) = arg2
                mem[mem[64]] = 64
                _362 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                while idx < _362:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_362) > _362:
                    mem[_347 + _362 + 96] = 0
                mem[_347 + 32] = arg2
                emit Set(string arg1, address arg2):
                         mem[mem[64] len ceil32(_362) + _347 + -mem[64] + 96],
            else:
                _357 = mem[64]
                address(stor[sha3(mem[mem[64] len _198 + _193 + -mem[64] + 32])].field_0) = arg2
                mem[mem[64]] = 64
                _364 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                while idx < _364:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_364) > _364:
                    mem[_357 + _364 + 96] = 0
                mem[_357 + 32] = arg2
                emit Set(string arg1, address arg2):
                         mem[mem[64] len ceil32(_364) + _357 + -mem[64] + 96],
        else:
            if bool(keys[idx].field_0) != 1:
                if sha3(mem[128 len mem[96]]) != sha3(mem[mem[64] len -mem[64]]):
                    idx = idx + 1
                    continue 
                _199 = mem[64]
                _201 = mem[96]
                idx = 0
                while idx < _201:
                    mem[idx + _199] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_201 + _199] = 3
                if ceil32(_201) <= _201:
                    _353 = mem[64]
                    address(stor[sha3(mem[mem[64] len _201 + _199 + -mem[64] + 32])].field_0) = arg2
                    mem[mem[64]] = 64
                    _363 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    while idx < _363:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_363) > _363:
                        mem[_353 + _363 + 96] = 0
                    mem[_353 + 32] = arg2
                    emit Set(string arg1, address arg2):
                             mem[mem[64] len ceil32(_363) + _353 + -mem[64] + 96],
                else:
                    _359 = mem[64]
                    address(stor[sha3(mem[mem[64] len _201 + _199 + -mem[64] + 32])].field_0) = arg2
                    mem[mem[64]] = 64
                    _366 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    while idx < _366:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_366) > _366:
                        mem[_359 + _366 + 96] = 0
                    mem[_359 + 32] = arg2
                    emit Set(string arg1, address arg2):
                             mem[mem[64] len ceil32(_366) + _359 + -mem[64] + 96],
            else:
                mem[0] = sha3(5) + idx
                s = 0
                t = sha3(mem[0])
                while s < uint255(keys[idx].field_1):
                    mem[s + _176] = uint256(stor[t].field_0)
                    s = s + 32
                    t = t + 1
                    continue 
                if sha3(mem[128 len mem[96]]) != sha3(mem[mem[64] len _176 + uint255(keys[idx].field_1) - mem[64]]):
                    idx = idx + 1
                    continue 
                _365 = mem[64]
                _370 = mem[96]
                idx = 0
                while idx < _370:
                    mem[idx + _365] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_370 + _365] = 3
                if ceil32(_370) <= _370:
                    _501 = mem[64]
                    address(stor[sha3(mem[mem[64] len _370 + _365 + -mem[64] + 32])].field_0) = arg2
                    mem[mem[64]] = 64
                    _518 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    while idx < _518:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_518) > _518:
                        mem[_501 + _518 + 96] = 0
                    mem[_501 + 32] = arg2
                    emit Set(string arg1, address arg2):
                             mem[mem[64] len ceil32(_518) + _501 + -mem[64] + 96],
                else:
                    _508 = mem[64]
                    address(stor[sha3(mem[mem[64] len _370 + _365 + -mem[64] + 32])].field_0) = arg2
                    mem[mem[64]] = 64
                    _525 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    while idx < _525:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_525) > _525:
                        mem[_508 + _525 + 96] = 0
                    mem[_508 + 32] = arg2
                    emit Set(string arg1, address arg2):
                             mem[mem[64] len ceil32(_525) + _508 + -mem[64] + 96],
    keys.length++
    mem[0] = keys.length + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
    uint256(stor[sha3(stor5.length + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
    _500 = mem[64]
    mem[mem[64]] = 32
    _504 = mem[96]
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        emit AddKey(Array(len=mem[96], data=mem[mem[64] + 64 len ceil32(mem[96])]));
        _647 = mem[64]
        _655 = mem[96]
        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_655 + mem[64]] = 3
        if ceil32(_655) > _655:
            _728 = mem[64]
            address(stor[sha3(mem[mem[64] len _655 + _647 + -mem[64] + 32])].field_0) = arg2
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) > mem[96]:
                mem[mem[64] + mem[96] + 96] = 0
            mem[mem[64] + 32] = arg2
            emit Set(string arg1, address arg2):
                     mem[mem[64] len ceil32(mem[96]) + _728 + -mem[64] + 96],
        else:
            _720 = mem[64]
            address(stor[sha3(mem[mem[64] len _655 + _647 + -mem[64] + 32])].field_0) = arg2
            mem[mem[64]] = 64
            _740 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                mem[mem[64] + 32] = arg2
                emit Set(string arg1, address arg2):
                         mem[mem[64] len ceil32(mem[96]) + _720 + -mem[64] + 96],
            else:
                mem[mem[64] + mem[96] + 96] = 0
                mem[mem[64] + 32] = arg2
                emit Set(string arg1, address arg2):
                         mem[mem[64] len ceil32(_740) + _720 + -mem[64] + 96],
    else:
        mem[mem[64] + mem[96] + 64] = 0
        emit AddKey(mem[mem[64] len ceil32(_504) + _500 + -mem[64] + 64]);
        _659 = mem[96]
        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_659 + mem[64]] = 3
        if ceil32(_659) <= _659:
            _722 = mem[64]
            address(stor[sha3(mem[mem[64] len _659 + 32])].field_0) = arg2
            mem[mem[64]] = 64
            _741 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                mem[mem[64] + 32] = arg2
                emit Set(string arg1, address arg2):
                         mem[mem[64] len ceil32(mem[96]) + _722 + -mem[64] + 96],
            else:
                mem[mem[64] + mem[96] + 96] = 0
                mem[mem[64] + 32] = arg2
                emit Set(string arg1, address arg2):
                         mem[mem[64] len ceil32(_741) + _722 + -mem[64] + 96],
        else:
            _730 = mem[64]
            address(stor[sha3(mem[mem[64] len _659 + 32])].field_0) = arg2
            mem[mem[64]] = 64
            _747 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                mem[mem[64] + 32] = arg2
                emit Set(string arg1, address arg2):
                         mem[mem[64] len ceil32(mem[96]) + _730 + -mem[64] + 96],
            else:
                mem[mem[64] + mem[96] + 96] = 0
                mem[mem[64] + 32] = arg2
                emit Set(string arg1, address arg2):
                         mem[mem[64] len ceil32(_747) + _730 + -mem[64] + 96],
}

function sub_32d734ca(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 < 3
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    if ceil32(arg1.length) <= arg1.length:
        _99 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
        require arg2 <= 2
        mem[0] = arg2
        mem[32] = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
        require uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg2].field_0) <= test266151307()
        mem[ceil32(arg1.length) + 128] = uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg2].field_0)
        mem[64] = ceil32(arg1.length) + (32 * uint256(stor[_99][arg2].field_0)) + 160
        if not uint256(stor[_99][arg2].field_0):
            idx = 0
            while idx < uint256(stor[_99][arg2].field_0):
                _190 = mem[64]
                _194 = mem[96]
                s = 0
                while s < _194:
                    mem[s + _190] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[_194 + _190] = 4
                if ceil32(_194) <= _194:
                    _287 = sha3(mem[mem[64] len _194 + _190 + -mem[64] + 32])
                    require arg2 <= 2
                    mem[32] = sha3(mem[mem[64] len _194 + _190 + -mem[64] + 32])
                    if idx >= uint256(stor[sha3(mem[mem[64] len _194 + _190 + -mem[64] + 32])][arg2].field_0):
                        revert with 0, 'EnumerableSet: index out of bounds'
                    mem[0] = sha3(arg2, sha3(mem[mem[64] len _194 + _190 + -mem[64] + 32]))
                    require idx < mem[ceil32(arg1.length) + 128]
                    mem[(32 * idx) + ceil32(arg1.length) + 160] = address(stor[_287][arg2][idx].field_0)
                else:
                    _295 = sha3(mem[mem[64] len _194 + _190 + -mem[64] + 32])
                    require arg2 <= 2
                    mem[32] = sha3(mem[mem[64] len _194 + _190 + -mem[64] + 32])
                    if idx >= uint256(stor[sha3(mem[mem[64] len _194 + _190 + -mem[64] + 32])][arg2].field_0):
                        revert with 0, 'EnumerableSet: index out of bounds'
                    mem[0] = sha3(arg2, sha3(mem[mem[64] len _194 + _190 + -mem[64] + 32]))
                    require idx < mem[ceil32(arg1.length) + 128]
                    mem[(32 * idx) + ceil32(arg1.length) + 160] = address(stor[_295][arg2][idx].field_0)
                idx = idx + 1
                continue 
            _198 = mem[64]
            mem[mem[64]] = 32
            _202 = mem[ceil32(arg1.length) + 128]
            mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
            idx = 0
            s = mem[64] + 64
            t = ceil32(arg1.length) + 160
            while idx < _202:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _198 + (32 * _202) + -mem[64] + 64
        mem[ceil32(arg1.length) + 160 len 32 * uint256(stor[_99][arg2].field_0)] = call.data[calldata.size len 32 * uint256(stor[_99][arg2].field_0)]
        idx = 0
        while idx < uint256(stor[_99][arg2].field_0):
            _191 = mem[64]
            _195 = mem[96]
            s = 0
            while s < _195:
                mem[s + _191] = mem[s + 128]
                s = s + 32
                continue 
            mem[_195 + _191] = 4
            if ceil32(_195) <= _195:
                _289 = sha3(mem[mem[64] len _195 + _191 + -mem[64] + 32])
                require arg2 <= 2
                mem[32] = sha3(mem[mem[64] len _195 + _191 + -mem[64] + 32])
                if idx >= uint256(stor[sha3(mem[mem[64] len _195 + _191 + -mem[64] + 32])][arg2].field_0):
                    revert with 0, 'EnumerableSet: index out of bounds'
                mem[0] = sha3(arg2, sha3(mem[mem[64] len _195 + _191 + -mem[64] + 32]))
                require idx < mem[ceil32(arg1.length) + 128]
                mem[(32 * idx) + ceil32(arg1.length) + 160] = address(stor[_289][arg2][idx].field_0)
            else:
                _297 = sha3(mem[mem[64] len _195 + _191 + -mem[64] + 32])
                require arg2 <= 2
                mem[32] = sha3(mem[mem[64] len _195 + _191 + -mem[64] + 32])
                if idx >= uint256(stor[sha3(mem[mem[64] len _195 + _191 + -mem[64] + 32])][arg2].field_0):
                    revert with 0, 'EnumerableSet: index out of bounds'
                mem[0] = sha3(arg2, sha3(mem[mem[64] len _195 + _191 + -mem[64] + 32]))
                require idx < mem[ceil32(arg1.length) + 128]
                mem[(32 * idx) + ceil32(arg1.length) + 160] = address(stor[_297][arg2][idx].field_0)
            idx = idx + 1
            continue 
        _199 = mem[64]
        mem[mem[64]] = 32
        _203 = mem[ceil32(arg1.length) + 128]
        mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
        idx = 0
        s = mem[64] + 64
        t = ceil32(arg1.length) + 160
        while idx < _203:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _199 + (32 * _203) + -mem[64] + 64
    _101 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
    require arg2 <= 2
    mem[0] = arg2
    mem[32] = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
    require uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg2].field_0) <= test266151307()
    mem[ceil32(arg1.length) + 128] = uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg2].field_0)
    mem[64] = ceil32(arg1.length) + (32 * uint256(stor[_101][arg2].field_0)) + 160
    if not uint256(stor[_101][arg2].field_0):
        idx = 0
        while idx < uint256(stor[_101][arg2].field_0):
            _192 = mem[64]
            _196 = mem[96]
            s = 0
            while s < _196:
                mem[s + _192] = mem[s + 128]
                s = s + 32
                continue 
            mem[_196 + _192] = 4
            if ceil32(_196) <= _196:
                _291 = sha3(mem[mem[64] len _196 + _192 + -mem[64] + 32])
                require arg2 <= 2
                mem[32] = sha3(mem[mem[64] len _196 + _192 + -mem[64] + 32])
                if idx >= uint256(stor[sha3(mem[mem[64] len _196 + _192 + -mem[64] + 32])][arg2].field_0):
                    revert with 0, 'EnumerableSet: index out of bounds'
                mem[0] = sha3(arg2, sha3(mem[mem[64] len _196 + _192 + -mem[64] + 32]))
                require idx < mem[ceil32(arg1.length) + 128]
                mem[(32 * idx) + ceil32(arg1.length) + 160] = address(stor[_291][arg2][idx].field_0)
            else:
                _299 = sha3(mem[mem[64] len _196 + _192 + -mem[64] + 32])
                require arg2 <= 2
                mem[32] = sha3(mem[mem[64] len _196 + _192 + -mem[64] + 32])
                if idx >= uint256(stor[sha3(mem[mem[64] len _196 + _192 + -mem[64] + 32])][arg2].field_0):
                    revert with 0, 'EnumerableSet: index out of bounds'
                mem[0] = sha3(arg2, sha3(mem[mem[64] len _196 + _192 + -mem[64] + 32]))
                require idx < mem[ceil32(arg1.length) + 128]
                mem[(32 * idx) + ceil32(arg1.length) + 160] = address(stor[_299][arg2][idx].field_0)
            idx = idx + 1
            continue 
        _200 = mem[64]
        mem[mem[64]] = 32
        _204 = mem[ceil32(arg1.length) + 128]
        mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
        idx = 0
        s = mem[64] + 64
        t = ceil32(arg1.length) + 160
        while idx < _204:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _200 + (32 * _204) + -mem[64] + 64
    mem[ceil32(arg1.length) + 160 len 32 * uint256(stor[_101][arg2].field_0)] = call.data[calldata.size len 32 * uint256(stor[_101][arg2].field_0)]
    idx = 0
    while idx < uint256(stor[_101][arg2].field_0):
        _193 = mem[64]
        _197 = mem[96]
        s = 0
        while s < _197:
            mem[s + _193] = mem[s + 128]
            s = s + 32
            continue 
        mem[_197 + _193] = 4
        if ceil32(_197) <= _197:
            _293 = sha3(mem[mem[64] len _197 + _193 + -mem[64] + 32])
            require arg2 <= 2
            mem[32] = sha3(mem[mem[64] len _197 + _193 + -mem[64] + 32])
            if idx >= uint256(stor[sha3(mem[mem[64] len _197 + _193 + -mem[64] + 32])][arg2].field_0):
                revert with 0, 'EnumerableSet: index out of bounds'
            mem[0] = sha3(arg2, sha3(mem[mem[64] len _197 + _193 + -mem[64] + 32]))
            require idx < mem[ceil32(arg1.length) + 128]
            mem[(32 * idx) + ceil32(arg1.length) + 160] = address(stor[_293][arg2][idx].field_0)
        else:
            _301 = sha3(mem[mem[64] len _197 + _193 + -mem[64] + 32])
            require arg2 <= 2
            mem[32] = sha3(mem[mem[64] len _197 + _193 + -mem[64] + 32])
            if idx >= uint256(stor[sha3(mem[mem[64] len _197 + _193 + -mem[64] + 32])][arg2].field_0):
                revert with 0, 'EnumerableSet: index out of bounds'
            mem[0] = sha3(arg2, sha3(mem[mem[64] len _197 + _193 + -mem[64] + 32]))
            require idx < mem[ceil32(arg1.length) + 128]
            mem[(32 * idx) + ceil32(arg1.length) + 160] = address(stor[_301][arg2][idx].field_0)
        idx = idx + 1
        continue 
    _201 = mem[64]
    mem[mem[64]] = 32
    _205 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
    idx = 0
    s = mem[64] + 64
    t = ceil32(arg1.length) + 160
    while idx < _205:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _201 + (32 * _205) + -mem[64] + 64
}

function sub_995d6d5f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    require arg3 < 3
    if governanceAddress != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, '!gov'
        mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(arg1.length) + 128] = 4
        if uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0][1][address(arg2)].field_0):
            require uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0].field_0) - 1 < uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0].field_0)
            require uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0][1][address(arg2)].field_0) - 1 < uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0].field_0)
            uint256(stor[uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0][1][address(arg2)].field_0) + ('map', 0, ('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))) - 1].field_0) = uint256(stor[('map', 0, ('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))) + uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0].field_0) - 1].field_0)
            uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0][1][uint256(stor[('map', 0, ('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))) + uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0].field_0) - 1].field_0)].field_0) = uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0][1][address(arg2)].field_0)
            require uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0].field_0)
            uint256(stor[('map', 0, ('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))) + uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0].field_0) - 1].field_0) = 0
            uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0].field_0)--
            uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0][1][address(arg2)].field_0) = 0
            mem[ceil32(arg1.length) + 128] = msg.sender
            mem[ceil32(arg1.length) + 160] = 128
            mem[ceil32(arg1.length) + 256] = arg1.length
            mem[ceil32(arg1.length) + 192] = address(arg2)
            require arg3 < 3
            mem[ceil32(arg1.length) + 224] = arg3
            emit 0x449b9aaa: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len (2 * ceil32(arg1.length)) + -arg1.length + 128]
    else:
        mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(arg1.length) + 128] = 4
        if msg.sender == address(stor1.length):
            if uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0][1][address(arg2)].field_0):
                require uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0].field_0) - 1 < uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0].field_0)
                require uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0][1][address(arg2)].field_0) - 1 < uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0].field_0)
                uint256(stor[uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0][1][address(arg2)].field_0) + ('map', 0, ('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))) - 1].field_0) = uint256(stor[('map', 0, ('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))) + uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0].field_0) - 1].field_0)
                uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0][1][uint256(stor[('map', 0, ('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))) + uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0].field_0) - 1].field_0)].field_0) = uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0][1][address(arg2)].field_0)
                require uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0].field_0)
                uint256(stor[('map', 0, ('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))) + uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0].field_0) - 1].field_0) = 0
                uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0].field_0)--
                uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][0][1][address(arg2)].field_0) = 0
                mem[ceil32(arg1.length) + 128] = msg.sender
                mem[ceil32(arg1.length) + 160] = 128
                mem[ceil32(arg1.length) + 256] = arg1.length
                mem[ceil32(arg1.length) + 192] = address(arg2)
                require arg3 < 3
                mem[ceil32(arg1.length) + 224] = arg3
                emit 0x449b9aaa: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len (2 * ceil32(arg1.length)) + -arg1.length + 128]
        else:
            require arg3 <= 2
            if uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg3][1][address(arg2)].field_0):
                require uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg3].field_0) - 1 < uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg3].field_0)
                require uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg3][1][address(arg2)].field_0) - 1 < uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg3].field_0)
                uint256(stor[uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg3][1][address(arg2)].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))) - 1].field_0) = uint256(stor[('map', ('param', 'arg3'), ('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))) + uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg3].field_0) - 1].field_0)
                uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg3][1][uint256(stor[('map', ('param', 'arg3'), ('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))) + uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg3].field_0) - 1].field_0)].field_0) = uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg3][1][address(arg2)].field_0)
                require uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg3].field_0)
                uint256(stor[('map', ('param', 'arg3'), ('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))) + uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg3].field_0) - 1].field_0) = 0
                uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg3].field_0)--
                uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][arg3][1][address(arg2)].field_0) = 0
                mem[ceil32(arg1.length) + 128] = msg.sender
                mem[ceil32(arg1.length) + 160] = 128
                mem[ceil32(arg1.length) + 256] = arg1.length
                mem[ceil32(arg1.length) + 192] = address(arg2)
                require arg3 < 3
                mem[ceil32(arg1.length) + 224] = arg3
                emit 0x449b9aaa: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len (2 * ceil32(arg1.length)) + -arg1.length + 128]
}

function sub_3350fe42(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if governanceAddress != msg.sender:
        revert with 0, '!gov'
    idx = 0
    while idx < keys.length:
        mem[0] = 5
        _281 = mem[64]
        if not bool(keys[idx].field_0):
            mem[mem[64]] = Mask(248, 8, uint256(keys[idx].field_0))
            if sha3(mem[128 len mem[96]]) != sha3(mem[mem[64] len keys[idx].field_1 % 128]):
                idx = idx + 1
                continue 
            _287 = mem[64]
            _292 = mem[96]
            s = 0
            while s < _292:
                mem[s + _287] = mem[s + 128]
                s = s + 32
                continue 
            mem[_292 + _287] = 3
            address(stor[sha3(mem[mem[64] len _292 + _287 + -mem[64] + 32])].field_0) = 0
            require keys.length - 1 < keys.length
            require idx < keys.length
            if ceil32(_292) <= _292:
                if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                    uint256(keys[idx].field_0) = uint256(keys[keys.length].field_0)
                    s = sha3(sha3(5) + idx)
                    while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    require keys.length
                    mem[0] = 5
                    uint256(keys[keys.length].field_0) = 0
                    if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                        keys.length--
                        _848 = mem[64]
                        mem[mem[64]] = 32
                        _862 = mem[96]
                        mem[mem[64] + 32] = mem[96]
                        idx = 0
                        while idx < _862:
                            mem[idx + _848 + 64] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_862) > _862:
                            mem[_848 + _862 + 64] = 0
                        emit 0x936e46d9: mem[mem[64] len ceil32(_862) + _848 + -mem[64] + 64]
                    else:
                        mem[0] = sha3(5) + keys.length - 1
                        idx = sha3(sha3(5) + keys.length - 1)
                        while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        keys.length--
                        _1055 = mem[64]
                        mem[mem[64]] = 32
                        _1072 = mem[96]
                        mem[mem[64] + 32] = mem[96]
                        idx = 0
                        while idx < _1072:
                            mem[idx + _1055 + 64] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_1072) > _1072:
                            mem[_1055 + _1072 + 64] = 0
                        emit 0x936e46d9: mem[mem[64] len ceil32(_1072) + _1055 + -mem[64] + 64]
                else:
                    uint256(keys[idx].field_0) = Mask(255, 1, (256 * not bool(keys[keys.length].field_0)) - 1 and uint256(keys[keys.length].field_0)) + 1
                    if not Mask(255, 1, (256 * not bool(keys[keys.length].field_0)) - 1 and uint256(keys[keys.length].field_0)):
                        s = sha3(sha3(5) + idx)
                        while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        require keys.length
                        mem[0] = 5
                        uint256(keys[keys.length].field_0) = 0
                        if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                            keys.length--
                            _847 = mem[64]
                            mem[mem[64]] = 32
                            _861 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            while idx < _861:
                                mem[idx + _847 + 64] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_861) > _861:
                                mem[_847 + _861 + 64] = 0
                            emit 0x936e46d9: mem[mem[64] len ceil32(_861) + _847 + -mem[64] + 64]
                        else:
                            mem[0] = sha3(5) + keys.length - 1
                            idx = sha3(sha3(5) + keys.length - 1)
                            while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                                uint256(stor[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            keys.length--
                            _1054 = mem[64]
                            mem[mem[64]] = 32
                            _1070 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            while idx < _1070:
                                mem[idx + _1054 + 64] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_1070) > _1070:
                                mem[_1054 + _1070 + 64] = 0
                            emit 0x936e46d9: mem[mem[64] len ceil32(_1070) + _1054 + -mem[64] + 64]
                    else:
                        t = sha3(sha3(5) + idx)
                        s = sha3(sha3(5) + keys.length - 1)
                        while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > s:
                            uint256(stor[t].field_0) = uint256(stor[s].field_0)
                            t = t + 1
                            s = s + 1
                            continue 
                        s = sha3(sha3(5) + idx) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32)
                        while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        require keys.length
                        mem[0] = 5
                        uint256(keys[keys.length].field_0) = 0
                        if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                            keys.length--
                            _1105 = mem[64]
                            mem[mem[64]] = 32
                            _1122 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            while idx < _1122:
                                mem[idx + _1105 + 64] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_1122) > _1122:
                                mem[_1105 + _1122 + 64] = 0
                            emit 0x936e46d9: mem[mem[64] len ceil32(_1122) + _1105 + -mem[64] + 64]
                        else:
                            mem[0] = sha3(5) + keys.length - 1
                            idx = sha3(sha3(5) + keys.length - 1)
                            while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                                uint256(stor[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            keys.length--
                            _1246 = mem[64]
                            mem[mem[64]] = 32
                            _1257 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            while idx < _1257:
                                mem[idx + _1246 + 64] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_1257) > _1257:
                                mem[_1246 + _1257 + 64] = 0
                            emit 0x936e46d9: mem[mem[64] len ceil32(_1257) + _1246 + -mem[64] + 64]
            else:
                if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                    uint256(keys[idx].field_0) = uint256(keys[keys.length].field_0)
                    s = sha3(sha3(5) + idx)
                    while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    require keys.length
                    mem[0] = 5
                    uint256(keys[keys.length].field_0) = 0
                    if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                        keys.length--
                        _850 = mem[64]
                        mem[mem[64]] = 32
                        _864 = mem[96]
                        mem[mem[64] + 32] = mem[96]
                        idx = 0
                        while idx < _864:
                            mem[idx + _850 + 64] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_864) > _864:
                            mem[_850 + _864 + 64] = 0
                        emit 0x936e46d9: mem[mem[64] len ceil32(_864) + _850 + -mem[64] + 64]
                    else:
                        mem[0] = sha3(5) + keys.length - 1
                        idx = sha3(sha3(5) + keys.length - 1)
                        while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        keys.length--
                        _1057 = mem[64]
                        mem[mem[64]] = 32
                        _1076 = mem[96]
                        mem[mem[64] + 32] = mem[96]
                        idx = 0
                        while idx < _1076:
                            mem[idx + _1057 + 64] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_1076) > _1076:
                            mem[_1057 + _1076 + 64] = 0
                        emit 0x936e46d9: mem[mem[64] len ceil32(_1076) + _1057 + -mem[64] + 64]
                else:
                    uint256(keys[idx].field_0) = Mask(255, 1, (256 * not bool(keys[keys.length].field_0)) - 1 and uint256(keys[keys.length].field_0)) + 1
                    if not Mask(255, 1, (256 * not bool(keys[keys.length].field_0)) - 1 and uint256(keys[keys.length].field_0)):
                        s = sha3(sha3(5) + idx)
                        while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        require keys.length
                        mem[0] = 5
                        uint256(keys[keys.length].field_0) = 0
                        if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                            keys.length--
                            _849 = mem[64]
                            mem[mem[64]] = 32
                            _863 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            while idx < _863:
                                mem[idx + _849 + 64] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_863) > _863:
                                mem[_849 + _863 + 64] = 0
                            emit 0x936e46d9: mem[mem[64] len ceil32(_863) + _849 + -mem[64] + 64]
                        else:
                            mem[0] = sha3(5) + keys.length - 1
                            idx = sha3(sha3(5) + keys.length - 1)
                            while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                                uint256(stor[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            keys.length--
                            _1056 = mem[64]
                            mem[mem[64]] = 32
                            _1074 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            while idx < _1074:
                                mem[idx + _1056 + 64] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_1074) > _1074:
                                mem[_1056 + _1074 + 64] = 0
                            emit 0x936e46d9: mem[mem[64] len ceil32(_1074) + _1056 + -mem[64] + 64]
                    else:
                        t = sha3(sha3(5) + idx)
                        s = sha3(sha3(5) + keys.length - 1)
                        while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > s:
                            uint256(stor[t].field_0) = uint256(stor[s].field_0)
                            t = t + 1
                            s = s + 1
                            continue 
                        s = sha3(sha3(5) + idx) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32)
                        while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        require keys.length
                        mem[0] = 5
                        uint256(keys[keys.length].field_0) = 0
                        if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                            keys.length--
                            _1108 = mem[64]
                            mem[mem[64]] = 32
                            _1123 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            while idx < _1123:
                                mem[idx + _1108 + 64] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_1123) > _1123:
                                mem[_1108 + _1123 + 64] = 0
                            emit 0x936e46d9: mem[mem[64] len ceil32(_1123) + _1108 + -mem[64] + 64]
                        else:
                            mem[0] = sha3(5) + keys.length - 1
                            idx = sha3(sha3(5) + keys.length - 1)
                            while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                                uint256(stor[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            keys.length--
                            _1247 = mem[64]
                            mem[mem[64]] = 32
                            _1261 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            while idx < _1261:
                                mem[idx + _1247 + 64] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_1261) > _1261:
                                mem[_1247 + _1261 + 64] = 0
                            emit 0x936e46d9: mem[mem[64] len ceil32(_1261) + _1247 + -mem[64] + 64]
        else:
            if bool(keys[idx].field_0) != 1:
                if sha3(mem[128 len mem[96]]) != sha3(mem[mem[64] len -mem[64]]):
                    idx = idx + 1
                    continue 
                _293 = mem[64]
                _298 = mem[96]
                s = 0
                while s < _298:
                    mem[s + _293] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[_298 + _293] = 3
                address(stor[sha3(mem[mem[64] len _298 + _293 + -mem[64] + 32])].field_0) = 0
                require keys.length - 1 < keys.length
                require idx < keys.length
                if ceil32(_298) <= _298:
                    if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                        uint256(keys[idx].field_0) = uint256(keys[keys.length].field_0)
                        s = sha3(sha3(5) + idx)
                        while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        require keys.length
                        mem[0] = 5
                        uint256(keys[keys.length].field_0) = 0
                        if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                            keys.length--
                            _853 = mem[64]
                            mem[mem[64]] = 32
                            _867 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            while idx < _867:
                                mem[idx + _853 + 64] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_867) > _867:
                                mem[_853 + _867 + 64] = 0
                            emit 0x936e46d9: mem[mem[64] len ceil32(_867) + _853 + -mem[64] + 64]
                        else:
                            mem[0] = sha3(5) + keys.length - 1
                            idx = sha3(sha3(5) + keys.length - 1)
                            while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                                uint256(stor[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            keys.length--
                            _1059 = mem[64]
                            mem[mem[64]] = 32
                            _1080 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            while idx < _1080:
                                mem[idx + _1059 + 64] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_1080) > _1080:
                                mem[_1059 + _1080 + 64] = 0
                            emit 0x936e46d9: mem[mem[64] len ceil32(_1080) + _1059 + -mem[64] + 64]
                    else:
                        uint256(keys[idx].field_0) = Mask(255, 1, (256 * not bool(keys[keys.length].field_0)) - 1 and uint256(keys[keys.length].field_0)) + 1
                        if not Mask(255, 1, (256 * not bool(keys[keys.length].field_0)) - 1 and uint256(keys[keys.length].field_0)):
                            s = sha3(sha3(5) + idx)
                            while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            require keys.length
                            mem[0] = 5
                            uint256(keys[keys.length].field_0) = 0
                            if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                                keys.length--
                                _852 = mem[64]
                                mem[mem[64]] = 32
                                _866 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                while idx < _866:
                                    mem[idx + _852 + 64] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_866) > _866:
                                    mem[_852 + _866 + 64] = 0
                                emit 0x936e46d9: mem[mem[64] len ceil32(_866) + _852 + -mem[64] + 64]
                            else:
                                mem[0] = sha3(5) + keys.length - 1
                                idx = sha3(sha3(5) + keys.length - 1)
                                while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                                    uint256(stor[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                keys.length--
                                _1058 = mem[64]
                                mem[mem[64]] = 32
                                _1078 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                while idx < _1078:
                                    mem[idx + _1058 + 64] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1078) > _1078:
                                    mem[_1058 + _1078 + 64] = 0
                                emit 0x936e46d9: mem[mem[64] len ceil32(_1078) + _1058 + -mem[64] + 64]
                        else:
                            t = sha3(sha3(5) + idx)
                            s = sha3(sha3(5) + keys.length - 1)
                            while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > s:
                                uint256(stor[t].field_0) = uint256(stor[s].field_0)
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(5) + idx) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32)
                            while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            require keys.length
                            mem[0] = 5
                            uint256(keys[keys.length].field_0) = 0
                            if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                                keys.length--
                                _1115 = mem[64]
                                mem[mem[64]] = 32
                                _1128 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                while idx < _1128:
                                    mem[idx + _1115 + 64] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1128) > _1128:
                                    mem[_1115 + _1128 + 64] = 0
                                emit 0x936e46d9: mem[mem[64] len ceil32(_1128) + _1115 + -mem[64] + 64]
                            else:
                                mem[0] = sha3(5) + keys.length - 1
                                idx = sha3(sha3(5) + keys.length - 1)
                                while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                                    uint256(stor[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                keys.length--
                                _1252 = mem[64]
                                mem[mem[64]] = 32
                                _1273 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                while idx < _1273:
                                    mem[idx + _1252 + 64] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1273) > _1273:
                                    mem[_1252 + _1273 + 64] = 0
                                emit 0x936e46d9: mem[mem[64] len ceil32(_1273) + _1252 + -mem[64] + 64]
                else:
                    if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                        uint256(keys[idx].field_0) = uint256(keys[keys.length].field_0)
                        s = sha3(sha3(5) + idx)
                        while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        require keys.length
                        mem[0] = 5
                        uint256(keys[keys.length].field_0) = 0
                        if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                            keys.length--
                            _855 = mem[64]
                            mem[mem[64]] = 32
                            _869 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            while idx < _869:
                                mem[idx + _855 + 64] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_869) > _869:
                                mem[_855 + _869 + 64] = 0
                            emit 0x936e46d9: mem[mem[64] len ceil32(_869) + _855 + -mem[64] + 64]
                        else:
                            mem[0] = sha3(5) + keys.length - 1
                            idx = sha3(sha3(5) + keys.length - 1)
                            while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                                uint256(stor[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            keys.length--
                            _1061 = mem[64]
                            mem[mem[64]] = 32
                            _1084 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            while idx < _1084:
                                mem[idx + _1061 + 64] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_1084) > _1084:
                                mem[_1061 + _1084 + 64] = 0
                            emit 0x936e46d9: mem[mem[64] len ceil32(_1084) + _1061 + -mem[64] + 64]
                    else:
                        uint256(keys[idx].field_0) = Mask(255, 1, (256 * not bool(keys[keys.length].field_0)) - 1 and uint256(keys[keys.length].field_0)) + 1
                        if not Mask(255, 1, (256 * not bool(keys[keys.length].field_0)) - 1 and uint256(keys[keys.length].field_0)):
                            s = sha3(sha3(5) + idx)
                            while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            require keys.length
                            mem[0] = 5
                            uint256(keys[keys.length].field_0) = 0
                            if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                                keys.length--
                                _854 = mem[64]
                                mem[mem[64]] = 32
                                _868 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                while idx < _868:
                                    mem[idx + _854 + 64] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_868) > _868:
                                    mem[_854 + _868 + 64] = 0
                                emit 0x936e46d9: mem[mem[64] len ceil32(_868) + _854 + -mem[64] + 64]
                            else:
                                mem[0] = sha3(5) + keys.length - 1
                                idx = sha3(sha3(5) + keys.length - 1)
                                while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                                    uint256(stor[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                keys.length--
                                _1060 = mem[64]
                                mem[mem[64]] = 32
                                _1082 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                while idx < _1082:
                                    mem[idx + _1060 + 64] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1082) > _1082:
                                    mem[_1060 + _1082 + 64] = 0
                                emit 0x936e46d9: mem[mem[64] len ceil32(_1082) + _1060 + -mem[64] + 64]
                        else:
                            t = sha3(sha3(5) + idx)
                            s = sha3(sha3(5) + keys.length - 1)
                            while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > s:
                                uint256(stor[t].field_0) = uint256(stor[s].field_0)
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(5) + idx) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32)
                            while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            require keys.length
                            mem[0] = 5
                            uint256(keys[keys.length].field_0) = 0
                            if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                                keys.length--
                                _1118 = mem[64]
                                mem[mem[64]] = 32
                                _1129 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                while idx < _1129:
                                    mem[idx + _1118 + 64] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1129) > _1129:
                                    mem[_1118 + _1129 + 64] = 0
                                emit 0x936e46d9: mem[mem[64] len ceil32(_1129) + _1118 + -mem[64] + 64]
                            else:
                                mem[0] = sha3(5) + keys.length - 1
                                idx = sha3(sha3(5) + keys.length - 1)
                                while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                                    uint256(stor[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                keys.length--
                                _1253 = mem[64]
                                mem[mem[64]] = 32
                                _1277 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                while idx < _1277:
                                    mem[idx + _1253 + 64] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1277) > _1277:
                                    mem[_1253 + _1277 + 64] = 0
                                emit 0x936e46d9: mem[mem[64] len ceil32(_1277) + _1253 + -mem[64] + 64]
            else:
                mem[0] = sha3(5) + idx
                s = 0
                t = sha3(mem[0])
                while s < uint255(keys[idx].field_1):
                    mem[s + _281] = uint256(stor[t].field_0)
                    s = s + 32
                    t = t + 1
                    continue 
                if sha3(mem[128 len mem[96]]) != sha3(mem[mem[64] len _281 + uint255(keys[idx].field_1) - mem[64]]):
                    idx = idx + 1
                    continue 
                _569 = mem[64]
                _575 = mem[96]
                s = 0
                while s < _575:
                    mem[s + _569] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[_575 + _569] = 3
                address(stor[sha3(mem[mem[64] len _575 + _569 + -mem[64] + 32])].field_0) = 0
                require keys.length - 1 < keys.length
                require idx < keys.length
                if ceil32(_575) <= _575:
                    if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                        uint256(keys[idx].field_0) = uint256(keys[keys.length].field_0)
                        s = sha3(sha3(5) + idx)
                        while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        require keys.length
                        mem[0] = 5
                        uint256(keys[keys.length].field_0) = 0
                        if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                            keys.length--
                            _1111 = mem[64]
                            mem[mem[64]] = 32
                            _1125 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            while idx < _1125:
                                mem[idx + _1111 + 64] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_1125) > _1125:
                                mem[_1111 + _1125 + 64] = 0
                            emit 0x936e46d9: mem[mem[64] len ceil32(_1125) + _1111 + -mem[64] + 64]
                        else:
                            mem[0] = sha3(5) + keys.length - 1
                            idx = sha3(sha3(5) + keys.length - 1)
                            while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                                uint256(stor[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            keys.length--
                            _1249 = mem[64]
                            mem[mem[64]] = 32
                            _1266 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            while idx < _1266:
                                mem[idx + _1249 + 64] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_1266) > _1266:
                                mem[_1249 + _1266 + 64] = 0
                            emit 0x936e46d9: mem[mem[64] len ceil32(_1266) + _1249 + -mem[64] + 64]
                    else:
                        uint256(keys[idx].field_0) = Mask(255, 1, (256 * not bool(keys[keys.length].field_0)) - 1 and uint256(keys[keys.length].field_0)) + 1
                        if not Mask(255, 1, (256 * not bool(keys[keys.length].field_0)) - 1 and uint256(keys[keys.length].field_0)):
                            s = sha3(sha3(5) + idx)
                            while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            require keys.length
                            mem[0] = 5
                            uint256(keys[keys.length].field_0) = 0
                            if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                                keys.length--
                                _1110 = mem[64]
                                mem[mem[64]] = 32
                                _1124 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                while idx < _1124:
                                    mem[idx + _1110 + 64] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1124) > _1124:
                                    mem[_1110 + _1124 + 64] = 0
                                emit 0x936e46d9: mem[mem[64] len ceil32(_1124) + _1110 + -mem[64] + 64]
                            else:
                                mem[0] = sha3(5) + keys.length - 1
                                idx = sha3(sha3(5) + keys.length - 1)
                                while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                                    uint256(stor[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                keys.length--
                                _1248 = mem[64]
                                mem[mem[64]] = 32
                                _1264 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                while idx < _1264:
                                    mem[idx + _1248 + 64] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1264) > _1264:
                                    mem[_1248 + _1264 + 64] = 0
                                emit 0x936e46d9: mem[mem[64] len ceil32(_1264) + _1248 + -mem[64] + 64]
                        else:
                            t = sha3(sha3(5) + idx)
                            s = sha3(sha3(5) + keys.length - 1)
                            while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > s:
                                uint256(stor[t].field_0) = uint256(stor[s].field_0)
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(5) + idx) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32)
                            while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            require keys.length
                            mem[0] = 5
                            uint256(keys[keys.length].field_0) = 0
                            if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                                keys.length--
                                _1301 = mem[64]
                                mem[mem[64]] = 32
                                _1308 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                while idx < _1308:
                                    mem[idx + _1301 + 64] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1308) > _1308:
                                    mem[_1301 + _1308 + 64] = 0
                                emit 0x936e46d9: mem[mem[64] len ceil32(_1308) + _1301 + -mem[64] + 64]
                            else:
                                mem[0] = sha3(5) + keys.length - 1
                                idx = sha3(sha3(5) + keys.length - 1)
                                while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                                    uint256(stor[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                keys.length--
                                _1352 = mem[64]
                                mem[mem[64]] = 32
                                _1357 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                while idx < _1357:
                                    mem[idx + _1352 + 64] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1357) > _1357:
                                    mem[_1352 + _1357 + 64] = 0
                                emit 0x936e46d9: mem[mem[64] len ceil32(_1357) + _1352 + -mem[64] + 64]
                else:
                    if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                        uint256(keys[idx].field_0) = uint256(keys[keys.length].field_0)
                        s = sha3(sha3(5) + idx)
                        while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        require keys.length
                        mem[0] = 5
                        uint256(keys[keys.length].field_0) = 0
                        if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                            keys.length--
                            _1113 = mem[64]
                            mem[mem[64]] = 32
                            _1127 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            while idx < _1127:
                                mem[idx + _1113 + 64] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_1127) > _1127:
                                mem[_1113 + _1127 + 64] = 0
                            emit 0x936e46d9: mem[mem[64] len ceil32(_1127) + _1113 + -mem[64] + 64]
                        else:
                            mem[0] = sha3(5) + keys.length - 1
                            idx = sha3(sha3(5) + keys.length - 1)
                            while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                                uint256(stor[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            keys.length--
                            _1251 = mem[64]
                            mem[mem[64]] = 32
                            _1270 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            while idx < _1270:
                                mem[idx + _1251 + 64] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_1270) > _1270:
                                mem[_1251 + _1270 + 64] = 0
                            emit 0x936e46d9: mem[mem[64] len ceil32(_1270) + _1251 + -mem[64] + 64]
                    else:
                        uint256(keys[idx].field_0) = Mask(255, 1, (256 * not bool(keys[keys.length].field_0)) - 1 and uint256(keys[keys.length].field_0)) + 1
                        if not Mask(255, 1, (256 * not bool(keys[keys.length].field_0)) - 1 and uint256(keys[keys.length].field_0)):
                            s = sha3(sha3(5) + idx)
                            while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            require keys.length
                            mem[0] = 5
                            uint256(keys[keys.length].field_0) = 0
                            if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                                keys.length--
                                _1112 = mem[64]
                                mem[mem[64]] = 32
                                _1126 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                while idx < _1126:
                                    mem[idx + _1112 + 64] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1126) > _1126:
                                    mem[_1112 + _1126 + 64] = 0
                                emit 0x936e46d9: mem[mem[64] len ceil32(_1126) + _1112 + -mem[64] + 64]
                            else:
                                mem[0] = sha3(5) + keys.length - 1
                                idx = sha3(sha3(5) + keys.length - 1)
                                while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                                    uint256(stor[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                keys.length--
                                _1250 = mem[64]
                                mem[mem[64]] = 32
                                _1268 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                while idx < _1268:
                                    mem[idx + _1250 + 64] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1268) > _1268:
                                    mem[_1250 + _1268 + 64] = 0
                                emit 0x936e46d9: mem[mem[64] len ceil32(_1268) + _1250 + -mem[64] + 64]
                        else:
                            t = sha3(sha3(5) + idx)
                            s = sha3(sha3(5) + keys.length - 1)
                            while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > s:
                                uint256(stor[t].field_0) = uint256(stor[s].field_0)
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(5) + idx) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32)
                            while sha3(sha3(5) + idx) + (keys[idx].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            require keys.length
                            mem[0] = 5
                            uint256(keys[keys.length].field_0) = 0
                            if 31 >= stor[('name', 'keys', 5) + keys.length - 1].length:
                                keys.length--
                                _1304 = mem[64]
                                mem[mem[64]] = 32
                                _1309 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                while idx < _1309:
                                    mem[idx + _1304 + 64] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1309) > _1309:
                                    mem[_1304 + _1309 + 64] = 0
                                emit 0x936e46d9: mem[mem[64] len ceil32(_1309) + _1304 + -mem[64] + 64]
                            else:
                                mem[0] = sha3(5) + keys.length - 1
                                idx = sha3(sha3(5) + keys.length - 1)
                                while sha3(sha3(5) + keys.length - 1) + (stor[('name', 'keys', 5) + keys.length - 1].length + 31 / 32) > idx:
                                    uint256(stor[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                keys.length--
                                _1353 = mem[64]
                                mem[mem[64]] = 32
                                _1361 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                while idx < _1361:
                                    mem[idx + _1353 + 64] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1361) > _1361:
                                    mem[_1353 + _1361 + 64] = 0
                                emit 0x936e46d9: mem[mem[64] len ceil32(_1361) + _1353 + -mem[64] + 64]
}

function getProductionVaults() payable {
    require 3 * versions.length <= test266151307()
    mem[96] = 3 * versions.length
    mem[64] = (32 * 3 * versions.length) + 128
    if not 3 * versions.length:
        idx = 0
        while idx < versions.length:
            s = 0
            while s < 3:
                require idx < versions.length
                _1306 = mem[64]
                if not bool(versions[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(versions[idx].field_0))
                    mem[mem[64] + versions[idx].field_1 % 128] = 4
                    _1317 = sha3(mem[mem[64] len _1306 + versions[idx].field_1 % 128 + -mem[64] + 32])
                    require s <= 2
                    mem[0] = s
                    mem[32] = _1317
                    require uint256(stor[_1317][s].field_0) <= test266151307()
                    _1349 = mem[64]
                    mem[mem[64]] = uint256(stor[_1317][s].field_0)
                    mem[64] = mem[64] + (32 * uint256(stor[_1317][s].field_0)) + 32
                    if not uint256(stor[_1317][s].field_0):
                        t = 0
                        while t < uint256(stor[_1317][s].field_0):
                            require idx < versions.length
                            _1735 = mem[64]
                            if not bool(versions[idx].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(versions[idx].field_0))
                                mem[mem[64] + versions[idx].field_1 % 128] = 4
                                _1783 = sha3(mem[mem[64] len _1735 + versions[idx].field_1 % 128 + -mem[64] + 32])
                                require s <= 2
                                mem[32] = sha3(mem[mem[64] len _1735 + versions[idx].field_1 % 128 + -mem[64] + 32])
                                if t >= uint256(stor[sha3(mem[mem[64] len _1735 + stor6[idx].field_1 % 128 + -mem[64] + 32])][s].field_0):
                                    revert with 0, 'EnumerableSet: index out of bounds'
                                mem[0] = sha3(s, sha3(mem[mem[64] len _1735 + versions[idx].field_1 % 128 + -mem[64] + 32]))
                                require t < mem[_1349]
                                mem[(32 * t) + _1349 + 32] = address(stor[_1783][s][t].field_0)
                            else:
                                if bool(versions[idx].field_0) != 1:
                                    _1794 = sha3(mem[mem[64] len -mem[64] + 32])
                                    require s <= 2
                                    mem[32] = sha3(mem[mem[64] len -mem[64] + 32])
                                    if t >= uint256(stor[sha3(mem[mem[64] len -mem[64] + 32])][s].field_0):
                                        revert with 0, 'EnumerableSet: index out of bounds'
                                    mem[0] = sha3(s, sha3(mem[mem[64] len -mem[64] + 32]))
                                    require t < mem[_1349]
                                    mem[(32 * t) + _1349 + 32] = address(stor[_1794][s][t].field_0)
                                else:
                                    mem[0] = sha3(6) + idx
                                    u = 0
                                    v = sha3(mem[0])
                                    while u < uint255(versions[idx].field_1):
                                        mem[u + _1735] = uint256(stor[v].field_0)
                                        u = u + 32
                                        v = v + 1
                                        continue 
                                    mem[_1735 + uint255(versions[idx].field_1)] = 4
                                    _2162 = sha3(mem[mem[64] len _1735 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                    require u <= 2
                                    mem[32] = sha3(mem[mem[64] len _1735 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                    if t >= uint256(stor[sha3(mem[mem[64] len _1735 + uint255(stor6[idx].field_1) + -mem[64] + 32])][u].field_0):
                                        revert with 0, 'EnumerableSet: index out of bounds'
                                    mem[0] = sha3(u, sha3(mem[mem[64] len _1735 + uint255(versions[idx].field_1) + -mem[64] + 32]))
                                    require t < mem[_1349]
                                    mem[(32 * t) + _1349 + 32] = address(stor[_2162][u][t].field_0)
                            t = t + 1
                            continue 
                        _1728 = mem[64]
                        mem[64] = mem[64] + 96
                        require idx < versions.length
                        mem[0] = 6
                        _1733 = mem[64]
                        mem[64] = mem[64] + ceil32(versions[idx].length) + 32
                        mem[_1733] = versions[idx].length
                        mem[0] = sha3(6) + idx
                        mem[_1733 + 32] = uint256(versions[idx].field_0)
                        t = _1733 + 32
                        u = sha3(mem[0])
                        while _1733 + versions[idx].length > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_1728] = _1733
                        require s <= 2
                        mem[_1728 + 32] = s
                        mem[_1728 + 64] = _1349
                        require -idx + (versions.length * idx) + (2 * s) < mem[96]
                        mem[(32 * -idx + (versions.length * idx) + (2 * s)) + 128] = _1728
                    else:
                        mem[_1349 + 32 len 32 * uint256(stor[_1317][s].field_0)] = call.data[calldata.size len 32 * uint256(stor[_1317][s].field_0)]
                        t = 0
                        while t < uint256(stor[_1317][s].field_0):
                            require idx < versions.length
                            _1739 = mem[64]
                            if not bool(versions[idx].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(versions[idx].field_0))
                                mem[mem[64] + versions[idx].field_1 % 128] = 4
                                _1785 = sha3(mem[mem[64] len _1739 + versions[idx].field_1 % 128 + -mem[64] + 32])
                                require s <= 2
                                mem[32] = sha3(mem[mem[64] len _1739 + versions[idx].field_1 % 128 + -mem[64] + 32])
                                if t >= uint256(stor[sha3(mem[mem[64] len _1739 + stor6[idx].field_1 % 128 + -mem[64] + 32])][s].field_0):
                                    revert with 0, 'EnumerableSet: index out of bounds'
                                mem[0] = sha3(s, sha3(mem[mem[64] len _1739 + versions[idx].field_1 % 128 + -mem[64] + 32]))
                                require t < mem[_1349]
                                mem[(32 * t) + _1349 + 32] = address(stor[_1785][s][t].field_0)
                            else:
                                if bool(versions[idx].field_0) != 1:
                                    _1797 = sha3(mem[mem[64] len -mem[64] + 32])
                                    require s <= 2
                                    mem[32] = sha3(mem[mem[64] len -mem[64] + 32])
                                    if t >= uint256(stor[sha3(mem[mem[64] len -mem[64] + 32])][s].field_0):
                                        revert with 0, 'EnumerableSet: index out of bounds'
                                    mem[0] = sha3(s, sha3(mem[mem[64] len -mem[64] + 32]))
                                    require t < mem[_1349]
                                    mem[(32 * t) + _1349 + 32] = address(stor[_1797][s][t].field_0)
                                else:
                                    mem[0] = sha3(6) + idx
                                    u = 0
                                    v = sha3(mem[0])
                                    while u < uint255(versions[idx].field_1):
                                        mem[u + _1739] = uint256(stor[v].field_0)
                                        u = u + 32
                                        v = v + 1
                                        continue 
                                    mem[_1739 + uint255(versions[idx].field_1)] = 4
                                    _2165 = sha3(mem[mem[64] len _1739 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                    require s <= 2
                                    mem[32] = sha3(mem[mem[64] len _1739 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                    if t >= uint256(stor[sha3(mem[mem[64] len _1739 + uint255(stor6[idx].field_1) + -mem[64] + 32])][s].field_0):
                                        revert with 0, 'EnumerableSet: index out of bounds'
                                    mem[0] = sha3(s, sha3(mem[mem[64] len _1739 + uint255(versions[idx].field_1) + -mem[64] + 32]))
                                    require t < mem[_1349]
                                    mem[(32 * t) + _1349 + 32] = address(stor[_2165][s][t].field_0)
                            t = t + 1
                            continue 
                        _1729 = mem[64]
                        mem[64] = mem[64] + 96
                        require idx < versions.length
                        mem[0] = 6
                        _1737 = mem[64]
                        mem[64] = mem[64] + ceil32(versions[idx].length) + 32
                        mem[_1737] = versions[idx].length
                        mem[0] = sha3(6) + idx
                        mem[_1737 + 32] = uint256(versions[idx].field_0)
                        t = _1737 + 32
                        u = sha3(mem[0])
                        while _1737 + versions[idx].length > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_1729] = _1737
                        require s <= 2
                        mem[_1729 + 32] = s
                        mem[_1729 + 64] = _1349
                        require -idx + (versions.length * idx) + (2 * s) < mem[96]
                        mem[(32 * -idx + (versions.length * idx) + (2 * s)) + 128] = _1729
                else:
                    if bool(versions[idx].field_0) != 1:
                        _1324 = sha3(mem[mem[64] len -mem[64] + 32])
                        require s <= 2
                        mem[0] = s
                        mem[32] = _1324
                        require uint256(stor[_1324][s].field_0) <= test266151307()
                        _1351 = mem[64]
                        mem[mem[64]] = uint256(stor[_1324][s].field_0)
                        mem[64] = mem[64] + (32 * uint256(stor[_1324][s].field_0)) + 32
                        if not uint256(stor[_1324][s].field_0):
                            t = 0
                            while t < uint256(stor[_1324][s].field_0):
                                require idx < versions.length
                                _1743 = mem[64]
                                if not bool(versions[idx].field_0):
                                    mem[mem[64]] = Mask(248, 8, uint256(versions[idx].field_0))
                                    mem[mem[64] + versions[idx].field_1 % 128] = 4
                                    _1787 = sha3(mem[mem[64] len _1743 + versions[idx].field_1 % 128 + -mem[64] + 32])
                                    require s <= 2
                                    mem[32] = sha3(mem[mem[64] len _1743 + versions[idx].field_1 % 128 + -mem[64] + 32])
                                    if t >= uint256(stor[sha3(mem[mem[64] len _1743 + stor6[idx].field_1 % 128 + -mem[64] + 32])][s].field_0):
                                        revert with 0, 'EnumerableSet: index out of bounds'
                                    mem[0] = sha3(s, sha3(mem[mem[64] len _1743 + versions[idx].field_1 % 128 + -mem[64] + 32]))
                                    require t < mem[_1351]
                                    mem[(32 * t) + _1351 + 32] = address(stor[_1787][s][t].field_0)
                                else:
                                    if bool(versions[idx].field_0) != 1:
                                        _1800 = sha3(mem[mem[64] len -mem[64] + 32])
                                        require s <= 2
                                        mem[32] = sha3(mem[mem[64] len -mem[64] + 32])
                                        if t >= uint256(stor[sha3(mem[mem[64] len -mem[64] + 32])][s].field_0):
                                            revert with 0, 'EnumerableSet: index out of bounds'
                                        mem[0] = sha3(s, sha3(mem[mem[64] len -mem[64] + 32]))
                                        require t < mem[_1351]
                                        mem[(32 * t) + _1351 + 32] = address(stor[_1800][s][t].field_0)
                                    else:
                                        mem[0] = sha3(6) + idx
                                        u = 0
                                        v = sha3(mem[0])
                                        while u < uint255(versions[idx].field_1):
                                            mem[u + _1743] = uint256(stor[v].field_0)
                                            u = u + 32
                                            v = v + 1
                                            continue 
                                        mem[_1743 + uint255(versions[idx].field_1)] = 4
                                        _2170 = sha3(mem[mem[64] len _1743 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                        require s <= 2
                                        mem[32] = sha3(mem[mem[64] len _1743 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                        if t >= uint256(stor[sha3(mem[mem[64] len _1743 + uint255(stor6[idx].field_1) + -mem[64] + 32])][s].field_0):
                                            revert with 0, 'EnumerableSet: index out of bounds'
                                        mem[0] = sha3(s, sha3(mem[mem[64] len _1743 + uint255(versions[idx].field_1) + -mem[64] + 32]))
                                        require t < mem[_1351]
                                        mem[(32 * t) + _1351 + 32] = address(stor[_2170][s][t].field_0)
                                t = t + 1
                                continue 
                            _1730 = mem[64]
                            mem[64] = mem[64] + 96
                            require idx < versions.length
                            mem[0] = 6
                            _1741 = mem[64]
                            mem[64] = mem[64] + ceil32(versions[idx].length) + 32
                            mem[_1741] = versions[idx].length
                            mem[0] = sha3(6) + idx
                            mem[_1741 + 32] = uint256(versions[idx].field_0)
                            t = _1741 + 32
                            u = sha3(mem[0])
                            while _1741 + versions[idx].length > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1730] = _1741
                            require s <= 2
                            mem[_1730 + 32] = s
                            mem[_1730 + 64] = _1351
                            require -idx + (versions.length * idx) + (2 * s) < mem[96]
                            mem[(32 * -idx + (versions.length * idx) + (2 * s)) + 128] = _1730
                        else:
                            mem[_1351 + 32 len 32 * uint256(stor[_1324][s].field_0)] = call.data[calldata.size len 32 * uint256(stor[_1324][s].field_0)]
                            t = 0
                            while t < uint256(stor[_1324][s].field_0):
                                require idx < versions.length
                                _1747 = mem[64]
                                if not bool(versions[idx].field_0):
                                    mem[mem[64]] = Mask(248, 8, uint256(versions[idx].field_0))
                                    mem[mem[64] + versions[idx].field_1 % 128] = 4
                                    _1789 = sha3(mem[mem[64] len _1747 + versions[idx].field_1 % 128 + -mem[64] + 32])
                                    require s <= 2
                                    mem[32] = sha3(mem[mem[64] len _1747 + versions[idx].field_1 % 128 + -mem[64] + 32])
                                    if t >= uint256(stor[sha3(mem[mem[64] len _1747 + stor6[idx].field_1 % 128 + -mem[64] + 32])][s].field_0):
                                        revert with 0, 'EnumerableSet: index out of bounds'
                                    mem[0] = sha3(s, sha3(mem[mem[64] len _1747 + versions[idx].field_1 % 128 + -mem[64] + 32]))
                                    require t < mem[_1351]
                                    mem[(32 * t) + _1351 + 32] = address(stor[_1789][s][t].field_0)
                                else:
                                    if bool(versions[idx].field_0) != 1:
                                        _1803 = sha3(mem[mem[64] len -mem[64] + 32])
                                        require s <= 2
                                        mem[32] = sha3(mem[mem[64] len -mem[64] + 32])
                                        if t >= uint256(stor[sha3(mem[mem[64] len -mem[64] + 32])][s].field_0):
                                            revert with 0, 'EnumerableSet: index out of bounds'
                                        mem[0] = sha3(s, sha3(mem[mem[64] len -mem[64] + 32]))
                                        require t < mem[_1351]
                                        mem[(32 * t) + _1351 + 32] = address(stor[_1803][s][t].field_0)
                                    else:
                                        mem[0] = sha3(6) + idx
                                        u = 0
                                        v = sha3(mem[0])
                                        while u < uint255(versions[idx].field_1):
                                            mem[u + _1747] = uint256(stor[v].field_0)
                                            u = u + 32
                                            v = v + 1
                                            continue 
                                        mem[_1747 + uint255(versions[idx].field_1)] = 4
                                        _2173 = sha3(mem[mem[64] len _1747 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                        require s <= 2
                                        mem[32] = sha3(mem[mem[64] len _1747 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                        if t >= uint256(stor[sha3(mem[mem[64] len _1747 + uint255(stor6[idx].field_1) + -mem[64] + 32])][s].field_0):
                                            revert with 0, 'EnumerableSet: index out of bounds'
                                        mem[0] = sha3(s, sha3(mem[mem[64] len _1747 + uint255(versions[idx].field_1) + -mem[64] + 32]))
                                        require t < mem[_1351]
                                        mem[(32 * t) + _1351 + 32] = address(stor[_2173][s][t].field_0)
                                t = t + 1
                                continue 
                            _1731 = mem[64]
                            mem[64] = mem[64] + 96
                            require idx < versions.length
                            mem[0] = 6
                            _1745 = mem[64]
                            mem[64] = mem[64] + ceil32(versions[idx].length) + 32
                            mem[_1745] = versions[idx].length
                            mem[0] = sha3(6) + idx
                            mem[_1745 + 32] = uint256(versions[idx].field_0)
                            t = _1745 + 32
                            u = sha3(mem[0])
                            while _1745 + versions[idx].length > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1731] = _1745
                            require s <= 2
                            mem[_1731 + 32] = s
                            mem[_1731 + 64] = _1351
                            require -idx + (versions.length * idx) + (2 * s) < mem[96]
                            mem[(32 * -idx + (versions.length * idx) + (2 * s)) + 128] = _1731
                    else:
                        mem[0] = sha3(6) + idx
                        t = 0
                        u = sha3(mem[0])
                        while t < uint255(versions[idx].field_1):
                            mem[t + _1306] = uint256(stor[u].field_0)
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_1306 + uint255(versions[idx].field_1)] = 4
                        _1754 = sha3(mem[mem[64] len _1306 + uint255(versions[idx].field_1) + -mem[64] + 32])
                        require s <= 2
                        mem[0] = s
                        mem[32] = _1754
                        require uint256(stor[_1754][s].field_0) <= test266151307()
                        _1823 = mem[64]
                        mem[mem[64]] = uint256(stor[_1754][s].field_0)
                        mem[64] = mem[64] + (32 * uint256(stor[_1754][s].field_0)) + 32
                        if not uint256(stor[_1754][s].field_0):
                            t = 0
                            while t < uint256(stor[_1754][s].field_0):
                                require idx < versions.length
                                _2151 = mem[64]
                                if not bool(versions[idx].field_0):
                                    mem[mem[64]] = Mask(248, 8, uint256(versions[idx].field_0))
                                    mem[mem[64] + versions[idx].field_1 % 128] = 4
                                    _2187 = sha3(mem[mem[64] len _2151 + versions[idx].field_1 % 128 + -mem[64] + 32])
                                    require s <= 2
                                    mem[32] = sha3(mem[mem[64] len _2151 + versions[idx].field_1 % 128 + -mem[64] + 32])
                                    if t >= uint256(stor[sha3(mem[mem[64] len _2151 + stor6[idx].field_1 % 128 + -mem[64] + 32])][s].field_0):
                                        revert with 0, 'EnumerableSet: index out of bounds'
                                    mem[0] = sha3(s, sha3(mem[mem[64] len _2151 + versions[idx].field_1 % 128 + -mem[64] + 32]))
                                    require t < mem[_1823]
                                    mem[(32 * t) + _1823 + 32] = address(stor[_2187][s][t].field_0)
                                else:
                                    if bool(versions[idx].field_0) != 1:
                                        _2195 = sha3(mem[mem[64] len -mem[64] + 32])
                                        require s <= 2
                                        mem[32] = sha3(mem[mem[64] len -mem[64] + 32])
                                        if t >= uint256(stor[sha3(mem[mem[64] len -mem[64] + 32])][s].field_0):
                                            revert with 0, 'EnumerableSet: index out of bounds'
                                        mem[0] = sha3(s, sha3(mem[mem[64] len -mem[64] + 32]))
                                        require t < mem[_1823]
                                        mem[(32 * t) + _1823 + 32] = address(stor[_2195][s][t].field_0)
                                    else:
                                        mem[0] = sha3(6) + idx
                                        u = 0
                                        v = sha3(mem[0])
                                        while u < uint255(versions[idx].field_1):
                                            mem[u + _2151] = uint256(stor[v].field_0)
                                            u = u + 32
                                            v = v + 1
                                            continue 
                                        mem[_2151 + uint255(versions[idx].field_1)] = 4
                                        _2475 = sha3(mem[mem[64] len _2151 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                        require s <= 2
                                        mem[32] = sha3(mem[mem[64] len _2151 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                        if t >= uint256(stor[sha3(mem[mem[64] len _2151 + uint255(stor6[idx].field_1) + -mem[64] + 32])][s].field_0):
                                            revert with 0, 'EnumerableSet: index out of bounds'
                                        mem[0] = sha3(s, sha3(mem[mem[64] len _2151 + uint255(versions[idx].field_1) + -mem[64] + 32]))
                                        require t < mem[_1823]
                                        mem[(32 * t) + _1823 + 32] = address(stor[_2475][s][t].field_0)
                                t = t + 1
                                continue 
                            _2144 = mem[64]
                            mem[64] = mem[64] + 96
                            require idx < versions.length
                            mem[0] = 6
                            _2149 = mem[64]
                            mem[64] = mem[64] + ceil32(versions[idx].length) + 32
                            mem[_2149] = versions[idx].length
                            mem[0] = sha3(6) + idx
                            mem[_2149 + 32] = uint256(versions[idx].field_0)
                            t = _2149 + 32
                            u = sha3(mem[0])
                            while _2149 + versions[idx].length > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_2144] = _2149
                            require s <= 2
                            mem[_2144 + 32] = s
                            mem[_2144 + 64] = _1823
                            require -idx + (versions.length * idx) + (2 * s) < mem[96]
                            mem[(32 * -idx + (versions.length * idx) + (2 * s)) + 128] = _2144
                        else:
                            mem[_1823 + 32 len 32 * uint256(stor[_1754][s].field_0)] = call.data[calldata.size len 32 * uint256(stor[_1754][s].field_0)]
                            t = 0
                            while t < uint256(stor[_1754][s].field_0):
                                require idx < versions.length
                                _2155 = mem[64]
                                if not bool(versions[idx].field_0):
                                    mem[mem[64]] = Mask(248, 8, uint256(versions[idx].field_0))
                                    mem[mem[64] + versions[idx].field_1 % 128] = 4
                                    _2189 = sha3(mem[mem[64] len _2155 + versions[idx].field_1 % 128 + -mem[64] + 32])
                                    require s <= 2
                                    mem[32] = sha3(mem[mem[64] len _2155 + versions[idx].field_1 % 128 + -mem[64] + 32])
                                    if t >= uint256(stor[sha3(mem[mem[64] len _2155 + stor6[idx].field_1 % 128 + -mem[64] + 32])][s].field_0):
                                        revert with 0, 'EnumerableSet: index out of bounds'
                                    mem[0] = sha3(s, sha3(mem[mem[64] len _2155 + versions[idx].field_1 % 128 + -mem[64] + 32]))
                                    require t < mem[_1823]
                                    mem[(32 * t) + _1823 + 32] = address(stor[_2189][s][t].field_0)
                                else:
                                    if bool(versions[idx].field_0) != 1:
                                        _2198 = sha3(mem[mem[64] len -mem[64] + 32])
                                        require s <= 2
                                        mem[32] = sha3(mem[mem[64] len -mem[64] + 32])
                                        if t >= uint256(stor[sha3(mem[mem[64] len -mem[64] + 32])][s].field_0):
                                            revert with 0, 'EnumerableSet: index out of bounds'
                                        mem[0] = sha3(s, sha3(mem[mem[64] len -mem[64] + 32]))
                                        require t < mem[_1823]
                                        mem[(32 * t) + _1823 + 32] = address(stor[_2198][s][t].field_0)
                                    else:
                                        mem[0] = sha3(6) + idx
                                        u = 0
                                        v = sha3(mem[0])
                                        while u < uint255(versions[idx].field_1):
                                            mem[u + _2155] = uint256(stor[v].field_0)
                                            u = u + 32
                                            v = v + 1
                                            continue 
                                        mem[_2155 + uint255(versions[idx].field_1)] = 4
                                        _2478 = sha3(mem[mem[64] len _2155 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                        require s <= 2
                                        mem[32] = sha3(mem[mem[64] len _2155 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                        if t >= uint256(stor[sha3(mem[mem[64] len _2155 + uint255(stor6[idx].field_1) + -mem[64] + 32])][s].field_0):
                                            revert with 0, 'EnumerableSet: index out of bounds'
                                        mem[0] = sha3(s, sha3(mem[mem[64] len _2155 + uint255(versions[idx].field_1) + -mem[64] + 32]))
                                        require t < mem[_1823]
                                        mem[(32 * t) + _1823 + 32] = address(stor[_2478][s][t].field_0)
                                t = t + 1
                                continue 
                            _2145 = mem[64]
                            mem[64] = mem[64] + 96
                            require idx < versions.length
                            mem[0] = 6
                            _2153 = mem[64]
                            mem[64] = mem[64] + ceil32(versions[idx].length) + 32
                            mem[_2153] = versions[idx].length
                            mem[0] = sha3(6) + idx
                            mem[_2153 + 32] = uint256(versions[idx].field_0)
                            t = _2153 + 32
                            u = sha3(mem[0])
                            while _2153 + versions[idx].length > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_2145] = _2153
                            require s <= 2
                            mem[_2145 + 32] = s
                            mem[_2145 + 64] = _1823
                            require -idx + (versions.length * idx) + (2 * s) < mem[96]
                            mem[(32 * -idx + (versions.length * idx) + (2 * s)) + 128] = _2145
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        _867 = mem[64]
        mem[mem[64]] = 32
        _868 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _868:
            mem[u] = t + -_867 - 64
            _1299 = mem[s]
            _1300 = mem[mem[s]]
            mem[t] = 96
            _1304 = mem[_1300]
            mem[t + 96] = mem[_1300]
            v = 0
            while v < _1304:
                mem[v + t + 128] = mem[v + _1300 + 32]
                v = v + 32
                continue 
            if ceil32(_1304) <= _1304:
                require mem[_1299 + 32] < 3
                mem[t + 32] = mem[_1299 + 32]
                _1759 = mem[_1299 + 64]
                mem[t + 64] = ceil32(_1304) + 128
                _1767 = mem[_1759]
                mem[ceil32(_1304) + t + 128] = mem[_1759]
                v = 0
                w = _1759 + 32
                x = ceil32(_1304) + t + 160
                while v < _1767:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                v = _1767 + 1
                w = _1759 + (32 * _1767) + 64
                t = ceil32(_1304) + t + (32 * _1767) + 160
                u = u + 32
                continue 
            mem[t + _1304 + 128] = 0
            require mem[_1299 + 32] < 3
            mem[t + 32] = mem[_1299 + 32]
            _1768 = mem[_1299 + 64]
            mem[t + 64] = ceil32(_1304) + 128
            _1775 = mem[_1768]
            mem[ceil32(_1304) + t + 128] = mem[_1768]
            v = 0
            w = _1768 + 32
            x = ceil32(_1304) + t + 160
            while v < _1775:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = ceil32(_1304) + t + (32 * _1775) + 160
            u = u + 32
            continue 
    else:
        mem[64] = (32 * 3 * versions.length) + 224
        mem[(32 * 3 * versions.length) + 128] = 96
        mem[(32 * 3 * versions.length) + 160] = 0
        mem[(32 * 3 * versions.length) + 192] = 96
        mem[var8001] = (32 * 3 * versions.length) + 128
        s = var8001
        idx = var8002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * 3 * versions.length) + 128] = 96
            mem[(32 * 3 * versions.length) + 160] = 0
            mem[(32 * 3 * versions.length) + 192] = 96
            mem[s + 32] = (32 * 3 * versions.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < versions.length:
            s = 0
            while s < 3:
                require idx < versions.length
                _2159 = mem[64]
                if not bool(versions[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(versions[idx].field_0))
                    mem[mem[64] + versions[idx].field_1 % 128] = 4
                    _2192 = sha3(Mask(248, 8, uint256(versions[idx].field_0)), mem[mem[64] + 32 len versions[idx].field_1 % 128])
                    require s <= 2
                    mem[0] = s
                    mem[32] = _2192
                    require uint256(stor[_2192][s].field_0) <= test266151307()
                    _2249 = mem[64]
                    mem[mem[64]] = uint256(stor[_2192][s].field_0)
                    mem[64] = mem[64] + (32 * uint256(stor[_2192][s].field_0)) + 32
                    if not uint256(stor[_2192][s].field_0):
                        t = 0
                        while t < uint256(stor[_2192][s].field_0):
                            require idx < versions.length
                            _2460 = mem[64]
                            if not bool(versions[idx].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(versions[idx].field_0))
                                mem[mem[64] + versions[idx].field_1 % 128] = 4
                                _2508 = sha3(Mask(248, 8, uint256(versions[idx].field_0)), mem[mem[64] + 32 len versions[idx].field_1 % 128])
                                require s <= 2
                                mem[32] = sha3(Mask(248, 8, uint256(versions[idx].field_0)), mem[mem[64] + 32 len versions[idx].field_1 % 128])
                                if t >= uint256(stor[_2508][s].field_0):
                                    revert with 0, 'EnumerableSet: index out of bounds'
                                mem[0] = sha3(s, _2508)
                                require t < mem[_2249]
                                mem[(32 * t) + _2249 + 32] = address(stor[_2508][s][t].field_0)
                            else:
                                if bool(versions[idx].field_0) != 1:
                                    _2518 = sha3(mem[mem[64] len -mem[64] + 32])
                                    require s <= 2
                                    mem[32] = sha3(mem[mem[64] len -mem[64] + 32])
                                    if t >= uint256(stor[sha3(mem[mem[64] len -mem[64] + 32])][s].field_0):
                                        revert with 0, 'EnumerableSet: index out of bounds'
                                    mem[0] = sha3(s, sha3(mem[mem[64] len -mem[64] + 32]))
                                    require t < mem[_2249]
                                    mem[(32 * t) + _2249 + 32] = address(stor[_2518][s][t].field_0)
                                else:
                                    mem[0] = sha3(6) + idx
                                    u = 0
                                    v = sha3(mem[0])
                                    while u < uint255(versions[idx].field_1):
                                        mem[u + _2460] = uint256(stor[v].field_0)
                                        u = u + 32
                                        v = v + 1
                                        continue 
                                    mem[_2460 + uint255(versions[idx].field_1)] = 4
                                    _2681 = sha3(mem[mem[64] len _2460 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                    require u <= 2
                                    mem[32] = sha3(mem[mem[64] len _2460 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                    if t >= uint256(stor[sha3(mem[mem[64] len _2460 + uint255(stor6[idx].field_1) + -mem[64] + 32])][u].field_0):
                                        revert with 0, 'EnumerableSet: index out of bounds'
                                    mem[0] = sha3(u, sha3(mem[mem[64] len _2460 + uint255(versions[idx].field_1) + -mem[64] + 32]))
                                    require t < mem[_2249]
                                    mem[(32 * t) + _2249 + 32] = address(stor[_2681][u][t].field_0)
                            t = t + 1
                            continue 
                        _2453 = mem[64]
                        mem[64] = mem[64] + 96
                        require idx < versions.length
                        mem[0] = 6
                        _2458 = mem[64]
                        mem[64] = mem[64] + ceil32(versions[idx].length) + 32
                        mem[_2458] = versions[idx].length
                        mem[0] = sha3(6) + idx
                        mem[_2458 + 32] = uint256(versions[idx].field_0)
                        t = _2458 + 32
                        u = sha3(mem[0])
                        while _2458 + versions[idx].length > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_2453] = _2458
                        require s <= 2
                        mem[_2453 + 32] = s
                        mem[_2453 + 64] = _2249
                        require -idx + (versions.length * idx) + (2 * s) < mem[96]
                        mem[(32 * -idx + (versions.length * idx) + (2 * s)) + 128] = _2453
                    else:
                        mem[_2249 + 32 len 32 * uint256(stor[_2192][s].field_0)] = call.data[calldata.size len 32 * uint256(stor[_2192][s].field_0)]
                        t = 0
                        while t < uint256(stor[_2192][s].field_0):
                            require idx < versions.length
                            _2464 = mem[64]
                            if not bool(versions[idx].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(versions[idx].field_0))
                                mem[mem[64] + versions[idx].field_1 % 128] = 4
                                _2510 = sha3(Mask(248, 8, uint256(versions[idx].field_0)), mem[mem[64] + 32 len versions[idx].field_1 % 128])
                                require s <= 2
                                mem[32] = sha3(Mask(248, 8, uint256(versions[idx].field_0)), mem[mem[64] + 32 len versions[idx].field_1 % 128])
                                if t >= uint256(stor[_2510][s].field_0):
                                    revert with 0, 'EnumerableSet: index out of bounds'
                                mem[0] = sha3(s, _2510)
                                require t < mem[_2249]
                                mem[(32 * t) + _2249 + 32] = address(stor[_2510][s][t].field_0)
                            else:
                                if bool(versions[idx].field_0) != 1:
                                    _2521 = sha3(mem[mem[64] len -mem[64] + 32])
                                    require s <= 2
                                    mem[32] = sha3(mem[mem[64] len -mem[64] + 32])
                                    if t >= uint256(stor[sha3(mem[mem[64] len -mem[64] + 32])][s].field_0):
                                        revert with 0, 'EnumerableSet: index out of bounds'
                                    mem[0] = sha3(s, sha3(mem[mem[64] len -mem[64] + 32]))
                                    require t < mem[_2249]
                                    mem[(32 * t) + _2249 + 32] = address(stor[_2521][s][t].field_0)
                                else:
                                    mem[0] = sha3(6) + idx
                                    u = 0
                                    v = sha3(mem[0])
                                    while u < uint255(versions[idx].field_1):
                                        mem[u + _2464] = uint256(stor[v].field_0)
                                        u = u + 32
                                        v = v + 1
                                        continue 
                                    mem[_2464 + uint255(versions[idx].field_1)] = 4
                                    _2684 = sha3(mem[mem[64] len _2464 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                    require s <= 2
                                    mem[32] = sha3(mem[mem[64] len _2464 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                    if t >= uint256(stor[sha3(mem[mem[64] len _2464 + uint255(stor6[idx].field_1) + -mem[64] + 32])][s].field_0):
                                        revert with 0, 'EnumerableSet: index out of bounds'
                                    mem[0] = sha3(s, sha3(mem[mem[64] len _2464 + uint255(versions[idx].field_1) + -mem[64] + 32]))
                                    require t < mem[_2249]
                                    mem[(32 * t) + _2249 + 32] = address(stor[_2684][s][t].field_0)
                            t = t + 1
                            continue 
                        _2454 = mem[64]
                        mem[64] = mem[64] + 96
                        require idx < versions.length
                        mem[0] = 6
                        _2462 = mem[64]
                        mem[64] = mem[64] + ceil32(versions[idx].length) + 32
                        mem[_2462] = versions[idx].length
                        mem[0] = sha3(6) + idx
                        mem[_2462 + 32] = uint256(versions[idx].field_0)
                        t = _2462 + 32
                        u = sha3(mem[0])
                        while _2462 + versions[idx].length > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_2454] = _2462
                        require s <= 2
                        mem[_2454 + 32] = s
                        mem[_2454 + 64] = _2249
                        require -idx + (versions.length * idx) + (2 * s) < mem[96]
                        mem[(32 * -idx + (versions.length * idx) + (2 * s)) + 128] = _2454
                else:
                    if bool(versions[idx].field_0) != 1:
                        _2202 = sha3(mem[mem[64] len -mem[64] + 32])
                        require s <= 2
                        mem[0] = s
                        mem[32] = _2202
                        require uint256(stor[_2202][s].field_0) <= test266151307()
                        _2256 = mem[64]
                        mem[mem[64]] = uint256(stor[_2202][s].field_0)
                        mem[64] = mem[64] + (32 * uint256(stor[_2202][s].field_0)) + 32
                        if not uint256(stor[_2202][s].field_0):
                            t = 0
                            while t < uint256(stor[_2202][s].field_0):
                                require idx < versions.length
                                _2468 = mem[64]
                                if not bool(versions[idx].field_0):
                                    mem[mem[64]] = Mask(248, 8, uint256(versions[idx].field_0))
                                    mem[mem[64] + versions[idx].field_1 % 128] = 4
                                    _2512 = sha3(Mask(248, 8, uint256(versions[idx].field_0)), mem[mem[64] + 32 len versions[idx].field_1 % 128])
                                    require s <= 2
                                    mem[32] = sha3(Mask(248, 8, uint256(versions[idx].field_0)), mem[mem[64] + 32 len versions[idx].field_1 % 128])
                                    if t >= uint256(stor[_2512][s].field_0):
                                        revert with 0, 'EnumerableSet: index out of bounds'
                                    mem[0] = sha3(s, _2512)
                                    require t < mem[_2256]
                                    mem[(32 * t) + _2256 + 32] = address(stor[_2512][s][t].field_0)
                                else:
                                    if bool(versions[idx].field_0) != 1:
                                        _2524 = sha3(mem[mem[64] len -mem[64] + 32])
                                        require s <= 2
                                        mem[32] = sha3(mem[mem[64] len -mem[64] + 32])
                                        if t >= uint256(stor[sha3(mem[mem[64] len -mem[64] + 32])][s].field_0):
                                            revert with 0, 'EnumerableSet: index out of bounds'
                                        mem[0] = sha3(s, sha3(mem[mem[64] len -mem[64] + 32]))
                                        require t < mem[_2256]
                                        mem[(32 * t) + _2256 + 32] = address(stor[_2524][s][t].field_0)
                                    else:
                                        mem[0] = sha3(6) + idx
                                        u = 0
                                        v = sha3(mem[0])
                                        while u < uint255(versions[idx].field_1):
                                            mem[u + _2468] = uint256(stor[v].field_0)
                                            u = u + 32
                                            v = v + 1
                                            continue 
                                        mem[_2468 + uint255(versions[idx].field_1)] = 4
                                        _2689 = sha3(mem[mem[64] len _2468 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                        require s <= 2
                                        mem[32] = sha3(mem[mem[64] len _2468 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                        if t >= uint256(stor[sha3(mem[mem[64] len _2468 + uint255(stor6[idx].field_1) + -mem[64] + 32])][s].field_0):
                                            revert with 0, 'EnumerableSet: index out of bounds'
                                        mem[0] = sha3(s, sha3(mem[mem[64] len _2468 + uint255(versions[idx].field_1) + -mem[64] + 32]))
                                        require t < mem[_2256]
                                        mem[(32 * t) + _2256 + 32] = address(stor[_2689][s][t].field_0)
                                t = t + 1
                                continue 
                            _2455 = mem[64]
                            mem[64] = mem[64] + 96
                            require idx < versions.length
                            mem[0] = 6
                            _2466 = mem[64]
                            mem[64] = mem[64] + ceil32(versions[idx].length) + 32
                            mem[_2466] = versions[idx].length
                            mem[0] = sha3(6) + idx
                            mem[_2466 + 32] = uint256(versions[idx].field_0)
                            t = _2466 + 32
                            u = sha3(mem[0])
                            while _2466 + versions[idx].length > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_2455] = _2466
                            require s <= 2
                            mem[_2455 + 32] = s
                            mem[_2455 + 64] = _2256
                            require -idx + (versions.length * idx) + (2 * s) < mem[96]
                            mem[(32 * -idx + (versions.length * idx) + (2 * s)) + 128] = _2455
                        else:
                            mem[_2256 + 32 len 32 * uint256(stor[_2202][s].field_0)] = call.data[calldata.size len 32 * uint256(stor[_2202][s].field_0)]
                            t = 0
                            while t < uint256(stor[_2202][s].field_0):
                                require idx < versions.length
                                _2472 = mem[64]
                                if not bool(versions[idx].field_0):
                                    mem[mem[64]] = Mask(248, 8, uint256(versions[idx].field_0))
                                    mem[mem[64] + versions[idx].field_1 % 128] = 4
                                    _2514 = sha3(Mask(248, 8, uint256(versions[idx].field_0)), mem[mem[64] + 32 len versions[idx].field_1 % 128])
                                    require s <= 2
                                    mem[32] = sha3(Mask(248, 8, uint256(versions[idx].field_0)), mem[mem[64] + 32 len versions[idx].field_1 % 128])
                                    if t >= uint256(stor[_2514][s].field_0):
                                        revert with 0, 'EnumerableSet: index out of bounds'
                                    mem[0] = sha3(s, _2514)
                                    require t < mem[_2256]
                                    mem[(32 * t) + _2256 + 32] = address(stor[_2514][s][t].field_0)
                                else:
                                    if bool(versions[idx].field_0) != 1:
                                        _2527 = sha3(mem[mem[64] len -mem[64] + 32])
                                        require s <= 2
                                        mem[32] = sha3(mem[mem[64] len -mem[64] + 32])
                                        if t >= uint256(stor[sha3(mem[mem[64] len -mem[64] + 32])][s].field_0):
                                            revert with 0, 'EnumerableSet: index out of bounds'
                                        mem[0] = sha3(s, sha3(mem[mem[64] len -mem[64] + 32]))
                                        require t < mem[_2256]
                                        mem[(32 * t) + _2256 + 32] = address(stor[_2527][s][t].field_0)
                                    else:
                                        mem[0] = sha3(6) + idx
                                        u = 0
                                        v = sha3(mem[0])
                                        while u < uint255(versions[idx].field_1):
                                            mem[u + _2472] = uint256(stor[v].field_0)
                                            u = u + 32
                                            v = v + 1
                                            continue 
                                        mem[_2472 + uint255(versions[idx].field_1)] = 4
                                        _2692 = sha3(mem[mem[64] len _2472 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                        require s <= 2
                                        mem[32] = sha3(mem[mem[64] len _2472 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                        if t >= uint256(stor[sha3(mem[mem[64] len _2472 + uint255(stor6[idx].field_1) + -mem[64] + 32])][s].field_0):
                                            revert with 0, 'EnumerableSet: index out of bounds'
                                        mem[0] = sha3(s, sha3(mem[mem[64] len _2472 + uint255(versions[idx].field_1) + -mem[64] + 32]))
                                        require t < mem[_2256]
                                        mem[(32 * t) + _2256 + 32] = address(stor[_2692][s][t].field_0)
                                t = t + 1
                                continue 
                            _2456 = mem[64]
                            mem[64] = mem[64] + 96
                            require idx < versions.length
                            mem[0] = 6
                            _2470 = mem[64]
                            mem[64] = mem[64] + ceil32(versions[idx].length) + 32
                            mem[_2470] = versions[idx].length
                            mem[0] = sha3(6) + idx
                            mem[_2470 + 32] = uint256(versions[idx].field_0)
                            t = _2470 + 32
                            u = sha3(mem[0])
                            while _2470 + versions[idx].length > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_2456] = _2470
                            require s <= 2
                            mem[_2456 + 32] = s
                            mem[_2456 + 64] = _2256
                            require -idx + (versions.length * idx) + (2 * s) < mem[96]
                            mem[(32 * -idx + (versions.length * idx) + (2 * s)) + 128] = _2456
                    else:
                        mem[0] = sha3(6) + idx
                        t = 0
                        u = sha3(mem[0])
                        while t < uint255(versions[idx].field_1):
                            mem[t + _2159] = uint256(stor[u].field_0)
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_2159 + uint255(versions[idx].field_1)] = 4
                        _2483 = sha3(mem[mem[64] len _2159 + uint255(versions[idx].field_1) + -mem[64] + 32])
                        require s <= 2
                        mem[0] = s
                        mem[32] = _2483
                        require uint256(stor[_2483][s].field_0) <= test266151307()
                        _2548 = mem[64]
                        mem[mem[64]] = uint256(stor[_2483][s].field_0)
                        mem[64] = mem[64] + (32 * uint256(stor[_2483][s].field_0)) + 32
                        if not uint256(stor[_2483][s].field_0):
                            t = 0
                            while t < uint256(stor[_2483][s].field_0):
                                require idx < versions.length
                                _2674 = mem[64]
                                if not bool(versions[idx].field_0):
                                    mem[mem[64]] = Mask(248, 8, uint256(versions[idx].field_0))
                                    mem[mem[64] + versions[idx].field_1 % 128] = 4
                                    _2704 = sha3(Mask(248, 8, uint256(versions[idx].field_0)), mem[mem[64] + 32 len versions[idx].field_1 % 128])
                                    require s <= 2
                                    mem[32] = sha3(Mask(248, 8, uint256(versions[idx].field_0)), mem[mem[64] + 32 len versions[idx].field_1 % 128])
                                    if t >= uint256(stor[_2704][s].field_0):
                                        revert with 0, 'EnumerableSet: index out of bounds'
                                    mem[0] = sha3(s, _2704)
                                    require t < mem[_2548]
                                    mem[(32 * t) + _2548 + 32] = address(stor[_2704][s][t].field_0)
                                else:
                                    if bool(versions[idx].field_0) != 1:
                                        _2709 = sha3(mem[mem[64] len -mem[64] + 32])
                                        require s <= 2
                                        mem[32] = sha3(mem[mem[64] len -mem[64] + 32])
                                        if t >= uint256(stor[sha3(mem[mem[64] len -mem[64] + 32])][s].field_0):
                                            revert with 0, 'EnumerableSet: index out of bounds'
                                        mem[0] = sha3(s, sha3(mem[mem[64] len -mem[64] + 32]))
                                        require t < mem[_2548]
                                        mem[(32 * t) + _2548 + 32] = address(stor[_2709][s][t].field_0)
                                    else:
                                        mem[0] = sha3(6) + idx
                                        u = 0
                                        v = sha3(mem[0])
                                        while u < uint255(versions[idx].field_1):
                                            mem[u + _2674] = uint256(stor[v].field_0)
                                            u = u + 32
                                            v = v + 1
                                            continue 
                                        mem[_2674 + uint255(versions[idx].field_1)] = 4
                                        _2765 = sha3(mem[mem[64] len _2674 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                        require s <= 2
                                        mem[32] = sha3(mem[mem[64] len _2674 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                        if t >= uint256(stor[sha3(mem[mem[64] len _2674 + uint255(stor6[idx].field_1) + -mem[64] + 32])][s].field_0):
                                            revert with 0, 'EnumerableSet: index out of bounds'
                                        mem[0] = sha3(s, sha3(mem[mem[64] len _2674 + uint255(versions[idx].field_1) + -mem[64] + 32]))
                                        require t < mem[_2548]
                                        mem[(32 * t) + _2548 + 32] = address(stor[_2765][s][t].field_0)
                                t = t + 1
                                continue 
                            _2669 = mem[64]
                            mem[64] = mem[64] + 96
                            require idx < versions.length
                            mem[0] = 6
                            _2672 = mem[64]
                            mem[64] = mem[64] + ceil32(versions[idx].length) + 32
                            mem[_2672] = versions[idx].length
                            mem[0] = sha3(6) + idx
                            mem[_2672 + 32] = uint256(versions[idx].field_0)
                            t = _2672 + 32
                            u = sha3(mem[0])
                            while _2672 + versions[idx].length > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_2669] = _2672
                            require s <= 2
                            mem[_2669 + 32] = s
                            mem[_2669 + 64] = _2548
                            require -idx + (versions.length * idx) + (2 * s) < mem[96]
                            mem[(32 * -idx + (versions.length * idx) + (2 * s)) + 128] = _2669
                        else:
                            mem[_2548 + 32 len 32 * uint256(stor[_2483][s].field_0)] = call.data[calldata.size len 32 * uint256(stor[_2483][s].field_0)]
                            t = 0
                            while t < uint256(stor[_2483][s].field_0):
                                require idx < versions.length
                                _2678 = mem[64]
                                if not bool(versions[idx].field_0):
                                    mem[mem[64]] = Mask(248, 8, uint256(versions[idx].field_0))
                                    mem[mem[64] + versions[idx].field_1 % 128] = 4
                                    _2706 = sha3(Mask(248, 8, uint256(versions[idx].field_0)), mem[mem[64] + 32 len versions[idx].field_1 % 128])
                                    require s <= 2
                                    mem[32] = sha3(Mask(248, 8, uint256(versions[idx].field_0)), mem[mem[64] + 32 len versions[idx].field_1 % 128])
                                    if t >= uint256(stor[_2706][s].field_0):
                                        revert with 0, 'EnumerableSet: index out of bounds'
                                    mem[0] = sha3(s, _2706)
                                    require t < mem[_2548]
                                    mem[(32 * t) + _2548 + 32] = address(stor[_2706][s][t].field_0)
                                else:
                                    if bool(versions[idx].field_0) != 1:
                                        _2712 = sha3(mem[mem[64] len -mem[64] + 32])
                                        require s <= 2
                                        mem[32] = sha3(mem[mem[64] len -mem[64] + 32])
                                        if t >= uint256(stor[sha3(mem[mem[64] len -mem[64] + 32])][s].field_0):
                                            revert with 0, 'EnumerableSet: index out of bounds'
                                        mem[0] = sha3(s, sha3(mem[mem[64] len -mem[64] + 32]))
                                        require t < mem[_2548]
                                        mem[(32 * t) + _2548 + 32] = address(stor[_2712][s][t].field_0)
                                    else:
                                        mem[0] = sha3(6) + idx
                                        u = 0
                                        v = sha3(mem[0])
                                        while u < uint255(versions[idx].field_1):
                                            mem[u + _2678] = uint256(stor[v].field_0)
                                            u = u + 32
                                            v = v + 1
                                            continue 
                                        mem[_2678 + uint255(versions[idx].field_1)] = 4
                                        _2768 = sha3(mem[mem[64] len _2678 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                        require s <= 2
                                        mem[32] = sha3(mem[mem[64] len _2678 + uint255(versions[idx].field_1) + -mem[64] + 32])
                                        if t >= uint256(stor[sha3(mem[mem[64] len _2678 + uint255(stor6[idx].field_1) + -mem[64] + 32])][s].field_0):
                                            revert with 0, 'EnumerableSet: index out of bounds'
                                        mem[0] = sha3(s, sha3(mem[mem[64] len _2678 + uint255(versions[idx].field_1) + -mem[64] + 32]))
                                        require t < mem[_2548]
                                        mem[(32 * t) + _2548 + 32] = address(stor[_2768][s][t].field_0)
                                t = t + 1
                                continue 
                            _2670 = mem[64]
                            mem[64] = mem[64] + 96
                            require idx < versions.length
                            mem[0] = 6
                            _2676 = mem[64]
                            mem[64] = mem[64] + ceil32(versions[idx].length) + 32
                            mem[_2676] = versions[idx].length
                            mem[0] = sha3(6) + idx
                            mem[_2676 + 32] = uint256(versions[idx].field_0)
                            t = _2676 + 32
                            u = sha3(mem[0])
                            while _2676 + versions[idx].length > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_2670] = _2676
                            require s <= 2
                            mem[_2670 + 32] = s
                            mem[_2670 + 64] = _2548
                            require -idx + (versions.length * idx) + (2 * s) < mem[96]
                            mem[(32 * -idx + (versions.length * idx) + (2 * s)) + 128] = _2670
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        _1748 = mem[64]
        mem[mem[64]] = 32
        _1749 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _1749:
            mem[u] = t + -_1748 - 64
            _2146 = mem[s]
            _2147 = mem[mem[s]]
            mem[t] = 96
            _2157 = mem[_2147]
            mem[t + 96] = mem[_2147]
            v = 0
            while v < _2157:
                mem[v + t + 128] = mem[v + _2147 + 32]
                v = v + 32
                continue 
            if ceil32(_2157) <= _2157:
                require mem[_2146 + 32] < 3
                mem[t + 32] = mem[_2146 + 32]
                _2486 = mem[_2146 + 64]
                mem[t + 64] = ceil32(_2157) + 128
                _2492 = mem[_2486]
                mem[ceil32(_2157) + t + 128] = mem[_2486]
                v = 0
                w = _2486 + 32
                x = ceil32(_2157) + t + 160
                while v < _2492:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                v = _2492 + 1
                w = _2486 + (32 * _2492) + 64
                t = ceil32(_2157) + t + (32 * _2492) + 160
                u = u + 32
                continue 
            mem[t + _2157 + 128] = 0
            require mem[_2146 + 32] < 3
            mem[t + 32] = mem[_2146 + 32]
            _2493 = mem[_2146 + 64]
            mem[t + 64] = ceil32(_2157) + 128
            _2500 = mem[_2493]
            mem[ceil32(_2157) + t + 128] = mem[_2493]
            v = 0
            w = _2493 + 32
            x = ceil32(_2157) + t + 160
            while v < _2500:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = ceil32(_2157) + t + (32 * _2500) + 160
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
