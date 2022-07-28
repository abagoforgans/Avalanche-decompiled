contract main {




// =====================  Runtime code  =====================


#
#  - getTokenURI(uint256 arg1)
#
address owner;
array of struct stor1;
array of struct stor2;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_46c2f669(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while (uint255(stor2.length) * 0.5) + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setTokenURI(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor1[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor1.length = 0
            idx = 0
            while (uint255(stor1.length) * 0.5) + 31 / 32 > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor1[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor1.length = 0
            idx = 0
            while stor1.length.field_1 + 31 / 32 > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function uri() payable {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function sub_d0d321a5(?) payable {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 'NH{q', 34
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
                revert with 'NH{q', 34
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
            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
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
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function getRenderTokenURI(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(uint255(stor2.length) * 0.5) + 128
        mem[96] = uint255(stor2.length) * 0.5
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if not Mask(256, -1, stor2.length):
                mem[ceil32(uint255(stor2.length) * 0.5) + 128] = 64
                mem[ceil32(uint255(stor2.length) * 0.5) + 192] = uint255(stor2.length) * 0.5
                mem[ceil32(uint255(stor2.length) * 0.5) + 224 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
                if ceil32(uint255(stor2.length) * 0.5) <= uint255(stor2.length) * 0.5:
                    mem[ceil32(uint255(stor2.length) * 0.5) + 160] = ceil32(uint255(stor2.length) * 0.5) + 96
                    mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 224] = uint255(stor2.length) * 0.5
                    idx = 0
                    s = 128
                    t = (2 * ceil32(uint255(stor2.length) * 0.5)) + (32 * mem[96]) + 256
                    u = (2 * ceil32(uint255(stor2.length) * 0.5)) + 256
                    while idx < uint255(stor2.length) * 0.5:
                        mem[u] = t + (-2 * ceil32(uint255(stor2.length) * 0.5)) - 256
                        _303 = mem[s]
                        _324 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _324:
                            mem[v + t + 32] = mem[v + _303 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_324) > _324:
                            mem[t + _324 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_324) + t + 32
                        u = u + 32
                        continue 
                else:
                    mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 224] = 0
                    mem[ceil32(uint255(stor2.length) * 0.5) + 160] = ceil32(uint255(stor2.length) * 0.5) + 96
                    mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 224] = uint255(stor2.length) * 0.5
                    idx = 0
                    s = 128
                    t = (2 * ceil32(uint255(stor2.length) * 0.5)) + (32 * mem[96]) + 256
                    u = (2 * ceil32(uint255(stor2.length) * 0.5)) + 256
                    while idx < uint255(stor2.length) * 0.5:
                        mem[u] = t + (-2 * ceil32(uint255(stor2.length) * 0.5)) - 256
                        _304 = mem[s]
                        _326 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _326:
                            mem[v + t + 32] = mem[v + _304 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_326) > _326:
                            mem[t + _326 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_326) + t + 32
                        u = u + 32
                        continue 
            else:
                if 31 >= uint255(stor2.length) * 0.5:
                    mem[128] = 256 * stor2.length.field_8
                    mem[ceil32(uint255(stor2.length) * 0.5) + 128] = 64
                    mem[ceil32(uint255(stor2.length) * 0.5) + 192] = uint255(stor2.length) * 0.5
                    mem[ceil32(uint255(stor2.length) * 0.5) + 224 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
                    if ceil32(uint255(stor2.length) * 0.5) <= uint255(stor2.length) * 0.5:
                        mem[ceil32(uint255(stor2.length) * 0.5) + 160] = ceil32(uint255(stor2.length) * 0.5) + 96
                        mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 224] = uint255(stor2.length) * 0.5
                        idx = 0
                        s = 128
                        t = (2 * ceil32(uint255(stor2.length) * 0.5)) + (32 * mem[96]) + 256
                        u = (2 * ceil32(uint255(stor2.length) * 0.5)) + 256
                        while idx < uint255(stor2.length) * 0.5:
                            mem[u] = t + (-2 * ceil32(uint255(stor2.length) * 0.5)) - 256
                            _306 = mem[s]
                            _328 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _328:
                                mem[v + t + 32] = mem[v + _306 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_328) > _328:
                                mem[t + _328 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_328) + t + 32
                            u = u + 32
                            continue 
                    else:
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 224] = 0
                        mem[ceil32(uint255(stor2.length) * 0.5) + 160] = ceil32(uint255(stor2.length) * 0.5) + 96
                        mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 224] = uint255(stor2.length) * 0.5
                        idx = 0
                        s = 128
                        t = (2 * ceil32(uint255(stor2.length) * 0.5)) + (32 * mem[96]) + 256
                        u = (2 * ceil32(uint255(stor2.length) * 0.5)) + 256
                        while idx < uint255(stor2.length) * 0.5:
                            mem[u] = t + (-2 * ceil32(uint255(stor2.length) * 0.5)) - 256
                            _307 = mem[s]
                            _330 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _330:
                                mem[v + t + 32] = mem[v + _307 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_330) > _330:
                                mem[t + _330 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_330) + t + 32
                            u = u + 32
                            continue 
                else:
                    mem[0] = 2
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor2.length) * 0.5) + 128] = 64
                    mem[ceil32(uint255(stor2.length) * 0.5) + 192] = uint255(stor2.length) * 0.5
                    mem[ceil32(uint255(stor2.length) * 0.5) + 224 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
                    if ceil32(uint255(stor2.length) * 0.5) <= uint255(stor2.length) * 0.5:
                        mem[ceil32(uint255(stor2.length) * 0.5) + 160] = ceil32(uint255(stor2.length) * 0.5) + 96
                        mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 224] = uint255(stor2.length) * 0.5
                        idx = 0
                        s = 128
                        t = (2 * ceil32(uint255(stor2.length) * 0.5)) + (16 * Mask(254, 1, stor2.length)) + 256
                        u = (2 * ceil32(uint255(stor2.length) * 0.5)) + 256
                        while idx < uint255(stor2.length) * 0.5:
                            mem[u] = t + (-2 * ceil32(uint255(stor2.length) * 0.5)) - 256
                            _413 = mem[s]
                            _436 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _436:
                                mem[v + t + 32] = mem[v + _413 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_436) > _436:
                                mem[t + _436 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_436) + t + 32
                            u = u + 32
                            continue 
                    else:
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 224] = 0
                        mem[ceil32(uint255(stor2.length) * 0.5) + 160] = ceil32(uint255(stor2.length) * 0.5) + 96
                        mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 224] = uint255(stor2.length) * 0.5
                        idx = 0
                        s = 128
                        t = (2 * ceil32(uint255(stor2.length) * 0.5)) + (16 * Mask(254, 1, stor2.length)) + 256
                        u = (2 * ceil32(uint255(stor2.length) * 0.5)) + 256
                        while idx < uint255(stor2.length) * 0.5:
                            mem[u] = t + (-2 * ceil32(uint255(stor2.length) * 0.5)) - 256
                            _414 = mem[s]
                            _438 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _438:
                                mem[v + t + 32] = mem[v + _414 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_438) > _438:
                                mem[t + _438 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_438) + t + 32
                            u = u + 32
                            continue 
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor2.length.field_1:
                mem[ceil32(uint255(stor2.length) * 0.5) + 128] = 64
                mem[ceil32(uint255(stor2.length) * 0.5) + 192] = uint255(stor2.length) * 0.5
                mem[ceil32(uint255(stor2.length) * 0.5) + 224 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
                if ceil32(uint255(stor2.length) * 0.5) <= uint255(stor2.length) * 0.5:
                    mem[ceil32(uint255(stor2.length) * 0.5) + 160] = ceil32(uint255(stor2.length) * 0.5) + 96
                    mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 224] = uint255(stor2.length) * 0.5
                    idx = 0
                    s = 128
                    t = (2 * ceil32(uint255(stor2.length) * 0.5)) + (32 * mem[96]) + 256
                    u = (2 * ceil32(uint255(stor2.length) * 0.5)) + 256
                    while idx < uint255(stor2.length) * 0.5:
                        mem[u] = t + (-2 * ceil32(uint255(stor2.length) * 0.5)) - 256
                        _308 = mem[s]
                        _332 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _332:
                            mem[v + t + 32] = mem[v + _308 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_332) > _332:
                            mem[t + _332 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_332) + t + 32
                        u = u + 32
                        continue 
                else:
                    mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 224] = 0
                    mem[ceil32(uint255(stor2.length) * 0.5) + 160] = ceil32(uint255(stor2.length) * 0.5) + 96
                    mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 224] = uint255(stor2.length) * 0.5
                    idx = 0
                    s = 128
                    t = (2 * ceil32(uint255(stor2.length) * 0.5)) + (32 * mem[96]) + 256
                    u = (2 * ceil32(uint255(stor2.length) * 0.5)) + 256
                    while idx < uint255(stor2.length) * 0.5:
                        mem[u] = t + (-2 * ceil32(uint255(stor2.length) * 0.5)) - 256
                        _309 = mem[s]
                        _334 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _334:
                            mem[v + t + 32] = mem[v + _309 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_334) > _334:
                            mem[t + _334 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_334) + t + 32
                        u = u + 32
                        continue 
            else:
                if 31 >= stor2.length.field_1:
                    mem[128] = 256 * stor2.length.field_8
                    mem[ceil32(uint255(stor2.length) * 0.5) + 128] = 64
                    mem[ceil32(uint255(stor2.length) * 0.5) + 192] = uint255(stor2.length) * 0.5
                    mem[ceil32(uint255(stor2.length) * 0.5) + 224 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
                    if ceil32(uint255(stor2.length) * 0.5) <= uint255(stor2.length) * 0.5:
                        mem[ceil32(uint255(stor2.length) * 0.5) + 160] = ceil32(uint255(stor2.length) * 0.5) + 96
                        mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 224] = uint255(stor2.length) * 0.5
                        idx = 0
                        s = 128
                        t = (2 * ceil32(uint255(stor2.length) * 0.5)) + (32 * mem[96]) + 256
                        u = (2 * ceil32(uint255(stor2.length) * 0.5)) + 256
                        while idx < uint255(stor2.length) * 0.5:
                            mem[u] = t + (-2 * ceil32(uint255(stor2.length) * 0.5)) - 256
                            _311 = mem[s]
                            _336 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _336:
                                mem[v + t + 32] = mem[v + _311 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_336) > _336:
                                mem[t + _336 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_336) + t + 32
                            u = u + 32
                            continue 
                    else:
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 224] = 0
                        mem[ceil32(uint255(stor2.length) * 0.5) + 160] = ceil32(uint255(stor2.length) * 0.5) + 96
                        mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 224] = uint255(stor2.length) * 0.5
                        idx = 0
                        s = 128
                        t = (2 * ceil32(uint255(stor2.length) * 0.5)) + (32 * mem[96]) + 256
                        u = (2 * ceil32(uint255(stor2.length) * 0.5)) + 256
                        while idx < uint255(stor2.length) * 0.5:
                            mem[u] = t + (-2 * ceil32(uint255(stor2.length) * 0.5)) - 256
                            _312 = mem[s]
                            _338 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _338:
                                mem[v + t + 32] = mem[v + _312 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_338) > _338:
                                mem[t + _338 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_338) + t + 32
                            u = u + 32
                            continue 
                else:
                    mem[0] = 2
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor2.length) * 0.5) + 128] = 64
                    mem[ceil32(uint255(stor2.length) * 0.5) + 192] = uint255(stor2.length) * 0.5
                    mem[ceil32(uint255(stor2.length) * 0.5) + 224 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
                    if ceil32(uint255(stor2.length) * 0.5) <= uint255(stor2.length) * 0.5:
                        mem[ceil32(uint255(stor2.length) * 0.5) + 160] = ceil32(uint255(stor2.length) * 0.5) + 96
                        mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 224] = uint255(stor2.length) * 0.5
                        idx = 0
                        s = 128
                        t = (2 * ceil32(uint255(stor2.length) * 0.5)) + (16 * Mask(254, 1, stor2.length)) + 256
                        u = (2 * ceil32(uint255(stor2.length) * 0.5)) + 256
                        while idx < uint255(stor2.length) * 0.5:
                            mem[u] = t + (-2 * ceil32(uint255(stor2.length) * 0.5)) - 256
                            _419 = mem[s]
                            _440 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _440:
                                mem[v + t + 32] = mem[v + _419 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_440) > _440:
                                mem[t + _440 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_440) + t + 32
                            u = u + 32
                            continue 
                    else:
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 224] = 0
                        mem[ceil32(uint255(stor2.length) * 0.5) + 160] = ceil32(uint255(stor2.length) * 0.5) + 96
                        mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 224] = uint255(stor2.length) * 0.5
                        idx = 0
                        s = 128
                        t = (2 * ceil32(uint255(stor2.length) * 0.5)) + (16 * Mask(254, 1, stor2.length)) + 256
                        u = (2 * ceil32(uint255(stor2.length) * 0.5)) + 256
                        while idx < uint255(stor2.length) * 0.5:
                            mem[u] = t + (-2 * ceil32(uint255(stor2.length) * 0.5)) - 256
                            _420 = mem[s]
                            _442 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _442:
                                mem[v + t + 32] = mem[v + _420 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_442) > _442:
                                mem[t + _442 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_442) + t + 32
                            u = u + 32
                            continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(stor2.length.field_1) + 128
        mem[96] = stor2.length.field_1
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if not Mask(256, -1, stor2.length):
                mem[ceil32(stor2.length.field_1) + 128] = 64
                mem[ceil32(stor2.length.field_1) + 192] = stor2.length.field_1
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + 160] = ceil32(stor2.length.field_1) + 96
                    mem[(2 * ceil32(stor2.length.field_1)) + 224] = stor2.length.field_1
                    idx = 0
                    s = 128
                    t = (2 * ceil32(stor2.length.field_1)) + (32 * mem[96]) + 256
                    u = (2 * ceil32(stor2.length.field_1)) + 256
                    while idx < stor2.length.field_1:
                        mem[u] = t + (-2 * ceil32(stor2.length.field_1)) - 256
                        _313 = mem[s]
                        _340 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _340:
                            mem[v + t + 32] = mem[v + _313 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_340) > _340:
                            mem[t + _340 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_340) + t + 32
                        u = u + 32
                        continue 
                else:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                    mem[ceil32(stor2.length.field_1) + 160] = ceil32(stor2.length.field_1) + 96
                    mem[(2 * ceil32(stor2.length.field_1)) + 224] = stor2.length.field_1
                    idx = 0
                    s = 128
                    t = (2 * ceil32(stor2.length.field_1)) + (32 * mem[96]) + 256
                    u = (2 * ceil32(stor2.length.field_1)) + 256
                    while idx < stor2.length.field_1:
                        mem[u] = t + (-2 * ceil32(stor2.length.field_1)) - 256
                        _314 = mem[s]
                        _342 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _342:
                            mem[v + t + 32] = mem[v + _314 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_342) > _342:
                            mem[t + _342 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_342) + t + 32
                        u = u + 32
                        continue 
            else:
                if 31 >= uint255(stor2.length) * 0.5:
                    mem[128] = 256 * stor2.length.field_8
                    mem[ceil32(stor2.length.field_1) + 128] = 64
                    mem[ceil32(stor2.length.field_1) + 192] = stor2.length.field_1
                    mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                        mem[ceil32(stor2.length.field_1) + 160] = ceil32(stor2.length.field_1) + 96
                        mem[(2 * ceil32(stor2.length.field_1)) + 224] = stor2.length.field_1
                        idx = 0
                        s = 128
                        t = (2 * ceil32(stor2.length.field_1)) + (32 * mem[96]) + 256
                        u = (2 * ceil32(stor2.length.field_1)) + 256
                        while idx < stor2.length.field_1:
                            mem[u] = t + (-2 * ceil32(stor2.length.field_1)) - 256
                            _316 = mem[s]
                            _344 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _344:
                                mem[v + t + 32] = mem[v + _316 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_344) > _344:
                                mem[t + _344 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_344) + t + 32
                            u = u + 32
                            continue 
                    else:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                        mem[ceil32(stor2.length.field_1) + 160] = ceil32(stor2.length.field_1) + 96
                        mem[(2 * ceil32(stor2.length.field_1)) + 224] = stor2.length.field_1
                        idx = 0
                        s = 128
                        t = (2 * ceil32(stor2.length.field_1)) + (32 * mem[96]) + 256
                        u = (2 * ceil32(stor2.length.field_1)) + 256
                        while idx < stor2.length.field_1:
                            mem[u] = t + (-2 * ceil32(stor2.length.field_1)) - 256
                            _317 = mem[s]
                            _346 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _346:
                                mem[v + t + 32] = mem[v + _317 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_346) > _346:
                                mem[t + _346 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_346) + t + 32
                            u = u + 32
                            continue 
                else:
                    mem[0] = 2
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor2.length.field_1) + 128] = 64
                    mem[ceil32(stor2.length.field_1) + 192] = stor2.length.field_1
                    mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                        mem[ceil32(stor2.length.field_1) + 160] = ceil32(stor2.length.field_1) + 96
                        mem[(2 * ceil32(stor2.length.field_1)) + 224] = stor2.length.field_1
                        idx = 0
                        s = 128
                        t = (2 * ceil32(stor2.length.field_1)) + (32 * stor2.length.field_1) + 256
                        u = (2 * ceil32(stor2.length.field_1)) + 256
                        while idx < stor2.length.field_1:
                            mem[u] = t + (-2 * ceil32(stor2.length.field_1)) - 256
                            _425 = mem[s]
                            _444 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _444:
                                mem[v + t + 32] = mem[v + _425 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_444) > _444:
                                mem[t + _444 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_444) + t + 32
                            u = u + 32
                            continue 
                    else:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                        mem[ceil32(stor2.length.field_1) + 160] = ceil32(stor2.length.field_1) + 96
                        mem[(2 * ceil32(stor2.length.field_1)) + 224] = stor2.length.field_1
                        idx = 0
                        s = 128
                        t = (2 * ceil32(stor2.length.field_1)) + (32 * stor2.length.field_1) + 256
                        u = (2 * ceil32(stor2.length.field_1)) + 256
                        while idx < stor2.length.field_1:
                            mem[u] = t + (-2 * ceil32(stor2.length.field_1)) - 256
                            _426 = mem[s]
                            _446 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _446:
                                mem[v + t + 32] = mem[v + _426 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_446) > _446:
                                mem[t + _446 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_446) + t + 32
                            u = u + 32
                            continue 
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + 128] = 64
                mem[ceil32(stor2.length.field_1) + 192] = stor2.length.field_1
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + 160] = ceil32(stor2.length.field_1) + 96
                    mem[(2 * ceil32(stor2.length.field_1)) + 224] = stor2.length.field_1
                    idx = 0
                    s = 128
                    t = (2 * ceil32(stor2.length.field_1)) + (32 * mem[96]) + 256
                    u = (2 * ceil32(stor2.length.field_1)) + 256
                    while idx < stor2.length.field_1:
                        mem[u] = t + (-2 * ceil32(stor2.length.field_1)) - 256
                        _318 = mem[s]
                        _348 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _348:
                            mem[v + t + 32] = mem[v + _318 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_348) > _348:
                            mem[t + _348 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_348) + t + 32
                        u = u + 32
                        continue 
                else:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                    mem[ceil32(stor2.length.field_1) + 160] = ceil32(stor2.length.field_1) + 96
                    mem[(2 * ceil32(stor2.length.field_1)) + 224] = stor2.length.field_1
                    idx = 0
                    s = 128
                    t = (2 * ceil32(stor2.length.field_1)) + (32 * mem[96]) + 256
                    u = (2 * ceil32(stor2.length.field_1)) + 256
                    while idx < stor2.length.field_1:
                        mem[u] = t + (-2 * ceil32(stor2.length.field_1)) - 256
                        _319 = mem[s]
                        _350 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _350:
                            mem[v + t + 32] = mem[v + _319 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_350) > _350:
                            mem[t + _350 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_350) + t + 32
                        u = u + 32
                        continue 
            else:
                if 31 >= stor2.length.field_1:
                    mem[128] = 256 * stor2.length.field_8
                    mem[ceil32(stor2.length.field_1) + 128] = 64
                    mem[ceil32(stor2.length.field_1) + 192] = stor2.length.field_1
                    mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                        mem[ceil32(stor2.length.field_1) + 160] = ceil32(stor2.length.field_1) + 96
                        mem[(2 * ceil32(stor2.length.field_1)) + 224] = stor2.length.field_1
                        idx = 0
                        s = 128
                        t = (2 * ceil32(stor2.length.field_1)) + (32 * mem[96]) + 256
                        u = (2 * ceil32(stor2.length.field_1)) + 256
                        while idx < stor2.length.field_1:
                            mem[u] = t + (-2 * ceil32(stor2.length.field_1)) - 256
                            _321 = mem[s]
                            _352 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _352:
                                mem[v + t + 32] = mem[v + _321 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_352) > _352:
                                mem[t + _352 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_352) + t + 32
                            u = u + 32
                            continue 
                    else:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                        mem[ceil32(stor2.length.field_1) + 160] = ceil32(stor2.length.field_1) + 96
                        mem[(2 * ceil32(stor2.length.field_1)) + 224] = stor2.length.field_1
                        idx = 0
                        s = 128
                        t = (2 * ceil32(stor2.length.field_1)) + (32 * mem[96]) + 256
                        u = (2 * ceil32(stor2.length.field_1)) + 256
                        while idx < stor2.length.field_1:
                            mem[u] = t + (-2 * ceil32(stor2.length.field_1)) - 256
                            _322 = mem[s]
                            _354 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _354:
                                mem[v + t + 32] = mem[v + _322 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_354) > _354:
                                mem[t + _354 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_354) + t + 32
                            u = u + 32
                            continue 
                else:
                    mem[0] = 2
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor2.length.field_1) + 128] = 64
                    mem[ceil32(stor2.length.field_1) + 192] = stor2.length.field_1
                    mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                        mem[ceil32(stor2.length.field_1) + 160] = ceil32(stor2.length.field_1) + 96
                        mem[(2 * ceil32(stor2.length.field_1)) + 224] = stor2.length.field_1
                        idx = 0
                        s = 128
                        t = (2 * ceil32(stor2.length.field_1)) + (32 * stor2.length.field_1) + 256
                        u = (2 * ceil32(stor2.length.field_1)) + 256
                        while idx < stor2.length.field_1:
                            mem[u] = t + (-2 * ceil32(stor2.length.field_1)) - 256
                            _431 = mem[s]
                            _448 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _448:
                                mem[v + t + 32] = mem[v + _431 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_448) > _448:
                                mem[t + _448 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_448) + t + 32
                            u = u + 32
                            continue 
                    else:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                        mem[ceil32(stor2.length.field_1) + 160] = ceil32(stor2.length.field_1) + 96
                        mem[(2 * ceil32(stor2.length.field_1)) + 224] = stor2.length.field_1
                        idx = 0
                        s = 128
                        t = (2 * ceil32(stor2.length.field_1)) + (32 * stor2.length.field_1) + 256
                        u = (2 * ceil32(stor2.length.field_1)) + 256
                        while idx < stor2.length.field_1:
                            mem[u] = t + (-2 * ceil32(stor2.length.field_1)) - 256
                            _432 = mem[s]
                            _450 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _450:
                                mem[v + t + 32] = mem[v + _432 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_450) > _450:
                                mem[t + _450 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_450) + t + 32
                            u = u + 32
                            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
