contract main {




// =====================  Runtime code  =====================


#
#  - _cashoutNodeReward(address arg1, uint256 arg2)
#  - _getRewardAmountOf(address arg1, uint256 arg2)
#
array of struct _getNodeNumberOf;
array of struct sub_385c95f4;
address gateKeeperAddress;
address tokenAddress;
uint256 totalNodesCreated;
uint256 totalRewardStaked;
uint256 sub_f90f0eaa;

function isNodeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint256(_getNodeNumberOf[address(arg1)].field_0))
}

function sub_385c95f4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return uint256(sub_385c95f4[arg1 << 248].field_256)
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(_getNodeNumberOf[address(arg1)].field_0)
}

function gateKeeper() payable {
    return gateKeeperAddress
}

function totalRewardStaked() payable {
    return totalRewardStaked
}

function sub_a4d0d5ea(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return uint256(sub_385c95f4[arg1 << 248].field_0)
}

function totalNodesCreated() payable {
    return totalNodesCreated
}

function sub_f90f0eaa(?) payable {
    return sub_f90f0eaa
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_c76c77a1(?) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    sub_f90f0eaa = arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    tokenAddress = arg1
}

function setTier(uint8 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    uint256(sub_385c95f4[arg1 << 248].field_0) = arg3
    uint256(sub_385c95f4[arg1 << 248].field_256) = arg2
}

