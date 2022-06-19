contract main {




// =====================  Runtime code  =====================


#
#  - sub_28165d16(?)
#  - sub_36de7fea(?)
#  - sub_660c9927(?)
#  - sub_79da9565(?)
#  - getNode(address arg1, uint256 arg2)
#  - setName(address arg1, uint256 arg2, string arg3)
#  - sub_ff8d02bf(?)
#
uint8 stor0; offset 160
address owner;
array of uint8 stor1;
mapping of uint8 stor2;
array of struct stor3;

function paused() payable {
    return bool(stor0)
}

function owner() payable {
    return owner
}

function sub_beab80a2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor1[address(arg1)]))
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

function pause() payable {
    if not uint8(stor1[msg.sender]):
        revert with 0, 'Not authorized'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not uint8(stor1[msg.sender]):
        revert with 0, 'Not authorized'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function setAuthorizedAddress(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor1[msg.sender]):
        revert with 0, 'Not authorized'
    uint8(stor1[address(arg1)]) = uint8(arg2)
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

function sub_da3934c7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[64] = (32 * stor3[address(arg1)].field_0) + 128
    mem[96] = stor3[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor3[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        _18 = mem[64]
        mem[64] = mem[64] + 192
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _25 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor3[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_25] = uint255(stor3[address(arg1)][idx].field_0) * 0.5
            if stor3[address(arg1)][idx].field_0:
                if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                        mem[_25 + 32] = 256 * stor3[address(arg1)][idx].field_8
                    else:
                        mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
                        mem[_25 + 32] = stor3[address(arg1)][idx].field_0
                        t = _25 + 32
                        u = sha3(mem[0])
                        while _25 + (uint255(stor3[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_18] = _25
                mem[_18 + 32] = stor3[address(arg1)][idx].field_256
                mem[_18 + 64] = stor3[address(arg1)][idx].field_512
                mem[_18 + 96] = stor3[address(arg1)][idx].field_768
                mem[_18 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_18 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor3[address(arg1)][idx].field_1:
                mem[_18] = _25
                mem[_18 + 32] = stor3[address(arg1)][idx].field_256
                mem[_18 + 64] = stor3[address(arg1)][idx].field_512
                mem[_18 + 96] = stor3[address(arg1)][idx].field_768
                mem[_18 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_18 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_25 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_18] = _25
                mem[_18 + 32] = stor3[address(arg1)][idx].field_256
                mem[_18 + 64] = stor3[address(arg1)][idx].field_512
                mem[_18 + 96] = stor3[address(arg1)][idx].field_768
                mem[_18 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_18 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
            mem[_25 + 32] = stor3[address(arg1)][idx].field_0
            t = _25 + 32
            u = sha3(mem[0])
            while _25 + stor3[address(arg1)][u].field_1 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_18] = _25
            mem[_18 + 32] = stor3[address(arg1)][u].field_256
            mem[_18 + 64] = stor3[address(arg1)][u].field_512
            mem[_18 + 96] = stor3[address(arg1)][u].field_768
            mem[_18 + 128] = stor3[address(arg1)][u].field_1024
            mem[_18 + 160] = bool(stor3[address(arg1)][u].field_1280)
            mem[t] = _18
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _26 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[address(arg1)][idx].field_1) + 32
        mem[_26] = stor3[address(arg1)][idx].field_1
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor3[address(arg1)][idx].field_0):
                mem[_18] = _26
                mem[_18 + 32] = stor3[address(arg1)][idx].field_256
                mem[_18 + 64] = stor3[address(arg1)][idx].field_512
                mem[_18 + 96] = stor3[address(arg1)][idx].field_768
                mem[_18 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_18 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                mem[_26 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_18] = _26
                mem[_18 + 32] = stor3[address(arg1)][idx].field_256
                mem[_18 + 64] = stor3[address(arg1)][idx].field_512
                mem[_18 + 96] = stor3[address(arg1)][idx].field_768
                mem[_18 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_18 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
            mem[_26 + 32] = stor3[address(arg1)][idx].field_0
            t = _26 + 32
            u = sha3(mem[0])
            while _26 + (uint255(stor3[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_18] = _26
            mem[_18 + 32] = stor3[address(arg1)][u].field_256
            mem[_18 + 64] = stor3[address(arg1)][u].field_512
            mem[_18 + 96] = stor3[address(arg1)][u].field_768
            mem[_18 + 128] = stor3[address(arg1)][u].field_1024
            mem[_18 + 160] = bool(stor3[address(arg1)][u].field_1280)
            mem[t] = _18
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor3[address(arg1)][idx].field_1:
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_26 + 32] = 256 * stor3[address(arg1)][idx].field_8
            else:
                mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
                mem[_26 + 32] = stor3[address(arg1)][idx].field_0
                t = _26 + 32
                u = sha3(mem[0])
                while _26 + stor3[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_18] = _26
        mem[_18 + 32] = stor3[address(arg1)][idx].field_256
        mem[_18 + 64] = stor3[address(arg1)][idx].field_512
        mem[_18 + 96] = stor3[address(arg1)][idx].field_768
        mem[_18 + 128] = stor3[address(arg1)][idx].field_1024
        mem[_18 + 160] = bool(stor3[address(arg1)][idx].field_1280)
        mem[s] = _18
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + 128] + 160]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_37da16d7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[64] = (32 * stor3[address(arg1)].field_0) + 128
    mem[96] = stor3[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor3[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        _21 = mem[64]
        mem[64] = mem[64] + 192
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _29 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor3[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_29] = uint255(stor3[address(arg1)][idx].field_0) * 0.5
            if stor3[address(arg1)][idx].field_0:
                if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                        mem[_29 + 32] = 256 * stor3[address(arg1)][idx].field_8
                    else:
                        mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
                        mem[_29 + 32] = stor3[address(arg1)][idx].field_0
                        t = _29 + 32
                        u = sha3(mem[0])
                        while _29 + (uint255(stor3[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_21] = _29
                mem[_21 + 32] = stor3[address(arg1)][idx].field_256
                mem[_21 + 64] = stor3[address(arg1)][idx].field_512
                mem[_21 + 96] = stor3[address(arg1)][idx].field_768
                mem[_21 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_21 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor3[address(arg1)][idx].field_1:
                mem[_21] = _29
                mem[_21 + 32] = stor3[address(arg1)][idx].field_256
                mem[_21 + 64] = stor3[address(arg1)][idx].field_512
                mem[_21 + 96] = stor3[address(arg1)][idx].field_768
                mem[_21 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_21 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_29 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_21] = _29
                mem[_21 + 32] = stor3[address(arg1)][idx].field_256
                mem[_21 + 64] = stor3[address(arg1)][idx].field_512
                mem[_21 + 96] = stor3[address(arg1)][idx].field_768
                mem[_21 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_21 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
            mem[_29 + 32] = stor3[address(arg1)][idx].field_0
            t = _29 + 32
            u = sha3(mem[0])
            while _29 + stor3[address(arg1)][u].field_1 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_21] = _29
            mem[_21 + 32] = stor3[address(arg1)][u].field_256
            mem[_21 + 64] = stor3[address(arg1)][u].field_512
            mem[_21 + 96] = stor3[address(arg1)][u].field_768
            mem[_21 + 128] = stor3[address(arg1)][u].field_1024
            mem[_21 + 160] = bool(stor3[address(arg1)][u].field_1280)
            mem[t] = _21
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _32 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[address(arg1)][idx].field_1) + 32
        mem[_32] = stor3[address(arg1)][idx].field_1
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor3[address(arg1)][idx].field_0):
                mem[_21] = _32
                mem[_21 + 32] = stor3[address(arg1)][idx].field_256
                mem[_21 + 64] = stor3[address(arg1)][idx].field_512
                mem[_21 + 96] = stor3[address(arg1)][idx].field_768
                mem[_21 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_21 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                mem[_32 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_21] = _32
                mem[_21 + 32] = stor3[address(arg1)][idx].field_256
                mem[_21 + 64] = stor3[address(arg1)][idx].field_512
                mem[_21 + 96] = stor3[address(arg1)][idx].field_768
                mem[_21 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_21 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
            mem[_32 + 32] = stor3[address(arg1)][idx].field_0
            t = _32 + 32
            u = sha3(mem[0])
            while _32 + (uint255(stor3[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_21] = _32
            mem[_21 + 32] = stor3[address(arg1)][u].field_256
            mem[_21 + 64] = stor3[address(arg1)][u].field_512
            mem[_21 + 96] = stor3[address(arg1)][u].field_768
            mem[_21 + 128] = stor3[address(arg1)][u].field_1024
            mem[_21 + 160] = bool(stor3[address(arg1)][u].field_1280)
            mem[t] = _21
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor3[address(arg1)][idx].field_1:
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_32 + 32] = 256 * stor3[address(arg1)][idx].field_8
            else:
                mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
                mem[_32 + 32] = stor3[address(arg1)][idx].field_0
                t = _32 + 32
                u = sha3(mem[0])
                while _32 + stor3[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_21] = _32
        mem[_21 + 32] = stor3[address(arg1)][idx].field_256
        mem[_21 + 64] = stor3[address(arg1)][idx].field_512
        mem[_21 + 96] = stor3[address(arg1)][idx].field_768
        mem[_21 + 128] = stor3[address(arg1)][idx].field_1024
        mem[_21 + 160] = bool(stor3[address(arg1)][idx].field_1280)
        mem[s] = _21
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + 128] + 160]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 0, 50
        if s > !mem[mem[(32 * idx) + 128] + 128]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[mem[(32 * idx) + 128] + 128]
        continue 
    return s
}

function getAllNodes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 3
    mem[64] = (32 * stor3[address(arg1)].field_0) + 128
    mem[96] = stor3[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor3[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        _29 = mem[64]
        mem[64] = mem[64] + 192
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor3[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_33] = uint255(stor3[address(arg1)][idx].field_0) * 0.5
            if stor3[address(arg1)][idx].field_0:
                if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                        mem[_33 + 32] = 256 * stor3[address(arg1)][idx].field_8
                    else:
                        mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
                        mem[_33 + 32] = stor3[address(arg1)][idx].field_0
                        t = _33 + 32
                        u = sha3(mem[0])
                        while _33 + (uint255(stor3[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_29] = _33
                mem[_29 + 32] = stor3[address(arg1)][idx].field_256
                mem[_29 + 64] = stor3[address(arg1)][idx].field_512
                mem[_29 + 96] = stor3[address(arg1)][idx].field_768
                mem[_29 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_29 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _29
                s = s + 32
                idx = idx + 1
                continue 
            if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor3[address(arg1)][idx].field_1:
                mem[_29] = _33
                mem[_29 + 32] = stor3[address(arg1)][idx].field_256
                mem[_29 + 64] = stor3[address(arg1)][idx].field_512
                mem[_29 + 96] = stor3[address(arg1)][idx].field_768
                mem[_29 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_29 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _29
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_33 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_29] = _33
                mem[_29 + 32] = stor3[address(arg1)][idx].field_256
                mem[_29 + 64] = stor3[address(arg1)][idx].field_512
                mem[_29 + 96] = stor3[address(arg1)][idx].field_768
                mem[_29 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_29 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _29
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
            mem[_33 + 32] = stor3[address(arg1)][idx].field_0
            t = _33 + 32
            u = sha3(mem[0])
            while _33 + stor3[address(arg1)][u].field_1 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_29] = _33
            mem[_29 + 32] = stor3[address(arg1)][u].field_256
            mem[_29 + 64] = stor3[address(arg1)][u].field_512
            mem[_29 + 96] = stor3[address(arg1)][u].field_768
            mem[_29 + 128] = stor3[address(arg1)][u].field_1024
            mem[_29 + 160] = bool(stor3[address(arg1)][u].field_1280)
            mem[t] = _29
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _37 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[address(arg1)][idx].field_1) + 32
        mem[_37] = stor3[address(arg1)][idx].field_1
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor3[address(arg1)][idx].field_0):
                mem[_29] = _37
                mem[_29 + 32] = stor3[address(arg1)][idx].field_256
                mem[_29 + 64] = stor3[address(arg1)][idx].field_512
                mem[_29 + 96] = stor3[address(arg1)][idx].field_768
                mem[_29 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_29 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _29
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                mem[_37 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_29] = _37
                mem[_29 + 32] = stor3[address(arg1)][idx].field_256
                mem[_29 + 64] = stor3[address(arg1)][idx].field_512
                mem[_29 + 96] = stor3[address(arg1)][idx].field_768
                mem[_29 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_29 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _29
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
            mem[_37 + 32] = stor3[address(arg1)][idx].field_0
            t = _37 + 32
            u = sha3(mem[0])
            while _37 + (uint255(stor3[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_29] = _37
            mem[_29 + 32] = stor3[address(arg1)][u].field_256
            mem[_29 + 64] = stor3[address(arg1)][u].field_512
            mem[_29 + 96] = stor3[address(arg1)][u].field_768
            mem[_29 + 128] = stor3[address(arg1)][u].field_1024
            mem[_29 + 160] = bool(stor3[address(arg1)][u].field_1280)
            mem[t] = _29
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor3[address(arg1)][idx].field_1:
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_37 + 32] = 256 * stor3[address(arg1)][idx].field_8
            else:
                mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
                mem[_37 + 32] = stor3[address(arg1)][idx].field_0
                t = _37 + 32
                u = sha3(mem[0])
                while _37 + stor3[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_29] = _37
        mem[_29 + 32] = stor3[address(arg1)][idx].field_256
        mem[_29 + 64] = stor3[address(arg1)][idx].field_512
        mem[_29 + 96] = stor3[address(arg1)][idx].field_768
        mem[_29 + 128] = stor3[address(arg1)][idx].field_1024
        mem[_29 + 160] = bool(stor3[address(arg1)][idx].field_1280)
        mem[s] = _29
        s = s + 32
        idx = idx + 1
        continue 
    _30 = mem[64]
    mem[mem[64]] = 32
    _31 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _31:
        mem[t] = u + -_30 - 64
        _53 = mem[s]
        _55 = mem[mem[s]]
        mem[u] = 192
        _56 = mem[_55]
        mem[u + 192] = mem[_55]
        v = 0
        while v < _56:
            mem[v + u + 224] = mem[_55 + v + 32]
            v = v + 32
            continue 
        if ceil32(_56) > _56:
            mem[u + _56 + 224] = 0
        mem[u + 32] = mem[_53 + 32]
        mem[u + 64] = mem[_53 + 64]
        mem[u + 96] = mem[_53 + 96]
        mem[u + 128] = mem[_53 + 128]
        mem[u + 160] = bool(mem[_53 + 160])
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_56) + u + 224
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_90219732(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not uint8(stor1[msg.sender]):
        revert with 0, 'Not authorized'
    if stor0:
        revert with 0, 'Pausable: paused'
    if not address(arg1):
        revert with 0, 'CreateNode: account is not valid'
    if arg3 <= 0:
        revert with 0, 'CreateNode: amount is not valid'
    if arg2.length <= 3:
        revert with 0, 'CreateNode: Invalid length'
    if arg2.length >= 32:
        revert with 0, 'CreateNode: Invalid length'
    mem[0] = address(arg1)
    mem[32] = 3
    mem[64] = ceil32(ceil32(arg2.length)) + (32 * stor3[address(arg1)].field_0) + 129
    mem[ceil32(ceil32(arg2.length)) + 97] = stor3[address(arg1)].field_0
    s = ceil32(ceil32(arg2.length)) + 129
    idx = 0
    while idx < stor3[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        _105 = mem[64]
        mem[64] = mem[64] + 192
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _119 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor3[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_119] = uint255(stor3[address(arg1)][idx].field_0) * 0.5
            if stor3[address(arg1)][idx].field_0:
                if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                        mem[_119 + 32] = 256 * stor3[address(arg1)][idx].field_8
                    else:
                        mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
                        mem[_119 + 32] = stor3[address(arg1)][idx].field_0
                        t = _119 + 32
                        u = sha3(mem[0])
                        while _119 + (uint255(stor3[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_105] = _119
                mem[_105 + 32] = stor3[address(arg1)][idx].field_256
                mem[_105 + 64] = stor3[address(arg1)][idx].field_512
                mem[_105 + 96] = stor3[address(arg1)][idx].field_768
                mem[_105 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_105 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _105
                s = s + 32
                idx = idx + 1
                continue 
            if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor3[address(arg1)][idx].field_1:
                mem[_105] = _119
                mem[_105 + 32] = stor3[address(arg1)][idx].field_256
                mem[_105 + 64] = stor3[address(arg1)][idx].field_512
                mem[_105 + 96] = stor3[address(arg1)][idx].field_768
                mem[_105 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_105 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _105
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_119 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_105] = _119
                mem[_105 + 32] = stor3[address(arg1)][idx].field_256
                mem[_105 + 64] = stor3[address(arg1)][idx].field_512
                mem[_105 + 96] = stor3[address(arg1)][idx].field_768
                mem[_105 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_105 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _105
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
            mem[_119 + 32] = stor3[address(arg1)][idx].field_0
            t = _119 + 32
            u = sha3(mem[0])
            while _119 + stor3[address(arg1)][u].field_1 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_105] = _119
            mem[_105 + 32] = stor3[address(arg1)][u].field_256
            mem[_105 + 64] = stor3[address(arg1)][u].field_512
            mem[_105 + 96] = stor3[address(arg1)][u].field_768
            mem[_105 + 128] = stor3[address(arg1)][u].field_1024
            mem[_105 + 160] = bool(stor3[address(arg1)][u].field_1280)
            mem[t] = _105
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _120 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[address(arg1)][idx].field_1) + 32
        mem[_120] = stor3[address(arg1)][idx].field_1
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor3[address(arg1)][idx].field_0):
                mem[_105] = _120
                mem[_105 + 32] = stor3[address(arg1)][idx].field_256
                mem[_105 + 64] = stor3[address(arg1)][idx].field_512
                mem[_105 + 96] = stor3[address(arg1)][idx].field_768
                mem[_105 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_105 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _105
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                mem[_120 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_105] = _120
                mem[_105 + 32] = stor3[address(arg1)][idx].field_256
                mem[_105 + 64] = stor3[address(arg1)][idx].field_512
                mem[_105 + 96] = stor3[address(arg1)][idx].field_768
                mem[_105 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_105 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _105
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
            mem[_120 + 32] = stor3[address(arg1)][idx].field_0
            t = _120 + 32
            u = sha3(mem[0])
            while _120 + (uint255(stor3[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_105] = _120
            mem[_105 + 32] = stor3[address(arg1)][u].field_256
            mem[_105 + 64] = stor3[address(arg1)][u].field_512
            mem[_105 + 96] = stor3[address(arg1)][u].field_768
            mem[_105 + 128] = stor3[address(arg1)][u].field_1024
            mem[_105 + 160] = bool(stor3[address(arg1)][u].field_1280)
            mem[t] = _105
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor3[address(arg1)][idx].field_1:
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_120 + 32] = 256 * stor3[address(arg1)][idx].field_8
            else:
                mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
                mem[_120 + 32] = stor3[address(arg1)][idx].field_0
                t = _120 + 32
                u = sha3(mem[0])
                while _120 + stor3[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_105] = _120
        mem[_105 + 32] = stor3[address(arg1)][idx].field_256
        mem[_105 + 64] = stor3[address(arg1)][idx].field_512
        mem[_105 + 96] = stor3[address(arg1)][idx].field_768
        mem[_105 + 128] = stor3[address(arg1)][idx].field_1024
        mem[_105 + 160] = bool(stor3[address(arg1)][idx].field_1280)
        mem[s] = _105
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[ceil32(ceil32(arg2.length)) + 97]:
        if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
            revert with 0, 50
        if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
            revert with 0, 'CreateNode: Name not available'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[0] = address(arg1)
    mem[32] = 3
    _198 = mem[64]
    mem[64] = mem[64] + 192
    mem[_198] = 96
    mem[_198 + 32] = block.timestamp
    mem[_198 + 64] = block.timestamp
    mem[_198 + 96] = block.timestamp
    mem[_198 + 128] = arg3
    mem[_198 + 160] = 0
    stor3[address(arg1)].field_0++
    if stor3[address(arg1)][stor3[address(arg1)].field_0].field_0:
        if stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 == uint255(stor3[address(arg1)][stor3[address(arg1)].field_0].field_0) * 0.5 < 32:
            revert with 0, 34
        if mem[96]:
            stor3[address(arg1)][stor3[address(arg1)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 = 0
            idx = 0
            while (uint255(stor3[address(arg1)][stor3[address(arg1)].field_0].field_0) * 0.5) + 31 / 32 > idx:
                stor3[address(arg1)][(6 * stor3[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 == stor3[address(arg1)][stor3[address(arg1)].field_0].field_1 < 32:
            revert with 0, 34
        if mem[96]:
            stor3[address(arg1)][stor3[address(arg1)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 = 0
            idx = 0
            while stor3[address(arg1)][stor3[address(arg1)].field_0].field_1 + 31 / 32 > idx:
                stor3[address(arg1)][(6 * stor3[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_256 = block.timestamp
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_512 = block.timestamp
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_768 = block.timestamp
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_1024 = arg3
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_1280 = 0
    return 1
}

function sub_1dd62c5d(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not uint8(stor1[msg.sender]):
        revert with 0, 'Not authorized'
    if stor0:
        revert with 0, 'Pausable: paused'
    if not address(arg1):
        revert with 0, 'MigrateNode: account is not valid'
    if arg3 <= 0:
        revert with 0, 'MigrateNode: amount is not valid'
    if not arg4:
        revert with 0, 'MigrateNode: creationTime is not valid'
    if not arg5:
        revert with 0, 'MigrateNode: lastClaimTime is not valid'
    if not arg6:
        revert with 0, 'MigrateNode: lastCompoundTime is not valid'
    mem[0] = address(arg1)
    mem[32] = 3
    mem[64] = ceil32(ceil32(arg2.length)) + (32 * stor3[address(arg1)].field_0) + 129
    mem[ceil32(ceil32(arg2.length)) + 97] = stor3[address(arg1)].field_0
    s = ceil32(ceil32(arg2.length)) + 129
    idx = 0
    while idx < stor3[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        _105 = mem[64]
        mem[64] = mem[64] + 192
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _119 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor3[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_119] = uint255(stor3[address(arg1)][idx].field_0) * 0.5
            if stor3[address(arg1)][idx].field_0:
                if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                        mem[_119 + 32] = 256 * stor3[address(arg1)][idx].field_8
                    else:
                        mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
                        mem[_119 + 32] = stor3[address(arg1)][idx].field_0
                        t = _119 + 32
                        u = sha3(mem[0])
                        while _119 + (uint255(stor3[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_105] = _119
                mem[_105 + 32] = stor3[address(arg1)][idx].field_256
                mem[_105 + 64] = stor3[address(arg1)][idx].field_512
                mem[_105 + 96] = stor3[address(arg1)][idx].field_768
                mem[_105 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_105 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _105
                s = s + 32
                idx = idx + 1
                continue 
            if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor3[address(arg1)][idx].field_1:
                mem[_105] = _119
                mem[_105 + 32] = stor3[address(arg1)][idx].field_256
                mem[_105 + 64] = stor3[address(arg1)][idx].field_512
                mem[_105 + 96] = stor3[address(arg1)][idx].field_768
                mem[_105 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_105 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _105
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_119 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_105] = _119
                mem[_105 + 32] = stor3[address(arg1)][idx].field_256
                mem[_105 + 64] = stor3[address(arg1)][idx].field_512
                mem[_105 + 96] = stor3[address(arg1)][idx].field_768
                mem[_105 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_105 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _105
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
            mem[_119 + 32] = stor3[address(arg1)][idx].field_0
            t = _119 + 32
            u = sha3(mem[0])
            while _119 + stor3[address(arg1)][u].field_1 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_105] = _119
            mem[_105 + 32] = stor3[address(arg1)][u].field_256
            mem[_105 + 64] = stor3[address(arg1)][u].field_512
            mem[_105 + 96] = stor3[address(arg1)][u].field_768
            mem[_105 + 128] = stor3[address(arg1)][u].field_1024
            mem[_105 + 160] = bool(stor3[address(arg1)][u].field_1280)
            mem[t] = _105
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _120 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[address(arg1)][idx].field_1) + 32
        mem[_120] = stor3[address(arg1)][idx].field_1
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor3[address(arg1)][idx].field_0):
                mem[_105] = _120
                mem[_105 + 32] = stor3[address(arg1)][idx].field_256
                mem[_105 + 64] = stor3[address(arg1)][idx].field_512
                mem[_105 + 96] = stor3[address(arg1)][idx].field_768
                mem[_105 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_105 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _105
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                mem[_120 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_105] = _120
                mem[_105 + 32] = stor3[address(arg1)][idx].field_256
                mem[_105 + 64] = stor3[address(arg1)][idx].field_512
                mem[_105 + 96] = stor3[address(arg1)][idx].field_768
                mem[_105 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_105 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _105
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
            mem[_120 + 32] = stor3[address(arg1)][idx].field_0
            t = _120 + 32
            u = sha3(mem[0])
            while _120 + (uint255(stor3[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_105] = _120
            mem[_105 + 32] = stor3[address(arg1)][u].field_256
            mem[_105 + 64] = stor3[address(arg1)][u].field_512
            mem[_105 + 96] = stor3[address(arg1)][u].field_768
            mem[_105 + 128] = stor3[address(arg1)][u].field_1024
            mem[_105 + 160] = bool(stor3[address(arg1)][u].field_1280)
            mem[t] = _105
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor3[address(arg1)][idx].field_1:
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_120 + 32] = 256 * stor3[address(arg1)][idx].field_8
            else:
                mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
                mem[_120 + 32] = stor3[address(arg1)][idx].field_0
                t = _120 + 32
                u = sha3(mem[0])
                while _120 + stor3[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_105] = _120
        mem[_105 + 32] = stor3[address(arg1)][idx].field_256
        mem[_105 + 64] = stor3[address(arg1)][idx].field_512
        mem[_105 + 96] = stor3[address(arg1)][idx].field_768
        mem[_105 + 128] = stor3[address(arg1)][idx].field_1024
        mem[_105 + 160] = bool(stor3[address(arg1)][idx].field_1280)
        mem[s] = _105
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[ceil32(ceil32(arg2.length)) + 97]:
        if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
            revert with 0, 50
        if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
            revert with 0, 'Migrate: Name not available'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[0] = address(arg1)
    mem[32] = 3
    _198 = mem[64]
    mem[64] = mem[64] + 192
    mem[_198] = 96
    mem[_198 + 32] = arg4
    mem[_198 + 64] = arg5
    mem[_198 + 96] = arg6
    mem[_198 + 128] = arg3
    mem[_198 + 160] = 0
    stor3[address(arg1)].field_0++
    if stor3[address(arg1)][stor3[address(arg1)].field_0].field_0:
        if stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 == uint255(stor3[address(arg1)][stor3[address(arg1)].field_0].field_0) * 0.5 < 32:
            revert with 0, 34
        if mem[96]:
            stor3[address(arg1)][stor3[address(arg1)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 = 0
            idx = 0
            while (uint255(stor3[address(arg1)][stor3[address(arg1)].field_0].field_0) * 0.5) + 31 / 32 > idx:
                stor3[address(arg1)][(6 * stor3[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 == stor3[address(arg1)][stor3[address(arg1)].field_0].field_1 < 32:
            revert with 0, 34
        if mem[96]:
            stor3[address(arg1)][stor3[address(arg1)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 = 0
            idx = 0
            while stor3[address(arg1)][stor3[address(arg1)].field_0].field_1 + 31 / 32 > idx:
                stor3[address(arg1)][(6 * stor3[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_256 = arg4
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_512 = arg5
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_768 = arg6
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_1024 = arg3
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_1280 = 0
    return 1
}

function sub_276d0e20(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 3
    mem[64] = (32 * stor3[address(arg1)].field_0) + 128
    mem[96] = stor3[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor3[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        _60 = mem[64]
        mem[64] = mem[64] + 192
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _65 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor3[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_65] = uint255(stor3[address(arg1)][idx].field_0) * 0.5
            if stor3[address(arg1)][idx].field_0:
                if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                        mem[_65 + 32] = 256 * stor3[address(arg1)][idx].field_8
                    else:
                        mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
                        mem[_65 + 32] = stor3[address(arg1)][idx].field_0
                        t = _65 + 32
                        u = sha3(mem[0])
                        while _65 + (uint255(stor3[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_60] = _65
                mem[_60 + 32] = stor3[address(arg1)][idx].field_256
                mem[_60 + 64] = stor3[address(arg1)][idx].field_512
                mem[_60 + 96] = stor3[address(arg1)][idx].field_768
                mem[_60 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_60 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _60
                s = s + 32
                idx = idx + 1
                continue 
            if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor3[address(arg1)][idx].field_1:
                mem[_60] = _65
                mem[_60 + 32] = stor3[address(arg1)][idx].field_256
                mem[_60 + 64] = stor3[address(arg1)][idx].field_512
                mem[_60 + 96] = stor3[address(arg1)][idx].field_768
                mem[_60 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_60 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _60
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_65 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_60] = _65
                mem[_60 + 32] = stor3[address(arg1)][idx].field_256
                mem[_60 + 64] = stor3[address(arg1)][idx].field_512
                mem[_60 + 96] = stor3[address(arg1)][idx].field_768
                mem[_60 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_60 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _60
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
            mem[_65 + 32] = stor3[address(arg1)][idx].field_0
            t = _65 + 32
            u = sha3(mem[0])
            while _65 + stor3[address(arg1)][u].field_1 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_60] = _65
            mem[_60 + 32] = stor3[address(arg1)][u].field_256
            mem[_60 + 64] = stor3[address(arg1)][u].field_512
            mem[_60 + 96] = stor3[address(arg1)][u].field_768
            mem[_60 + 128] = stor3[address(arg1)][u].field_1024
            mem[_60 + 160] = bool(stor3[address(arg1)][u].field_1280)
            mem[t] = _60
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[address(arg1)][idx].field_1) + 32
        mem[_69] = stor3[address(arg1)][idx].field_1
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor3[address(arg1)][idx].field_0):
                mem[_60] = _69
                mem[_60 + 32] = stor3[address(arg1)][idx].field_256
                mem[_60 + 64] = stor3[address(arg1)][idx].field_512
                mem[_60 + 96] = stor3[address(arg1)][idx].field_768
                mem[_60 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_60 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _60
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                mem[_69 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_60] = _69
                mem[_60 + 32] = stor3[address(arg1)][idx].field_256
                mem[_60 + 64] = stor3[address(arg1)][idx].field_512
                mem[_60 + 96] = stor3[address(arg1)][idx].field_768
                mem[_60 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_60 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _60
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
            mem[_69 + 32] = stor3[address(arg1)][idx].field_0
            t = _69 + 32
            u = sha3(mem[0])
            while _69 + (uint255(stor3[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_60] = _69
            mem[_60 + 32] = stor3[address(arg1)][u].field_256
            mem[_60 + 64] = stor3[address(arg1)][u].field_512
            mem[_60 + 96] = stor3[address(arg1)][u].field_768
            mem[_60 + 128] = stor3[address(arg1)][u].field_1024
            mem[_60 + 160] = bool(stor3[address(arg1)][u].field_1280)
            mem[t] = _60
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor3[address(arg1)][idx].field_1:
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_69 + 32] = 256 * stor3[address(arg1)][idx].field_8
            else:
                mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
                mem[_69 + 32] = stor3[address(arg1)][idx].field_0
                t = _69 + 32
                u = sha3(mem[0])
                while _69 + stor3[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_60] = _69
        mem[_60 + 32] = stor3[address(arg1)][idx].field_256
        mem[_60 + 64] = stor3[address(arg1)][idx].field_512
        mem[_60 + 96] = stor3[address(arg1)][idx].field_768
        mem[_60 + 128] = stor3[address(arg1)][idx].field_1024
        mem[_60 + 160] = bool(stor3[address(arg1)][idx].field_1280)
        mem[s] = _60
        s = s + 32
        idx = idx + 1
        continue 
    _58 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _61 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _58) + 32
    if not _58:
        _113 = mem[96]
        idx = 0
        s = 0
        while idx < _113:
            if idx >= mem[96]:
                revert with 0, 50
            if mem[mem[(32 * idx) + 128] + 160]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s >= mem[_61]:
                revert with 0, 50
            mem[(32 * s) + _61 + 32] = mem[(32 * idx) + 128]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _116 = mem[64]
        mem[mem[64]] = 32
        _119 = mem[_61]
        mem[mem[64] + 32] = mem[_61]
        idx = 0
        s = _61 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _119) + 64
        while idx < _119:
            mem[t] = u + -_116 - 64
            _159 = mem[s]
            _161 = mem[mem[s]]
            mem[u] = 192
            _162 = mem[_161]
            mem[u + 192] = mem[_161]
            v = 0
            while v < _162:
                mem[v + u + 224] = mem[_161 + v + 32]
                v = v + 32
                continue 
            if ceil32(_162) > _162:
                mem[u + _162 + 224] = 0
            mem[u + 32] = mem[_159 + 32]
            mem[u + 64] = mem[_159 + 64]
            mem[u + 96] = mem[_159 + 96]
            mem[u + 128] = mem[_159 + 128]
            mem[u + 160] = bool(mem[_159 + 160])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_162) + u + 224
            continue 
    else:
        mem[64] = _61 + (32 * _58) + 224
        mem[_61 + (32 * _58) + 32] = 96
        mem[_61 + (32 * _58) + 64] = 0
        mem[_61 + (32 * _58) + 96] = 0
        mem[_61 + (32 * _58) + 128] = 0
        mem[_61 + (32 * _58) + 160] = 0
        mem[_61 + (32 * _58) + 192] = 0
        mem[var17001] = _61 + (32 * _58) + 32
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[_61 + (32 * _58) + 32] = 96
            mem[_61 + (32 * _58) + 64] = 0
            mem[_61 + (32 * _58) + 96] = 0
            mem[_61 + (32 * _58) + 128] = 0
            mem[_61 + (32 * _58) + 160] = 0
            mem[_61 + (32 * _58) + 192] = 0
            mem[s + 32] = _61 + (32 * _58) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _196 = mem[96]
        idx = 0
        s = 0
        while idx < _196:
            if idx >= mem[96]:
                revert with 0, 50
            if mem[mem[(32 * idx) + 128] + 160]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s >= mem[_61]:
                revert with 0, 50
            mem[(32 * s) + _61 + 32] = mem[(32 * idx) + 128]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _204 = mem[64]
        mem[mem[64]] = 32
        _212 = mem[_61]
        mem[mem[64] + 32] = mem[_61]
        idx = 0
        s = _61 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _212) + 64
        while idx < _212:
            mem[t] = u + -_204 - 64
            _229 = mem[s]
            _231 = mem[mem[s]]
            mem[u] = 192
            _232 = mem[_231]
            mem[u + 192] = mem[_231]
            v = 0
            while v < _232:
                mem[v + u + 224] = mem[_231 + v + 32]
                v = v + 32
                continue 
            if ceil32(_232) > _232:
                mem[u + _232 + 224] = 0
            mem[u + 32] = mem[_229 + 32]
            mem[u + 64] = mem[_229 + 64]
            mem[u + 96] = mem[_229 + 96]
            mem[u + 128] = mem[_229 + 128]
            mem[u + 160] = bool(mem[_229 + 160])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_232) + u + 224
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_a9194e7f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 3
    mem[64] = (32 * stor3[address(arg1)].field_0) + 128
    mem[96] = stor3[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor3[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        _64 = mem[64]
        mem[64] = mem[64] + 192
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor3[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_69] = uint255(stor3[address(arg1)][idx].field_0) * 0.5
            if stor3[address(arg1)][idx].field_0:
                if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                        mem[_69 + 32] = 256 * stor3[address(arg1)][idx].field_8
                    else:
                        mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
                        mem[_69 + 32] = stor3[address(arg1)][idx].field_0
                        t = _69 + 32
                        u = sha3(mem[0])
                        while _69 + (uint255(stor3[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_64] = _69
                mem[_64 + 32] = stor3[address(arg1)][idx].field_256
                mem[_64 + 64] = stor3[address(arg1)][idx].field_512
                mem[_64 + 96] = stor3[address(arg1)][idx].field_768
                mem[_64 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_64 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _64
                s = s + 32
                idx = idx + 1
                continue 
            if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor3[address(arg1)][idx].field_1:
                mem[_64] = _69
                mem[_64 + 32] = stor3[address(arg1)][idx].field_256
                mem[_64 + 64] = stor3[address(arg1)][idx].field_512
                mem[_64 + 96] = stor3[address(arg1)][idx].field_768
                mem[_64 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_64 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _64
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_69 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_64] = _69
                mem[_64 + 32] = stor3[address(arg1)][idx].field_256
                mem[_64 + 64] = stor3[address(arg1)][idx].field_512
                mem[_64 + 96] = stor3[address(arg1)][idx].field_768
                mem[_64 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_64 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _64
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
            mem[_69 + 32] = stor3[address(arg1)][idx].field_0
            t = _69 + 32
            u = sha3(mem[0])
            while _69 + stor3[address(arg1)][u].field_1 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_64] = _69
            mem[_64 + 32] = stor3[address(arg1)][u].field_256
            mem[_64 + 64] = stor3[address(arg1)][u].field_512
            mem[_64 + 96] = stor3[address(arg1)][u].field_768
            mem[_64 + 128] = stor3[address(arg1)][u].field_1024
            mem[_64 + 160] = bool(stor3[address(arg1)][u].field_1280)
            mem[t] = _64
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[address(arg1)][idx].field_1) + 32
        mem[_73] = stor3[address(arg1)][idx].field_1
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor3[address(arg1)][idx].field_0):
                mem[_64] = _73
                mem[_64 + 32] = stor3[address(arg1)][idx].field_256
                mem[_64 + 64] = stor3[address(arg1)][idx].field_512
                mem[_64 + 96] = stor3[address(arg1)][idx].field_768
                mem[_64 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_64 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _64
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                mem[_73 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_64] = _73
                mem[_64 + 32] = stor3[address(arg1)][idx].field_256
                mem[_64 + 64] = stor3[address(arg1)][idx].field_512
                mem[_64 + 96] = stor3[address(arg1)][idx].field_768
                mem[_64 + 128] = stor3[address(arg1)][idx].field_1024
                mem[_64 + 160] = bool(stor3[address(arg1)][idx].field_1280)
                mem[s] = _64
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
            mem[_73 + 32] = stor3[address(arg1)][idx].field_0
            t = _73 + 32
            u = sha3(mem[0])
            while _73 + (uint255(stor3[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_64] = _73
            mem[_64 + 32] = stor3[address(arg1)][u].field_256
            mem[_64 + 64] = stor3[address(arg1)][u].field_512
            mem[_64 + 96] = stor3[address(arg1)][u].field_768
            mem[_64 + 128] = stor3[address(arg1)][u].field_1024
            mem[_64 + 160] = bool(stor3[address(arg1)][u].field_1280)
            mem[t] = _64
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor3[address(arg1)][idx].field_1:
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_73 + 32] = 256 * stor3[address(arg1)][idx].field_8
            else:
                mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3))
                mem[_73 + 32] = stor3[address(arg1)][idx].field_0
                t = _73 + 32
                u = sha3(mem[0])
                while _73 + stor3[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_64] = _73
        mem[_64 + 32] = stor3[address(arg1)][idx].field_256
        mem[_64 + 64] = stor3[address(arg1)][idx].field_512
        mem[_64 + 96] = stor3[address(arg1)][idx].field_768
        mem[_64 + 128] = stor3[address(arg1)][idx].field_1024
        mem[_64 + 160] = bool(stor3[address(arg1)][idx].field_1280)
        mem[s] = _64
        s = s + 32
        idx = idx + 1
        continue 
    _62 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _65 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _62) + 32
    if not _62:
        _121 = mem[96]
        idx = 0
        s = 0
        while idx < _121:
            if idx >= mem[96]:
                revert with 0, 50
            if not mem[mem[(32 * idx) + 128] + 160]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            if s >= mem[_65]:
                revert with 0, 50
            mem[(32 * s) + _65 + 32] = mem[(32 * idx) + 128]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _124 = mem[64]
        mem[mem[64]] = 32
        _127 = mem[_65]
        mem[mem[64] + 32] = mem[_65]
        idx = 0
        s = _65 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _127) + 64
        while idx < _127:
            mem[t] = u + -_124 - 64
            _171 = mem[s]
            _173 = mem[mem[s]]
            mem[u] = 192
            _174 = mem[_173]
            mem[u + 192] = mem[_173]
            v = 0
            while v < _174:
                mem[v + u + 224] = mem[_173 + v + 32]
                v = v + 32
                continue 
            if ceil32(_174) > _174:
                mem[u + _174 + 224] = 0
            mem[u + 32] = mem[_171 + 32]
            mem[u + 64] = mem[_171 + 64]
            mem[u + 96] = mem[_171 + 96]
            mem[u + 128] = mem[_171 + 128]
            mem[u + 160] = bool(mem[_171 + 160])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_174) + u + 224
            continue 
    else:
        mem[64] = _65 + (32 * _62) + 224
        mem[_65 + (32 * _62) + 32] = 96
        mem[_65 + (32 * _62) + 64] = 0
        mem[_65 + (32 * _62) + 96] = 0
        mem[_65 + (32 * _62) + 128] = 0
        mem[_65 + (32 * _62) + 160] = 0
        mem[_65 + (32 * _62) + 192] = 0
        mem[var17001] = _65 + (32 * _62) + 32
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[_65 + (32 * _62) + 32] = 96
            mem[_65 + (32 * _62) + 64] = 0
            mem[_65 + (32 * _62) + 96] = 0
            mem[_65 + (32 * _62) + 128] = 0
            mem[_65 + (32 * _62) + 160] = 0
            mem[_65 + (32 * _62) + 192] = 0
            mem[s + 32] = _65 + (32 * _62) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _210 = mem[96]
        idx = 0
        s = 0
        while idx < _210:
            if idx >= mem[96]:
                revert with 0, 50
            if not mem[mem[(32 * idx) + 128] + 160]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            if s >= mem[_65]:
                revert with 0, 50
            mem[(32 * s) + _65 + 32] = mem[(32 * idx) + 128]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _218 = mem[64]
        mem[mem[64]] = 32
        _226 = mem[_65]
        mem[mem[64] + 32] = mem[_65]
        idx = 0
        s = _65 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _226) + 64
        while idx < _226:
            mem[t] = u + -_218 - 64
            _245 = mem[s]
            _247 = mem[mem[s]]
            mem[u] = 192
            _248 = mem[_247]
            mem[u + 192] = mem[_247]
            v = 0
            while v < _248:
                mem[v + u + 224] = mem[_247 + v + 32]
                v = v + 32
                continue 
            if ceil32(_248) > _248:
                mem[u + _248 + 224] = 0
            mem[u + 32] = mem[_245 + 32]
            mem[u + 64] = mem[_245 + 64]
            mem[u + 96] = mem[_245 + 96]
            mem[u + 128] = mem[_245 + 128]
            mem[u + 160] = bool(mem[_245 + 160])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_248) + u + 224
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
