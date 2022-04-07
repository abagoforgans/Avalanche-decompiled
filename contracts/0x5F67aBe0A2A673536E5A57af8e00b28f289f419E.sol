contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct stor1;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
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
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
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
}

function sub_49793487(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == address(arg4)
    stor1[address(arg4)].field_0++
    stor1[address(arg4)][stor1[address(arg4)].field_0].field_0 = address(arg1)
    if stor1[address(arg4)][stor1[address(arg4)].field_0].field_256:
        if stor1[address(arg4)][stor1[address(arg4)].field_0].field_256 == uint255(stor1[address(arg4)][stor1[address(arg4)].field_0].field_256) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor[sha3((4 * stor1[address(arg4)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg4')), ('name', 'stor1', 1)) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor1[address(arg4)][stor1[address(arg4)].field_0].field_256 = 0
            idx = 0
            while (uint255(stor1[address(arg4)][stor1[address(arg4)].field_0].field_256) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((4 * stor1[address(arg4)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg4')), ('name', 'stor1', 1)) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor1[address(arg4)][stor1[address(arg4)].field_0].field_256 == stor1[address(arg4)][stor1[address(arg4)].field_0].field_257 < 32:
            revert with 0, 34
        if arg2.length:
            stor[sha3((4 * stor1[address(arg4)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg4')), ('name', 'stor1', 1)) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor1[address(arg4)][stor1[address(arg4)].field_0].field_256 = 0
            idx = 0
            while stor1[address(arg4)][stor1[address(arg4)].field_0].field_257 + 31 / 32 > idx:
                stor[idx + sha3((4 * stor1[address(arg4)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg4')), ('name', 'stor1', 1)) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    if stor1[address(arg4)][stor1[address(arg4)].field_0].field_512:
        if stor1[address(arg4)][stor1[address(arg4)].field_0].field_512 == uint255(stor1[address(arg4)][stor1[address(arg4)].field_0].field_512) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((4 * stor1[address(arg4)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg4')), ('name', 'stor1', 1)) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor1[address(arg4)][stor1[address(arg4)].field_0].field_512 = 0
            idx = 0
            while (uint255(stor1[address(arg4)][stor1[address(arg4)].field_0].field_512) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((4 * stor1[address(arg4)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg4')), ('name', 'stor1', 1)) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor1[address(arg4)][stor1[address(arg4)].field_0].field_512 == stor1[address(arg4)][stor1[address(arg4)].field_0].field_513 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((4 * stor1[address(arg4)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg4')), ('name', 'stor1', 1)) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor1[address(arg4)][stor1[address(arg4)].field_0].field_512 = 0
            idx = 0
            while stor1[address(arg4)][stor1[address(arg4)].field_0].field_513 + 31 / 32 > idx:
                stor[idx + sha3((4 * stor1[address(arg4)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg4')), ('name', 'stor1', 1)) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    stor1[address(arg4)][stor1[address(arg4)].field_0].field_768 = address(arg4)
    emit CollectionCreated(address(arg1), address(arg4));
}

function getCollections() payable {
    mem[0] = msg.sender
    mem[32] = 1
    mem[64] = (32 * stor1[msg.sender].field_0) + 128
    mem[96] = stor1[msg.sender].field_0
    s = 128
    idx = 0
    while idx < stor1[msg.sender].field_0:
        mem[0] = sha3(msg.sender, 1)
        _102 = mem[64]
        mem[64] = mem[64] + 128
        mem[_102] = stor1[msg.sender][idx].field_0
        if stor1[msg.sender][idx].field_256:
            if stor1[msg.sender][idx].field_256 == uint255(stor1[msg.sender][idx].field_256) * 0.5 < 32:
                revert with 0, 34
            _108 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor1[msg.sender][idx].field_256) * 0.5) + 32
            mem[_108] = uint255(stor1[msg.sender][idx].field_256) * 0.5
            if stor1[msg.sender][idx].field_256:
                if stor1[msg.sender][idx].field_256 == uint255(stor1[msg.sender][idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor1[msg.sender][idx].field_256):
                    mem[_102 + 32] = _108
                    if stor1[msg.sender][idx].field_512:
                        if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _121 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor1[msg.sender][idx].field_512) * 0.5) + 32
                        mem[_121] = uint255(stor1[msg.sender][idx].field_512) * 0.5
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                    mem[_121 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_121 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _121 + 32
                                    u = sha3(mem[0])
                                    while _121 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            if stor1[msg.sender][idx].field_513:
                                if 31 >= stor1[msg.sender][idx].field_513:
                                    mem[_121 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_121 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _121 + 32
                                    u = sha3(mem[0])
                                    while _121 + stor1[msg.sender][idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_102 + 64] = _121
                    else:
                        if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                            revert with 0, 34
                        _122 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[msg.sender][idx].field_513) + 32
                        mem[_122] = stor1[msg.sender][idx].field_513
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                    mem[_122 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_122 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _122 + 32
                                    u = sha3(mem[0])
                                    while _122 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            if stor1[msg.sender][idx].field_513:
                                if 31 >= stor1[msg.sender][idx].field_513:
                                    mem[_122 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_122 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _122 + 32
                                    u = sha3(mem[0])
                                    while _122 + stor1[msg.sender][idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_102 + 64] = _122
                else:
                    if 31 >= uint255(stor1[msg.sender][idx].field_256) * 0.5:
                        mem[_108 + 32] = 256 * stor1[msg.sender][idx].field_264
                        mem[_102 + 32] = _108
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            _126 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[msg.sender][idx].field_512) * 0.5) + 32
                            mem[_126] = uint255(stor1[msg.sender][idx].field_512) * 0.5
                            if stor1[msg.sender][idx].field_512:
                                if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                    if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                        mem[_126 + 32] = 256 * stor1[msg.sender][idx].field_520
                                    else:
                                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                        mem[_126 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                        t = _126 + 32
                                        u = sha3(mem[0])
                                        while _126 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                    revert with 0, 34
                                if stor1[msg.sender][idx].field_513:
                                    if 31 >= stor1[msg.sender][idx].field_513:
                                        mem[_126 + 32] = 256 * stor1[msg.sender][idx].field_520
                                    else:
                                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                        mem[_126 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                        t = _126 + 32
                                        u = sha3(mem[0])
                                        while _126 + stor1[msg.sender][idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_102 + 64] = _126
                        else:
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            _131 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[msg.sender][idx].field_513) + 32
                            mem[_131] = stor1[msg.sender][idx].field_513
                            if stor1[msg.sender][idx].field_512:
                                if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                    if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                        mem[_131 + 32] = 256 * stor1[msg.sender][idx].field_520
                                    else:
                                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                        mem[_131 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                        t = _131 + 32
                                        u = sha3(mem[0])
                                        while _131 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                    revert with 0, 34
                                if stor1[msg.sender][idx].field_513:
                                    if 31 >= stor1[msg.sender][idx].field_513:
                                        mem[_131 + 32] = 256 * stor1[msg.sender][idx].field_520
                                    else:
                                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                        mem[_131 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                        t = _131 + 32
                                        u = sha3(mem[0])
                                        while _131 + stor1[msg.sender][idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_102 + 64] = _131
                    else:
                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 1
                        mem[_108 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 1)].field_0
                        t = _108 + 32
                        u = sha3(mem[0])
                        while _108 + (uint255(stor1[msg.sender][idx].field_256) * 0.5) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_102 + 32] = _108
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            _205 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[msg.sender][idx].field_512) * 0.5) + 32
                            mem[_205] = uint255(stor1[msg.sender][idx].field_512) * 0.5
                            if stor1[msg.sender][idx].field_512:
                                if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if not Mask(256, -1, stor1[msg.sender][idx].field_512):
                                    mem[_102 + 64] = _205
                                    mem[_102 + 96] = stor1[msg.sender][idx].field_768
                                    mem[s] = _102
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                    mem[_205 + 32] = 256 * stor1[msg.sender][idx].field_520
                                    mem[_102 + 64] = _205
                                    mem[_102 + 96] = stor1[msg.sender][idx].field_768
                                    mem[s] = _102
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                mem[_205 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                t = _205 + 32
                                u = sha3(mem[0])
                                while _205 + (uint255(stor1[msg.sender][u].field_512) * 0.5) > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_102 + 64] = _205
                                mem[_102 + 96] = stor1[msg.sender][u].field_768
                                mem[t] = _102
                                t = t + 32
                                u = u + 1
                                continue 
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            if stor1[msg.sender][idx].field_513:
                                if 31 >= stor1[msg.sender][idx].field_513:
                                    mem[_205 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_205 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _205 + 32
                                    u = sha3(mem[0])
                                    while _205 + stor1[msg.sender][idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_102 + 64] = _205
                        else:
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            _209 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[msg.sender][idx].field_513) + 32
                            mem[_209] = stor1[msg.sender][idx].field_513
                            if stor1[msg.sender][idx].field_512:
                                if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                    if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                        mem[_209 + 32] = 256 * stor1[msg.sender][idx].field_520
                                    else:
                                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                        mem[_209 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                        t = _209 + 32
                                        u = sha3(mem[0])
                                        while _209 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                    revert with 0, 34
                                if stor1[msg.sender][idx].field_513:
                                    if 31 >= stor1[msg.sender][idx].field_513:
                                        mem[_209 + 32] = 256 * stor1[msg.sender][idx].field_520
                                    else:
                                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                        mem[_209 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                        t = _209 + 32
                                        u = sha3(mem[0])
                                        while _209 + stor1[msg.sender][idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_102 + 64] = _209
            else:
                if stor1[msg.sender][idx].field_256 == stor1[msg.sender][idx].field_257 < 32:
                    revert with 0, 34
                if not stor1[msg.sender][idx].field_257:
                    mem[_102 + 32] = _108
                    if stor1[msg.sender][idx].field_512:
                        if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _123 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor1[msg.sender][idx].field_512) * 0.5) + 32
                        mem[_123] = uint255(stor1[msg.sender][idx].field_512) * 0.5
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                    mem[_123 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_123 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _123 + 32
                                    u = sha3(mem[0])
                                    while _123 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            if stor1[msg.sender][idx].field_513:
                                if 31 >= stor1[msg.sender][idx].field_513:
                                    mem[_123 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_123 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _123 + 32
                                    u = sha3(mem[0])
                                    while _123 + stor1[msg.sender][idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_102 + 64] = _123
                    else:
                        if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                            revert with 0, 34
                        _127 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[msg.sender][idx].field_513) + 32
                        mem[_127] = stor1[msg.sender][idx].field_513
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                    mem[_127 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_127 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _127 + 32
                                    u = sha3(mem[0])
                                    while _127 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            if stor1[msg.sender][idx].field_513:
                                if 31 >= stor1[msg.sender][idx].field_513:
                                    mem[_127 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_127 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _127 + 32
                                    u = sha3(mem[0])
                                    while _127 + stor1[msg.sender][idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_102 + 64] = _127
                else:
                    if 31 >= stor1[msg.sender][idx].field_257:
                        mem[_108 + 32] = 256 * stor1[msg.sender][idx].field_264
                        mem[_102 + 32] = _108
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            _132 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[msg.sender][idx].field_512) * 0.5) + 32
                            mem[_132] = uint255(stor1[msg.sender][idx].field_512) * 0.5
                            if stor1[msg.sender][idx].field_512:
                                if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                    if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                        mem[_132 + 32] = 256 * stor1[msg.sender][idx].field_520
                                    else:
                                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                        mem[_132 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                        t = _132 + 32
                                        u = sha3(mem[0])
                                        while _132 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                    revert with 0, 34
                                if stor1[msg.sender][idx].field_513:
                                    if 31 >= stor1[msg.sender][idx].field_513:
                                        mem[_132 + 32] = 256 * stor1[msg.sender][idx].field_520
                                    else:
                                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                        mem[_132 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                        t = _132 + 32
                                        u = sha3(mem[0])
                                        while _132 + stor1[msg.sender][idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_102 + 64] = _132
                            mem[_102 + 96] = stor1[msg.sender][idx].field_768
                            mem[s] = _102
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                            revert with 0, 34
                        _136 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[msg.sender][idx].field_513) + 32
                        mem[_136] = stor1[msg.sender][idx].field_513
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                    mem[_136 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_136 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _136 + 32
                                    u = sha3(mem[0])
                                    while _136 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_102 + 64] = _136
                            mem[_102 + 96] = stor1[msg.sender][idx].field_768
                            mem[s] = _102
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                            revert with 0, 34
                        if not stor1[msg.sender][idx].field_513:
                            mem[_102 + 64] = _136
                            mem[_102 + 96] = stor1[msg.sender][idx].field_768
                            mem[s] = _102
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor1[msg.sender][idx].field_513:
                            mem[_136 + 32] = 256 * stor1[msg.sender][idx].field_520
                            mem[_102 + 64] = _136
                            mem[_102 + 96] = stor1[msg.sender][idx].field_768
                            mem[s] = _102
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                        mem[_136 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                        t = _136 + 32
                        u = sha3(mem[0])
                        while _136 + stor1[msg.sender][u].field_513 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_102 + 64] = _136
                        mem[_102 + 96] = stor1[msg.sender][u].field_768
                        mem[t] = _102
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 1
                    mem[_108 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 1)].field_0
                    t = _108 + 32
                    u = sha3(mem[0])
                    while _108 + stor1[msg.sender][idx].field_257 > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_102 + 32] = _108
                    if stor1[msg.sender][idx].field_512:
                        if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _206 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor1[msg.sender][idx].field_512) * 0.5) + 32
                        mem[_206] = uint255(stor1[msg.sender][idx].field_512) * 0.5
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                    mem[_206 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_206 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _206 + 32
                                    u = sha3(mem[0])
                                    while _206 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            if stor1[msg.sender][idx].field_513:
                                if 31 >= stor1[msg.sender][idx].field_513:
                                    mem[_206 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_206 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _206 + 32
                                    u = sha3(mem[0])
                                    while _206 + stor1[msg.sender][idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_102 + 64] = _206
                    else:
                        if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                            revert with 0, 34
                        _210 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[msg.sender][idx].field_513) + 32
                        mem[_210] = stor1[msg.sender][idx].field_513
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                    mem[_210 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_210 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _210 + 32
                                    u = sha3(mem[0])
                                    while _210 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            if stor1[msg.sender][idx].field_513:
                                if 31 >= stor1[msg.sender][idx].field_513:
                                    mem[_210 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_210 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _210 + 32
                                    u = sha3(mem[0])
                                    while _210 + stor1[msg.sender][idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_102 + 64] = _210
        else:
            if stor1[msg.sender][idx].field_256 == stor1[msg.sender][idx].field_257 < 32:
                revert with 0, 34
            _111 = mem[64]
            mem[64] = mem[64] + ceil32(stor1[msg.sender][idx].field_257) + 32
            mem[_111] = stor1[msg.sender][idx].field_257
            if stor1[msg.sender][idx].field_256:
                if stor1[msg.sender][idx].field_256 == uint255(stor1[msg.sender][idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor1[msg.sender][idx].field_256):
                    mem[_102 + 32] = _111
                    if stor1[msg.sender][idx].field_512:
                        if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _124 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor1[msg.sender][idx].field_512) * 0.5) + 32
                        mem[_124] = uint255(stor1[msg.sender][idx].field_512) * 0.5
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                    mem[_124 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_124 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _124 + 32
                                    u = sha3(mem[0])
                                    while _124 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            if stor1[msg.sender][idx].field_513:
                                if 31 >= stor1[msg.sender][idx].field_513:
                                    mem[_124 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_124 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _124 + 32
                                    u = sha3(mem[0])
                                    while _124 + stor1[msg.sender][idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_102 + 64] = _124
                    else:
                        if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                            revert with 0, 34
                        _128 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[msg.sender][idx].field_513) + 32
                        mem[_128] = stor1[msg.sender][idx].field_513
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                    mem[_128 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_128 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _128 + 32
                                    u = sha3(mem[0])
                                    while _128 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            if stor1[msg.sender][idx].field_513:
                                if 31 >= stor1[msg.sender][idx].field_513:
                                    mem[_128 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_128 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _128 + 32
                                    u = sha3(mem[0])
                                    while _128 + stor1[msg.sender][idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_102 + 64] = _128
                else:
                    if 31 >= uint255(stor1[msg.sender][idx].field_256) * 0.5:
                        mem[_111 + 32] = 256 * stor1[msg.sender][idx].field_264
                        mem[_102 + 32] = _111
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            _133 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[msg.sender][idx].field_512) * 0.5) + 32
                            mem[_133] = uint255(stor1[msg.sender][idx].field_512) * 0.5
                            if stor1[msg.sender][idx].field_512:
                                if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                    if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                        mem[_133 + 32] = 256 * stor1[msg.sender][idx].field_520
                                    else:
                                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                        mem[_133 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                        t = _133 + 32
                                        u = sha3(mem[0])
                                        while _133 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                    revert with 0, 34
                                if stor1[msg.sender][idx].field_513:
                                    if 31 >= stor1[msg.sender][idx].field_513:
                                        mem[_133 + 32] = 256 * stor1[msg.sender][idx].field_520
                                    else:
                                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                        mem[_133 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                        t = _133 + 32
                                        u = sha3(mem[0])
                                        while _133 + stor1[msg.sender][idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_102 + 64] = _133
                            mem[_102 + 96] = stor1[msg.sender][idx].field_768
                            mem[s] = _102
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                            revert with 0, 34
                        _137 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[msg.sender][idx].field_513) + 32
                        mem[_137] = stor1[msg.sender][idx].field_513
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                    mem[_137 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_137 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _137 + 32
                                    u = sha3(mem[0])
                                    while _137 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_102 + 64] = _137
                            mem[_102 + 96] = stor1[msg.sender][idx].field_768
                            mem[s] = _102
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                            revert with 0, 34
                        if not stor1[msg.sender][idx].field_513:
                            mem[_102 + 64] = _137
                            mem[_102 + 96] = stor1[msg.sender][idx].field_768
                            mem[s] = _102
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor1[msg.sender][idx].field_513:
                            mem[_137 + 32] = 256 * stor1[msg.sender][idx].field_520
                            mem[_102 + 64] = _137
                            mem[_102 + 96] = stor1[msg.sender][idx].field_768
                            mem[s] = _102
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                        mem[_137 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                        t = _137 + 32
                        u = sha3(mem[0])
                        while _137 + stor1[msg.sender][u].field_513 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_102 + 64] = _137
                        mem[_102 + 96] = stor1[msg.sender][u].field_768
                        mem[t] = _102
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 1
                    mem[_111 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 1)].field_0
                    t = _111 + 32
                    u = sha3(mem[0])
                    while _111 + (uint255(stor1[msg.sender][idx].field_256) * 0.5) > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_102 + 32] = _111
                    if stor1[msg.sender][idx].field_512:
                        if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _207 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor1[msg.sender][idx].field_512) * 0.5) + 32
                        mem[_207] = uint255(stor1[msg.sender][idx].field_512) * 0.5
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                    mem[_207 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_207 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _207 + 32
                                    u = sha3(mem[0])
                                    while _207 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            if stor1[msg.sender][idx].field_513:
                                if 31 >= stor1[msg.sender][idx].field_513:
                                    mem[_207 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_207 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _207 + 32
                                    u = sha3(mem[0])
                                    while _207 + stor1[msg.sender][idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_102 + 64] = _207
                    else:
                        if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                            revert with 0, 34
                        _211 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[msg.sender][idx].field_513) + 32
                        mem[_211] = stor1[msg.sender][idx].field_513
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                    mem[_211 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_211 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _211 + 32
                                    u = sha3(mem[0])
                                    while _211 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            if stor1[msg.sender][idx].field_513:
                                if 31 >= stor1[msg.sender][idx].field_513:
                                    mem[_211 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_211 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _211 + 32
                                    u = sha3(mem[0])
                                    while _211 + stor1[msg.sender][idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_102 + 64] = _211
            else:
                if stor1[msg.sender][idx].field_256 == stor1[msg.sender][idx].field_257 < 32:
                    revert with 0, 34
                if not stor1[msg.sender][idx].field_257:
                    mem[_102 + 32] = _111
                    if stor1[msg.sender][idx].field_512:
                        if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _129 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor1[msg.sender][idx].field_512) * 0.5) + 32
                        mem[_129] = uint255(stor1[msg.sender][idx].field_512) * 0.5
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                    mem[_129 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_129 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _129 + 32
                                    u = sha3(mem[0])
                                    while _129 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            if stor1[msg.sender][idx].field_513:
                                if 31 >= stor1[msg.sender][idx].field_513:
                                    mem[_129 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_129 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _129 + 32
                                    u = sha3(mem[0])
                                    while _129 + stor1[msg.sender][idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_102 + 64] = _129
                    else:
                        if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                            revert with 0, 34
                        _134 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[msg.sender][idx].field_513) + 32
                        mem[_134] = stor1[msg.sender][idx].field_513
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                    mem[_134 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_134 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _134 + 32
                                    u = sha3(mem[0])
                                    while _134 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            if stor1[msg.sender][idx].field_513:
                                if 31 >= stor1[msg.sender][idx].field_513:
                                    mem[_134 + 32] = 256 * stor1[msg.sender][idx].field_520
                                else:
                                    mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                    mem[_134 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                    t = _134 + 32
                                    u = sha3(mem[0])
                                    while _134 + stor1[msg.sender][idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_102 + 64] = _134
                else:
                    if 31 >= stor1[msg.sender][idx].field_257:
                        mem[_111 + 32] = 256 * stor1[msg.sender][idx].field_264
                        mem[_102 + 32] = _111
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            _138 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[msg.sender][idx].field_512) * 0.5) + 32
                            mem[_138] = uint255(stor1[msg.sender][idx].field_512) * 0.5
                            if stor1[msg.sender][idx].field_512:
                                if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                    if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                        mem[_138 + 32] = 256 * stor1[msg.sender][idx].field_520
                                    else:
                                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                        mem[_138 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                        t = _138 + 32
                                        u = sha3(mem[0])
                                        while _138 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[_102 + 64] = _138
                                mem[_102 + 96] = stor1[msg.sender][idx].field_768
                                mem[s] = _102
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            if not stor1[msg.sender][idx].field_513:
                                mem[_102 + 64] = _138
                                mem[_102 + 96] = stor1[msg.sender][idx].field_768
                                mem[s] = _102
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor1[msg.sender][idx].field_513:
                                mem[_138 + 32] = 256 * stor1[msg.sender][idx].field_520
                                mem[_102 + 64] = _138
                                mem[_102 + 96] = stor1[msg.sender][idx].field_768
                                mem[s] = _102
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                            mem[_138 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                            t = _138 + 32
                            u = sha3(mem[0])
                            while _138 + stor1[msg.sender][u].field_513 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_102 + 64] = _138
                            mem[_102 + 96] = stor1[msg.sender][u].field_768
                            mem[t] = _102
                            t = t + 32
                            u = u + 1
                            continue 
                        if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                            revert with 0, 34
                        _143 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[msg.sender][idx].field_513) + 32
                        mem[_143] = stor1[msg.sender][idx].field_513
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor1[msg.sender][idx].field_512):
                                mem[_102 + 64] = _143
                                mem[_102 + 96] = stor1[msg.sender][idx].field_768
                                mem[s] = _102
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                mem[_143 + 32] = 256 * stor1[msg.sender][idx].field_520
                                mem[_102 + 64] = _143
                                mem[_102 + 96] = stor1[msg.sender][idx].field_768
                                mem[s] = _102
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                            mem[_143 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                            t = _143 + 32
                            u = sha3(mem[0])
                            while _143 + (uint255(stor1[msg.sender][u].field_512) * 0.5) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_102 + 64] = _143
                            mem[_102 + 96] = stor1[msg.sender][u].field_768
                            mem[t] = _102
                            t = t + 32
                            u = u + 1
                            continue 
                        if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                            revert with 0, 34
                        if stor1[msg.sender][idx].field_513:
                            if 31 >= stor1[msg.sender][idx].field_513:
                                mem[_143 + 32] = 256 * stor1[msg.sender][idx].field_520
                            else:
                                mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                mem[_143 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                t = _143 + 32
                                u = sha3(mem[0])
                                while _143 + stor1[msg.sender][idx].field_513 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[_102 + 64] = _143
                    else:
                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 1
                        mem[_111 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 1)].field_0
                        t = _111 + 32
                        u = sha3(mem[0])
                        while _111 + stor1[msg.sender][idx].field_257 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_102 + 32] = _111
                        if stor1[msg.sender][idx].field_512:
                            if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            _208 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[msg.sender][idx].field_512) * 0.5) + 32
                            mem[_208] = uint255(stor1[msg.sender][idx].field_512) * 0.5
                            if stor1[msg.sender][idx].field_512:
                                if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                    if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                        mem[_208 + 32] = 256 * stor1[msg.sender][idx].field_520
                                    else:
                                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                        mem[_208 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                        t = _208 + 32
                                        u = sha3(mem[0])
                                        while _208 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                    revert with 0, 34
                                if stor1[msg.sender][idx].field_513:
                                    if 31 >= stor1[msg.sender][idx].field_513:
                                        mem[_208 + 32] = 256 * stor1[msg.sender][idx].field_520
                                    else:
                                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                        mem[_208 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                        t = _208 + 32
                                        u = sha3(mem[0])
                                        while _208 + stor1[msg.sender][idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_102 + 64] = _208
                        else:
                            if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                revert with 0, 34
                            _212 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[msg.sender][idx].field_513) + 32
                            mem[_212] = stor1[msg.sender][idx].field_513
                            if stor1[msg.sender][idx].field_512:
                                if stor1[msg.sender][idx].field_512 == uint255(stor1[msg.sender][idx].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor1[msg.sender][idx].field_512):
                                    if 31 >= uint255(stor1[msg.sender][idx].field_512) * 0.5:
                                        mem[_212 + 32] = 256 * stor1[msg.sender][idx].field_520
                                    else:
                                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                        mem[_212 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                        t = _212 + 32
                                        u = sha3(mem[0])
                                        while _212 + (uint255(stor1[msg.sender][idx].field_512) * 0.5) > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor1[msg.sender][idx].field_512 == stor1[msg.sender][idx].field_513 < 32:
                                    revert with 0, 34
                                if stor1[msg.sender][idx].field_513:
                                    if 31 >= stor1[msg.sender][idx].field_513:
                                        mem[_212 + 32] = 256 * stor1[msg.sender][idx].field_520
                                    else:
                                        mem[0] = sha3(sha3(msg.sender, 1)) + (4 * idx) + 2
                                        mem[_212 + 32] = stor[sha3(('map', 'msg.sender', ('name', 'stor1', 1)) + (4 * idx) + 2)].field_0
                                        t = _212 + 32
                                        u = sha3(mem[0])
                                        while _212 + stor1[msg.sender][idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_102 + 64] = _212
        mem[_102 + 96] = stor1[msg.sender][idx].field_768
        mem[s] = _102
        s = s + 32
        idx = idx + 1
        continue 
    _103 = mem[64]
    mem[mem[64]] = 32
    _104 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _104:
        mem[u] = t + -_103 - 64
        _199 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        _201 = mem[_199 + 32]
        mem[t + 32] = 128
        _203 = mem[_201]
        mem[t + 128] = mem[_201]
        v = 0
        while v < _203:
            mem[v + t + 160] = mem[v + _201 + 32]
            v = v + 32
            continue 
        if ceil32(_203) <= _203:
            _240 = mem[_199 + 64]
            mem[t + 64] = ceil32(_203) + 160
            _241 = mem[_240]
            mem[ceil32(_203) + t + 160] = mem[_240]
            v = 0
            while v < _241:
                mem[v + ceil32(_203) + t + 192] = mem[v + _240 + 32]
                v = v + 32
                continue 
            if ceil32(_241) > _241:
                mem[ceil32(_203) + t + _241 + 192] = 0
            mem[t + 96] = mem[_199 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = ceil32(_241) + ceil32(_203) + t + 192
            u = u + 32
            continue 
        mem[t + _203 + 160] = 0
        _242 = mem[_199 + 64]
        mem[t + 64] = ceil32(_203) + 160
        _243 = mem[_242]
        mem[ceil32(_203) + t + 160] = mem[_242]
        v = 0
        while v < _243:
            mem[v + ceil32(_203) + t + 192] = mem[v + _242 + 32]
            v = v + 32
            continue 
        if ceil32(_243) > _243:
            mem[ceil32(_203) + t + _243 + 192] = 0
        mem[t + 96] = mem[_199 + 108 len 20]
        idx = idx + 1
        s = s + 32
        t = ceil32(_243) + ceil32(_203) + t + 192
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_45495140(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < stor1[arg1].field_0
    if stor1[arg1][arg2].field_256:
        if stor1[arg1][arg2].field_256 == uint255(stor1[arg1][arg2].field_256) * 0.5 < 32:
            revert with 0, 34
        if stor1[arg1][arg2].field_256:
            if stor1[arg1][arg2].field_256 == uint255(stor1[arg1][arg2].field_256) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor1[arg1][arg2].field_256):
                if stor1[arg1][arg2].field_512:
                    if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if stor1[arg1][arg2].field_512:
                        if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor1[arg1][arg2].field_512):
                            if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                            if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                        else:
                            if 31 >= uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                            else:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                            if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                    else:
                        if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                            revert with 0, 34
                        if not stor1[arg1][arg2].field_513:
                            if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                            if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                        else:
                            if 31 >= stor1[arg1][arg2].field_513:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                            else:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + stor1[arg1][arg2].field_513 + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                            if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                    return stor1[arg1][arg2].field_0, 
                           Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_256), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)], 2 * Mask(256, -1, stor1[arg1][arg2].field_512), mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                           ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160,
                           stor1[arg1][arg2].field_768
                if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if stor1[arg1][arg2].field_512:
                    if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[arg1][arg2].field_512):
                        if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                        if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                    else:
                        if 31 >= uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                        else:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                            idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                        if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                else:
                    if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                        revert with 0, 34
                    if not stor1[arg1][arg2].field_513:
                        if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                        if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                    else:
                        if 31 >= stor1[arg1][arg2].field_513:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                        else:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                            idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + stor1[arg1][arg2].field_513 + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                        if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
            else:
                if 31 < uint255(stor1[arg1][arg2].field_256) * 0.5:
                    mem[128] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 1)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor1[arg1][arg2].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor1[arg1][arg2].field_512:
                        if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if stor1[arg1][arg2].field_512:
                            if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[arg1][arg2].field_512):
                                if 31 < uint255(stor1[arg1][arg2].field_512) * 0.5:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                    idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                        mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                                    mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                                    return stor1[arg1][arg2].field_0, 
                                           Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_256), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)], uint255(stor1[arg1][arg2].field_512) * 0.5, mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                                           ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160,
                                           stor1[arg1][arg2].field_768
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                        else:
                            if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                                revert with 0, 34
                            if stor1[arg1][arg2].field_513:
                                if 31 < stor1[arg1][arg2].field_513:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                    idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + stor1[arg1][arg2].field_513 + 128 > idx:
                                        mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                        mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                                    mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                                    return stor1[arg1][arg2].field_0, 
                                           Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_256), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)], uint255(stor1[arg1][arg2].field_512) * 0.5, mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                                           ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160,
                                           stor1[arg1][arg2].field_768
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                        if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                        if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                        return stor1[arg1][arg2].field_0, 
                               Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_256), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)], 2 * Mask(256, -1, stor1[arg1][arg2].field_512), mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                               ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160,
                               stor1[arg1][arg2].field_768
                    if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                        revert with 0, 34
                    if stor1[arg1][arg2].field_512:
                        if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor1[arg1][arg2].field_512):
                            if 31 < uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                                return stor1[arg1][arg2].field_0, 
                                       Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_256), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)], stor1[arg1][arg2].field_513, mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]),
                                       ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160,
                                       stor1[arg1][arg2].field_768
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                    else:
                        if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                            revert with 0, 34
                        if stor1[arg1][arg2].field_513:
                            if 31 < stor1[arg1][arg2].field_513:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + stor1[arg1][arg2].field_513 + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                                return stor1[arg1][arg2].field_0, 
                                       Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_256), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)], stor1[arg1][arg2].field_513, mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]),
                                       ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160,
                                       stor1[arg1][arg2].field_768
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                    if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                        mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                    mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                    mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                    if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                else:
                    mem[128] = 256 * stor1[arg1][arg2].field_264
                    if stor1[arg1][arg2].field_512:
                        if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if stor1[arg1][arg2].field_512:
                            if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor1[arg1][arg2].field_512):
                                if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                                if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                    mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                            else:
                                if 31 >= uint255(stor1[arg1][arg2].field_512) * 0.5:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                                else:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                    idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                                if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                    mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                        else:
                            if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                                revert with 0, 34
                            if not stor1[arg1][arg2].field_513:
                                if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                                if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                    mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                            else:
                                if 31 >= stor1[arg1][arg2].field_513:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                                else:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                    idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + stor1[arg1][arg2].field_513 + 128 > idx:
                                        mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                                if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                    mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                        return stor1[arg1][arg2].field_0, 
                               Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_256), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)], 2 * Mask(256, -1, stor1[arg1][arg2].field_512), mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                               ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160,
                               stor1[arg1][arg2].field_768
                    if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                        revert with 0, 34
                    if stor1[arg1][arg2].field_512:
                        if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor1[arg1][arg2].field_512):
                            if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                            if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                        else:
                            if 31 >= uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                            else:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                            if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                    else:
                        if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                            revert with 0, 34
                        if not stor1[arg1][arg2].field_513:
                            if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                            if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                        else:
                            if 31 >= stor1[arg1][arg2].field_513:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                            else:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + stor1[arg1][arg2].field_513 + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                            if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
        else:
            if stor1[arg1][arg2].field_256 == stor1[arg1][arg2].field_257 < 32:
                revert with 0, 34
            if not stor1[arg1][arg2].field_257:
                if stor1[arg1][arg2].field_512:
                    if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if stor1[arg1][arg2].field_512:
                        if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor1[arg1][arg2].field_512):
                            if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                            if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                        else:
                            if 31 >= uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                            else:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                            if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                    else:
                        if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                            revert with 0, 34
                        if not stor1[arg1][arg2].field_513:
                            if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                            if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                        else:
                            if 31 >= stor1[arg1][arg2].field_513:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                            else:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + stor1[arg1][arg2].field_513 + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                            if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                    return stor1[arg1][arg2].field_0, 
                           Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_256), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)], 2 * Mask(256, -1, stor1[arg1][arg2].field_512), mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                           ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160,
                           stor1[arg1][arg2].field_768
                if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if stor1[arg1][arg2].field_512:
                    if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[arg1][arg2].field_512):
                        if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                        if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                    else:
                        if 31 >= uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                        else:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                            idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                        if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                else:
                    if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                        revert with 0, 34
                    if not stor1[arg1][arg2].field_513:
                        if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                        if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                    else:
                        if 31 >= stor1[arg1][arg2].field_513:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                        else:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                            idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + stor1[arg1][arg2].field_513 + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                        if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
            else:
                if 31 < stor1[arg1][arg2].field_257:
                    mem[128] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor1[arg1][arg2].field_512:
                        if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if stor1[arg1][arg2].field_512:
                            if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[arg1][arg2].field_512):
                                if 31 < uint255(stor1[arg1][arg2].field_512) * 0.5:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                    idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                        mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                                    mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                                    return stor1[arg1][arg2].field_0, 
                                           Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_256), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)], uint255(stor1[arg1][arg2].field_512) * 0.5, mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                                           ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160,
                                           stor1[arg1][arg2].field_768
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                        else:
                            if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                                revert with 0, 34
                            if stor1[arg1][arg2].field_513:
                                if 31 < stor1[arg1][arg2].field_513:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                    idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + stor1[arg1][arg2].field_513 + 128 > idx:
                                        mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                        mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                                    mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                                    return stor1[arg1][arg2].field_0, 
                                           Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_256), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)], uint255(stor1[arg1][arg2].field_512) * 0.5, mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                                           ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160,
                                           stor1[arg1][arg2].field_768
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                        if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                        if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                        return stor1[arg1][arg2].field_0, 
                               Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_256), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)], 2 * Mask(256, -1, stor1[arg1][arg2].field_512), mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                               ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160,
                               stor1[arg1][arg2].field_768
                    if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                        revert with 0, 34
                    if stor1[arg1][arg2].field_512:
                        if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor1[arg1][arg2].field_512):
                            if 31 < uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                                return stor1[arg1][arg2].field_0, 
                                       Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_256), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)], stor1[arg1][arg2].field_513, mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]),
                                       ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160,
                                       stor1[arg1][arg2].field_768
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                    else:
                        if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                            revert with 0, 34
                        if stor1[arg1][arg2].field_513:
                            if 31 < stor1[arg1][arg2].field_513:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + stor1[arg1][arg2].field_513 + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                                return stor1[arg1][arg2].field_0, 
                                       Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_256), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)], stor1[arg1][arg2].field_513, mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]),
                                       ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160,
                                       stor1[arg1][arg2].field_768
                            mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                    if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                        mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                    mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                    mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                    if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                        mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                else:
                    mem[128] = 256 * stor1[arg1][arg2].field_264
                    if stor1[arg1][arg2].field_512:
                        if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if stor1[arg1][arg2].field_512:
                            if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor1[arg1][arg2].field_512):
                                if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                                if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                    mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                            else:
                                if 31 >= uint255(stor1[arg1][arg2].field_512) * 0.5:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                                else:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                    idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                                if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                    mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                        else:
                            if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                                revert with 0, 34
                            if not stor1[arg1][arg2].field_513:
                                if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                                if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                    mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                            else:
                                if 31 >= stor1[arg1][arg2].field_513:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                                else:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                    idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + stor1[arg1][arg2].field_513 + 128 > idx:
                                        mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                    mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                                if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                    mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                        return stor1[arg1][arg2].field_0, 
                               Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_256), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)], 2 * Mask(256, -1, stor1[arg1][arg2].field_512), mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                               ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160,
                               stor1[arg1][arg2].field_768
                    if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                        revert with 0, 34
                    if stor1[arg1][arg2].field_512:
                        if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor1[arg1][arg2].field_512):
                            if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                            if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                        else:
                            if 31 >= uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                            else:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                            if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                    else:
                        if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                            revert with 0, 34
                        if not stor1[arg1][arg2].field_513:
                            if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                            if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                        else:
                            if 31 >= stor1[arg1][arg2].field_513:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = 256 * stor1[arg1][arg2].field_520
                            else:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + stor1[arg1][arg2].field_513 + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) > uint255(stor1[arg1][arg2].field_256) * 0.5:
                                mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + ceil32(stor1[arg1][arg2].field_513) + (uint255(stor1[arg1][arg2].field_256) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                            mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                            if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                                mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
        return stor1[arg1][arg2].field_0, 
               Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_256), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5)], stor1[arg1][arg2].field_512, mem[ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160 len ceil32(stor1[arg1][arg2].field_513)]),
               ceil32(uint255(stor1[arg1][arg2].field_256) * 0.5) + 160,
               stor1[arg1][arg2].field_768
    if stor1[arg1][arg2].field_256 == stor1[arg1][arg2].field_257 < 32:
        revert with 0, 34
    if stor1[arg1][arg2].field_256:
        if stor1[arg1][arg2].field_256 == uint255(stor1[arg1][arg2].field_256) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor1[arg1][arg2].field_256):
            if stor1[arg1][arg2].field_512:
                if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                    revert with 0, 34
                if stor1[arg1][arg2].field_512:
                    if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[arg1][arg2].field_512):
                        if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                            mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                        if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                    else:
                        if 31 >= uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                        else:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                            idx = ceil32(stor1[arg1][arg2].field_257) + 160
                            s = 0
                            while ceil32(stor1[arg1][arg2].field_257) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                            mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                        if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                else:
                    if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                        revert with 0, 34
                    if not stor1[arg1][arg2].field_513:
                        if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                            mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                        if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                    else:
                        if 31 >= stor1[arg1][arg2].field_513:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                        else:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                            idx = ceil32(stor1[arg1][arg2].field_257) + 160
                            s = 0
                            while ceil32(stor1[arg1][arg2].field_257) + stor1[arg1][arg2].field_513 + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                            mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                        if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                return stor1[arg1][arg2].field_0, 
                       Array(len=stor1[arg1][arg2].field_256, data=mem[128 len ceil32(stor1[arg1][arg2].field_257)], 2 * Mask(256, -1, stor1[arg1][arg2].field_512), mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                       ceil32(stor1[arg1][arg2].field_257) + 160,
                       stor1[arg1][arg2].field_768
            if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if stor1[arg1][arg2].field_512:
                if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor1[arg1][arg2].field_512):
                    if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                        mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                    if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                else:
                    if 31 >= uint255(stor1[arg1][arg2].field_512) * 0.5:
                        mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                    else:
                        mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                        idx = ceil32(stor1[arg1][arg2].field_257) + 160
                        s = 0
                        while ceil32(stor1[arg1][arg2].field_257) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                        mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                    if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
            else:
                if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if not stor1[arg1][arg2].field_513:
                    if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                        mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                    if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                else:
                    if 31 >= stor1[arg1][arg2].field_513:
                        mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                    else:
                        mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                        idx = ceil32(stor1[arg1][arg2].field_257) + 160
                        s = 0
                        while ceil32(stor1[arg1][arg2].field_257) + stor1[arg1][arg2].field_513 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                        mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                    if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
        else:
            if 31 < uint255(stor1[arg1][arg2].field_256) * 0.5:
                mem[128] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 1)].field_0
                idx = 128
                s = 0
                while (uint255(stor1[arg1][arg2].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor1[arg1][arg2].field_512:
                    if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if stor1[arg1][arg2].field_512:
                        if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor1[arg1][arg2].field_512):
                            if 31 < uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(stor1[arg1][arg2].field_257) + 160
                                s = 0
                                while ceil32(stor1[arg1][arg2].field_257) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                                    mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                                mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                                return stor1[arg1][arg2].field_0, 
                                       Array(len=stor1[arg1][arg2].field_256, data=mem[128 len ceil32(stor1[arg1][arg2].field_257)], uint255(stor1[arg1][arg2].field_512) * 0.5, mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                                       ceil32(stor1[arg1][arg2].field_257) + 160,
                                       stor1[arg1][arg2].field_768
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                    else:
                        if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                            revert with 0, 34
                        if stor1[arg1][arg2].field_513:
                            if 31 < stor1[arg1][arg2].field_513:
                                mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(stor1[arg1][arg2].field_257) + 160
                                s = 0
                                while ceil32(stor1[arg1][arg2].field_257) + stor1[arg1][arg2].field_513 + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                                    mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                                mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                                return stor1[arg1][arg2].field_0, 
                                       Array(len=stor1[arg1][arg2].field_256, data=mem[128 len ceil32(stor1[arg1][arg2].field_257)], uint255(stor1[arg1][arg2].field_512) * 0.5, mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                                       ceil32(stor1[arg1][arg2].field_257) + 160,
                                       stor1[arg1][arg2].field_768
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                    if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                        mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                    if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                    return stor1[arg1][arg2].field_0, 
                           Array(len=stor1[arg1][arg2].field_256, data=mem[128 len ceil32(stor1[arg1][arg2].field_257)], 2 * Mask(256, -1, stor1[arg1][arg2].field_512), mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                           ceil32(stor1[arg1][arg2].field_257) + 160,
                           stor1[arg1][arg2].field_768
                if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if stor1[arg1][arg2].field_512:
                    if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[arg1][arg2].field_512):
                        if 31 < uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                            idx = ceil32(stor1[arg1][arg2].field_257) + 160
                            s = 0
                            while ceil32(stor1[arg1][arg2].field_257) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                                mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                            return stor1[arg1][arg2].field_0, 
                                   Array(len=stor1[arg1][arg2].field_256, data=mem[128 len ceil32(stor1[arg1][arg2].field_257)], stor1[arg1][arg2].field_513, mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]),
                                   ceil32(stor1[arg1][arg2].field_257) + 160,
                                   stor1[arg1][arg2].field_768
                        mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                else:
                    if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                        revert with 0, 34
                    if stor1[arg1][arg2].field_513:
                        if 31 < stor1[arg1][arg2].field_513:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                            idx = ceil32(stor1[arg1][arg2].field_257) + 160
                            s = 0
                            while ceil32(stor1[arg1][arg2].field_257) + stor1[arg1][arg2].field_513 + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                                mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                            return stor1[arg1][arg2].field_0, 
                                   Array(len=stor1[arg1][arg2].field_256, data=mem[128 len ceil32(stor1[arg1][arg2].field_257)], stor1[arg1][arg2].field_513, mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]),
                                   ceil32(stor1[arg1][arg2].field_257) + 160,
                                   stor1[arg1][arg2].field_768
                        mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                    mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
            else:
                mem[128] = 256 * stor1[arg1][arg2].field_264
                if stor1[arg1][arg2].field_512:
                    if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if stor1[arg1][arg2].field_512:
                        if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor1[arg1][arg2].field_512):
                            if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                                mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                            if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                        else:
                            if 31 >= uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                            else:
                                mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(stor1[arg1][arg2].field_257) + 160
                                s = 0
                                while ceil32(stor1[arg1][arg2].field_257) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                                mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                            if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                    else:
                        if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                            revert with 0, 34
                        if not stor1[arg1][arg2].field_513:
                            if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                                mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                            if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                        else:
                            if 31 >= stor1[arg1][arg2].field_513:
                                mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                            else:
                                mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(stor1[arg1][arg2].field_257) + 160
                                s = 0
                                while ceil32(stor1[arg1][arg2].field_257) + stor1[arg1][arg2].field_513 + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                                mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                            if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                    return stor1[arg1][arg2].field_0, 
                           Array(len=stor1[arg1][arg2].field_256, data=mem[128 len ceil32(stor1[arg1][arg2].field_257)], 2 * Mask(256, -1, stor1[arg1][arg2].field_512), mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                           ceil32(stor1[arg1][arg2].field_257) + 160,
                           stor1[arg1][arg2].field_768
                if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if stor1[arg1][arg2].field_512:
                    if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[arg1][arg2].field_512):
                        if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                            mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                        if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                    else:
                        if 31 >= uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                        else:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                            idx = ceil32(stor1[arg1][arg2].field_257) + 160
                            s = 0
                            while ceil32(stor1[arg1][arg2].field_257) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                            mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                        if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                else:
                    if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                        revert with 0, 34
                    if not stor1[arg1][arg2].field_513:
                        if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                            mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                        if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                    else:
                        if 31 >= stor1[arg1][arg2].field_513:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                        else:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                            idx = ceil32(stor1[arg1][arg2].field_257) + 160
                            s = 0
                            while ceil32(stor1[arg1][arg2].field_257) + stor1[arg1][arg2].field_513 + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                            mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                        if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
    else:
        if stor1[arg1][arg2].field_256 == stor1[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if not stor1[arg1][arg2].field_257:
            if stor1[arg1][arg2].field_512:
                if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                    revert with 0, 34
                if stor1[arg1][arg2].field_512:
                    if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[arg1][arg2].field_512):
                        if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                            mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                        if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                    else:
                        if 31 >= uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                        else:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                            idx = ceil32(stor1[arg1][arg2].field_257) + 160
                            s = 0
                            while ceil32(stor1[arg1][arg2].field_257) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                            mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                        if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                else:
                    if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                        revert with 0, 34
                    if not stor1[arg1][arg2].field_513:
                        if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                            mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                        if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                    else:
                        if 31 >= stor1[arg1][arg2].field_513:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                        else:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                            idx = ceil32(stor1[arg1][arg2].field_257) + 160
                            s = 0
                            while ceil32(stor1[arg1][arg2].field_257) + stor1[arg1][arg2].field_513 + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                            mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                        if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                return stor1[arg1][arg2].field_0, 
                       Array(len=stor1[arg1][arg2].field_256, data=mem[128 len ceil32(stor1[arg1][arg2].field_257)], 2 * Mask(256, -1, stor1[arg1][arg2].field_512), mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                       ceil32(stor1[arg1][arg2].field_257) + 160,
                       stor1[arg1][arg2].field_768
            if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if stor1[arg1][arg2].field_512:
                if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor1[arg1][arg2].field_512):
                    if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                        mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                    if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                else:
                    if 31 >= uint255(stor1[arg1][arg2].field_512) * 0.5:
                        mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                    else:
                        mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                        idx = ceil32(stor1[arg1][arg2].field_257) + 160
                        s = 0
                        while ceil32(stor1[arg1][arg2].field_257) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                        mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                    if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
            else:
                if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if not stor1[arg1][arg2].field_513:
                    if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                        mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                    if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                else:
                    if 31 >= stor1[arg1][arg2].field_513:
                        mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                    else:
                        mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                        idx = ceil32(stor1[arg1][arg2].field_257) + 160
                        s = 0
                        while ceil32(stor1[arg1][arg2].field_257) + stor1[arg1][arg2].field_513 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                        mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                    if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
        else:
            if 31 < stor1[arg1][arg2].field_257:
                mem[128] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 1)].field_0
                idx = 128
                s = 0
                while stor1[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor1[arg1][arg2].field_512:
                    if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if stor1[arg1][arg2].field_512:
                        if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor1[arg1][arg2].field_512):
                            if 31 < uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(stor1[arg1][arg2].field_257) + 160
                                s = 0
                                while ceil32(stor1[arg1][arg2].field_257) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                                    mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                                mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                                return stor1[arg1][arg2].field_0, 
                                       Array(len=stor1[arg1][arg2].field_256, data=mem[128 len ceil32(stor1[arg1][arg2].field_257)], uint255(stor1[arg1][arg2].field_512) * 0.5, mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                                       ceil32(stor1[arg1][arg2].field_257) + 160,
                                       stor1[arg1][arg2].field_768
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                    else:
                        if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                            revert with 0, 34
                        if stor1[arg1][arg2].field_513:
                            if 31 < stor1[arg1][arg2].field_513:
                                mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(stor1[arg1][arg2].field_257) + 160
                                s = 0
                                while ceil32(stor1[arg1][arg2].field_257) + stor1[arg1][arg2].field_513 + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                                    mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                                mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                                return stor1[arg1][arg2].field_0, 
                                       Array(len=stor1[arg1][arg2].field_256, data=mem[128 len ceil32(stor1[arg1][arg2].field_257)], uint255(stor1[arg1][arg2].field_512) * 0.5, mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                                       ceil32(stor1[arg1][arg2].field_257) + 160,
                                       stor1[arg1][arg2].field_768
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                    if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                        mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                    if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                    return stor1[arg1][arg2].field_0, 
                           Array(len=stor1[arg1][arg2].field_256, data=mem[128 len ceil32(stor1[arg1][arg2].field_257)], 2 * Mask(256, -1, stor1[arg1][arg2].field_512), mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                           ceil32(stor1[arg1][arg2].field_257) + 160,
                           stor1[arg1][arg2].field_768
                if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if stor1[arg1][arg2].field_512:
                    if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[arg1][arg2].field_512):
                        if 31 < uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                            idx = ceil32(stor1[arg1][arg2].field_257) + 160
                            s = 0
                            while ceil32(stor1[arg1][arg2].field_257) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                                mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                            return stor1[arg1][arg2].field_0, 
                                   Array(len=stor1[arg1][arg2].field_256, data=mem[128 len ceil32(stor1[arg1][arg2].field_257)], stor1[arg1][arg2].field_513, mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]),
                                   ceil32(stor1[arg1][arg2].field_257) + 160,
                                   stor1[arg1][arg2].field_768
                        mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                else:
                    if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                        revert with 0, 34
                    if stor1[arg1][arg2].field_513:
                        if 31 < stor1[arg1][arg2].field_513:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                            idx = ceil32(stor1[arg1][arg2].field_257) + 160
                            s = 0
                            while ceil32(stor1[arg1][arg2].field_257) + stor1[arg1][arg2].field_513 + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                                mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                            return stor1[arg1][arg2].field_0, 
                                   Array(len=stor1[arg1][arg2].field_256, data=mem[128 len ceil32(stor1[arg1][arg2].field_257)], stor1[arg1][arg2].field_513, mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]),
                                   ceil32(stor1[arg1][arg2].field_257) + 160,
                                   stor1[arg1][arg2].field_768
                        mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                    mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
            else:
                mem[128] = 256 * stor1[arg1][arg2].field_264
                if stor1[arg1][arg2].field_512:
                    if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if stor1[arg1][arg2].field_512:
                        if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor1[arg1][arg2].field_512):
                            if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                                mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                            if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                        else:
                            if 31 >= uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                            else:
                                mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(stor1[arg1][arg2].field_257) + 160
                                s = 0
                                while ceil32(stor1[arg1][arg2].field_257) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                                mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                            if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                    else:
                        if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                            revert with 0, 34
                        if not stor1[arg1][arg2].field_513:
                            if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                                mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                            if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                        else:
                            if 31 >= stor1[arg1][arg2].field_513:
                                mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                            else:
                                mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                                idx = ceil32(stor1[arg1][arg2].field_257) + 160
                                s = 0
                                while ceil32(stor1[arg1][arg2].field_257) + stor1[arg1][arg2].field_513 + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                                mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + stor1[arg1][arg2].field_257 + 320] = 0
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 320] = uint255(stor1[arg1][arg2].field_512) * 0.5
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + 352 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]
                            if ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) > uint255(stor1[arg1][arg2].field_512) * 0.5:
                                mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 352] = 0
                    return stor1[arg1][arg2].field_0, 
                           Array(len=stor1[arg1][arg2].field_256, data=mem[128 len ceil32(stor1[arg1][arg2].field_257)], 2 * Mask(256, -1, stor1[arg1][arg2].field_512), mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(uint255(stor1[arg1][arg2].field_512) * 0.5)]),
                           ceil32(stor1[arg1][arg2].field_257) + 160,
                           stor1[arg1][arg2].field_768
                if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if stor1[arg1][arg2].field_512:
                    if stor1[arg1][arg2].field_512 == uint255(stor1[arg1][arg2].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[arg1][arg2].field_512):
                        if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                            mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                        if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                    else:
                        if 31 >= uint255(stor1[arg1][arg2].field_512) * 0.5:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                        else:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                            idx = ceil32(stor1[arg1][arg2].field_257) + 160
                            s = 0
                            while ceil32(stor1[arg1][arg2].field_257) + (uint255(stor1[arg1][arg2].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                            mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                        if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                else:
                    if stor1[arg1][arg2].field_512 == stor1[arg1][arg2].field_513 < 32:
                        revert with 0, 34
                    if not stor1[arg1][arg2].field_513:
                        if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                            mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                        if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
                    else:
                        if 31 >= stor1[arg1][arg2].field_513:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = 256 * stor1[arg1][arg2].field_520
                        else:
                            mem[ceil32(stor1[arg1][arg2].field_257) + 160] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_0
                            idx = ceil32(stor1[arg1][arg2].field_257) + 160
                            s = 0
                            while ceil32(stor1[arg1][arg2].field_257) + stor1[arg1][arg2].field_513 + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor1[arg1][arg2].field_257) > stor1[arg1][arg2].field_257:
                            mem[ceil32(stor1[arg1][arg2].field_257) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_257 + 320] = 0
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 320] = stor1[arg1][arg2].field_513
                        mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + 352 len ceil32(stor1[arg1][arg2].field_513)] = mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]
                        if ceil32(stor1[arg1][arg2].field_513) > stor1[arg1][arg2].field_513:
                            mem[(2 * ceil32(stor1[arg1][arg2].field_257)) + ceil32(stor1[arg1][arg2].field_513) + stor1[arg1][arg2].field_513 + 352] = 0
    return stor1[arg1][arg2].field_0, 
           Array(len=stor1[arg1][arg2].field_256, data=mem[128 len ceil32(stor1[arg1][arg2].field_257)], stor1[arg1][arg2].field_512, mem[ceil32(stor1[arg1][arg2].field_257) + 160 len ceil32(stor1[arg1][arg2].field_513)]),
           ceil32(stor1[arg1][arg2].field_257) + 160,
           stor1[arg1][arg2].field_768
}



}