function sub_d100c451(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint256(_getNodeNumberOf[address(arg1)].field_0):
        revert with 0, 'GET CREATIME: NO NODE OWNER'
    mem[0] = address(arg1)
    mem[32] = 0
    mem[64] = (32 * uint256(_getNodeNumberOf[address(arg1)].field_0)) + 128
    mem[96] = uint256(_getNodeNumberOf[address(arg1)].field_0)
    s = 128
    idx = 0
    while idx < uint256(_getNodeNumberOf[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 0)
        _36 = mem[64]
        mem[64] = mem[64] + 128
        mem[_36] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
        mem[_36 + 32] = uint32(_getNodeNumberOf[address(arg1)][idx].field_8)
        mem[_36 + 64] = uint32(_getNodeNumberOf[address(arg1)][idx].field_40)
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                revert with 0, 34
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) + 32
            mem[_41] = uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                    if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                        mem[_41 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                    else:
                        mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                        mem[_41 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                        t = _41 + 32
                        u = sha3(mem[0])
                        while _41 + (uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) > t:
                            mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_36 + 96] = _41
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                revert with 0, 34
            if not _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                mem[_36 + 96] = _41
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                mem[_41 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                mem[_36 + 96] = _41
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
            mem[_41 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
            t = _41 + 32
            u = sha3(mem[0])
            while _41 + _getNodeNumberOf[address(arg1)][u].field_257 % 128 > t:
                mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                t = t + 32
                u = u + 1
                continue 
            mem[_36 + 96] = _41
            mem[t] = _36
            t = t + 32
            u = u + 1
            continue 
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
            revert with 0, 34
        _47 = mem[64]
        mem[64] = mem[64] + ceil32(_getNodeNumberOf[address(arg1)][idx].field_257 % 128) + 32
        mem[_47] = _getNodeNumberOf[address(arg1)][idx].field_257 % 128
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                mem[_36 + 96] = _47
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                mem[_47 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                mem[_36 + 96] = _47
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
            mem[_47 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
            t = _47 + 32
            u = sha3(mem[0])
            while _47 + (uint255(uint256(_getNodeNumberOf[address(arg1)][u].field_256)) * 0.5) > t:
                mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                t = t + 32
                u = u + 1
                continue 
            mem[_36 + 96] = _47
            mem[t] = _36
            t = t + 32
            u = u + 1
            continue 
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
            revert with 0, 34
        if _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                mem[_47 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
            else:
                mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                mem[_47 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                t = _47 + 32
                u = sha3(mem[0])
                while _47 + _getNodeNumberOf[address(arg1)][idx].field_257 % 128 > t:
                    mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_36 + 96] = _47
        mem[s] = _36
        s = s + 32
        idx = idx + 1
        continue 
    _34 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _37 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _34) + 32
    if not _34:
        _62 = mem[96]
        idx = 0
        while idx < _62:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_37]:
                revert with 0, 50
            mem[(32 * idx) + _37 + 32] = mem[mem[(32 * idx) + 128] + 60 len 4]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _74 = mem[_37]
        mem[mem[64] + 32] = mem[_37]
        s = 0
        s = mem[64] + 64
        t = _37 + 32
        while _62 < _74:
            mem[s] = mem[t]
            s = _62 + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[_37 + 32 len 32 * _34] = call.data[calldata.size len 32 * _34]
        _63 = mem[96]
        idx = 0
        while idx < _63:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_37]:
                revert with 0, 50
            mem[(32 * idx) + _37 + 32] = mem[mem[(32 * idx) + 128] + 60 len 4]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _75 = mem[_37]
        mem[mem[64] + 32] = mem[_37]
        s = 0
        s = mem[64] + 64
        t = _37 + 32
        while _63 < _75:
            mem[s] = mem[t]
            s = _63 + 1
            s = s + 32
            t = t + 32
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_9f4d248e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint256(_getNodeNumberOf[address(arg1)].field_0):
        revert with 0, 'GET Tiers: NO NODE OWNER'
    mem[0] = address(arg1)
    mem[32] = 0
    mem[64] = (32 * uint256(_getNodeNumberOf[address(arg1)].field_0)) + 128
    mem[96] = uint256(_getNodeNumberOf[address(arg1)].field_0)
    s = 128
    idx = 0
    while idx < uint256(_getNodeNumberOf[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 0)
        _36 = mem[64]
        mem[64] = mem[64] + 128
        mem[_36] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
        mem[_36 + 32] = uint32(_getNodeNumberOf[address(arg1)][idx].field_8)
        mem[_36 + 64] = uint32(_getNodeNumberOf[address(arg1)][idx].field_40)
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                revert with 0, 34
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) + 32
            mem[_41] = uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                    if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                        mem[_41 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                    else:
                        mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                        mem[_41 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                        t = _41 + 32
                        u = sha3(mem[0])
                        while _41 + (uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) > t:
                            mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_36 + 96] = _41
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                revert with 0, 34
            if not _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                mem[_36 + 96] = _41
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                mem[_41 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                mem[_36 + 96] = _41
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
            mem[_41 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
            t = _41 + 32
            u = sha3(mem[0])
            while _41 + _getNodeNumberOf[address(arg1)][u].field_257 % 128 > t:
                mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                t = t + 32
                u = u + 1
                continue 
            mem[_36 + 96] = _41
            mem[t] = _36
            t = t + 32
            u = u + 1
            continue 
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
            revert with 0, 34
        _47 = mem[64]
        mem[64] = mem[64] + ceil32(_getNodeNumberOf[address(arg1)][idx].field_257 % 128) + 32
        mem[_47] = _getNodeNumberOf[address(arg1)][idx].field_257 % 128
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                mem[_36 + 96] = _47
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                mem[_47 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                mem[_36 + 96] = _47
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
            mem[_47 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
            t = _47 + 32
            u = sha3(mem[0])
            while _47 + (uint255(uint256(_getNodeNumberOf[address(arg1)][u].field_256)) * 0.5) > t:
                mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                t = t + 32
                u = u + 1
                continue 
            mem[_36 + 96] = _47
            mem[t] = _36
            t = t + 32
            u = u + 1
            continue 
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
            revert with 0, 34
        if _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                mem[_47 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
            else:
                mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                mem[_47 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                t = _47 + 32
                u = sha3(mem[0])
                while _47 + _getNodeNumberOf[address(arg1)][idx].field_257 % 128 > t:
                    mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_36 + 96] = _47
        mem[s] = _36
        s = s + 32
        idx = idx + 1
        continue 
    _34 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _37 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _34) + 32
    if not _34:
        _62 = mem[96]
        idx = 0
        while idx < _62:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_37]:
                revert with 0, 50
            mem[(32 * idx) + _37 + 32] = mem[mem[(32 * idx) + 128] + 31 len 1]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _74 = mem[_37]
        mem[mem[64] + 32] = mem[_37]
        s = 0
        s = mem[64] + 64
        t = _37 + 32
        while _62 < _74:
            mem[s] = mem[t + 31 len 1]
            s = _62 + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[_37 + 32 len 32 * _34] = call.data[calldata.size len 32 * _34]
        _63 = mem[96]
        idx = 0
        while idx < _63:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_37]:
                revert with 0, 50
            mem[(32 * idx) + _37 + 32] = mem[mem[(32 * idx) + 128] + 31 len 1]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _75 = mem[_37]
        mem[mem[64] + 32] = mem[_37]
        s = 0
        s = mem[64] + 64
        t = _37 + 32
        while _63 < _75:
            mem[s] = mem[t + 31 len 1]
            s = _63 + 1
            s = s + 32
            t = t + 32
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_89fef769(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint256(_getNodeNumberOf[address(arg1)].field_0):
        revert with 0, 'GET REWARD: NO NODE OWNER'
    mem[0] = address(arg1)
    mem[32] = 0
    mem[64] = (32 * uint256(_getNodeNumberOf[address(arg1)].field_0)) + 128
    mem[96] = uint256(_getNodeNumberOf[address(arg1)].field_0)
    s = 128
    idx = 0
    while idx < uint256(_getNodeNumberOf[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 0)
        _40 = mem[64]
        mem[64] = mem[64] + 128
        mem[_40] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
        mem[_40 + 32] = uint32(_getNodeNumberOf[address(arg1)][idx].field_8)
        mem[_40 + 64] = uint32(_getNodeNumberOf[address(arg1)][idx].field_40)
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                revert with 0, 34
            _44 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) + 32
            mem[_44] = uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                    if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                        mem[_44 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                    else:
                        mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                        mem[_44 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                        t = _44 + 32
                        u = sha3(mem[0])
                        while _44 + (uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) > t:
                            mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_40 + 96] = _44
                mem[s] = _40
                s = s + 32
                idx = idx + 1
                continue 
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                revert with 0, 34
            if not _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                mem[_40 + 96] = _44
                mem[s] = _40
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                mem[_44 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                mem[_40 + 96] = _44
                mem[s] = _40
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
            mem[_44 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
            t = _44 + 32
            u = sha3(mem[0])
            while _44 + _getNodeNumberOf[address(arg1)][u].field_257 % 128 > t:
                mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                t = t + 32
                u = u + 1
                continue 
            mem[_40 + 96] = _44
            mem[t] = _40
            t = t + 32
            u = u + 1
            continue 
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
            revert with 0, 34
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(_getNodeNumberOf[address(arg1)][idx].field_257 % 128) + 32
        mem[_49] = _getNodeNumberOf[address(arg1)][idx].field_257 % 128
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                mem[_40 + 96] = _49
                mem[s] = _40
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                mem[_49 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                mem[_40 + 96] = _49
                mem[s] = _40
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
            mem[_49 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
            t = _49 + 32
            u = sha3(mem[0])
            while _49 + (uint255(uint256(_getNodeNumberOf[address(arg1)][u].field_256)) * 0.5) > t:
                mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                t = t + 32
                u = u + 1
                continue 
            mem[_40 + 96] = _49
            mem[t] = _40
            t = t + 32
            u = u + 1
            continue 
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
            revert with 0, 34
        if _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                mem[_49 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
            else:
                mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                mem[_49 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                t = _49 + 32
                u = sha3(mem[0])
                while _49 + _getNodeNumberOf[address(arg1)][idx].field_257 % 128 > t:
                    mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_40 + 96] = _49
        mem[s] = _40
        s = s + 32
        idx = idx + 1
        continue 
    _38 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _41 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _38) + 32
    if not _38:
        _70 = mem[96]
        idx = 0
        while idx < _70:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_41]:
                revert with 0, 50
            mem[(32 * idx) + _41 + 32] = mem[mem[(32 * idx) + 128] + 96]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _72 = mem[64]
        mem[mem[64]] = 32
        _76 = mem[_41]
        mem[mem[64] + 32] = mem[_41]
        idx = 0
        s = _41 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _76) + 64
        while idx < _76:
            mem[t] = u + -_72 - 64
            _93 = mem[s]
            _96 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _96:
                mem[v + u + 32] = mem[v + _93 + 32]
                v = v + 32
                continue 
            if ceil32(_96) > _96:
                mem[u + _96 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_96) + u + 32
            continue 
    else:
        mem[_41 + 32] = 96
        s = _41 + 32
        idx = _38
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _92 = mem[96]
        idx = 0
        while idx < _92:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_41]:
                revert with 0, 50
            mem[(32 * idx) + _41 + 32] = mem[mem[(32 * idx) + 128] + 96]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _97 = mem[64]
        mem[mem[64]] = 32
        _101 = mem[_41]
        mem[mem[64] + 32] = mem[_41]
        idx = 0
        s = _41 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _101) + 64
        while idx < _101:
            mem[t] = u + -_97 - 64
            _108 = mem[s]
            _110 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _110:
                mem[v + u + 32] = mem[v + _108 + 32]
                v = v + 32
                continue 
            if ceil32(_110) > _110:
                mem[u + _110 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_110) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_519f6a4d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint256(_getNodeNumberOf[address(arg1)].field_0):
        revert with 0, 'GET REWARD: NO NODE OWNER'
    mem[0] = address(arg1)
    mem[32] = 0
    mem[64] = (32 * uint256(_getNodeNumberOf[address(arg1)].field_0)) + 128
    mem[96] = uint256(_getNodeNumberOf[address(arg1)].field_0)
    s = 128
    idx = 0
    while idx < uint256(_getNodeNumberOf[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 0)
        _58 = mem[64]
        mem[64] = mem[64] + 128
        mem[_58] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
        mem[_58 + 32] = uint32(_getNodeNumberOf[address(arg1)][idx].field_8)
        mem[_58 + 64] = uint32(_getNodeNumberOf[address(arg1)][idx].field_40)
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                revert with 0, 34
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) + 32
            mem[_63] = uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                    if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                        mem[_63 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                    else:
                        mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                        mem[_63 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                        t = _63 + 32
                        u = sha3(mem[0])
                        while _63 + (uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) > t:
                            mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_58 + 96] = _63
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                revert with 0, 34
            if not _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                mem[_58 + 96] = _63
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                mem[_63 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                mem[_58 + 96] = _63
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
            mem[_63 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
            t = _63 + 32
            u = sha3(mem[0])
            while _63 + _getNodeNumberOf[address(arg1)][u].field_257 % 128 > t:
                mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                t = t + 32
                u = u + 1
                continue 
            mem[_58 + 96] = _63
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
            revert with 0, 34
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(_getNodeNumberOf[address(arg1)][idx].field_257 % 128) + 32
        mem[_67] = _getNodeNumberOf[address(arg1)][idx].field_257 % 128
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                mem[_58 + 96] = _67
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                mem[_67 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                mem[_58 + 96] = _67
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
            mem[_67 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
            t = _67 + 32
            u = sha3(mem[0])
            while _67 + (uint255(uint256(_getNodeNumberOf[address(arg1)][u].field_256)) * 0.5) > t:
                mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                t = t + 32
                u = u + 1
                continue 
            mem[_58 + 96] = _67
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
            revert with 0, 34
        if _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                mem[_67 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
            else:
                mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                mem[_67 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                t = _67 + 32
                u = sha3(mem[0])
                while _67 + _getNodeNumberOf[address(arg1)][idx].field_257 % 128 > t:
                    mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_58 + 96] = _67
        mem[s] = _58
        s = s + 32
        idx = idx + 1
        continue 
    _56 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _59 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _56) + 32
    if not _56:
        _106 = mem[96]
        idx = 0
        while idx < _106:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[mem[(32 * idx) + 128] + 31 len 1]
            mem[32] = 1
            _116 = sha3(mem[0], 1)
            _117 = mem[mem[(32 * idx) + 128] + 64]
            _122 = mem[64]
            mem[64] = mem[64] + 64
            mem[_122] = 30
            mem[_122 + 32] = 'SafeMath: subtraction overflow'
            if uint32(_117) > block.timestamp:
                _127 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _127 + 68] = mem[idx + _122 + 32]
                    idx = idx + 32
                    continue 
                mem[_127 + 98] = 0
                revert with memory
                  from mem[64]
                   len _127 + -mem[64] + 100
            if block.timestamp < uint32(_117):
                revert with 0, 17
            if not block.timestamp - uint32(_117):
                if idx >= mem[_59]:
                    revert with 0, 50
                mem[(32 * idx) + _59 + 32] = 0
            else:
                if block.timestamp - uint32(_117) and uint256(stor[_116].field_0) > -1 / block.timestamp - uint32(_117):
                    revert with 0, 17
                if not block.timestamp - uint32(_117):
                    revert with 0, 18
                if (block.timestamp * uint256(stor[_116].field_0)) - (uint32(_117) * uint256(stor[_116].field_0)) / block.timestamp - uint32(_117) != uint256(stor[_116].field_0):
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx >= mem[_59]:
                    revert with 0, 50
                mem[(32 * idx) + _59 + 32] = (block.timestamp * uint256(stor[_116].field_0)) - (uint32(_117) * uint256(stor[_116].field_0))
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _114 = mem[_59]
        mem[mem[64] + 32] = mem[_59]
        mem[mem[64] + 64 len 32 * _114] = mem[_59 + 32 len 32 * _114]
        return 32, mem[mem[64] + 32 len (32 * _114) + 32]
    mem[_59 + 32 len 32 * _56] = call.data[calldata.size len 32 * _56]
    _107 = mem[96]
    idx = 0
    while idx < _107:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[mem[(32 * idx) + 128] + 31 len 1]
        mem[32] = 1
        _120 = sha3(mem[0], 1)
        _121 = mem[mem[(32 * idx) + 128] + 64]
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 30
        mem[_123 + 32] = 'SafeMath: subtraction overflow'
        if uint32(_121) > block.timestamp:
            _129 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _129 + 68] = mem[idx + _123 + 32]
                idx = idx + 32
                continue 
            mem[_129 + 98] = 0
            revert with memory
              from mem[64]
               len _129 + -mem[64] + 100
        if block.timestamp < uint32(_121):
            revert with 0, 17
        if not block.timestamp - uint32(_121):
            if idx >= mem[_59]:
                revert with 0, 50
            mem[(32 * idx) + _59 + 32] = 0
        else:
            if block.timestamp - uint32(_121) and uint256(stor[_120].field_0) > -1 / block.timestamp - uint32(_121):
                revert with 0, 17
            if not block.timestamp - uint32(_121):
                revert with 0, 18
            if (block.timestamp * uint256(stor[_120].field_0)) - (uint32(_121) * uint256(stor[_120].field_0)) / block.timestamp - uint32(_121) != uint256(stor[_120].field_0):
                revert with 0, 'SafeMath: multiplication overflow'
            if idx >= mem[_59]:
                revert with 0, 50
            mem[(32 * idx) + _59 + 32] = (block.timestamp * uint256(stor[_120].field_0)) - (uint32(_121) * uint256(stor[_120].field_0))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _118 = mem[_59]
    mem[mem[64] + 32] = mem[_59]
    mem[mem[64] + 64 len 32 * _118] = mem[_59 + 32 len 32 * _118]
    return 32, mem[mem[64] + 32 len (32 * _118) + 32]
}

function sub_7efa2565(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] <= test266151307()
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _138 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1
        mem[_138] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_138 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_138 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _138
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    _139 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 100).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 100).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 100).length) + 1
    mem[_139] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = _139 + 32
    while idx < ('cd', 100).length:
        require cd[s] == uint32(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    _205 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 132).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 132).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 132).length) + 1
    mem[_205] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = _205 + 32
    while idx < ('cd', 132).length:
        require cd[s] == uint32(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == tokenAddress:
        if mem[96] != mem[_139]:
            revert with 0, 'Invalid lengths'
        if mem[_139] != ('cd', 132).length:
            revert with 0, 'Invalid lengths'
        _281 = mem[96]
        idx = 0
        while idx < _281:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            _337 = sha3(mem[(32 * idx) + 140 len 20], 0)
            _338 = mem[64]
            mem[64] = mem[64] + 128
            mem[_338] = uint8(cd[4])
            if idx >= mem[_139]:
                revert with 0, 50
            mem[_338 + 32] = mem[(32 * idx) + _139 + 60 len 4]
            if idx >= mem[_205]:
                revert with 0, 50
            mem[_338 + 64] = mem[(32 * idx) + _205 + 60 len 4]
            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            mem[_338 + 96] = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
            uint256(stor[_337].field_0)++
            mem[0] = _337
            uint8(stor[(2 * uint256(stor[_337].field_0)) + sha3(_337)].field_0) = uint8(cd[4])
            uint32(stor[(2 * uint256(stor[_337].field_0)) + sha3(_337)].field_8) = mem[_338 + 60 len 4]
            uint32(stor[(2 * uint256(stor[_337].field_0)) + sha3(_337)].field_40) = mem[_338 + 92 len 4]
            _357 = mem[_338 + 96]
            _358 = mem[mem[_338 + 96]]
            if bool(stor[(2 * uint256(stor[_337].field_0)) + sha3(_337) + 1].field_0):
                if bool(stor[(2 * uint256(stor[_337].field_0)) + sha3(_337) + 1].field_0) == uint255(uint256(stor[(2 * uint256(stor[_337].field_0)) + sha3(_337) + 1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = (2 * uint256(stor[_337].field_0)) + sha3(_337) + 1
                if not _358:
                    uint256(stor[(2 * uint256(stor[_337].field_0)) + sha3(_337) + 1].field_0) = 0
                    s = sha3((2 * uint256(stor[_337].field_0)) + sha3(_337) + 1)
                    while sha3((2 * uint256(stor[_337].field_0)) + sha3(_337) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_337].field_0)) + sha3(_337) + 1].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                else:
                    uint256(stor[(2 * uint256(stor[_337].field_0)) + sha3(_337) + 1].field_0) = (2 * _358) + 1
                    t = sha3((2 * uint256(stor[_337].field_0)) + sha3(_337) + 1)
                    s = _357 + 32
                    while _357 + _358 + 32 > s:
                        uint256(stor[t].field_0) = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((2 * uint256(stor[_337].field_0)) + sha3(_337) + 1) + (Mask(251, 0, _358 + 31) >> 5)
                    while sha3((2 * uint256(stor[_337].field_0)) + sha3(_337) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_337].field_0)) + sha3(_337) + 1].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if bool(stor[(2 * uint256(stor[_337].field_0)) + sha3(_337) + 1].field_0) == stor[(2 * uint256(stor[_337].field_0)) + sha3(_337) + 1].field_1 % 128 < 32:
                revert with 0, 34
            mem[0] = (2 * uint256(stor[_337].field_0)) + sha3(_337) + 1
            if not _358:
                uint256(stor[(2 * uint256(stor[_337].field_0)) + sha3(_337) + 1].field_0) = 0
                s = sha3((2 * uint256(stor[_337].field_0)) + sha3(_337) + 1)
                while sha3((2 * uint256(stor[_337].field_0)) + sha3(_337) + 1) + (stor[(2 * uint256(stor[_337].field_0)) + sha3(_337) + 1].field_1 % 128 + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            uint256(stor[(2 * uint256(stor[_337].field_0)) + sha3(_337) + 1].field_0) = (2 * _358) + 1
            t = sha3((2 * uint256(stor[_337].field_0)) + sha3(_337) + 1)
            s = _357 + 32
            while _357 + _358 + 32 > s:
                uint256(stor[t].field_0) = mem[s]
                t = t + 1
                s = s + 32
                continue 
            s = sha3((2 * uint256(stor[_337].field_0)) + sha3(_337) + 1) + (Mask(251, 0, _358 + 31) >> 5)
            while sha3((2 * uint256(stor[_337].field_0)) + sha3(_337) + 1) + (stor[(2 * uint256(stor[_337].field_0)) + sha3(_337) + 1].field_1 % 128 + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            if sha3((2 * uint256(stor[_337].field_0)) + sha3(_337) + 1) + (stor[(2 * uint256(stor[_337].field_0)) + sha3(_337) + 1].field_1 % 128 + 31 / 32) == -1:
                revert with 0, 17
            s = sha3((2 * uint256(stor[_337].field_0)) + sha3(_337) + 1) + (stor[(2 * uint256(stor[_337].field_0)) + sha3(_337) + 1].field_1 % 128 + 31 / 32) + 1
            continue 
        if totalNodesCreated > !_281:
            revert with 0, 17
        totalNodesCreated += _281
    else:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
        if mem[96] != mem[_139]:
            revert with 0, 'Invalid lengths'
        if mem[_139] != ('cd', 132).length:
            revert with 0, 'Invalid lengths'
        _287 = mem[96]
        idx = 0
        while idx < _287:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            _341 = sha3(mem[(32 * idx) + 140 len 20], 0)
            _342 = mem[64]
            mem[64] = mem[64] + 128
            mem[_342] = uint8(cd[4])
            if idx >= mem[_139]:
                revert with 0, 50
            mem[_342 + 32] = mem[(32 * idx) + _139 + 60 len 4]
            if idx >= mem[_205]:
                revert with 0, 50
            mem[_342 + 64] = mem[(32 * idx) + _205 + 60 len 4]
            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            mem[_342 + 96] = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
            uint256(stor[_341].field_0)++
            mem[0] = _341
            uint8(stor[(2 * uint256(stor[_341].field_0)) + sha3(_341)].field_0) = uint8(cd[4])
            uint32(stor[(2 * uint256(stor[_341].field_0)) + sha3(_341)].field_8) = mem[_342 + 60 len 4]
            uint32(stor[(2 * uint256(stor[_341].field_0)) + sha3(_341)].field_40) = mem[_342 + 92 len 4]
            _364 = mem[_342 + 96]
            _365 = mem[mem[_342 + 96]]
            if bool(stor[(2 * uint256(stor[_341].field_0)) + sha3(_341) + 1].field_0):
                if bool(stor[(2 * uint256(stor[_341].field_0)) + sha3(_341) + 1].field_0) == uint255(uint256(stor[(2 * uint256(stor[_341].field_0)) + sha3(_341) + 1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = (2 * uint256(stor[_341].field_0)) + sha3(_341) + 1
                if not _365:
                    uint256(stor[(2 * uint256(stor[_341].field_0)) + sha3(_341) + 1].field_0) = 0
                    s = sha3((2 * uint256(stor[_341].field_0)) + sha3(_341) + 1)
                    while sha3((2 * uint256(stor[_341].field_0)) + sha3(_341) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_341].field_0)) + sha3(_341) + 1].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                else:
                    uint256(stor[(2 * uint256(stor[_341].field_0)) + sha3(_341) + 1].field_0) = (2 * _365) + 1
                    t = sha3((2 * uint256(stor[_341].field_0)) + sha3(_341) + 1)
                    s = _364 + 32
                    while _364 + _365 + 32 > s:
                        uint256(stor[t].field_0) = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((2 * uint256(stor[_341].field_0)) + sha3(_341) + 1) + (Mask(251, 0, _365 + 31) >> 5)
                    while sha3((2 * uint256(stor[_341].field_0)) + sha3(_341) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_341].field_0)) + sha3(_341) + 1].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if bool(stor[(2 * uint256(stor[_341].field_0)) + sha3(_341) + 1].field_0) == stor[(2 * uint256(stor[_341].field_0)) + sha3(_341) + 1].field_1 % 128 < 32:
                revert with 0, 34
            mem[0] = (2 * uint256(stor[_341].field_0)) + sha3(_341) + 1
            if not _365:
                uint256(stor[(2 * uint256(stor[_341].field_0)) + sha3(_341) + 1].field_0) = 0
                s = sha3((2 * uint256(stor[_341].field_0)) + sha3(_341) + 1)
                while sha3((2 * uint256(stor[_341].field_0)) + sha3(_341) + 1) + (stor[(2 * uint256(stor[_341].field_0)) + sha3(_341) + 1].field_1 % 128 + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            uint256(stor[(2 * uint256(stor[_341].field_0)) + sha3(_341) + 1].field_0) = (2 * _365) + 1
            t = sha3((2 * uint256(stor[_341].field_0)) + sha3(_341) + 1)
            s = _364 + 32
            while _364 + _365 + 32 > s:
                uint256(stor[t].field_0) = mem[s]
                t = t + 1
                s = s + 32
                continue 
            s = sha3((2 * uint256(stor[_341].field_0)) + sha3(_341) + 1) + (Mask(251, 0, _365 + 31) >> 5)
            while sha3((2 * uint256(stor[_341].field_0)) + sha3(_341) + 1) + (stor[(2 * uint256(stor[_341].field_0)) + sha3(_341) + 1].field_1 % 128 + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            if sha3((2 * uint256(stor[_341].field_0)) + sha3(_341) + 1) + (stor[(2 * uint256(stor[_341].field_0)) + sha3(_341) + 1].field_1 % 128 + 31 / 32) == -1:
                revert with 0, 17
            s = sha3((2 * uint256(stor[_341].field_0)) + sha3(_341) + 1) + (stor[(2 * uint256(stor[_341].field_0)) + sha3(_341) + 1].field_1 % 128 + 31 / 32) + 1
            continue 
        if totalNodesCreated > !_287:
            revert with 0, 17
        totalNodesCreated += _287
}

function sub_c75956d1(?) payable {
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
    require arg3 == uint8(arg3)
    if msg.sender == tokenAddress:
        idx = 0
        while idx < arg2.length:
            if idx >= arg2.length:
                revert with 0, 50
            if 0x2300000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                revert with 0, 'CREATE NODE: Name not available'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = address(arg1)
        mem[32] = 0
        mem[64] = ceil32(ceil32(arg2.length)) + (32 * uint256(_getNodeNumberOf[address(arg1)].field_0)) + 129
        mem[ceil32(ceil32(arg2.length)) + 97] = uint256(_getNodeNumberOf[address(arg1)].field_0)
        s = ceil32(ceil32(arg2.length)) + 129
        idx = 0
        while idx < uint256(_getNodeNumberOf[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 0)
            _185 = mem[64]
            mem[64] = mem[64] + 128
            mem[_185] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
            mem[_185 + 32] = uint32(_getNodeNumberOf[address(arg1)][idx].field_8)
            mem[_185 + 64] = uint32(_getNodeNumberOf[address(arg1)][idx].field_40)
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                    revert with 0, 34
                _205 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) + 32
                mem[_205] = uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                    if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                        if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                            mem[_205 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                        else:
                            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                            mem[_205 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                            t = _205 + 32
                            u = sha3(mem[0])
                            while _205 + (uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) > t:
                                mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_185 + 96] = _205
                    mem[s] = _185
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                    revert with 0, 34
                if not _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                    mem[_185 + 96] = _205
                    mem[s] = _185
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                    mem[_205 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                    mem[_185 + 96] = _205
                    mem[s] = _185
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                mem[_205 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                t = _205 + 32
                u = sha3(mem[0])
                while _205 + _getNodeNumberOf[address(arg1)][u].field_257 % 128 > t:
                    mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_185 + 96] = _205
                mem[t] = _185
                t = t + 32
                u = u + 1
                continue 
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                revert with 0, 34
            _210 = mem[64]
            mem[64] = mem[64] + ceil32(_getNodeNumberOf[address(arg1)][idx].field_257 % 128) + 32
            mem[_210] = _getNodeNumberOf[address(arg1)][idx].field_257 % 128
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                    mem[_185 + 96] = _210
                    mem[s] = _185
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                    mem[_210 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                    mem[_185 + 96] = _210
                    mem[s] = _185
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                mem[_210 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                t = _210 + 32
                u = sha3(mem[0])
                while _210 + (uint255(uint256(_getNodeNumberOf[address(arg1)][u].field_256)) * 0.5) > t:
                    mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_185 + 96] = _210
                mem[t] = _185
                t = t + 32
                u = u + 1
                continue 
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                revert with 0, 34
            if _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                    mem[_210 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                else:
                    mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                    mem[_210 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                    t = _210 + 32
                    u = sha3(mem[0])
                    while _210 + _getNodeNumberOf[address(arg1)][idx].field_257 % 128 > t:
                        mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_185 + 96] = _210
            mem[s] = _185
            s = s + 32
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[ceil32(ceil32(arg2.length)) + 97]:
            if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 0, 50
            if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129] + 96] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129] + 96]]]) == sha3(mem[128 len mem[96]]):
                revert with 0, 'CREATE NODE: Name not available'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not uint256(sub_385c95f4[arg3 << 248].field_0):
            revert with 0, 'Create Node: Invalid tier'
        if uint256(_getNodeNumberOf[address(arg1)].field_0) >= sub_f90f0eaa:
            revert with 0, 'Create Node: Reached node limit'
        mem[0] = address(arg1)
        mem[32] = 0
        _283 = mem[64]
        mem[64] = mem[64] + 128
        mem[_283] = uint8(arg3)
        mem[_283 + 32] = uint32(block.timestamp)
        mem[_283 + 64] = uint32(block.timestamp)
        mem[_283 + 96] = 96
    else:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
        idx = 0
        while idx < arg2.length:
            if idx >= arg2.length:
                revert with 0, 50
            if 0x2300000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                revert with 0, 'CREATE NODE: Name not available'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = address(arg1)
        mem[32] = 0
        mem[64] = ceil32(ceil32(arg2.length)) + (32 * uint256(_getNodeNumberOf[address(arg1)].field_0)) + 129
        mem[ceil32(ceil32(arg2.length)) + 97] = uint256(_getNodeNumberOf[address(arg1)].field_0)
        s = ceil32(ceil32(arg2.length)) + 129
        idx = 0
        while idx < uint256(_getNodeNumberOf[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 0)
            _187 = mem[64]
            mem[64] = mem[64] + 128
            mem[_187] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
            mem[_187 + 32] = uint32(_getNodeNumberOf[address(arg1)][idx].field_8)
            mem[_187 + 64] = uint32(_getNodeNumberOf[address(arg1)][idx].field_40)
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                    revert with 0, 34
                _207 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) + 32
                mem[_207] = uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                    if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                        if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                            mem[_207 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                        else:
                            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                            mem[_207 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                            t = _207 + 32
                            u = sha3(mem[0])
                            while _207 + (uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) > t:
                                mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_187 + 96] = _207
                    mem[s] = _187
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                    revert with 0, 34
                if not _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                    mem[_187 + 96] = _207
                    mem[s] = _187
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                    mem[_207 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                    mem[_187 + 96] = _207
                    mem[s] = _187
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                mem[_207 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                t = _207 + 32
                u = sha3(mem[0])
                while _207 + _getNodeNumberOf[address(arg1)][u].field_257 % 128 > t:
                    mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_187 + 96] = _207
                mem[t] = _187
                t = t + 32
                u = u + 1
                continue 
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                revert with 0, 34
            _213 = mem[64]
            mem[64] = mem[64] + ceil32(_getNodeNumberOf[address(arg1)][idx].field_257 % 128) + 32
            mem[_213] = _getNodeNumberOf[address(arg1)][idx].field_257 % 128
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                    mem[_187 + 96] = _213
                    mem[s] = _187
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                    mem[_213 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                    mem[_187 + 96] = _213
                    mem[s] = _187
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                mem[_213 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                t = _213 + 32
                u = sha3(mem[0])
                while _213 + (uint255(uint256(_getNodeNumberOf[address(arg1)][u].field_256)) * 0.5) > t:
                    mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_187 + 96] = _213
                mem[t] = _187
                t = t + 32
                u = u + 1
                continue 
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                revert with 0, 34
            if _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                    mem[_213 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                else:
                    mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                    mem[_213 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                    t = _213 + 32
                    u = sha3(mem[0])
                    while _213 + _getNodeNumberOf[address(arg1)][idx].field_257 % 128 > t:
                        mem[t + 32] = uint256(sub_385c95f4[u].field_0)
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_187 + 96] = _213
            mem[s] = _187
            s = s + 32
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[ceil32(ceil32(arg2.length)) + 97]:
            if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 0, 50
            if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129] + 96] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129] + 96]]]) == sha3(mem[128 len mem[96]]):
                revert with 0, 'CREATE NODE: Name not available'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not uint256(sub_385c95f4[arg3 << 248].field_0):
            revert with 0, 'Create Node: Invalid tier'
        if uint256(_getNodeNumberOf[address(arg1)].field_0) >= sub_f90f0eaa:
            revert with 0, 'Create Node: Reached node limit'
        mem[0] = address(arg1)
        mem[32] = 0
        _293 = mem[64]
        mem[64] = mem[64] + 128
        mem[_293] = uint8(arg3)
        mem[_293 + 32] = uint32(block.timestamp)
        mem[_293 + 64] = uint32(block.timestamp)
        mem[_293 + 96] = 96
    uint256(_getNodeNumberOf[address(arg1)].field_0)++
    uint8(_getNodeNumberOf[address(arg1)][uint256(_getNodeNumberOf[address(arg1)].field_0)].field_0) = uint8(arg3)
    uint32(_getNodeNumberOf[address(arg1)][uint256(_getNodeNumberOf[address(arg1)].field_0)].field_8) = uint32(block.timestamp)
    uint32(_getNodeNumberOf[address(arg1)][uint256(_getNodeNumberOf[address(arg1)].field_0)].field_40) = uint32(block.timestamp)
    if bool(_getNodeNumberOf[address(arg1)][uint256(_getNodeNumberOf[address(arg1)].field_0)].field_256):
        if bool(_getNodeNumberOf[address(arg1)][uint256(_getNodeNumberOf[address(arg1)].field_0)].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][uint256(_getNodeNumberOf[address(arg1)].field_0)].field_256)) * 0.5 < 32:
            revert with 0, 34
        if mem[96]:
            uint256(stor[sha3((2 * uint256(_getNodeNumberOf[address(arg1)].field_0)) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + 1)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            uint256(_getNodeNumberOf[address(arg1)][uint256(_getNodeNumberOf[address(arg1)].field_0)].field_256) = 0
            idx = 0
            while (uint255(uint256(_getNodeNumberOf[address(arg1)][uint256(_getNodeNumberOf[address(arg1)].field_0)].field_256)) * 0.5) + 31 / 32 > idx:
                uint256(stor[idx + sha3((2 * uint256(_getNodeNumberOf[address(arg1)].field_0)) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + 1)].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(_getNodeNumberOf[address(arg1)][uint256(_getNodeNumberOf[address(arg1)].field_0)].field_256) == _getNodeNumberOf[address(arg1)][uint256(_getNodeNumberOf[address(arg1)].field_0)].field_257 % 128 < 32:
            revert with 0, 34
        if mem[96]:
            uint256(stor[sha3((2 * uint256(_getNodeNumberOf[address(arg1)].field_0)) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + 1)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            uint256(_getNodeNumberOf[address(arg1)][uint256(_getNodeNumberOf[address(arg1)].field_0)].field_256) = 0
            idx = 0
            while _getNodeNumberOf[address(arg1)][uint256(_getNodeNumberOf[address(arg1)].field_0)].field_257 % 128 + 31 / 32 > idx:
                uint256(stor[idx + sha3((2 * uint256(_getNodeNumberOf[address(arg1)].field_0)) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + 1)].field_0) = 0
                idx = idx + 1
                continue 
    if totalNodesCreated == -1:
        revert with 0, 17
    totalNodesCreated++
}

function _getRewardAmountOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint256(_getNodeNumberOf[address(arg1)].field_0):
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 0
    idx = 0
    while idx < uint256(_getNodeNumberOf[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 0)
        _149 = mem[64]
        mem[64] = mem[64] + 128
        mem[_149] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
        mem[_149 + 32] = uint32(_getNodeNumberOf[address(arg1)][idx].field_8)
        mem[_149 + 64] = uint32(_getNodeNumberOf[address(arg1)][idx].field_40)
        if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                revert with 0, 34
            _151 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) + 32
            mem[_151] = uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                    mem[_149 + 96] = _151
                    mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                    mem[32] = 1
                    _157 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_157] = 30
                    mem[_157 + 32] = 'SafeMath: subtraction overflow'
                    if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                        _175 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _175 + 68] = mem[idx + _157 + 32]
                            idx = idx + 32
                            continue 
                        mem[_175 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _175 + -mem[64] + 100
                    if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                        revert with 0, 17
                    if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                        if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 17
                        if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 18
                        if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                            revert with 0, 17
                else:
                    if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                        mem[_151 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                        mem[_149 + 96] = _151
                        mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                        mem[32] = 1
                        _176 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_176] = 30
                        mem[_176 + 32] = 'SafeMath: subtraction overflow'
                        if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                            _196 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _196 + 68] = mem[idx + _176 + 32]
                                idx = idx + 32
                                continue 
                            mem[_196 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _196 + -mem[64] + 100
                        if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 17
                        if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 18
                            if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                revert with 0, 17
                    else:
                        mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                        mem[_151 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                        s = _151 + 32
                        t = sha3(mem[0])
                        while _151 + (uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) > s:
                            mem[s + 32] = uint256(sub_385c95f4[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_149 + 96] = _151
                        mem[0] = mem[_149 + 31 len 1]
                        mem[32] = 1
                        _298 = sha3(mem[0], 1)
                        _299 = mem[_149 + 64]
                        _309 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_309] = 30
                        mem[_309 + 32] = 'SafeMath: subtraction overflow'
                        if uint32(_299) > block.timestamp:
                            _322 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _322 + 68] = mem[idx + _309 + 32]
                                idx = idx + 32
                                continue 
                            mem[_322 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _322 + -mem[64] + 100
                        if block.timestamp < uint32(_299):
                            revert with 0, 17
                        if block.timestamp - uint32(_299):
                            if block.timestamp - uint32(_299) and uint256(stor[_298].field_0) > -1 / block.timestamp - uint32(_299):
                                revert with 0, 17
                            if not block.timestamp - uint32(_299):
                                revert with 0, 18
                            if (block.timestamp * uint256(stor[_298].field_0)) - (uint32(_299) * uint256(stor[_298].field_0)) / block.timestamp - uint32(_299) != uint256(stor[_298].field_0):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > !((block.timestamp * uint256(stor[_298].field_0)) - (uint32(_299) * uint256(stor[_298].field_0))):
                                revert with 0, 17
            else:
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                    revert with 0, 34
                if not _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                    mem[_149 + 96] = _151
                    mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                    mem[32] = 1
                    _169 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_169] = 30
                    mem[_169 + 32] = 'SafeMath: subtraction overflow'
                    if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                        _187 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _187 + 68] = mem[idx + _169 + 32]
                            idx = idx + 32
                            continue 
                        mem[_187 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _187 + -mem[64] + 100
                    if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                        revert with 0, 17
                    if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                        if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 17
                        if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 18
                        if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                            revert with 0, 17
                else:
                    if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                        mem[_151 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                        mem[_149 + 96] = _151
                        mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                        mem[32] = 1
                        _188 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_188] = 30
                        mem[_188 + 32] = 'SafeMath: subtraction overflow'
                        if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                            _207 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _207 + 68] = mem[idx + _188 + 32]
                                idx = idx + 32
                                continue 
                            mem[_207 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _207 + -mem[64] + 100
                        if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 17
                        if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 18
                            if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                revert with 0, 17
                    else:
                        mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                        mem[_151 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                        s = _151 + 32
                        t = sha3(mem[0])
                        while _151 + _getNodeNumberOf[address(arg1)][idx].field_257 % 128 > s:
                            mem[s + 32] = uint256(sub_385c95f4[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_149 + 96] = _151
                        mem[0] = mem[_149 + 31 len 1]
                        mem[32] = 1
                        _301 = sha3(mem[0], 1)
                        _302 = mem[_149 + 64]
                        _310 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_310] = 30
                        mem[_310 + 32] = 'SafeMath: subtraction overflow'
                        if uint32(_302) > block.timestamp:
                            _325 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _325 + 68] = mem[idx + _310 + 32]
                                idx = idx + 32
                                continue 
                            mem[_325 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _325 + -mem[64] + 100
                        if block.timestamp < uint32(_302):
                            revert with 0, 17
                        if block.timestamp - uint32(_302):
                            if block.timestamp - uint32(_302) and uint256(stor[_301].field_0) > -1 / block.timestamp - uint32(_302):
                                revert with 0, 17
                            if not block.timestamp - uint32(_302):
                                revert with 0, 18
                            if (block.timestamp * uint256(stor[_301].field_0)) - (uint32(_302) * uint256(stor[_301].field_0)) / block.timestamp - uint32(_302) != uint256(stor[_301].field_0):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > !((block.timestamp * uint256(stor[_301].field_0)) - (uint32(_302) * uint256(stor[_301].field_0))):
                                revert with 0, 17
        else:
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                revert with 0, 34
            _152 = mem[64]
            mem[64] = mem[64] + ceil32(_getNodeNumberOf[address(arg1)][idx].field_257 % 128) + 32
            mem[_152] = _getNodeNumberOf[address(arg1)][idx].field_257 % 128
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                    mem[_149 + 96] = _152
                    mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                    mem[32] = 1
                    _170 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_170] = 30
                    mem[_170 + 32] = 'SafeMath: subtraction overflow'
                    if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                        _189 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _189 + 68] = mem[idx + _170 + 32]
                            idx = idx + 32
                            continue 
                        mem[_189 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _189 + -mem[64] + 100
                    if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                        revert with 0, 17
                    if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                        if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 17
                        if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 18
                        if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                            revert with 0, 17
                else:
                    if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                        mem[_152 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                        mem[_149 + 96] = _152
                        mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                        mem[32] = 1
                        _190 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_190] = 30
                        mem[_190 + 32] = 'SafeMath: subtraction overflow'
                        if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                            _210 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _210 + 68] = mem[idx + _190 + 32]
                                idx = idx + 32
                                continue 
                            mem[_210 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _210 + -mem[64] + 100
                        if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 17
                        if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 18
                            if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                revert with 0, 17
                    else:
                        mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                        mem[_152 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                        s = _152 + 32
                        t = sha3(mem[0])
                        while _152 + (uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) > s:
                            mem[s + 32] = uint256(sub_385c95f4[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_149 + 96] = _152
                        mem[0] = mem[_149 + 31 len 1]
                        mem[32] = 1
                        _304 = sha3(mem[0], 1)
                        _305 = mem[_149 + 64]
                        _311 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_311] = 30
                        mem[_311 + 32] = 'SafeMath: subtraction overflow'
                        if uint32(_305) > block.timestamp:
                            _328 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _328 + 68] = mem[idx + _311 + 32]
                                idx = idx + 32
                                continue 
                            mem[_328 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _328 + -mem[64] + 100
                        if block.timestamp < uint32(_305):
                            revert with 0, 17
                        if block.timestamp - uint32(_305):
                            if block.timestamp - uint32(_305) and uint256(stor[_304].field_0) > -1 / block.timestamp - uint32(_305):
                                revert with 0, 17
                            if not block.timestamp - uint32(_305):
                                revert with 0, 18
                            if (block.timestamp * uint256(stor[_304].field_0)) - (uint32(_305) * uint256(stor[_304].field_0)) / block.timestamp - uint32(_305) != uint256(stor[_304].field_0):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > !((block.timestamp * uint256(stor[_304].field_0)) - (uint32(_305) * uint256(stor[_304].field_0))):
                                revert with 0, 17
            else:
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                    revert with 0, 34
                if not _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                    mem[_149 + 96] = _152
                    mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                    mem[32] = 1
                    _183 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_183] = 30
                    mem[_183 + 32] = 'SafeMath: subtraction overflow'
                    if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                        _203 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _203 + 68] = mem[idx + _183 + 32]
                            idx = idx + 32
                            continue 
                        mem[_203 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _203 + -mem[64] + 100
                    if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                        revert with 0, 17
                    if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                        if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 17
                        if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 18
                        if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                            revert with 0, 17
                else:
                    if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                        mem[_152 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                        mem[_149 + 96] = _152
                        mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                        mem[32] = 1
                        _204 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_204] = 30
                        mem[_204 + 32] = 'SafeMath: subtraction overflow'
                        if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                            _218 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _218 + 68] = mem[idx + _204 + 32]
                                idx = idx + 32
                                continue 
                            mem[_218 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _218 + -mem[64] + 100
                        if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 17
                        if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 18
                            if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                revert with 0, 17
                    else:
                        mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                        mem[_152 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                        s = _152 + 32
                        t = sha3(mem[0])
                        while _152 + _getNodeNumberOf[address(arg1)][idx].field_257 % 128 > s:
                            mem[s + 32] = uint256(sub_385c95f4[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_149 + 96] = _152
                        mem[0] = mem[_149 + 31 len 1]
                        mem[32] = 1
                        _307 = sha3(mem[0], 1)
                        _308 = mem[_149 + 64]
                        _312 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_312] = 30
                        mem[_312 + 32] = 'SafeMath: subtraction overflow'
                        if uint32(_308) > block.timestamp:
                            _331 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _331 + 68] = mem[idx + _312 + 32]
                                idx = idx + 32
                                continue 
                            mem[_331 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _331 + -mem[64] + 100
                        if block.timestamp < uint32(_308):
                            revert with 0, 17
                        if block.timestamp - uint32(_308):
                            if block.timestamp - uint32(_308) and uint256(stor[_307].field_0) > -1 / block.timestamp - uint32(_308):
                                revert with 0, 17
                            if not block.timestamp - uint32(_308):
                                revert with 0, 18
                            if (block.timestamp * uint256(stor[_307].field_0)) - (uint32(_308) * uint256(stor[_307].field_0)) / block.timestamp - uint32(_308) != uint256(stor[_307].field_0):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > !((block.timestamp * uint256(stor[_307].field_0)) - (uint32(_308) * uint256(stor[_307].field_0))):
                                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function sub_4098f0a3(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == uint8(cd[36])
    if msg.sender == tokenAddress:
        mem[0] = uint8(cd[36])
        mem[32] = 1
        if not uint256(sub_385c95f4[cd[36] << 248].field_0):
            revert with 0, 'Batch Create: Invalid node tier'
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            _233 = sha3(mem[(32 * idx) + 140 len 20], 0)
            if uint256(_getNodeNumberOf[mem[(32 * idx) + 140 len 20]].field_0) > !cd[68]:
                revert with 0, 17
            if uint256(_getNodeNumberOf[mem[(32 * idx) + 140 len 20]].field_0) + cd[68] < sub_f90f0eaa:
                t = 0
                while t < cd[68]:
                    if t > !uint256(stor[_233].field_0):
                        revert with 0, 17
                    if 1 > !(t + uint256(stor[_233].field_0)):
                        revert with 0, 17
                    if not t + uint256(stor[_233].field_0) + 1:
                        _352 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_352] = 1
                        mem[_352 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _354 = mem[64]
                        mem[mem[64] + 32] = 'PSINODE' << 200
                        s = 0
                        while s < 1:
                            mem[s + _354 + 39] = mem[s + _352 + 32]
                            s = s + 32
                            continue 
                        mem[_354 + 40] = 0
                        _445 = mem[64]
                        mem[mem[64]] = _354 + -mem[64] + 8
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 0
                        _460 = sha3(mem[(32 * idx) + 140 len 20], 0)
                        mem[64] = _354 + 168
                        mem[_354 + 40] = uint8(cd[36])
                        mem[_354 + 72] = uint32(block.timestamp)
                        mem[_354 + 104] = uint32(block.timestamp)
                        mem[_354 + 136] = _445
                        uint256(_getNodeNumberOf[mem[0]].field_0)++
                        mem[0] = sha3(mem[0], 0)
                        uint8(stor[(2 * uint256(stor[_460].field_0)) + sha3(_460)].field_0) = uint8(cd[36])
                        uint32(stor[(2 * uint256(stor[_460].field_0)) + sha3(_460)].field_8) = uint32(block.timestamp)
                        uint32(stor[(2 * uint256(stor[_460].field_0)) + sha3(_460)].field_40) = uint32(block.timestamp)
                        _467 = mem[_445]
                        if bool(stor[(2 * uint256(stor[_460].field_0)) + sha3(_460) + 1].field_0):
                            if bool(stor[(2 * uint256(stor[_460].field_0)) + sha3(_460) + 1].field_0) == uint255(uint256(stor[(2 * uint256(stor[_460].field_0)) + sha3(_460) + 1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = (2 * uint256(stor[_460].field_0)) + sha3(_460) + 1
                            if not _467:
                                uint256(stor[(2 * uint256(stor[_460].field_0)) + sha3(_460) + 1].field_0) = 0
                                idx = sha3((2 * uint256(stor[_460].field_0)) + sha3(_460) + 1)
                                while sha3((2 * uint256(stor[_460].field_0)) + sha3(_460) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_460].field_0)) + sha3(_460) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                    uint256(stor[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                continue 
                            uint256(stor[(2 * uint256(stor[_460].field_0)) + sha3(_460) + 1].field_0) = (2 * _467) + 1
                            s = sha3((2 * uint256(stor[_460].field_0)) + sha3(_460) + 1)
                            idx = _445 + 32
                            while _445 + _467 + 32 > idx:
                                uint256(stor[s].field_0) = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3((2 * uint256(stor[_460].field_0)) + sha3(_460) + 1) + (Mask(251, 0, _467 + 31) >> 5)
                            while sha3((2 * uint256(stor[_460].field_0)) + sha3(_460) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_460].field_0)) + sha3(_460) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                uint256(stor[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            if sha3((2 * uint256(stor[_460].field_0)) + sha3(_460) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_460].field_0)) + sha3(_460) + 1].field_0)) * 0.5) + 31 / 32) == -1:
                                revert with 0, 17
                            idx = sha3((2 * uint256(stor[_460].field_0)) + sha3(_460) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_460].field_0)) + sha3(_460) + 1].field_0)) * 0.5) + 31 / 32) + 1
                            continue 
                        if bool(stor[(2 * uint256(stor[_460].field_0)) + sha3(_460) + 1].field_0) == stor[(2 * uint256(stor[_460].field_0)) + sha3(_460) + 1].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = (2 * uint256(stor[_460].field_0)) + sha3(_460) + 1
                        if not _467:
                            uint256(stor[(2 * uint256(stor[_460].field_0)) + sha3(_460) + 1].field_0) = 0
                            idx = sha3((2 * uint256(stor[_460].field_0)) + sha3(_460) + 1)
                            while sha3((2 * uint256(stor[_460].field_0)) + sha3(_460) + 1) + (stor[(2 * uint256(stor[_460].field_0)) + sha3(_460) + 1].field_1 % 128 + 31 / 32) > idx:
                                uint256(stor[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            uint256(stor[(2 * uint256(stor[_460].field_0)) + sha3(_460) + 1].field_0) = (2 * _467) + 1
                            s = sha3((2 * uint256(stor[_460].field_0)) + sha3(_460) + 1)
                            idx = _445 + 32
                            while _445 + _467 + 32 > idx:
                                uint256(stor[s].field_0) = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3((2 * uint256(stor[_460].field_0)) + sha3(_460) + 1) + (Mask(251, 0, _467 + 31) >> 5)
                            while sha3((2 * uint256(stor[_460].field_0)) + sha3(_460) + 1) + (stor[(2 * uint256(stor[_460].field_0)) + sha3(_460) + 1].field_1 % 128 + 31 / 32) > idx:
                                uint256(stor[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                    else:
                        u = 0
                        s = t + uint256(stor[_233].field_0) + 1
                        while s:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            s = s / 10
                            continue 
                        if u > test266151307():
                            revert with 0, 65
                        _430 = mem[64]
                        mem[mem[64]] = u
                        mem[64] = mem[64] + ceil32(u) + 32
                        if not u:
                            v = u
                            s = t + uint256(stor[_233].field_0) + 1
                            while s:
                                if v < 1:
                                    revert with 0, 17
                                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                    revert with 0, 17
                                if s < 10 * s / 10:
                                    revert with 0, 17
                                if 48 > -uint8(s - (10 * s / 10)) + 255:
                                    revert with 0, 17
                                if v - 1 >= mem[_430]:
                                    revert with 0, 50
                                mem[v + _430 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                                v = v - 1
                                s = s / 10
                                continue 
                            _660 = mem[64]
                            mem[mem[64] + 32] = 'PSINODE' << 200
                            _664 = mem[_430]
                            s = 0
                            while s < _664:
                                mem[s + _660 + 39] = mem[s + _430 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_664) <= _664:
                                _816 = mem[64]
                                mem[mem[64]] = _664 + _660 + -mem[64] + 7
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 0
                                _825 = sha3(mem[(32 * idx) + 140 len 20], 0)
                                mem[64] = _664 + _660 + 167
                                mem[_664 + _660 + 39] = uint8(cd[36])
                                mem[_664 + _660 + 71] = uint32(block.timestamp)
                                mem[_664 + _660 + 103] = uint32(block.timestamp)
                                mem[_664 + _660 + 135] = _816
                                uint256(_getNodeNumberOf[mem[0]].field_0)++
                                mem[0] = sha3(mem[0], 0)
                                uint8(stor[(2 * uint256(stor[_825].field_0)) + sha3(_825)].field_0) = uint8(cd[36])
                                uint32(stor[(2 * uint256(stor[_825].field_0)) + sha3(_825)].field_8) = uint32(block.timestamp)
                                uint32(stor[(2 * uint256(stor[_825].field_0)) + sha3(_825)].field_40) = uint32(block.timestamp)
                                _832 = mem[_816]
                                if bool(stor[(2 * uint256(stor[_825].field_0)) + sha3(_825) + 1].field_0):
                                    if bool(stor[(2 * uint256(stor[_825].field_0)) + sha3(_825) + 1].field_0) == uint255(uint256(stor[(2 * uint256(stor[_825].field_0)) + sha3(_825) + 1].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = (2 * uint256(stor[_825].field_0)) + sha3(_825) + 1
                                    if not _832:
                                        uint256(stor[(2 * uint256(stor[_825].field_0)) + sha3(_825) + 1].field_0) = 0
                                        idx = sha3((2 * uint256(stor[_825].field_0)) + sha3(_825) + 1)
                                        while sha3((2 * uint256(stor[_825].field_0)) + sha3(_825) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_825].field_0)) + sha3(_825) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        uint256(stor[(2 * uint256(stor[_825].field_0)) + sha3(_825) + 1].field_0) = (2 * _832) + 1
                                        s = sha3((2 * uint256(stor[_825].field_0)) + sha3(_825) + 1)
                                        idx = _816 + 32
                                        while _816 + _832 + 32 > idx:
                                            uint256(stor[s].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((2 * uint256(stor[_825].field_0)) + sha3(_825) + 1) + (Mask(251, 0, _832 + 31) >> 5)
                                        while sha3((2 * uint256(stor[_825].field_0)) + sha3(_825) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_825].field_0)) + sha3(_825) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor[(2 * uint256(stor[_825].field_0)) + sha3(_825) + 1].field_0) == stor[(2 * uint256(stor[_825].field_0)) + sha3(_825) + 1].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = (2 * uint256(stor[_825].field_0)) + sha3(_825) + 1
                                    if not _832:
                                        uint256(stor[(2 * uint256(stor[_825].field_0)) + sha3(_825) + 1].field_0) = 0
                                        idx = sha3((2 * uint256(stor[_825].field_0)) + sha3(_825) + 1)
                                        while sha3((2 * uint256(stor[_825].field_0)) + sha3(_825) + 1) + (stor[(2 * uint256(stor[_825].field_0)) + sha3(_825) + 1].field_1 % 128 + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        uint256(stor[(2 * uint256(stor[_825].field_0)) + sha3(_825) + 1].field_0) = (2 * _832) + 1
                                        s = sha3((2 * uint256(stor[_825].field_0)) + sha3(_825) + 1)
                                        idx = _816 + 32
                                        while _816 + _832 + 32 > idx:
                                            uint256(stor[s].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((2 * uint256(stor[_825].field_0)) + sha3(_825) + 1) + (Mask(251, 0, _832 + 31) >> 5)
                                        while sha3((2 * uint256(stor[_825].field_0)) + sha3(_825) + 1) + (stor[(2 * uint256(stor[_825].field_0)) + sha3(_825) + 1].field_1 % 128 + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                mem[_660 + _664 + 39] = 0
                                _833 = mem[64]
                                mem[mem[64]] = _664 + _660 + -mem[64] + 7
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 0
                                _869 = sha3(mem[(32 * idx) + 140 len 20], 0)
                                mem[64] = _664 + _660 + 167
                                mem[_664 + _660 + 39] = uint8(cd[36])
                                mem[_664 + _660 + 71] = uint32(block.timestamp)
                                mem[_664 + _660 + 103] = uint32(block.timestamp)
                                mem[_664 + _660 + 135] = _833
                                uint256(_getNodeNumberOf[mem[0]].field_0)++
                                mem[0] = sha3(mem[0], 0)
                                uint8(stor[(2 * uint256(stor[_869].field_0)) + sha3(_869)].field_0) = uint8(cd[36])
                                uint32(stor[(2 * uint256(stor[_869].field_0)) + sha3(_869)].field_8) = uint32(block.timestamp)
                                uint32(stor[(2 * uint256(stor[_869].field_0)) + sha3(_869)].field_40) = uint32(block.timestamp)
                                _876 = mem[_833]
                                if bool(stor[(2 * uint256(stor[_869].field_0)) + sha3(_869) + 1].field_0):
                                    if bool(stor[(2 * uint256(stor[_869].field_0)) + sha3(_869) + 1].field_0) == uint255(uint256(stor[(2 * uint256(stor[_869].field_0)) + sha3(_869) + 1].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = (2 * uint256(stor[_869].field_0)) + sha3(_869) + 1
                                    if not _876:
                                        uint256(stor[(2 * uint256(stor[_869].field_0)) + sha3(_869) + 1].field_0) = 0
                                        idx = sha3((2 * uint256(stor[_869].field_0)) + sha3(_869) + 1)
                                        while sha3((2 * uint256(stor[_869].field_0)) + sha3(_869) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_869].field_0)) + sha3(_869) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        uint256(stor[(2 * uint256(stor[_869].field_0)) + sha3(_869) + 1].field_0) = (2 * _876) + 1
                                        s = sha3((2 * uint256(stor[_869].field_0)) + sha3(_869) + 1)
                                        idx = _833 + 32
                                        while _833 + _876 + 32 > idx:
                                            uint256(stor[s].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((2 * uint256(stor[_869].field_0)) + sha3(_869) + 1) + (Mask(251, 0, _876 + 31) >> 5)
                                        while sha3((2 * uint256(stor[_869].field_0)) + sha3(_869) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_869].field_0)) + sha3(_869) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor[(2 * uint256(stor[_869].field_0)) + sha3(_869) + 1].field_0) == stor[(2 * uint256(stor[_869].field_0)) + sha3(_869) + 1].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = (2 * uint256(stor[_869].field_0)) + sha3(_869) + 1
                                    if not _876:
                                        uint256(stor[(2 * uint256(stor[_869].field_0)) + sha3(_869) + 1].field_0) = 0
                                        idx = sha3((2 * uint256(stor[_869].field_0)) + sha3(_869) + 1)
                                        while sha3((2 * uint256(stor[_869].field_0)) + sha3(_869) + 1) + (stor[(2 * uint256(stor[_869].field_0)) + sha3(_869) + 1].field_1 % 128 + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        uint256(stor[(2 * uint256(stor[_869].field_0)) + sha3(_869) + 1].field_0) = (2 * _876) + 1
                                        s = sha3((2 * uint256(stor[_869].field_0)) + sha3(_869) + 1)
                                        idx = _833 + 32
                                        while _833 + _876 + 32 > idx:
                                            uint256(stor[s].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((2 * uint256(stor[_869].field_0)) + sha3(_869) + 1) + (Mask(251, 0, _876 + 31) >> 5)
                                        while sha3((2 * uint256(stor[_869].field_0)) + sha3(_869) + 1) + (stor[(2 * uint256(stor[_869].field_0)) + sha3(_869) + 1].field_1 % 128 + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[_430 + 32 len u] = call.data[calldata.size len u]
                            v = u
                            s = t + uint256(stor[_233].field_0) + 1
                            while s:
                                if v < 1:
                                    revert with 0, 17
                                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                    revert with 0, 17
                                if s < 10 * s / 10:
                                    revert with 0, 17
                                if 48 > -uint8(s - (10 * s / 10)) + 255:
                                    revert with 0, 17
                                if v - 1 >= mem[_430]:
                                    revert with 0, 50
                                mem[v + _430 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                                v = v - 1
                                s = s / 10
                                continue 
                            _661 = mem[64]
                            mem[mem[64] + 32] = 'PSINODE' << 200
                            _665 = mem[_430]
                            s = 0
                            while s < _665:
                                mem[s + _661 + 39] = mem[s + _430 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_665) <= _665:
                                _818 = mem[64]
                                mem[mem[64]] = _665 + _661 + -mem[64] + 7
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 0
                                _836 = sha3(mem[(32 * idx) + 140 len 20], 0)
                                mem[64] = _665 + _661 + 167
                                mem[_665 + _661 + 39] = uint8(cd[36])
                                mem[_665 + _661 + 71] = uint32(block.timestamp)
                                mem[_665 + _661 + 103] = uint32(block.timestamp)
                                mem[_665 + _661 + 135] = _818
                                uint256(_getNodeNumberOf[mem[0]].field_0)++
                                mem[0] = sha3(mem[0], 0)
                                uint8(stor[(2 * uint256(stor[_836].field_0)) + sha3(_836)].field_0) = uint8(cd[36])
                                uint32(stor[(2 * uint256(stor[_836].field_0)) + sha3(_836)].field_8) = uint32(block.timestamp)
                                uint32(stor[(2 * uint256(stor[_836].field_0)) + sha3(_836)].field_40) = uint32(block.timestamp)
                                _843 = mem[_818]
                                if bool(stor[(2 * uint256(stor[_836].field_0)) + sha3(_836) + 1].field_0):
                                    if bool(stor[(2 * uint256(stor[_836].field_0)) + sha3(_836) + 1].field_0) == uint255(uint256(stor[(2 * uint256(stor[_836].field_0)) + sha3(_836) + 1].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = (2 * uint256(stor[_836].field_0)) + sha3(_836) + 1
                                    if not _843:
                                        uint256(stor[(2 * uint256(stor[_836].field_0)) + sha3(_836) + 1].field_0) = 0
                                        idx = sha3((2 * uint256(stor[_836].field_0)) + sha3(_836) + 1)
                                        while sha3((2 * uint256(stor[_836].field_0)) + sha3(_836) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_836].field_0)) + sha3(_836) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        uint256(stor[(2 * uint256(stor[_836].field_0)) + sha3(_836) + 1].field_0) = (2 * _843) + 1
                                        s = sha3((2 * uint256(stor[_836].field_0)) + sha3(_836) + 1)
                                        idx = _818 + 32
                                        while _818 + _843 + 32 > idx:
                                            uint256(stor[s].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((2 * uint256(stor[_836].field_0)) + sha3(_836) + 1) + (Mask(251, 0, _843 + 31) >> 5)
                                        while sha3((2 * uint256(stor[_836].field_0)) + sha3(_836) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_836].field_0)) + sha3(_836) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor[(2 * uint256(stor[_836].field_0)) + sha3(_836) + 1].field_0) == stor[(2 * uint256(stor[_836].field_0)) + sha3(_836) + 1].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = (2 * uint256(stor[_836].field_0)) + sha3(_836) + 1
                                    if not _843:
                                        uint256(stor[(2 * uint256(stor[_836].field_0)) + sha3(_836) + 1].field_0) = 0
                                        idx = sha3((2 * uint256(stor[_836].field_0)) + sha3(_836) + 1)
                                        while sha3((2 * uint256(stor[_836].field_0)) + sha3(_836) + 1) + (stor[(2 * uint256(stor[_836].field_0)) + sha3(_836) + 1].field_1 % 128 + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        uint256(stor[(2 * uint256(stor[_836].field_0)) + sha3(_836) + 1].field_0) = (2 * _843) + 1
                                        s = sha3((2 * uint256(stor[_836].field_0)) + sha3(_836) + 1)
                                        idx = _818 + 32
                                        while _818 + _843 + 32 > idx:
                                            uint256(stor[s].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((2 * uint256(stor[_836].field_0)) + sha3(_836) + 1) + (Mask(251, 0, _843 + 31) >> 5)
                                        while sha3((2 * uint256(stor[_836].field_0)) + sha3(_836) + 1) + (stor[(2 * uint256(stor[_836].field_0)) + sha3(_836) + 1].field_1 % 128 + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                mem[_661 + _665 + 39] = 0
                                _844 = mem[64]
                                mem[mem[64]] = _665 + _661 + -mem[64] + 7
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 0
                                _878 = sha3(mem[(32 * idx) + 140 len 20], 0)
                                mem[64] = _665 + _661 + 167
                                mem[_665 + _661 + 39] = uint8(cd[36])
                                mem[_665 + _661 + 71] = uint32(block.timestamp)
                                mem[_665 + _661 + 103] = uint32(block.timestamp)
                                mem[_665 + _661 + 135] = _844
                                uint256(_getNodeNumberOf[mem[0]].field_0)++
                                mem[0] = sha3(mem[0], 0)
                                uint8(stor[(2 * uint256(stor[_878].field_0)) + sha3(_878)].field_0) = uint8(cd[36])
                                uint32(stor[(2 * uint256(stor[_878].field_0)) + sha3(_878)].field_8) = uint32(block.timestamp)
                                uint32(stor[(2 * uint256(stor[_878].field_0)) + sha3(_878)].field_40) = uint32(block.timestamp)
                                _885 = mem[_844]
                                if bool(stor[(2 * uint256(stor[_878].field_0)) + sha3(_878) + 1].field_0):
                                    if bool(stor[(2 * uint256(stor[_878].field_0)) + sha3(_878) + 1].field_0) == uint255(uint256(stor[(2 * uint256(stor[_878].field_0)) + sha3(_878) + 1].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = (2 * uint256(stor[_878].field_0)) + sha3(_878) + 1
                                    if not _885:
                                        uint256(stor[(2 * uint256(stor[_878].field_0)) + sha3(_878) + 1].field_0) = 0
                                        idx = sha3((2 * uint256(stor[_878].field_0)) + sha3(_878) + 1)
                                        while sha3((2 * uint256(stor[_878].field_0)) + sha3(_878) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_878].field_0)) + sha3(_878) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        uint256(stor[(2 * uint256(stor[_878].field_0)) + sha3(_878) + 1].field_0) = (2 * _885) + 1
                                        s = sha3((2 * uint256(stor[_878].field_0)) + sha3(_878) + 1)
                                        idx = _844 + 32
                                        while _844 + _885 + 32 > idx:
                                            uint256(stor[s].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((2 * uint256(stor[_878].field_0)) + sha3(_878) + 1) + (Mask(251, 0, _885 + 31) >> 5)
                                        while sha3((2 * uint256(stor[_878].field_0)) + sha3(_878) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_878].field_0)) + sha3(_878) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor[(2 * uint256(stor[_878].field_0)) + sha3(_878) + 1].field_0) == stor[(2 * uint256(stor[_878].field_0)) + sha3(_878) + 1].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = (2 * uint256(stor[_878].field_0)) + sha3(_878) + 1
                                    if not _885:
                                        uint256(stor[(2 * uint256(stor[_878].field_0)) + sha3(_878) + 1].field_0) = 0
                                        idx = sha3((2 * uint256(stor[_878].field_0)) + sha3(_878) + 1)
                                        while sha3((2 * uint256(stor[_878].field_0)) + sha3(_878) + 1) + (stor[(2 * uint256(stor[_878].field_0)) + sha3(_878) + 1].field_1 % 128 + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        uint256(stor[(2 * uint256(stor[_878].field_0)) + sha3(_878) + 1].field_0) = (2 * _885) + 1
                                        s = sha3((2 * uint256(stor[_878].field_0)) + sha3(_878) + 1)
                                        idx = _844 + 32
                                        while _844 + _885 + 32 > idx:
                                            uint256(stor[s].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((2 * uint256(stor[_878].field_0)) + sha3(_878) + 1) + (Mask(251, 0, _885 + 31) >> 5)
                                        while sha3((2 * uint256(stor[_878].field_0)) + sha3(_878) + 1) + (stor[(2 * uint256(stor[_878].field_0)) + sha3(_878) + 1].field_1 % 128 + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s > !cd[68]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + cd[68]
            continue 
        if not mem[96]:
            if s > 0:
                var41001 = 32
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < s:
                revert with 0, 17
            if totalNodesCreated > !-s:
                revert with 0, 17
            totalNodesCreated -= s
        else:
            if mem[96] and cd[68] > -1 / mem[96]:
                revert with 0, 17
            if not mem[96]:
                revert with 0, 18
            if mem[96] * cd[68] / mem[96] != cd[68]:
                revert with 0, 'SafeMath: multiplication overflow'
            if s > mem[96] * cd[68]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if mem[96] * cd[68] < s:
                revert with 0, 17
            if totalNodesCreated > !((mem[96] * cd[68]) - s):
                revert with 0, 17
            totalNodesCreated = totalNodesCreated + (mem[96] * cd[68]) - s
    else:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
        mem[0] = uint8(cd[36])
        mem[32] = 1
        if not uint256(sub_385c95f4[cd[36] << 248].field_0):
            revert with 0, 'Batch Create: Invalid node tier'
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            _235 = sha3(mem[(32 * idx) + 140 len 20], 0)
            if uint256(_getNodeNumberOf[mem[(32 * idx) + 140 len 20]].field_0) > !cd[68]:
                revert with 0, 17
            if uint256(_getNodeNumberOf[mem[(32 * idx) + 140 len 20]].field_0) + cd[68] < sub_f90f0eaa:
                t = 0
                while t < cd[68]:
                    if t > !uint256(stor[_235].field_0):
                        revert with 0, 17
                    if 1 > !(t + uint256(stor[_235].field_0)):
                        revert with 0, 17
                    if not t + uint256(stor[_235].field_0) + 1:
                        _353 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_353] = 1
                        mem[_353 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _355 = mem[64]
                        mem[mem[64] + 32] = 'PSINODE' << 200
                        s = 0
                        while s < 1:
                            mem[s + _355 + 39] = mem[s + _353 + 32]
                            s = s + 32
                            continue 
                        mem[_355 + 40] = 0
                        _456 = mem[64]
                        mem[mem[64]] = _355 + -mem[64] + 8
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 0
                        _470 = sha3(mem[(32 * idx) + 140 len 20], 0)
                        mem[64] = _355 + 168
                        mem[_355 + 40] = uint8(cd[36])
                        mem[_355 + 72] = uint32(block.timestamp)
                        mem[_355 + 104] = uint32(block.timestamp)
                        mem[_355 + 136] = _456
                        uint256(_getNodeNumberOf[mem[0]].field_0)++
                        mem[0] = sha3(mem[0], 0)
                        uint8(stor[(2 * uint256(stor[_470].field_0)) + sha3(_470)].field_0) = uint8(cd[36])
                        uint32(stor[(2 * uint256(stor[_470].field_0)) + sha3(_470)].field_8) = uint32(block.timestamp)
                        uint32(stor[(2 * uint256(stor[_470].field_0)) + sha3(_470)].field_40) = uint32(block.timestamp)
                        _477 = mem[_456]
                        if bool(stor[(2 * uint256(stor[_470].field_0)) + sha3(_470) + 1].field_0):
                            if bool(stor[(2 * uint256(stor[_470].field_0)) + sha3(_470) + 1].field_0) == uint255(uint256(stor[(2 * uint256(stor[_470].field_0)) + sha3(_470) + 1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = (2 * uint256(stor[_470].field_0)) + sha3(_470) + 1
                            if not _477:
                                uint256(stor[(2 * uint256(stor[_470].field_0)) + sha3(_470) + 1].field_0) = 0
                                idx = sha3((2 * uint256(stor[_470].field_0)) + sha3(_470) + 1)
                                while sha3((2 * uint256(stor[_470].field_0)) + sha3(_470) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_470].field_0)) + sha3(_470) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                    uint256(stor[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                continue 
                            uint256(stor[(2 * uint256(stor[_470].field_0)) + sha3(_470) + 1].field_0) = (2 * _477) + 1
                            s = sha3((2 * uint256(stor[_470].field_0)) + sha3(_470) + 1)
                            idx = _456 + 32
                            while _456 + _477 + 32 > idx:
                                uint256(stor[s].field_0) = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3((2 * uint256(stor[_470].field_0)) + sha3(_470) + 1) + (Mask(251, 0, _477 + 31) >> 5)
                            while sha3((2 * uint256(stor[_470].field_0)) + sha3(_470) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_470].field_0)) + sha3(_470) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                uint256(stor[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            if sha3((2 * uint256(stor[_470].field_0)) + sha3(_470) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_470].field_0)) + sha3(_470) + 1].field_0)) * 0.5) + 31 / 32) == -1:
                                revert with 0, 17
                            idx = sha3((2 * uint256(stor[_470].field_0)) + sha3(_470) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_470].field_0)) + sha3(_470) + 1].field_0)) * 0.5) + 31 / 32) + 1
                            continue 
                        if bool(stor[(2 * uint256(stor[_470].field_0)) + sha3(_470) + 1].field_0) == stor[(2 * uint256(stor[_470].field_0)) + sha3(_470) + 1].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = (2 * uint256(stor[_470].field_0)) + sha3(_470) + 1
                        if not _477:
                            uint256(stor[(2 * uint256(stor[_470].field_0)) + sha3(_470) + 1].field_0) = 0
                            idx = sha3((2 * uint256(stor[_470].field_0)) + sha3(_470) + 1)
                            while sha3((2 * uint256(stor[_470].field_0)) + sha3(_470) + 1) + (stor[(2 * uint256(stor[_470].field_0)) + sha3(_470) + 1].field_1 % 128 + 31 / 32) > idx:
                                uint256(stor[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            uint256(stor[(2 * uint256(stor[_470].field_0)) + sha3(_470) + 1].field_0) = (2 * _477) + 1
                            s = sha3((2 * uint256(stor[_470].field_0)) + sha3(_470) + 1)
                            idx = _456 + 32
                            while _456 + _477 + 32 > idx:
                                uint256(stor[s].field_0) = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3((2 * uint256(stor[_470].field_0)) + sha3(_470) + 1) + (Mask(251, 0, _477 + 31) >> 5)
                            while sha3((2 * uint256(stor[_470].field_0)) + sha3(_470) + 1) + (stor[(2 * uint256(stor[_470].field_0)) + sha3(_470) + 1].field_1 % 128 + 31 / 32) > idx:
                                uint256(stor[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                    else:
                        u = 0
                        s = t + uint256(stor[_235].field_0) + 1
                        while s:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            s = s / 10
                            continue 
                        if u > test266151307():
                            revert with 0, 65
                        _431 = mem[64]
                        mem[mem[64]] = u
                        mem[64] = mem[64] + ceil32(u) + 32
                        if not u:
                            v = u
                            s = t + uint256(stor[_235].field_0) + 1
                            while s:
                                if v < 1:
                                    revert with 0, 17
                                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                    revert with 0, 17
                                if s < 10 * s / 10:
                                    revert with 0, 17
                                if 48 > -uint8(s - (10 * s / 10)) + 255:
                                    revert with 0, 17
                                if v - 1 >= mem[_431]:
                                    revert with 0, 50
                                mem[v + _431 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                                v = v - 1
                                s = s / 10
                                continue 
                            _662 = mem[64]
                            mem[mem[64] + 32] = 'PSINODE' << 200
                            _666 = mem[_431]
                            s = 0
                            while s < _666:
                                mem[s + _662 + 39] = mem[s + _431 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_666) <= _666:
                                _820 = mem[64]
                                mem[mem[64]] = _666 + _662 + -mem[64] + 7
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 0
                                _847 = sha3(mem[(32 * idx) + 140 len 20], 0)
                                mem[64] = _666 + _662 + 167
                                mem[_666 + _662 + 39] = uint8(cd[36])
                                mem[_666 + _662 + 71] = uint32(block.timestamp)
                                mem[_666 + _662 + 103] = uint32(block.timestamp)
                                mem[_666 + _662 + 135] = _820
                                uint256(_getNodeNumberOf[mem[0]].field_0)++
                                mem[0] = sha3(mem[0], 0)
                                uint8(stor[(2 * uint256(stor[_847].field_0)) + sha3(_847)].field_0) = uint8(cd[36])
                                uint32(stor[(2 * uint256(stor[_847].field_0)) + sha3(_847)].field_8) = uint32(block.timestamp)
                                uint32(stor[(2 * uint256(stor[_847].field_0)) + sha3(_847)].field_40) = uint32(block.timestamp)
                                _854 = mem[_820]
                                if bool(stor[(2 * uint256(stor[_847].field_0)) + sha3(_847) + 1].field_0):
                                    if bool(stor[(2 * uint256(stor[_847].field_0)) + sha3(_847) + 1].field_0) == uint255(uint256(stor[(2 * uint256(stor[_847].field_0)) + sha3(_847) + 1].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = (2 * uint256(stor[_847].field_0)) + sha3(_847) + 1
                                    if not _854:
                                        uint256(stor[(2 * uint256(stor[_847].field_0)) + sha3(_847) + 1].field_0) = 0
                                        idx = sha3((2 * uint256(stor[_847].field_0)) + sha3(_847) + 1)
                                        while sha3((2 * uint256(stor[_847].field_0)) + sha3(_847) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_847].field_0)) + sha3(_847) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        uint256(stor[(2 * uint256(stor[_847].field_0)) + sha3(_847) + 1].field_0) = (2 * _854) + 1
                                        s = sha3((2 * uint256(stor[_847].field_0)) + sha3(_847) + 1)
                                        idx = _820 + 32
                                        while _820 + _854 + 32 > idx:
                                            uint256(stor[s].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((2 * uint256(stor[_847].field_0)) + sha3(_847) + 1) + (Mask(251, 0, _854 + 31) >> 5)
                                        while sha3((2 * uint256(stor[_847].field_0)) + sha3(_847) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_847].field_0)) + sha3(_847) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor[(2 * uint256(stor[_847].field_0)) + sha3(_847) + 1].field_0) == stor[(2 * uint256(stor[_847].field_0)) + sha3(_847) + 1].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = (2 * uint256(stor[_847].field_0)) + sha3(_847) + 1
                                    if not _854:
                                        uint256(stor[(2 * uint256(stor[_847].field_0)) + sha3(_847) + 1].field_0) = 0
                                        idx = sha3((2 * uint256(stor[_847].field_0)) + sha3(_847) + 1)
                                        while sha3((2 * uint256(stor[_847].field_0)) + sha3(_847) + 1) + (stor[(2 * uint256(stor[_847].field_0)) + sha3(_847) + 1].field_1 % 128 + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        uint256(stor[(2 * uint256(stor[_847].field_0)) + sha3(_847) + 1].field_0) = (2 * _854) + 1
                                        s = sha3((2 * uint256(stor[_847].field_0)) + sha3(_847) + 1)
                                        idx = _820 + 32
                                        while _820 + _854 + 32 > idx:
                                            uint256(stor[s].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((2 * uint256(stor[_847].field_0)) + sha3(_847) + 1) + (Mask(251, 0, _854 + 31) >> 5)
                                        while sha3((2 * uint256(stor[_847].field_0)) + sha3(_847) + 1) + (stor[(2 * uint256(stor[_847].field_0)) + sha3(_847) + 1].field_1 % 128 + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                mem[_662 + _666 + 39] = 0
                                _855 = mem[64]
                                mem[mem[64]] = _666 + _662 + -mem[64] + 7
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 0
                                _887 = sha3(mem[(32 * idx) + 140 len 20], 0)
                                mem[64] = _666 + _662 + 167
                                mem[_666 + _662 + 39] = uint8(cd[36])
                                mem[_666 + _662 + 71] = uint32(block.timestamp)
                                mem[_666 + _662 + 103] = uint32(block.timestamp)
                                mem[_666 + _662 + 135] = _855
                                uint256(_getNodeNumberOf[mem[0]].field_0)++
                                mem[0] = sha3(mem[0], 0)
                                uint8(stor[(2 * uint256(stor[_887].field_0)) + sha3(_887)].field_0) = uint8(cd[36])
                                uint32(stor[(2 * uint256(stor[_887].field_0)) + sha3(_887)].field_8) = uint32(block.timestamp)
                                uint32(stor[(2 * uint256(stor[_887].field_0)) + sha3(_887)].field_40) = uint32(block.timestamp)
                                _894 = mem[_855]
                                if bool(stor[(2 * uint256(stor[_887].field_0)) + sha3(_887) + 1].field_0):
                                    if bool(stor[(2 * uint256(stor[_887].field_0)) + sha3(_887) + 1].field_0) == uint255(uint256(stor[(2 * uint256(stor[_887].field_0)) + sha3(_887) + 1].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = (2 * uint256(stor[_887].field_0)) + sha3(_887) + 1
                                    if not _894:
                                        uint256(stor[(2 * uint256(stor[_887].field_0)) + sha3(_887) + 1].field_0) = 0
                                        idx = sha3((2 * uint256(stor[_887].field_0)) + sha3(_887) + 1)
                                        while sha3((2 * uint256(stor[_887].field_0)) + sha3(_887) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_887].field_0)) + sha3(_887) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        uint256(stor[(2 * uint256(stor[_887].field_0)) + sha3(_887) + 1].field_0) = (2 * _894) + 1
                                        s = sha3((2 * uint256(stor[_887].field_0)) + sha3(_887) + 1)
                                        idx = _855 + 32
                                        while _855 + _894 + 32 > idx:
                                            uint256(stor[s].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((2 * uint256(stor[_887].field_0)) + sha3(_887) + 1) + (Mask(251, 0, _894 + 31) >> 5)
                                        while sha3((2 * uint256(stor[_887].field_0)) + sha3(_887) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_887].field_0)) + sha3(_887) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor[(2 * uint256(stor[_887].field_0)) + sha3(_887) + 1].field_0) == stor[(2 * uint256(stor[_887].field_0)) + sha3(_887) + 1].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = (2 * uint256(stor[_887].field_0)) + sha3(_887) + 1
                                    if not _894:
                                        uint256(stor[(2 * uint256(stor[_887].field_0)) + sha3(_887) + 1].field_0) = 0
                                        idx = sha3((2 * uint256(stor[_887].field_0)) + sha3(_887) + 1)
                                        while sha3((2 * uint256(stor[_887].field_0)) + sha3(_887) + 1) + (stor[(2 * uint256(stor[_887].field_0)) + sha3(_887) + 1].field_1 % 128 + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        uint256(stor[(2 * uint256(stor[_887].field_0)) + sha3(_887) + 1].field_0) = (2 * _894) + 1
                                        s = sha3((2 * uint256(stor[_887].field_0)) + sha3(_887) + 1)
                                        idx = _855 + 32
                                        while _855 + _894 + 32 > idx:
                                            uint256(stor[s].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((2 * uint256(stor[_887].field_0)) + sha3(_887) + 1) + (Mask(251, 0, _894 + 31) >> 5)
                                        while sha3((2 * uint256(stor[_887].field_0)) + sha3(_887) + 1) + (stor[(2 * uint256(stor[_887].field_0)) + sha3(_887) + 1].field_1 % 128 + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[_431 + 32 len u] = call.data[calldata.size len u]
                            v = u
                            s = t + uint256(stor[_235].field_0) + 1
                            while s:
                                if v < 1:
                                    revert with 0, 17
                                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                    revert with 0, 17
                                if s < 10 * s / 10:
                                    revert with 0, 17
                                if 48 > -uint8(s - (10 * s / 10)) + 255:
                                    revert with 0, 17
                                if v - 1 >= mem[_431]:
                                    revert with 0, 50
                                mem[v + _431 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                                v = v - 1
                                s = s / 10
                                continue 
                            _663 = mem[64]
                            mem[mem[64] + 32] = 'PSINODE' << 200
                            _667 = mem[_431]
                            s = 0
                            while s < _667:
                                mem[s + _663 + 39] = mem[s + _431 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_667) <= _667:
                                _822 = mem[64]
                                mem[mem[64]] = _667 + _663 + -mem[64] + 7
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 0
                                _858 = sha3(mem[(32 * idx) + 140 len 20], 0)
                                mem[64] = _667 + _663 + 167
                                mem[_667 + _663 + 39] = uint8(cd[36])
                                mem[_667 + _663 + 71] = uint32(block.timestamp)
                                mem[_667 + _663 + 103] = uint32(block.timestamp)
                                mem[_667 + _663 + 135] = _822
                                uint256(_getNodeNumberOf[mem[0]].field_0)++
                                mem[0] = sha3(mem[0], 0)
                                uint8(stor[(2 * uint256(stor[_858].field_0)) + sha3(_858)].field_0) = uint8(cd[36])
                                uint32(stor[(2 * uint256(stor[_858].field_0)) + sha3(_858)].field_8) = uint32(block.timestamp)
                                uint32(stor[(2 * uint256(stor[_858].field_0)) + sha3(_858)].field_40) = uint32(block.timestamp)
                                _865 = mem[_822]
                                if bool(stor[(2 * uint256(stor[_858].field_0)) + sha3(_858) + 1].field_0):
                                    if bool(stor[(2 * uint256(stor[_858].field_0)) + sha3(_858) + 1].field_0) == uint255(uint256(stor[(2 * uint256(stor[_858].field_0)) + sha3(_858) + 1].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = (2 * uint256(stor[_858].field_0)) + sha3(_858) + 1
                                    if not _865:
                                        uint256(stor[(2 * uint256(stor[_858].field_0)) + sha3(_858) + 1].field_0) = 0
                                        idx = sha3((2 * uint256(stor[_858].field_0)) + sha3(_858) + 1)
                                        while sha3((2 * uint256(stor[_858].field_0)) + sha3(_858) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_858].field_0)) + sha3(_858) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        uint256(stor[(2 * uint256(stor[_858].field_0)) + sha3(_858) + 1].field_0) = (2 * _865) + 1
                                        s = sha3((2 * uint256(stor[_858].field_0)) + sha3(_858) + 1)
                                        idx = _822 + 32
                                        while _822 + _865 + 32 > idx:
                                            uint256(stor[s].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((2 * uint256(stor[_858].field_0)) + sha3(_858) + 1) + (Mask(251, 0, _865 + 31) >> 5)
                                        while sha3((2 * uint256(stor[_858].field_0)) + sha3(_858) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_858].field_0)) + sha3(_858) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor[(2 * uint256(stor[_858].field_0)) + sha3(_858) + 1].field_0) == stor[(2 * uint256(stor[_858].field_0)) + sha3(_858) + 1].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = (2 * uint256(stor[_858].field_0)) + sha3(_858) + 1
                                    if not _865:
                                        uint256(stor[(2 * uint256(stor[_858].field_0)) + sha3(_858) + 1].field_0) = 0
                                        idx = sha3((2 * uint256(stor[_858].field_0)) + sha3(_858) + 1)
                                        while sha3((2 * uint256(stor[_858].field_0)) + sha3(_858) + 1) + (stor[(2 * uint256(stor[_858].field_0)) + sha3(_858) + 1].field_1 % 128 + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        uint256(stor[(2 * uint256(stor[_858].field_0)) + sha3(_858) + 1].field_0) = (2 * _865) + 1
                                        s = sha3((2 * uint256(stor[_858].field_0)) + sha3(_858) + 1)
                                        idx = _822 + 32
                                        while _822 + _865 + 32 > idx:
                                            uint256(stor[s].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((2 * uint256(stor[_858].field_0)) + sha3(_858) + 1) + (Mask(251, 0, _865 + 31) >> 5)
                                        while sha3((2 * uint256(stor[_858].field_0)) + sha3(_858) + 1) + (stor[(2 * uint256(stor[_858].field_0)) + sha3(_858) + 1].field_1 % 128 + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                mem[_663 + _667 + 39] = 0
                                _866 = mem[64]
                                mem[mem[64]] = _667 + _663 + -mem[64] + 7
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 0
                                _896 = sha3(mem[(32 * idx) + 140 len 20], 0)
                                mem[64] = _667 + _663 + 167
                                mem[_667 + _663 + 39] = uint8(cd[36])
                                mem[_667 + _663 + 71] = uint32(block.timestamp)
                                mem[_667 + _663 + 103] = uint32(block.timestamp)
                                mem[_667 + _663 + 135] = _866
                                uint256(_getNodeNumberOf[mem[0]].field_0)++
                                mem[0] = sha3(mem[0], 0)
                                uint8(stor[(2 * uint256(stor[_896].field_0)) + sha3(_896)].field_0) = uint8(cd[36])
                                uint32(stor[(2 * uint256(stor[_896].field_0)) + sha3(_896)].field_8) = uint32(block.timestamp)
                                uint32(stor[(2 * uint256(stor[_896].field_0)) + sha3(_896)].field_40) = uint32(block.timestamp)
                                _903 = mem[_866]
                                if bool(stor[(2 * uint256(stor[_896].field_0)) + sha3(_896) + 1].field_0):
                                    if bool(stor[(2 * uint256(stor[_896].field_0)) + sha3(_896) + 1].field_0) == uint255(uint256(stor[(2 * uint256(stor[_896].field_0)) + sha3(_896) + 1].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = (2 * uint256(stor[_896].field_0)) + sha3(_896) + 1
                                    if not _903:
                                        uint256(stor[(2 * uint256(stor[_896].field_0)) + sha3(_896) + 1].field_0) = 0
                                        idx = sha3((2 * uint256(stor[_896].field_0)) + sha3(_896) + 1)
                                        while sha3((2 * uint256(stor[_896].field_0)) + sha3(_896) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_896].field_0)) + sha3(_896) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        uint256(stor[(2 * uint256(stor[_896].field_0)) + sha3(_896) + 1].field_0) = (2 * _903) + 1
                                        s = sha3((2 * uint256(stor[_896].field_0)) + sha3(_896) + 1)
                                        idx = _866 + 32
                                        while _866 + _903 + 32 > idx:
                                            uint256(stor[s].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((2 * uint256(stor[_896].field_0)) + sha3(_896) + 1) + (Mask(251, 0, _903 + 31) >> 5)
                                        while sha3((2 * uint256(stor[_896].field_0)) + sha3(_896) + 1) + ((uint255(uint256(stor[(2 * uint256(stor[_896].field_0)) + sha3(_896) + 1].field_0)) * 0.5) + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor[(2 * uint256(stor[_896].field_0)) + sha3(_896) + 1].field_0) == stor[(2 * uint256(stor[_896].field_0)) + sha3(_896) + 1].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = (2 * uint256(stor[_896].field_0)) + sha3(_896) + 1
                                    if not _903:
                                        uint256(stor[(2 * uint256(stor[_896].field_0)) + sha3(_896) + 1].field_0) = 0
                                        idx = sha3((2 * uint256(stor[_896].field_0)) + sha3(_896) + 1)
                                        while sha3((2 * uint256(stor[_896].field_0)) + sha3(_896) + 1) + (stor[(2 * uint256(stor[_896].field_0)) + sha3(_896) + 1].field_1 % 128 + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        uint256(stor[(2 * uint256(stor[_896].field_0)) + sha3(_896) + 1].field_0) = (2 * _903) + 1
                                        s = sha3((2 * uint256(stor[_896].field_0)) + sha3(_896) + 1)
                                        idx = _866 + 32
                                        while _866 + _903 + 32 > idx:
                                            uint256(stor[s].field_0) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((2 * uint256(stor[_896].field_0)) + sha3(_896) + 1) + (Mask(251, 0, _903 + 31) >> 5)
                                        while sha3((2 * uint256(stor[_896].field_0)) + sha3(_896) + 1) + (stor[(2 * uint256(stor[_896].field_0)) + sha3(_896) + 1].field_1 % 128 + 31 / 32) > idx:
                                            uint256(stor[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s > !cd[68]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + cd[68]
            continue 
        if not mem[96]:
            if s > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < s:
                revert with 0, 17
            if totalNodesCreated > !-s:
                revert with 0, 17
            totalNodesCreated -= s
        else:
            if mem[96] and cd[68] > -1 / mem[96]:
                revert with 0, 17
            if not mem[96]:
                revert with 0, 18
            if mem[96] * cd[68] / mem[96] != cd[68]:
                revert with 0, 'SafeMath: multiplication overflow'
            if s > mem[96] * cd[68]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if mem[96] * cd[68] < s:
                revert with 0, 17
            if totalNodesCreated > !((mem[96] * cd[68]) - s):
                revert with 0, 17
            totalNodesCreated = totalNodesCreated + (mem[96] * cd[68]) - s
}

function _cashoutAllNodesReward(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == tokenAddress:
        mem[0] = arg1
        mem[32] = 0
        if not uint256(_getNodeNumberOf[address(arg1)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
        idx = 0
        s = 0
        while idx < uint256(_getNodeNumberOf[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 0)
            _294 = mem[64]
            mem[64] = mem[64] + 128
            mem[_294] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
            mem[_294 + 32] = uint32(_getNodeNumberOf[address(arg1)][idx].field_8)
            mem[_294 + 64] = uint32(_getNodeNumberOf[address(arg1)][idx].field_40)
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                    revert with 0, 34
                _301 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) + 32
                mem[_301] = uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                    if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                        mem[_294 + 96] = _301
                        mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                        mem[32] = 1
                        _313 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_313] = 30
                        mem[_313 + 32] = 'SafeMath: subtraction overflow'
                        if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                            _349 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _349 + 68] = mem[idx + _313 + 32]
                                idx = idx + 32
                                continue 
                            mem[_349 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _349 + -mem[64] + 100
                        if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 17
                        if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 18
                            if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                revert with 0, 17
                    else:
                        if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                            mem[_301 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                            mem[_294 + 96] = _301
                            mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                            mem[32] = 1
                            _350 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_350] = 30
                            mem[_350 + 32] = 'SafeMath: subtraction overflow'
                            if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                                _389 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _389 + 68] = mem[idx + _350 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_389 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _389 + -mem[64] + 100
                            if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                    revert with 0, 17
                                if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                    revert with 0, 18
                                if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                    revert with 0, 17
                        else:
                            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                            mem[_301 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                            s = _301 + 32
                            t = sha3(mem[0])
                            while _301 + (uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) > s:
                                mem[s + 32] = uint256(sub_385c95f4[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_294 + 96] = _301
                            mem[0] = mem[_294 + 31 len 1]
                            mem[32] = 1
                            _594 = sha3(mem[0], 1)
                            _595 = mem[_294 + 64]
                            _617 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_617] = 30
                            mem[_617 + 32] = 'SafeMath: subtraction overflow'
                            if uint32(_595) > block.timestamp:
                                _642 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _642 + 68] = mem[idx + _617 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_642 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _642 + -mem[64] + 100
                            if block.timestamp < uint32(_595):
                                revert with 0, 17
                            if block.timestamp - uint32(_595):
                                if block.timestamp - uint32(_595) and uint256(stor[_594].field_0) > -1 / block.timestamp - uint32(_595):
                                    revert with 0, 17
                                if not block.timestamp - uint32(_595):
                                    revert with 0, 18
                                if (block.timestamp * uint256(stor[_594].field_0)) - (uint32(_595) * uint256(stor[_594].field_0)) / block.timestamp - uint32(_595) != uint256(stor[_594].field_0):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > !((block.timestamp * uint256(stor[_594].field_0)) - (uint32(_595) * uint256(stor[_594].field_0))):
                                    revert with 0, 17
                else:
                    if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if not _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                        mem[_294 + 96] = _301
                        mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                        mem[32] = 1
                        _334 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_334] = 30
                        mem[_334 + 32] = 'SafeMath: subtraction overflow'
                        if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                            _370 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _370 + 68] = mem[idx + _334 + 32]
                                idx = idx + 32
                                continue 
                            mem[_370 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _370 + -mem[64] + 100
                        if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 17
                        if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 18
                            if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                revert with 0, 17
                    else:
                        if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                            mem[_301 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                            mem[_294 + 96] = _301
                            mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                            mem[32] = 1
                            _371 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_371] = 30
                            mem[_371 + 32] = 'SafeMath: subtraction overflow'
                            if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                                _411 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _411 + 68] = mem[idx + _371 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_411 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _411 + -mem[64] + 100
                            if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                    revert with 0, 17
                                if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                    revert with 0, 18
                                if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                    revert with 0, 17
                        else:
                            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                            mem[_301 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                            s = _301 + 32
                            t = sha3(mem[0])
                            while _301 + _getNodeNumberOf[address(arg1)][idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(sub_385c95f4[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_294 + 96] = _301
                            mem[0] = mem[_294 + 31 len 1]
                            mem[32] = 1
                            _597 = sha3(mem[0], 1)
                            _598 = mem[_294 + 64]
                            _618 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_618] = 30
                            mem[_618 + 32] = 'SafeMath: subtraction overflow'
                            if uint32(_598) > block.timestamp:
                                _645 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _645 + 68] = mem[idx + _618 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_645 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _645 + -mem[64] + 100
                            if block.timestamp < uint32(_598):
                                revert with 0, 17
                            if block.timestamp - uint32(_598):
                                if block.timestamp - uint32(_598) and uint256(stor[_597].field_0) > -1 / block.timestamp - uint32(_598):
                                    revert with 0, 17
                                if not block.timestamp - uint32(_598):
                                    revert with 0, 18
                                if (block.timestamp * uint256(stor[_597].field_0)) - (uint32(_598) * uint256(stor[_597].field_0)) / block.timestamp - uint32(_598) != uint256(stor[_597].field_0):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > !((block.timestamp * uint256(stor[_597].field_0)) - (uint32(_598) * uint256(stor[_597].field_0))):
                                    revert with 0, 17
            else:
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                    revert with 0, 34
                _303 = mem[64]
                mem[64] = mem[64] + ceil32(_getNodeNumberOf[address(arg1)][idx].field_257 % 128) + 32
                mem[_303] = _getNodeNumberOf[address(arg1)][idx].field_257 % 128
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                    if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                        mem[_294 + 96] = _303
                        mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                        mem[32] = 1
                        _335 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_335] = 30
                        mem[_335 + 32] = 'SafeMath: subtraction overflow'
                        if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                            _372 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _372 + 68] = mem[idx + _335 + 32]
                                idx = idx + 32
                                continue 
                            mem[_372 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _372 + -mem[64] + 100
                        if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 17
                        if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 18
                            if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                revert with 0, 17
                    else:
                        if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                            mem[_303 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                            mem[_294 + 96] = _303
                            mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                            mem[32] = 1
                            _373 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_373] = 30
                            mem[_373 + 32] = 'SafeMath: subtraction overflow'
                            if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                                _414 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _414 + 68] = mem[idx + _373 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_414 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _414 + -mem[64] + 100
                            if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                    revert with 0, 17
                                if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                    revert with 0, 18
                                if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                    revert with 0, 17
                        else:
                            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                            mem[_303 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                            s = _303 + 32
                            t = sha3(mem[0])
                            while _303 + (uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) > s:
                                mem[s + 32] = uint256(sub_385c95f4[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_294 + 96] = _303
                            mem[0] = mem[_294 + 31 len 1]
                            mem[32] = 1
                            _600 = sha3(mem[0], 1)
                            _601 = mem[_294 + 64]
                            _619 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_619] = 30
                            mem[_619 + 32] = 'SafeMath: subtraction overflow'
                            if uint32(_601) > block.timestamp:
                                _648 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _648 + 68] = mem[idx + _619 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_648 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _648 + -mem[64] + 100
                            if block.timestamp < uint32(_601):
                                revert with 0, 17
                            if block.timestamp - uint32(_601):
                                if block.timestamp - uint32(_601) and uint256(stor[_600].field_0) > -1 / block.timestamp - uint32(_601):
                                    revert with 0, 17
                                if not block.timestamp - uint32(_601):
                                    revert with 0, 18
                                if (block.timestamp * uint256(stor[_600].field_0)) - (uint32(_601) * uint256(stor[_600].field_0)) / block.timestamp - uint32(_601) != uint256(stor[_600].field_0):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > !((block.timestamp * uint256(stor[_600].field_0)) - (uint32(_601) * uint256(stor[_600].field_0))):
                                    revert with 0, 17
                else:
                    if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if not _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                        mem[_294 + 96] = _303
                        mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                        mem[32] = 1
                        _357 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_357] = 30
                        mem[_357 + 32] = 'SafeMath: subtraction overflow'
                        if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                            _396 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _396 + 68] = mem[idx + _357 + 32]
                                idx = idx + 32
                                continue 
                            mem[_396 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _396 + -mem[64] + 100
                        if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 17
                        if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 18
                            if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                revert with 0, 17
                    else:
                        if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                            mem[_303 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                            mem[_294 + 96] = _303
                            mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                            mem[32] = 1
                            _397 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_397] = 30
                            mem[_397 + 32] = 'SafeMath: subtraction overflow'
                            if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                                _431 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _431 + 68] = mem[idx + _397 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_431 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _431 + -mem[64] + 100
                            if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                    revert with 0, 17
                                if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                    revert with 0, 18
                                if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                    revert with 0, 17
                        else:
                            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                            mem[_303 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                            s = _303 + 32
                            t = sha3(mem[0])
                            while _303 + _getNodeNumberOf[address(arg1)][idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(sub_385c95f4[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_294 + 96] = _303
                            mem[0] = mem[_294 + 31 len 1]
                            mem[32] = 1
                            _603 = sha3(mem[0], 1)
                            _604 = mem[_294 + 64]
                            _620 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_620] = 30
                            mem[_620 + 32] = 'SafeMath: subtraction overflow'
                            if uint32(_604) > block.timestamp:
                                _651 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _651 + 68] = mem[idx + _620 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_651 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _651 + -mem[64] + 100
                            if block.timestamp < uint32(_604):
                                revert with 0, 17
                            if block.timestamp - uint32(_604):
                                if block.timestamp - uint32(_604) and uint256(stor[_603].field_0) > -1 / block.timestamp - uint32(_604):
                                    revert with 0, 17
                                if not block.timestamp - uint32(_604):
                                    revert with 0, 18
                                if (block.timestamp * uint256(stor[_603].field_0)) - (uint32(_604) * uint256(stor[_603].field_0)) / block.timestamp - uint32(_604) != uint256(stor[_603].field_0):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > !((block.timestamp * uint256(stor[_603].field_0)) - (uint32(_604) * uint256(stor[_603].field_0))):
                                    revert with 0, 17
            uint32(_getNodeNumberOf[address(arg1)][idx].field_40) = uint32(block.timestamp)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(sha3(address(arg1), 0)) + (2 * idx)
            continue 
    else:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
        mem[0] = arg1
        mem[32] = 0
        if not uint256(_getNodeNumberOf[address(arg1)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
        idx = 0
        s = 0
        while idx < uint256(_getNodeNumberOf[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 0)
            _296 = mem[64]
            mem[64] = mem[64] + 128
            mem[_296] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
            mem[_296 + 32] = uint32(_getNodeNumberOf[address(arg1)][idx].field_8)
            mem[_296 + 64] = uint32(_getNodeNumberOf[address(arg1)][idx].field_40)
            if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                    revert with 0, 34
                _302 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) + 32
                mem[_302] = uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                    if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                        mem[_296 + 96] = _302
                        mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                        mem[32] = 1
                        _322 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_322] = 30
                        mem[_322 + 32] = 'SafeMath: subtraction overflow'
                        if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                            _358 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _358 + 68] = mem[idx + _322 + 32]
                                idx = idx + 32
                                continue 
                            mem[_358 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _358 + -mem[64] + 100
                        if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 17
                        if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 18
                            if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                revert with 0, 17
                    else:
                        if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                            mem[_302 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                            mem[_296 + 96] = _302
                            mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                            mem[32] = 1
                            _359 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_359] = 30
                            mem[_359 + 32] = 'SafeMath: subtraction overflow'
                            if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                                _400 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _400 + 68] = mem[idx + _359 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_400 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _400 + -mem[64] + 100
                            if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                    revert with 0, 17
                                if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                    revert with 0, 18
                                if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                    revert with 0, 17
                        else:
                            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                            mem[_302 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                            s = _302 + 32
                            t = sha3(mem[0])
                            while _302 + (uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) > s:
                                mem[s + 32] = uint256(sub_385c95f4[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_296 + 96] = _302
                            mem[0] = mem[_296 + 31 len 1]
                            mem[32] = 1
                            _606 = sha3(mem[0], 1)
                            _607 = mem[_296 + 64]
                            _621 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_621] = 30
                            mem[_621 + 32] = 'SafeMath: subtraction overflow'
                            if uint32(_607) > block.timestamp:
                                _654 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _654 + 68] = mem[idx + _621 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_654 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _654 + -mem[64] + 100
                            if block.timestamp < uint32(_607):
                                revert with 0, 17
                            if block.timestamp - uint32(_607):
                                if block.timestamp - uint32(_607) and uint256(stor[_606].field_0) > -1 / block.timestamp - uint32(_607):
                                    revert with 0, 17
                                if not block.timestamp - uint32(_607):
                                    revert with 0, 18
                                if (block.timestamp * uint256(stor[_606].field_0)) - (uint32(_607) * uint256(stor[_606].field_0)) / block.timestamp - uint32(_607) != uint256(stor[_606].field_0):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > !((block.timestamp * uint256(stor[_606].field_0)) - (uint32(_607) * uint256(stor[_606].field_0))):
                                    revert with 0, 17
                else:
                    if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if not _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                        mem[_296 + 96] = _302
                        mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                        mem[32] = 1
                        _343 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_343] = 30
                        mem[_343 + 32] = 'SafeMath: subtraction overflow'
                        if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                            _380 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _380 + 68] = mem[idx + _343 + 32]
                                idx = idx + 32
                                continue 
                            mem[_380 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _380 + -mem[64] + 100
                        if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 17
                        if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 18
                            if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                revert with 0, 17
                    else:
                        if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                            mem[_302 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                            mem[_296 + 96] = _302
                            mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                            mem[32] = 1
                            _381 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_381] = 30
                            mem[_381 + 32] = 'SafeMath: subtraction overflow'
                            if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                                _420 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _420 + 68] = mem[idx + _381 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_420 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _420 + -mem[64] + 100
                            if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                    revert with 0, 17
                                if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                    revert with 0, 18
                                if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                    revert with 0, 17
                        else:
                            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                            mem[_302 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                            s = _302 + 32
                            t = sha3(mem[0])
                            while _302 + _getNodeNumberOf[address(arg1)][idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(sub_385c95f4[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_296 + 96] = _302
                            mem[0] = mem[_296 + 31 len 1]
                            mem[32] = 1
                            _609 = sha3(mem[0], 1)
                            _610 = mem[_296 + 64]
                            _622 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_622] = 30
                            mem[_622 + 32] = 'SafeMath: subtraction overflow'
                            if uint32(_610) > block.timestamp:
                                _657 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _657 + 68] = mem[idx + _622 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_657 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _657 + -mem[64] + 100
                            if block.timestamp < uint32(_610):
                                revert with 0, 17
                            if block.timestamp - uint32(_610):
                                if block.timestamp - uint32(_610) and uint256(stor[_609].field_0) > -1 / block.timestamp - uint32(_610):
                                    revert with 0, 17
                                if not block.timestamp - uint32(_610):
                                    revert with 0, 18
                                if (block.timestamp * uint256(stor[_609].field_0)) - (uint32(_610) * uint256(stor[_609].field_0)) / block.timestamp - uint32(_610) != uint256(stor[_609].field_0):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > !((block.timestamp * uint256(stor[_609].field_0)) - (uint32(_610) * uint256(stor[_609].field_0))):
                                    revert with 0, 17
            else:
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                    revert with 0, 34
                _304 = mem[64]
                mem[64] = mem[64] + ceil32(_getNodeNumberOf[address(arg1)][idx].field_257 % 128) + 32
                mem[_304] = _getNodeNumberOf[address(arg1)][idx].field_257 % 128
                if bool(_getNodeNumberOf[address(arg1)][idx].field_256):
                    if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(_getNodeNumberOf[address(arg1)][idx].field_256)):
                        mem[_296 + 96] = _304
                        mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                        mem[32] = 1
                        _344 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_344] = 30
                        mem[_344 + 32] = 'SafeMath: subtraction overflow'
                        if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                            _382 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _382 + 68] = mem[idx + _344 + 32]
                                idx = idx + 32
                                continue 
                            mem[_382 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _382 + -mem[64] + 100
                        if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 17
                        if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 18
                            if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                revert with 0, 17
                    else:
                        if 31 >= uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5:
                            mem[_304 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                            mem[_296 + 96] = _304
                            mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                            mem[32] = 1
                            _383 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_383] = 30
                            mem[_383 + 32] = 'SafeMath: subtraction overflow'
                            if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                                _423 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _423 + 68] = mem[idx + _383 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_423 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _423 + -mem[64] + 100
                            if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                    revert with 0, 17
                                if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                    revert with 0, 18
                                if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                    revert with 0, 17
                        else:
                            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                            mem[_304 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                            s = _304 + 32
                            t = sha3(mem[0])
                            while _304 + (uint255(uint256(_getNodeNumberOf[address(arg1)][idx].field_256)) * 0.5) > s:
                                mem[s + 32] = uint256(sub_385c95f4[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_296 + 96] = _304
                            mem[0] = mem[_296 + 31 len 1]
                            mem[32] = 1
                            _612 = sha3(mem[0], 1)
                            _613 = mem[_296 + 64]
                            _623 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_623] = 30
                            mem[_623 + 32] = 'SafeMath: subtraction overflow'
                            if uint32(_613) > block.timestamp:
                                _660 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _660 + 68] = mem[idx + _623 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_660 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _660 + -mem[64] + 100
                            if block.timestamp < uint32(_613):
                                revert with 0, 17
                            if block.timestamp - uint32(_613):
                                if block.timestamp - uint32(_613) and uint256(stor[_612].field_0) > -1 / block.timestamp - uint32(_613):
                                    revert with 0, 17
                                if not block.timestamp - uint32(_613):
                                    revert with 0, 18
                                if (block.timestamp * uint256(stor[_612].field_0)) - (uint32(_613) * uint256(stor[_612].field_0)) / block.timestamp - uint32(_613) != uint256(stor[_612].field_0):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > !((block.timestamp * uint256(stor[_612].field_0)) - (uint32(_613) * uint256(stor[_612].field_0))):
                                    revert with 0, 17
                else:
                    if bool(_getNodeNumberOf[address(arg1)][idx].field_256) == _getNodeNumberOf[address(arg1)][idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if not _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                        mem[_296 + 96] = _304
                        mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                        mem[32] = 1
                        _366 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_366] = 30
                        mem[_366 + 32] = 'SafeMath: subtraction overflow'
                        if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                            _407 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _407 + 68] = mem[idx + _366 + 32]
                                idx = idx + 32
                                continue 
                            mem[_407 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _407 + -mem[64] + 100
                        if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            revert with 0, 17
                        if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 18
                            if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                revert with 0, 17
                    else:
                        if 31 >= _getNodeNumberOf[address(arg1)][idx].field_257 % 128:
                            mem[_304 + 32] = 256 * Mask(248, 0, _getNodeNumberOf[address(arg1)][idx].field_264)
                            mem[_296 + 96] = _304
                            mem[0] = uint8(_getNodeNumberOf[address(arg1)][idx].field_0)
                            mem[32] = 1
                            _408 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_408] = 30
                            mem[_408 + 32] = 'SafeMath: subtraction overflow'
                            if uint32(_getNodeNumberOf[address(arg1)][idx].field_40) > block.timestamp:
                                _436 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _436 + 68] = mem[idx + _408 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_436 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _436 + -mem[64] + 100
                            if block.timestamp < uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                revert with 0, 17
                            if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                if block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) and uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0) > -1 / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                    revert with 0, 17
                                if not block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40):
                                    revert with 0, 18
                                if (block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) / block.timestamp - uint32(_getNodeNumberOf[address(arg1)][idx].field_40) != uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > !((block.timestamp * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0)) - (uint32(_getNodeNumberOf[address(arg1)][idx].field_40) * uint256(sub_385c95f4[uint8(stor0[address(arg1)][idx].field_0)].field_0))):
                                    revert with 0, 17
                        else:
                            mem[0] = sha3(sha3(address(arg1), 0)) + (2 * idx) + 1
                            mem[_304 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', '_getNodeNumberOf', 0)) + (2 * idx) + 1)].field_0)
                            s = _304 + 32
                            t = sha3(mem[0])
                            while _304 + _getNodeNumberOf[address(arg1)][idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(sub_385c95f4[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_296 + 96] = _304
                            mem[0] = mem[_296 + 31 len 1]
                            mem[32] = 1
                            _615 = sha3(mem[0], 1)
                            _616 = mem[_296 + 64]
                            _624 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_624] = 30
                            mem[_624 + 32] = 'SafeMath: subtraction overflow'
                            if uint32(_616) > block.timestamp:
                                _663 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _663 + 68] = mem[idx + _624 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_663 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _663 + -mem[64] + 100
                            if block.timestamp < uint32(_616):
                                revert with 0, 17
                            if block.timestamp - uint32(_616):
                                if block.timestamp - uint32(_616) and uint256(stor[_615].field_0) > -1 / block.timestamp - uint32(_616):
                                    revert with 0, 17
                                if not block.timestamp - uint32(_616):
                                    revert with 0, 18
                                if (block.timestamp * uint256(stor[_615].field_0)) - (uint32(_616) * uint256(stor[_615].field_0)) / block.timestamp - uint32(_616) != uint256(stor[_615].field_0):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > !((block.timestamp * uint256(stor[_615].field_0)) - (uint32(_616) * uint256(stor[_615].field_0))):
                                    revert with 0, 17
            uint32(_getNodeNumberOf[address(arg1)][idx].field_40) = uint32(block.timestamp)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(sha3(address(arg1), 0)) + (2 * idx)
            continue 
    return 0
}



}
