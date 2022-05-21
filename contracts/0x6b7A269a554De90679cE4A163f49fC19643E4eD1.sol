contract main {




// =====================  Runtime code  =====================


#
#  - _getNodesRewardAvailable(address arg1)
#  - _getNodeRewardAmountOf(address arg1, uint256 arg2)
#  - _cashoutNodeReward(address arg1, uint256 arg2)
#  - _getRewardAmountOf(address arg1, uint256 arg2)
#
array of struct _getNodeNumberOf;
array of uint256 stor1;
uint256 nodePrice;
uint8 stor3;
uint8 stor3; offset 8
uint256 gasForDistribution;
uint256 lastDistributionCount;
uint256 lastIndexProcessed;
uint256 totalNodesCreated;
uint256 totalRewardStaked;
mapping of uint8 stor9;

function _isNodeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(_getNodeNumberOf[address(arg1)].field_0)
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _getNodeNumberOf[address(arg1)].field_0
}

function distribution() payable {
    return bool(uint8(stor3.field_8))
}

function lastIndexProcessed() payable {
    return lastIndexProcessed
}

function autoDistri() payable {
    return bool(uint8(stor3.field_0))
}

function totalRewardStaked() payable {
    return totalRewardStaked
}

function totalNodesCreated() payable {
    return totalNodesCreated
}

function sub_d754d433(?) payable {
    return stor1.length
}

function gasForDistribution() payable {
    return gasForDistribution
}

function nodePrice() payable {
    return nodePrice
}

function lastDistributionCount() payable {
    return lastDistributionCount
}

function _fallback() payable {
    revert
}

function _changeNodePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor9[msg.sender]
    nodePrice = arg1
}

function _changeGasDistri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor9[msg.sender]
    gasForDistribution = arg1
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor9[msg.sender]
    stor9[address(arg1)] = 1
}

function _changeAutoDistri(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor9[msg.sender]
    uint8(stor3.field_0) = uint8(arg1)
}

function createNode(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    require stor9[msg.sender]
    mem[0] = arg1
    mem[32] = 0
    mem[64] = ceil32(ceil32(arg2.length)) + (32 * _getNodeNumberOf[address(arg1)].field_0) + 129
    mem[ceil32(ceil32(arg2.length)) + 97] = _getNodeNumberOf[address(arg1)].field_0
    s = ceil32(ceil32(arg2.length)) + 129
    idx = 0
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        _59 = mem[64]
        mem[64] = mem[64] + 128
        if _getNodeNumberOf[address(arg1)][idx].field_0:
            if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _73 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_73] = uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5
            if _getNodeNumberOf[address(arg1)][idx].field_0:
                if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, _getNodeNumberOf[address(arg1)][idx].field_0):
                    if 31 >= uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                        mem[_73 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                        mem[_73 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
                        t = _73 + 32
                        u = sha3(mem[0])
                        while _73 + (uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_59] = _73
                mem[_59 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_59 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_59 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not _getNodeNumberOf[address(arg1)][idx].field_1:
                mem[_59] = _73
                mem[_59 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_59 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_59 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_1:
                mem[_73 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                mem[_59] = _73
                mem[_59 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_59 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_59 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_73 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
            t = _73 + 32
            u = sha3(mem[0])
            while _73 + _getNodeNumberOf[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_59] = _73
            mem[_59 + 32] = _getNodeNumberOf[address(arg1)][u].field_256
            mem[_59 + 64] = _getNodeNumberOf[address(arg1)][u].field_512
            mem[_59 + 96] = _getNodeNumberOf[address(arg1)][u].field_768
            mem[t] = _59
            t = t + 32
            u = u + 1
            continue 
        if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _74 = mem[64]
        mem[64] = mem[64] + ceil32(_getNodeNumberOf[address(arg1)][idx].field_1) + 32
        mem[_74] = _getNodeNumberOf[address(arg1)][idx].field_1
        if _getNodeNumberOf[address(arg1)][idx].field_0:
            if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, _getNodeNumberOf[address(arg1)][idx].field_0):
                mem[_59] = _74
                mem[_59 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_59 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_59 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                mem[_74 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                mem[_59] = _74
                mem[_59 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_59 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_59 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_74 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
            t = _74 + 32
            u = sha3(mem[0])
            while _74 + (uint255(_getNodeNumberOf[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_59] = _74
            mem[_59 + 32] = _getNodeNumberOf[address(arg1)][u].field_256
            mem[_59 + 64] = _getNodeNumberOf[address(arg1)][u].field_512
            mem[_59 + 96] = _getNodeNumberOf[address(arg1)][u].field_768
            mem[t] = _59
            t = t + 32
            u = u + 1
            continue 
        if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if _getNodeNumberOf[address(arg1)][idx].field_1:
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_1:
                mem[_74 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                mem[_74 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
                t = _74 + 32
                u = sha3(mem[0])
                while _74 + _getNodeNumberOf[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_59] = _74
        mem[_59 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
        mem[_59 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
        mem[_59 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
        mem[s] = _59
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[ceil32(ceil32(arg2.length)) + 97]:
        if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
            revert with 0, 50
        if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
            revert with 0, 'CREATE NODE: Name not available'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[0] = arg1
    mem[32] = 0
    _120 = mem[64]
    mem[64] = mem[64] + 128
    mem[_120] = 96
    mem[_120 + 32] = block.timestamp
    mem[_120 + 64] = block.timestamp
    mem[_120 + 96] = 0
    _getNodeNumberOf[address(arg1)].field_0++
    if _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_0:
        if _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_0 == uint255(_getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_0) * 0.5 < 32:
            revert with 0, 34
        if mem[96]:
            _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_0 = 0
            idx = 0
            while (uint255(_getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_0) * 0.5) + 31 / 32 > idx:
                _getNodeNumberOf[address(arg1)][(4 * _getNodeNumberOf[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_0 == _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_1 < 32:
            revert with 0, 34
        if mem[96]:
            _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_0 = 0
            idx = 0
            while _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_1 + 31 / 32 > idx:
                _getNodeNumberOf[address(arg1)][(4 * _getNodeNumberOf[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_256 = block.timestamp
    _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_512 = block.timestamp
    _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_768 = 0
    if totalNodesCreated == -1:
        revert with 0, 17
    totalNodesCreated++
}

function _getNodesNames(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 'GET NAMES: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 0
    mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
    mem[96] = _getNodeNumberOf[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        _54 = mem[64]
        mem[64] = mem[64] + 128
        if _getNodeNumberOf[address(arg1)][idx].field_0:
            if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _60 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_60] = uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5
            if _getNodeNumberOf[address(arg1)][idx].field_0:
                if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, _getNodeNumberOf[address(arg1)][idx].field_0):
                    if 31 >= uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                        mem[_60 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                        mem[_60 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
                        t = _60 + 32
                        u = sha3(mem[0])
                        while _60 + (uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_54] = _60
                mem[_54 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_54 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_54 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _54
                s = s + 32
                idx = idx + 1
                continue 
            if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not _getNodeNumberOf[address(arg1)][idx].field_1:
                mem[_54] = _60
                mem[_54 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_54 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_54 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _54
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_1:
                mem[_60 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                mem[_54] = _60
                mem[_54 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_54 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_54 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _54
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_60 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
            t = _60 + 32
            u = sha3(mem[0])
            while _60 + _getNodeNumberOf[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_54] = _60
            mem[_54 + 32] = _getNodeNumberOf[address(arg1)][u].field_256
            mem[_54 + 64] = _getNodeNumberOf[address(arg1)][u].field_512
            mem[_54 + 96] = _getNodeNumberOf[address(arg1)][u].field_768
            mem[t] = _54
            t = t + 32
            u = u + 1
            continue 
        if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(_getNodeNumberOf[address(arg1)][idx].field_1) + 32
        mem[_65] = _getNodeNumberOf[address(arg1)][idx].field_1
        if _getNodeNumberOf[address(arg1)][idx].field_0:
            if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, _getNodeNumberOf[address(arg1)][idx].field_0):
                mem[_54] = _65
                mem[_54 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_54 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_54 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _54
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                mem[_65 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                mem[_54] = _65
                mem[_54 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_54 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_54 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _54
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_65 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
            t = _65 + 32
            u = sha3(mem[0])
            while _65 + (uint255(_getNodeNumberOf[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_54] = _65
            mem[_54 + 32] = _getNodeNumberOf[address(arg1)][u].field_256
            mem[_54 + 64] = _getNodeNumberOf[address(arg1)][u].field_512
            mem[_54 + 96] = _getNodeNumberOf[address(arg1)][u].field_768
            mem[t] = _54
            t = t + 32
            u = u + 1
            continue 
        if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if _getNodeNumberOf[address(arg1)][idx].field_1:
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_1:
                mem[_65 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                mem[_65 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
                t = _65 + 32
                u = sha3(mem[0])
                while _65 + _getNodeNumberOf[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_54] = _65
        mem[_54 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
        mem[_54 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
        mem[_54 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
        mem[s] = _54
        s = s + 32
        idx = idx + 1
        continue 
    _51 = mem[96]
    _52 = mem[64]
    mem[64] = mem[64] + 128
    mem[_52] = 96
    mem[_52 + 32] = 0
    mem[_52 + 64] = 0
    mem[_52 + 96] = 0
    if 0 >= mem[96]:
        revert with 0, 50
    _57 = mem[mem[128]]
    _58 = mem[64]
    mem[64] = mem[64] + 64
    mem[_58] = 1
    mem[_58 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = _57
    t = _52
    while idx < _51:
        if idx >= mem[96]:
            revert with 0, 50
        _98 = mem[(32 * idx) + 128]
        _99 = mem[mem[(32 * idx) + 128]]
        _100 = mem[64]
        _102 = mem[s]
        t = 0
        while t < _102:
            mem[t + _100 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_102) <= _102:
            _129 = mem[_58]
            s = 0
            while s < _129:
                mem[s + _100 + _102 + 32] = mem[s + _58 + 32]
                s = s + 32
                continue 
            if ceil32(_129) <= _129:
                _153 = mem[_99]
                s = 0
                while s < _153:
                    mem[s + _100 + _102 + _129 + 32] = mem[s + _99 + 32]
                    s = s + 32
                    continue 
                if ceil32(_153) <= _153:
                    _173 = mem[64]
                    mem[mem[64]] = _153 + _100 + _102 + _129 - mem[64]
                    mem[64] = _153 + _100 + _102 + _129 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _173
                    t = _98
                    continue 
                mem[_100 + _102 + _129 + _153 + 32] = 0
                _177 = mem[64]
                mem[mem[64]] = _153 + _100 + _102 + _129 - mem[64]
                mem[64] = _153 + _100 + _102 + _129 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _177
                t = _98
                continue 
            mem[_100 + _102 + _129 + 32] = 0
            _155 = mem[_99]
            s = 0
            while s < _155:
                mem[s + _100 + _102 + _129 + 32] = mem[s + _99 + 32]
                s = s + 32
                continue 
            if ceil32(_155) <= _155:
                _174 = mem[64]
                mem[mem[64]] = _155 + _100 + _102 + _129 - mem[64]
                mem[64] = _155 + _100 + _102 + _129 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _174
                t = _98
                continue 
            mem[_100 + _102 + _129 + _155 + 32] = 0
            _178 = mem[64]
            mem[mem[64]] = _155 + _100 + _102 + _129 - mem[64]
            mem[64] = _155 + _100 + _102 + _129 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _178
            t = _98
            continue 
        mem[_100 + _102 + 32] = 0
        _131 = mem[_58]
        s = 0
        while s < _131:
            mem[s + _100 + _102 + 32] = mem[s + _58 + 32]
            s = s + 32
            continue 
        if ceil32(_131) <= _131:
            _154 = mem[_99]
            s = 0
            while s < _154:
                mem[s + _100 + _102 + _131 + 32] = mem[s + _99 + 32]
                s = s + 32
                continue 
            if ceil32(_154) <= _154:
                _175 = mem[64]
                mem[mem[64]] = _154 + _100 + _102 + _131 - mem[64]
                mem[64] = _154 + _100 + _102 + _131 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _175
                t = _98
                continue 
            mem[_100 + _102 + _131 + _154 + 32] = 0
            _179 = mem[64]
            mem[mem[64]] = _154 + _100 + _102 + _131 - mem[64]
            mem[64] = _154 + _100 + _102 + _131 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _179
            t = _98
            continue 
        mem[_100 + _102 + _131 + 32] = 0
        _156 = mem[_99]
        s = 0
        while s < _156:
            mem[s + _100 + _102 + _131 + 32] = mem[s + _99 + 32]
            s = s + 32
            continue 
        if ceil32(_156) <= _156:
            _176 = mem[64]
            mem[mem[64]] = _156 + _100 + _102 + _131 - mem[64]
            mem[64] = _156 + _100 + _102 + _131 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _176
            t = _98
            continue 
        mem[_100 + _102 + _131 + _156 + 32] = 0
        _180 = mem[64]
        mem[mem[64]] = _156 + _100 + _102 + _131 - mem[64]
        mem[64] = _156 + _100 + _102 + _131 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _180
        t = _98
        continue 
    _97 = mem[64]
    mem[mem[64]] = 32
    _101 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_101)] = mem[s + 32 len ceil32(_101)]
    if ceil32(_101) <= _101:
        return 32, mem[mem[64] + 32 len ceil32(_101) + 32]
    mem[mem[64] + _101 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_101) + _97 + -mem[64] + 64
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 'GET CREATIME: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 0
    mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
    mem[96] = _getNodeNumberOf[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        _56 = mem[64]
        mem[64] = mem[64] + 128
        if _getNodeNumberOf[address(arg1)][idx].field_0:
            if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _61 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_61] = uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5
            if _getNodeNumberOf[address(arg1)][idx].field_0:
                if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, _getNodeNumberOf[address(arg1)][idx].field_0):
                    if 31 >= uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                        mem[_61 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                        mem[_61 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
                        t = _61 + 32
                        u = sha3(mem[0])
                        while _61 + (uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_56] = _61
                mem[_56 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_56 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_56 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not _getNodeNumberOf[address(arg1)][idx].field_1:
                mem[_56] = _61
                mem[_56 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_56 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_56 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_1:
                mem[_61 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                mem[_56] = _61
                mem[_56 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_56 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_56 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_61 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
            t = _61 + 32
            u = sha3(mem[0])
            while _61 + _getNodeNumberOf[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_56] = _61
            mem[_56 + 32] = _getNodeNumberOf[address(arg1)][u].field_256
            mem[_56 + 64] = _getNodeNumberOf[address(arg1)][u].field_512
            mem[_56 + 96] = _getNodeNumberOf[address(arg1)][u].field_768
            mem[t] = _56
            t = t + 32
            u = u + 1
            continue 
        if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(_getNodeNumberOf[address(arg1)][idx].field_1) + 32
        mem[_63] = _getNodeNumberOf[address(arg1)][idx].field_1
        if _getNodeNumberOf[address(arg1)][idx].field_0:
            if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, _getNodeNumberOf[address(arg1)][idx].field_0):
                mem[_56] = _63
                mem[_56 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_56 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_56 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                mem[_63 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                mem[_56] = _63
                mem[_56 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_56 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_56 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_63 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
            t = _63 + 32
            u = sha3(mem[0])
            while _63 + (uint255(_getNodeNumberOf[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_56] = _63
            mem[_56 + 32] = _getNodeNumberOf[address(arg1)][u].field_256
            mem[_56 + 64] = _getNodeNumberOf[address(arg1)][u].field_512
            mem[_56 + 96] = _getNodeNumberOf[address(arg1)][u].field_768
            mem[t] = _56
            t = t + 32
            u = u + 1
            continue 
        if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if _getNodeNumberOf[address(arg1)][idx].field_1:
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_1:
                mem[_63 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                mem[_63 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
                t = _63 + 32
                u = sha3(mem[0])
                while _63 + _getNodeNumberOf[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_56] = _63
        mem[_56 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
        mem[_56 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
        mem[_56 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
        mem[s] = _56
        s = s + 32
        idx = idx + 1
        continue 
    _53 = mem[96]
    _54 = mem[64]
    mem[64] = mem[64] + 128
    mem[_54] = 96
    mem[_54 + 32] = 0
    mem[_54 + 64] = 0
    mem[_54 + 96] = 0
    if 0 >= mem[96]:
        revert with 0, 50
    _59 = mem[mem[128] + 32]
    if not mem[mem[128] + 32]:
        _60 = mem[64]
        mem[64] = mem[64] + 64
        mem[_60] = 1
        mem[_60 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _62 = mem[64]
        mem[64] = mem[64] + 64
        mem[_62] = 1
        mem[_62 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _60
        t = _54
        while idx < _53:
            if idx >= mem[96]:
                revert with 0, 50
            _103 = mem[(32 * idx) + 128]
            _104 = mem[mem[(32 * idx) + 128] + 32]
            if not mem[mem[(32 * idx) + 128] + 32]:
                _106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_106] = 1
                mem[_106 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _107 = mem[64]
                _110 = mem[s]
                t = 0
                while t < _110:
                    mem[t + _107 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_110) <= _110:
                    _206 = mem[_62]
                    s = 0
                    while s < _206:
                        mem[s + _107 + _110 + 32] = mem[s + _62 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_206) <= _206:
                        _358 = mem[_106]
                        s = 0
                        while s < _358:
                            mem[s + _107 + _110 + _206 + 32] = mem[s + _106 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_358) <= _358:
                            _494 = mem[64]
                            mem[mem[64]] = _358 + _107 + _110 + _206 - mem[64]
                            mem[64] = _358 + _107 + _110 + _206 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _494
                            t = _103
                            continue 
                        mem[_107 + _110 + _206 + _358 + 32] = 0
                        _500 = mem[64]
                        mem[mem[64]] = _358 + _107 + _110 + _206 - mem[64]
                        mem[64] = _358 + _107 + _110 + _206 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _500
                        t = _103
                        continue 
                    mem[_107 + _110 + _206 + 32] = 0
                    _362 = mem[_106]
                    s = 0
                    while s < _362:
                        mem[s + _107 + _110 + _206 + 32] = mem[s + _106 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_362) <= _362:
                        _495 = mem[64]
                        mem[mem[64]] = _362 + _107 + _110 + _206 - mem[64]
                        mem[64] = _362 + _107 + _110 + _206 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _495
                        t = _103
                        continue 
                    mem[_107 + _110 + _206 + _362 + 32] = 0
                    _501 = mem[64]
                    mem[mem[64]] = _362 + _107 + _110 + _206 - mem[64]
                    mem[64] = _362 + _107 + _110 + _206 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _501
                    t = _103
                    continue 
                mem[_107 + _110 + 32] = 0
                _210 = mem[_62]
                s = 0
                while s < _210:
                    mem[s + _107 + _110 + 32] = mem[s + _62 + 32]
                    s = s + 32
                    continue 
                if ceil32(_210) <= _210:
                    _359 = mem[_106]
                    s = 0
                    while s < _359:
                        mem[s + _107 + _110 + _210 + 32] = mem[s + _106 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_359) <= _359:
                        _496 = mem[64]
                        mem[mem[64]] = _359 + _107 + _110 + _210 - mem[64]
                        mem[64] = _359 + _107 + _110 + _210 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _496
                        t = _103
                        continue 
                    mem[_107 + _110 + _210 + _359 + 32] = 0
                    _502 = mem[64]
                    mem[mem[64]] = _359 + _107 + _110 + _210 - mem[64]
                    mem[64] = _359 + _107 + _110 + _210 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _502
                    t = _103
                    continue 
                mem[_107 + _110 + _210 + 32] = 0
                _363 = mem[_106]
                s = 0
                while s < _363:
                    mem[s + _107 + _110 + _210 + 32] = mem[s + _106 + 32]
                    s = s + 32
                    continue 
                if ceil32(_363) <= _363:
                    _497 = mem[64]
                    mem[mem[64]] = _363 + _107 + _110 + _210 - mem[64]
                    mem[64] = _363 + _107 + _110 + _210 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _497
                    t = _103
                    continue 
                mem[_107 + _110 + _210 + _363 + 32] = 0
                _503 = mem[64]
                mem[mem[64]] = _363 + _107 + _110 + _210 - mem[64]
                mem[64] = _363 + _107 + _110 + _210 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _503
                t = _103
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 32]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _205 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _104
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_205]:
                        revert with 0, 50
                    mem[v + _205 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _352 = mem[64]
                _356 = mem[s]
                t = 0
                while t < _356:
                    mem[t + _352 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_356) <= _356:
                    _486 = mem[_62]
                    s = 0
                    while s < _486:
                        mem[s + _352 + _356 + 32] = mem[s + _62 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_486) <= _486:
                        _692 = mem[_205]
                        s = 0
                        while s < _692:
                            mem[s + _352 + _356 + _486 + 32] = mem[s + _205 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_692) <= _692:
                            _876 = mem[64]
                            mem[mem[64]] = _692 + _352 + _356 + _486 - mem[64]
                            mem[64] = _692 + _352 + _356 + _486 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _876
                            t = _103
                            continue 
                        mem[_352 + _356 + _486 + _692 + 32] = 0
                        _892 = mem[64]
                        mem[mem[64]] = _692 + _352 + _356 + _486 - mem[64]
                        mem[64] = _692 + _352 + _356 + _486 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _892
                        t = _103
                        continue 
                    mem[_352 + _356 + _486 + 32] = 0
                    _700 = mem[_205]
                    s = 0
                    while s < _700:
                        mem[s + _352 + _356 + _486 + 32] = mem[s + _205 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_700) <= _700:
                        _877 = mem[64]
                        mem[mem[64]] = _700 + _352 + _356 + _486 - mem[64]
                        mem[64] = _700 + _352 + _356 + _486 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _877
                        t = _103
                        continue 
                    mem[_352 + _356 + _486 + _700 + 32] = 0
                    _893 = mem[64]
                    mem[mem[64]] = _700 + _352 + _356 + _486 - mem[64]
                    mem[64] = _700 + _352 + _356 + _486 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _893
                    t = _103
                    continue 
                mem[_352 + _356 + 32] = 0
                _492 = mem[_62]
                s = 0
                while s < _492:
                    mem[s + _352 + _356 + 32] = mem[s + _62 + 32]
                    s = s + 32
                    continue 
                if ceil32(_492) <= _492:
                    _693 = mem[_205]
                    s = 0
                    while s < _693:
                        mem[s + _352 + _356 + _492 + 32] = mem[s + _205 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _878 = mem[64]
                        mem[mem[64]] = _693 + _352 + _356 + _492 - mem[64]
                        mem[64] = _693 + _352 + _356 + _492 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _878
                        t = _103
                        continue 
                    mem[_352 + _356 + _492 + _693 + 32] = 0
                    _894 = mem[64]
                    mem[mem[64]] = _693 + _352 + _356 + _492 - mem[64]
                    mem[64] = _693 + _352 + _356 + _492 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _894
                    t = _103
                    continue 
                mem[_352 + _356 + _492 + 32] = 0
                _701 = mem[_205]
                s = 0
                while s < _701:
                    mem[s + _352 + _356 + _492 + 32] = mem[s + _205 + 32]
                    s = s + 32
                    continue 
                if ceil32(_701) <= _701:
                    _879 = mem[64]
                    mem[mem[64]] = _701 + _352 + _356 + _492 - mem[64]
                    mem[64] = _701 + _352 + _356 + _492 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _879
                    t = _103
                    continue 
                mem[_352 + _356 + _492 + _701 + 32] = 0
                _895 = mem[64]
                mem[mem[64]] = _701 + _352 + _356 + _492 - mem[64]
                mem[64] = _701 + _352 + _356 + _492 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _895
                t = _103
                continue 
            mem[_205 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _104
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_205]:
                    revert with 0, 50
                mem[v + _205 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _353 = mem[64]
            _357 = mem[s]
            t = 0
            while t < _357:
                mem[t + _353 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_357) <= _357:
                _487 = mem[_62]
                s = 0
                while s < _487:
                    mem[s + _353 + _357 + 32] = mem[s + _62 + 32]
                    s = s + 32
                    continue 
                if ceil32(_487) <= _487:
                    _694 = mem[_205]
                    s = 0
                    while s < _694:
                        mem[s + _353 + _357 + _487 + 32] = mem[s + _205 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_694) <= _694:
                        _880 = mem[64]
                        mem[mem[64]] = _694 + _353 + _357 + _487 - mem[64]
                        mem[64] = _694 + _353 + _357 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _880
                        t = _103
                        continue 
                    mem[_353 + _357 + _487 + _694 + 32] = 0
                    _896 = mem[64]
                    mem[mem[64]] = _694 + _353 + _357 + _487 - mem[64]
                    mem[64] = _694 + _353 + _357 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _896
                    t = _103
                    continue 
                mem[_353 + _357 + _487 + 32] = 0
                _702 = mem[_205]
                s = 0
                while s < _702:
                    mem[s + _353 + _357 + _487 + 32] = mem[s + _205 + 32]
                    s = s + 32
                    continue 
                if ceil32(_702) <= _702:
                    _881 = mem[64]
                    mem[mem[64]] = _702 + _353 + _357 + _487 - mem[64]
                    mem[64] = _702 + _353 + _357 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _881
                    t = _103
                    continue 
                mem[_353 + _357 + _487 + _702 + 32] = 0
                _897 = mem[64]
                mem[mem[64]] = _702 + _353 + _357 + _487 - mem[64]
                mem[64] = _702 + _353 + _357 + _487 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _897
                t = _103
                continue 
            mem[_353 + _357 + 32] = 0
            _493 = mem[_62]
            s = 0
            while s < _493:
                mem[s + _353 + _357 + 32] = mem[s + _62 + 32]
                s = s + 32
                continue 
            if ceil32(_493) <= _493:
                _695 = mem[_205]
                s = 0
                while s < _695:
                    mem[s + _353 + _357 + _493 + 32] = mem[s + _205 + 32]
                    s = s + 32
                    continue 
                if ceil32(_695) <= _695:
                    _882 = mem[64]
                    mem[mem[64]] = _695 + _353 + _357 + _493 - mem[64]
                    mem[64] = _695 + _353 + _357 + _493 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _882
                    t = _103
                    continue 
                mem[_353 + _357 + _493 + _695 + 32] = 0
                _898 = mem[64]
                mem[mem[64]] = _695 + _353 + _357 + _493 - mem[64]
                mem[64] = _695 + _353 + _357 + _493 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _898
                t = _103
                continue 
            mem[_353 + _357 + _493 + 32] = 0
            _703 = mem[_205]
            s = 0
            while s < _703:
                mem[s + _353 + _357 + _493 + 32] = mem[s + _205 + 32]
                s = s + 32
                continue 
            if ceil32(_703) <= _703:
                _883 = mem[64]
                mem[mem[64]] = _703 + _353 + _357 + _493 - mem[64]
                mem[64] = _703 + _353 + _357 + _493 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _883
                t = _103
                continue 
            mem[_353 + _357 + _493 + _703 + 32] = 0
            _899 = mem[64]
            mem[mem[64]] = _703 + _353 + _357 + _493 - mem[64]
            mem[64] = _703 + _353 + _357 + _493 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _899
            t = _103
            continue 
        _102 = mem[64]
        mem[mem[64]] = 32
        _105 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_105)] = mem[s + 32 len ceil32(_105)]
        if ceil32(_105) <= _105:
            return 32, mem[mem[64] + 32 len ceil32(_105) + 32]
        mem[mem[64] + _105 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_105) + _102 + -mem[64] + 64
    u = 0
    t = mem[mem[128] + 32]
    while t:
        if u == -1:
            revert with 0, 17
        u = u + 1
        t = t / 10
        continue 
    if u > test266151307():
        revert with 0, 65
    _101 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _59
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_101]:
                revert with 0, 50
            mem[s + _101 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        _203 = mem[64]
        mem[64] = mem[64] + 64
        mem[_203] = 1
        mem[_203 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        t = _101
        u = _54
        while idx < _53:
            if idx >= mem[96]:
                revert with 0, 50
            _347 = mem[(32 * idx) + 128]
            _348 = mem[mem[(32 * idx) + 128] + 32]
            if not mem[mem[(32 * idx) + 128] + 32]:
                _360 = mem[64]
                mem[64] = mem[64] + 64
                mem[_360] = 1
                mem[_360 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _364 = mem[64]
                _367 = mem[t]
                u = 0
                while u < _367:
                    mem[u + _364 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_367) <= _367:
                    _484 = mem[_203]
                    t = 0
                    while t < _484:
                        mem[t + _364 + _367 + 32] = mem[t + _203 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_484) <= _484:
                        _686 = mem[_360]
                        s = 0
                        while s < _686:
                            mem[s + _364 + _367 + _484 + 32] = mem[s + _360 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_686) <= _686:
                            _866 = mem[64]
                            mem[mem[64]] = _686 + _364 + _367 + _484 - mem[64]
                            mem[64] = _686 + _364 + _367 + _484 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _866
                            u = _347
                            continue 
                        mem[_364 + _367 + _484 + _686 + 32] = 0
                        _884 = mem[64]
                        mem[mem[64]] = _686 + _364 + _367 + _484 - mem[64]
                        mem[64] = _686 + _364 + _367 + _484 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _884
                        u = _347
                        continue 
                    mem[_364 + _367 + _484 + 32] = 0
                    _696 = mem[_360]
                    s = 0
                    while s < _696:
                        mem[s + _364 + _367 + _484 + 32] = mem[s + _360 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_696) <= _696:
                        _867 = mem[64]
                        mem[mem[64]] = _696 + _364 + _367 + _484 - mem[64]
                        mem[64] = _696 + _364 + _367 + _484 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _867
                        u = _347
                        continue 
                    mem[_364 + _367 + _484 + _696 + 32] = 0
                    _885 = mem[64]
                    mem[mem[64]] = _696 + _364 + _367 + _484 - mem[64]
                    mem[64] = _696 + _364 + _367 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _885
                    u = _347
                    continue 
                mem[_364 + _367 + 32] = 0
                _489 = mem[_203]
                s = 0
                while s < _489:
                    mem[s + _364 + _367 + 32] = mem[s + _203 + 32]
                    s = s + 32
                    continue 
                if ceil32(_489) <= _489:
                    _687 = mem[_360]
                    s = 0
                    while s < _687:
                        mem[s + _364 + _367 + _489 + 32] = mem[s + _360 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_687) <= _687:
                        _868 = mem[64]
                        mem[mem[64]] = _687 + _364 + _367 + _489 - mem[64]
                        mem[64] = _687 + _364 + _367 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _868
                        u = _347
                        continue 
                    mem[_364 + _367 + _489 + _687 + 32] = 0
                    _886 = mem[64]
                    mem[mem[64]] = _687 + _364 + _367 + _489 - mem[64]
                    mem[64] = _687 + _364 + _367 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _886
                    u = _347
                    continue 
                mem[_364 + _367 + _489 + 32] = 0
                _697 = mem[_360]
                s = 0
                while s < _697:
                    mem[s + _364 + _367 + _489 + 32] = mem[s + _360 + 32]
                    s = s + 32
                    continue 
                if ceil32(_697) <= _697:
                    _869 = mem[64]
                    mem[mem[64]] = _697 + _364 + _367 + _489 - mem[64]
                    mem[64] = _697 + _364 + _367 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _869
                    u = _347
                    continue 
                mem[_364 + _367 + _489 + _697 + 32] = 0
                _887 = mem[64]
                mem[mem[64]] = _697 + _364 + _367 + _489 - mem[64]
                mem[64] = _697 + _364 + _367 + _489 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _887
                u = _347
                continue 
            u = 0
            s = mem[mem[(32 * idx) + 128] + 32]
            while s:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                s = s / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _482 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                s = _348
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_482]:
                        revert with 0, 50
                    mem[v + _482 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _680 = mem[64]
                _684 = mem[t]
                s = 0
                while s < _684:
                    mem[s + _680 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_684) <= _684:
                    _860 = mem[_203]
                    s = 0
                    while s < _860:
                        mem[s + _680 + _684 + 32] = mem[s + _203 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_860) <= _860:
                        _980 = mem[_482]
                        s = 0
                        while s < _980:
                            mem[s + _680 + _684 + _860 + 32] = mem[s + _482 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_980) <= _980:
                            _1060 = mem[64]
                            mem[mem[64]] = _980 + _680 + _684 + _860 - mem[64]
                            mem[64] = _980 + _680 + _684 + _860 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1060
                            u = _347
                            continue 
                        mem[_680 + _684 + _860 + _980 + 32] = 0
                        _1076 = mem[64]
                        mem[mem[64]] = _980 + _680 + _684 + _860 - mem[64]
                        mem[64] = _980 + _680 + _684 + _860 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1076
                        u = _347
                        continue 
                    mem[_680 + _684 + _860 + 32] = 0
                    _988 = mem[_482]
                    s = 0
                    while s < _988:
                        mem[s + _680 + _684 + _860 + 32] = mem[s + _482 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_988) <= _988:
                        _1061 = mem[64]
                        mem[mem[64]] = _988 + _680 + _684 + _860 - mem[64]
                        mem[64] = _988 + _680 + _684 + _860 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1061
                        u = _347
                        continue 
                    mem[_680 + _684 + _860 + _988 + 32] = 0
                    _1077 = mem[64]
                    mem[mem[64]] = _988 + _680 + _684 + _860 - mem[64]
                    mem[64] = _988 + _680 + _684 + _860 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1077
                    u = _347
                    continue 
                mem[_680 + _684 + 32] = 0
                _864 = mem[_203]
                s = 0
                while s < _864:
                    mem[s + _680 + _684 + 32] = mem[s + _203 + 32]
                    s = s + 32
                    continue 
                if ceil32(_864) <= _864:
                    _981 = mem[_482]
                    s = 0
                    while s < _981:
                        mem[s + _680 + _684 + _864 + 32] = mem[s + _482 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_981) <= _981:
                        _1062 = mem[64]
                        mem[mem[64]] = _981 + _680 + _684 + _864 - mem[64]
                        mem[64] = _981 + _680 + _684 + _864 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1062
                        u = _347
                        continue 
                    mem[_680 + _684 + _864 + _981 + 32] = 0
                    _1078 = mem[64]
                    mem[mem[64]] = _981 + _680 + _684 + _864 - mem[64]
                    mem[64] = _981 + _680 + _684 + _864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1078
                    u = _347
                    continue 
                mem[_680 + _684 + _864 + 32] = 0
                _989 = mem[_482]
                s = 0
                while s < _989:
                    mem[s + _680 + _684 + _864 + 32] = mem[s + _482 + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1063 = mem[64]
                    mem[mem[64]] = _989 + _680 + _684 + _864 - mem[64]
                    mem[64] = _989 + _680 + _684 + _864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1063
                    u = _347
                    continue 
                mem[_680 + _684 + _864 + _989 + 32] = 0
                _1079 = mem[64]
                mem[mem[64]] = _989 + _680 + _684 + _864 - mem[64]
                mem[64] = _989 + _680 + _684 + _864 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1079
                u = _347
                continue 
            mem[_482 + 32 len u] = call.data[calldata.size len u]
            v = u
            s = _348
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_482]:
                    revert with 0, 50
                mem[v + _482 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _681 = mem[64]
            _685 = mem[t]
            s = 0
            while s < _685:
                mem[s + _681 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_685) <= _685:
                _861 = mem[_203]
                s = 0
                while s < _861:
                    mem[s + _681 + _685 + 32] = mem[s + _203 + 32]
                    s = s + 32
                    continue 
                if ceil32(_861) <= _861:
                    _982 = mem[_482]
                    s = 0
                    while s < _982:
                        mem[s + _681 + _685 + _861 + 32] = mem[s + _482 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_982) <= _982:
                        _1064 = mem[64]
                        mem[mem[64]] = _982 + _681 + _685 + _861 - mem[64]
                        mem[64] = _982 + _681 + _685 + _861 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1064
                        u = _347
                        continue 
                    mem[_681 + _685 + _861 + _982 + 32] = 0
                    _1080 = mem[64]
                    mem[mem[64]] = _982 + _681 + _685 + _861 - mem[64]
                    mem[64] = _982 + _681 + _685 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1080
                    u = _347
                    continue 
                mem[_681 + _685 + _861 + 32] = 0
                _990 = mem[_482]
                s = 0
                while s < _990:
                    mem[s + _681 + _685 + _861 + 32] = mem[s + _482 + 32]
                    s = s + 32
                    continue 
                if ceil32(_990) <= _990:
                    _1065 = mem[64]
                    mem[mem[64]] = _990 + _681 + _685 + _861 - mem[64]
                    mem[64] = _990 + _681 + _685 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1065
                    u = _347
                    continue 
                mem[_681 + _685 + _861 + _990 + 32] = 0
                _1081 = mem[64]
                mem[mem[64]] = _990 + _681 + _685 + _861 - mem[64]
                mem[64] = _990 + _681 + _685 + _861 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1081
                u = _347
                continue 
            mem[_681 + _685 + 32] = 0
            _865 = mem[_203]
            s = 0
            while s < _865:
                mem[s + _681 + _685 + 32] = mem[s + _203 + 32]
                s = s + 32
                continue 
            if ceil32(_865) <= _865:
                _983 = mem[_482]
                s = 0
                while s < _983:
                    mem[s + _681 + _685 + _865 + 32] = mem[s + _482 + 32]
                    s = s + 32
                    continue 
                if ceil32(_983) <= _983:
                    _1066 = mem[64]
                    mem[mem[64]] = _983 + _681 + _685 + _865 - mem[64]
                    mem[64] = _983 + _681 + _685 + _865 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1066
                    u = _347
                    continue 
                mem[_681 + _685 + _865 + _983 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _983 + _681 + _685 + _865 - mem[64]
                mem[64] = _983 + _681 + _685 + _865 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1082
                u = _347
                continue 
            mem[_681 + _685 + _865 + 32] = 0
            _991 = mem[_482]
            s = 0
            while s < _991:
                mem[s + _681 + _685 + _865 + 32] = mem[s + _482 + 32]
                s = s + 32
                continue 
            if ceil32(_991) <= _991:
                _1067 = mem[64]
                mem[mem[64]] = _991 + _681 + _685 + _865 - mem[64]
                mem[64] = _991 + _681 + _685 + _865 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1067
                u = _347
                continue 
            mem[_681 + _685 + _865 + _991 + 32] = 0
            _1083 = mem[64]
            mem[mem[64]] = _991 + _681 + _685 + _865 - mem[64]
            mem[64] = _991 + _681 + _685 + _865 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1083
            u = _347
            continue 
        _346 = mem[64]
        mem[mem[64]] = 32
        _354 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_354)] = mem[t + 32 len ceil32(_354)]
        if ceil32(_354) <= _354:
            return 32, mem[mem[64] + 32 len ceil32(_354) + 32]
        mem[mem[64] + _354 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_354) + _346 + -mem[64] + 64
    mem[_101 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _59
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_101]:
            revert with 0, 50
        mem[s + _101 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    _204 = mem[64]
    mem[64] = mem[64] + 64
    mem[_204] = 1
    mem[_204 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    t = _101
    u = _54
    while idx < _53:
        if idx >= mem[96]:
            revert with 0, 50
        _350 = mem[(32 * idx) + 128]
        _351 = mem[mem[(32 * idx) + 128] + 32]
        if not mem[mem[(32 * idx) + 128] + 32]:
            _361 = mem[64]
            mem[64] = mem[64] + 64
            mem[_361] = 1
            mem[_361 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _365 = mem[64]
            _369 = mem[t]
            u = 0
            while u < _369:
                mem[u + _365 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_369) <= _369:
                _485 = mem[_204]
                t = 0
                while t < _485:
                    mem[t + _365 + _369 + 32] = mem[t + _204 + 32]
                    t = t + 32
                    continue 
                if ceil32(_485) <= _485:
                    _690 = mem[_361]
                    s = 0
                    while s < _690:
                        mem[s + _365 + _369 + _485 + 32] = mem[s + _361 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _872 = mem[64]
                        mem[mem[64]] = _690 + _365 + _369 + _485 - mem[64]
                        mem[64] = _690 + _365 + _369 + _485 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _872
                        u = _350
                        continue 
                    mem[_365 + _369 + _485 + _690 + 32] = 0
                    _888 = mem[64]
                    mem[mem[64]] = _690 + _365 + _369 + _485 - mem[64]
                    mem[64] = _690 + _365 + _369 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _888
                    u = _350
                    continue 
                mem[_365 + _369 + _485 + 32] = 0
                _698 = mem[_361]
                s = 0
                while s < _698:
                    mem[s + _365 + _369 + _485 + 32] = mem[s + _361 + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _873 = mem[64]
                    mem[mem[64]] = _698 + _365 + _369 + _485 - mem[64]
                    mem[64] = _698 + _365 + _369 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _873
                    u = _350
                    continue 
                mem[_365 + _369 + _485 + _698 + 32] = 0
                _889 = mem[64]
                mem[mem[64]] = _698 + _365 + _369 + _485 - mem[64]
                mem[64] = _698 + _365 + _369 + _485 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _889
                u = _350
                continue 
            mem[_365 + _369 + 32] = 0
            _491 = mem[_204]
            s = 0
            while s < _491:
                mem[s + _365 + _369 + 32] = mem[s + _204 + 32]
                s = s + 32
                continue 
            if ceil32(_491) <= _491:
                _691 = mem[_361]
                s = 0
                while s < _691:
                    mem[s + _365 + _369 + _491 + 32] = mem[s + _361 + 32]
                    s = s + 32
                    continue 
                if ceil32(_691) <= _691:
                    _874 = mem[64]
                    mem[mem[64]] = _691 + _365 + _369 + _491 - mem[64]
                    mem[64] = _691 + _365 + _369 + _491 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _874
                    u = _350
                    continue 
                mem[_365 + _369 + _491 + _691 + 32] = 0
                _890 = mem[64]
                mem[mem[64]] = _691 + _365 + _369 + _491 - mem[64]
                mem[64] = _691 + _365 + _369 + _491 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _890
                u = _350
                continue 
            mem[_365 + _369 + _491 + 32] = 0
            _699 = mem[_361]
            s = 0
            while s < _699:
                mem[s + _365 + _369 + _491 + 32] = mem[s + _361 + 32]
                s = s + 32
                continue 
            if ceil32(_699) <= _699:
                _875 = mem[64]
                mem[mem[64]] = _699 + _365 + _369 + _491 - mem[64]
                mem[64] = _699 + _365 + _369 + _491 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _875
                u = _350
                continue 
            mem[_365 + _369 + _491 + _699 + 32] = 0
            _891 = mem[64]
            mem[mem[64]] = _699 + _365 + _369 + _491 - mem[64]
            mem[64] = _699 + _365 + _369 + _491 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _891
            u = _350
            continue 
        u = 0
        s = mem[mem[(32 * idx) + 128] + 32]
        while s:
            if u == -1:
                revert with 0, 17
            u = u + 1
            s = s / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _483 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            s = _351
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_483]:
                    revert with 0, 50
                mem[v + _483 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _682 = mem[64]
            _688 = mem[t]
            s = 0
            while s < _688:
                mem[s + _682 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_688) <= _688:
                _862 = mem[_204]
                s = 0
                while s < _862:
                    mem[s + _682 + _688 + 32] = mem[s + _204 + 32]
                    s = s + 32
                    continue 
                if ceil32(_862) <= _862:
                    _984 = mem[_483]
                    s = 0
                    while s < _984:
                        mem[s + _682 + _688 + _862 + 32] = mem[s + _483 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_984) <= _984:
                        _1068 = mem[64]
                        mem[mem[64]] = _984 + _682 + _688 + _862 - mem[64]
                        mem[64] = _984 + _682 + _688 + _862 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1068
                        u = _350
                        continue 
                    mem[_682 + _688 + _862 + _984 + 32] = 0
                    _1084 = mem[64]
                    mem[mem[64]] = _984 + _682 + _688 + _862 - mem[64]
                    mem[64] = _984 + _682 + _688 + _862 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1084
                    u = _350
                    continue 
                mem[_682 + _688 + _862 + 32] = 0
                _992 = mem[_483]
                s = 0
                while s < _992:
                    mem[s + _682 + _688 + _862 + 32] = mem[s + _483 + 32]
                    s = s + 32
                    continue 
                if ceil32(_992) <= _992:
                    _1069 = mem[64]
                    mem[mem[64]] = _992 + _682 + _688 + _862 - mem[64]
                    mem[64] = _992 + _682 + _688 + _862 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1069
                    u = _350
                    continue 
                mem[_682 + _688 + _862 + _992 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _992 + _682 + _688 + _862 - mem[64]
                mem[64] = _992 + _682 + _688 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1085
                u = _350
                continue 
            mem[_682 + _688 + 32] = 0
            _870 = mem[_204]
            s = 0
            while s < _870:
                mem[s + _682 + _688 + 32] = mem[s + _204 + 32]
                s = s + 32
                continue 
            if ceil32(_870) <= _870:
                _985 = mem[_483]
                s = 0
                while s < _985:
                    mem[s + _682 + _688 + _870 + 32] = mem[s + _483 + 32]
                    s = s + 32
                    continue 
                if ceil32(_985) <= _985:
                    _1070 = mem[64]
                    mem[mem[64]] = _985 + _682 + _688 + _870 - mem[64]
                    mem[64] = _985 + _682 + _688 + _870 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1070
                    u = _350
                    continue 
                mem[_682 + _688 + _870 + _985 + 32] = 0
                _1086 = mem[64]
                mem[mem[64]] = _985 + _682 + _688 + _870 - mem[64]
                mem[64] = _985 + _682 + _688 + _870 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1086
                u = _350
                continue 
            mem[_682 + _688 + _870 + 32] = 0
            _993 = mem[_483]
            s = 0
            while s < _993:
                mem[s + _682 + _688 + _870 + 32] = mem[s + _483 + 32]
                s = s + 32
                continue 
            if ceil32(_993) <= _993:
                _1071 = mem[64]
                mem[mem[64]] = _993 + _682 + _688 + _870 - mem[64]
                mem[64] = _993 + _682 + _688 + _870 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1071
                u = _350
                continue 
            mem[_682 + _688 + _870 + _993 + 32] = 0
            _1087 = mem[64]
            mem[mem[64]] = _993 + _682 + _688 + _870 - mem[64]
            mem[64] = _993 + _682 + _688 + _870 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1087
            u = _350
            continue 
        mem[_483 + 32 len u] = call.data[calldata.size len u]
        v = u
        s = _351
        while s:
            if v < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_483]:
                revert with 0, 50
            mem[v + _483 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _683 = mem[64]
        _689 = mem[t]
        s = 0
        while s < _689:
            mem[s + _683 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_689) <= _689:
            _863 = mem[_204]
            s = 0
            while s < _863:
                mem[s + _683 + _689 + 32] = mem[s + _204 + 32]
                s = s + 32
                continue 
            if ceil32(_863) <= _863:
                _986 = mem[_483]
                s = 0
                while s < _986:
                    mem[s + _683 + _689 + _863 + 32] = mem[s + _483 + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1072 = mem[64]
                    mem[mem[64]] = _986 + _683 + _689 + _863 - mem[64]
                    mem[64] = _986 + _683 + _689 + _863 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1072
                    u = _350
                    continue 
                mem[_683 + _689 + _863 + _986 + 32] = 0
                _1088 = mem[64]
                mem[mem[64]] = _986 + _683 + _689 + _863 - mem[64]
                mem[64] = _986 + _683 + _689 + _863 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1088
                u = _350
                continue 
            mem[_683 + _689 + _863 + 32] = 0
            _994 = mem[_483]
            s = 0
            while s < _994:
                mem[s + _683 + _689 + _863 + 32] = mem[s + _483 + 32]
                s = s + 32
                continue 
            if ceil32(_994) <= _994:
                _1073 = mem[64]
                mem[mem[64]] = _994 + _683 + _689 + _863 - mem[64]
                mem[64] = _994 + _683 + _689 + _863 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1073
                u = _350
                continue 
            mem[_683 + _689 + _863 + _994 + 32] = 0
            _1089 = mem[64]
            mem[mem[64]] = _994 + _683 + _689 + _863 - mem[64]
            mem[64] = _994 + _683 + _689 + _863 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1089
            u = _350
            continue 
        mem[_683 + _689 + 32] = 0
        _871 = mem[_204]
        s = 0
        while s < _871:
            mem[s + _683 + _689 + 32] = mem[s + _204 + 32]
            s = s + 32
            continue 
        if ceil32(_871) <= _871:
            _987 = mem[_483]
            s = 0
            while s < _987:
                mem[s + _683 + _689 + _871 + 32] = mem[s + _483 + 32]
                s = s + 32
                continue 
            if ceil32(_987) <= _987:
                _1074 = mem[64]
                mem[mem[64]] = _987 + _683 + _689 + _871 - mem[64]
                mem[64] = _987 + _683 + _689 + _871 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1074
                u = _350
                continue 
            mem[_683 + _689 + _871 + _987 + 32] = 0
            _1090 = mem[64]
            mem[mem[64]] = _987 + _683 + _689 + _871 - mem[64]
            mem[64] = _987 + _683 + _689 + _871 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1090
            u = _350
            continue 
        mem[_683 + _689 + _871 + 32] = 0
        _995 = mem[_483]
        s = 0
        while s < _995:
            mem[s + _683 + _689 + _871 + 32] = mem[s + _483 + 32]
            s = s + 32
            continue 
        if ceil32(_995) <= _995:
            _1075 = mem[64]
            mem[mem[64]] = _995 + _683 + _689 + _871 - mem[64]
            mem[64] = _995 + _683 + _689 + _871 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1075
            u = _350
            continue 
        mem[_683 + _689 + _871 + _995 + 32] = 0
        _1091 = mem[64]
        mem[mem[64]] = _995 + _683 + _689 + _871 - mem[64]
        mem[64] = _995 + _683 + _689 + _871 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = _1091
        u = _350
        continue 
    _349 = mem[64]
    mem[mem[64]] = 32
    _355 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_355)] = mem[t + 32 len ceil32(_355)]
    if ceil32(_355) <= _355:
        return 32, mem[mem[64] + 32 len ceil32(_355) + 32]
    mem[mem[64] + _355 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_355) + _349 + -mem[64] + 64
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 'LAST CLAIME TIME: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 0
    mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
    mem[96] = _getNodeNumberOf[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        _56 = mem[64]
        mem[64] = mem[64] + 128
        if _getNodeNumberOf[address(arg1)][idx].field_0:
            if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _61 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_61] = uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5
            if _getNodeNumberOf[address(arg1)][idx].field_0:
                if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, _getNodeNumberOf[address(arg1)][idx].field_0):
                    if 31 >= uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                        mem[_61 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                        mem[_61 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
                        t = _61 + 32
                        u = sha3(mem[0])
                        while _61 + (uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_56] = _61
                mem[_56 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_56 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_56 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not _getNodeNumberOf[address(arg1)][idx].field_1:
                mem[_56] = _61
                mem[_56 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_56 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_56 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_1:
                mem[_61 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                mem[_56] = _61
                mem[_56 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_56 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_56 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_61 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
            t = _61 + 32
            u = sha3(mem[0])
            while _61 + _getNodeNumberOf[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_56] = _61
            mem[_56 + 32] = _getNodeNumberOf[address(arg1)][u].field_256
            mem[_56 + 64] = _getNodeNumberOf[address(arg1)][u].field_512
            mem[_56 + 96] = _getNodeNumberOf[address(arg1)][u].field_768
            mem[t] = _56
            t = t + 32
            u = u + 1
            continue 
        if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(_getNodeNumberOf[address(arg1)][idx].field_1) + 32
        mem[_63] = _getNodeNumberOf[address(arg1)][idx].field_1
        if _getNodeNumberOf[address(arg1)][idx].field_0:
            if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, _getNodeNumberOf[address(arg1)][idx].field_0):
                mem[_56] = _63
                mem[_56 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_56 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_56 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                mem[_63 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                mem[_56] = _63
                mem[_56 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_56 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_56 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_63 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
            t = _63 + 32
            u = sha3(mem[0])
            while _63 + (uint255(_getNodeNumberOf[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_56] = _63
            mem[_56 + 32] = _getNodeNumberOf[address(arg1)][u].field_256
            mem[_56 + 64] = _getNodeNumberOf[address(arg1)][u].field_512
            mem[_56 + 96] = _getNodeNumberOf[address(arg1)][u].field_768
            mem[t] = _56
            t = t + 32
            u = u + 1
            continue 
        if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if _getNodeNumberOf[address(arg1)][idx].field_1:
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_1:
                mem[_63 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                mem[_63 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
                t = _63 + 32
                u = sha3(mem[0])
                while _63 + _getNodeNumberOf[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_56] = _63
        mem[_56 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
        mem[_56 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
        mem[_56 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
        mem[s] = _56
        s = s + 32
        idx = idx + 1
        continue 
    _53 = mem[96]
    _54 = mem[64]
    mem[64] = mem[64] + 128
    mem[_54] = 96
    mem[_54 + 32] = 0
    mem[_54 + 64] = 0
    mem[_54 + 96] = 0
    if 0 >= mem[96]:
        revert with 0, 50
    _59 = mem[mem[128] + 64]
    if not mem[mem[128] + 64]:
        _60 = mem[64]
        mem[64] = mem[64] + 64
        mem[_60] = 1
        mem[_60 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _62 = mem[64]
        mem[64] = mem[64] + 64
        mem[_62] = 1
        mem[_62 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _60
        t = _54
        while idx < _53:
            if idx >= mem[96]:
                revert with 0, 50
            _103 = mem[(32 * idx) + 128]
            _104 = mem[mem[(32 * idx) + 128] + 64]
            if not mem[mem[(32 * idx) + 128] + 64]:
                _106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_106] = 1
                mem[_106 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _107 = mem[64]
                _110 = mem[s]
                t = 0
                while t < _110:
                    mem[t + _107 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_110) <= _110:
                    _206 = mem[_62]
                    s = 0
                    while s < _206:
                        mem[s + _107 + _110 + 32] = mem[s + _62 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_206) <= _206:
                        _358 = mem[_106]
                        s = 0
                        while s < _358:
                            mem[s + _107 + _110 + _206 + 32] = mem[s + _106 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_358) <= _358:
                            _494 = mem[64]
                            mem[mem[64]] = _358 + _107 + _110 + _206 - mem[64]
                            mem[64] = _358 + _107 + _110 + _206 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _494
                            t = _103
                            continue 
                        mem[_107 + _110 + _206 + _358 + 32] = 0
                        _500 = mem[64]
                        mem[mem[64]] = _358 + _107 + _110 + _206 - mem[64]
                        mem[64] = _358 + _107 + _110 + _206 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _500
                        t = _103
                        continue 
                    mem[_107 + _110 + _206 + 32] = 0
                    _362 = mem[_106]
                    s = 0
                    while s < _362:
                        mem[s + _107 + _110 + _206 + 32] = mem[s + _106 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_362) <= _362:
                        _495 = mem[64]
                        mem[mem[64]] = _362 + _107 + _110 + _206 - mem[64]
                        mem[64] = _362 + _107 + _110 + _206 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _495
                        t = _103
                        continue 
                    mem[_107 + _110 + _206 + _362 + 32] = 0
                    _501 = mem[64]
                    mem[mem[64]] = _362 + _107 + _110 + _206 - mem[64]
                    mem[64] = _362 + _107 + _110 + _206 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _501
                    t = _103
                    continue 
                mem[_107 + _110 + 32] = 0
                _210 = mem[_62]
                s = 0
                while s < _210:
                    mem[s + _107 + _110 + 32] = mem[s + _62 + 32]
                    s = s + 32
                    continue 
                if ceil32(_210) <= _210:
                    _359 = mem[_106]
                    s = 0
                    while s < _359:
                        mem[s + _107 + _110 + _210 + 32] = mem[s + _106 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_359) <= _359:
                        _496 = mem[64]
                        mem[mem[64]] = _359 + _107 + _110 + _210 - mem[64]
                        mem[64] = _359 + _107 + _110 + _210 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _496
                        t = _103
                        continue 
                    mem[_107 + _110 + _210 + _359 + 32] = 0
                    _502 = mem[64]
                    mem[mem[64]] = _359 + _107 + _110 + _210 - mem[64]
                    mem[64] = _359 + _107 + _110 + _210 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _502
                    t = _103
                    continue 
                mem[_107 + _110 + _210 + 32] = 0
                _363 = mem[_106]
                s = 0
                while s < _363:
                    mem[s + _107 + _110 + _210 + 32] = mem[s + _106 + 32]
                    s = s + 32
                    continue 
                if ceil32(_363) <= _363:
                    _497 = mem[64]
                    mem[mem[64]] = _363 + _107 + _110 + _210 - mem[64]
                    mem[64] = _363 + _107 + _110 + _210 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _497
                    t = _103
                    continue 
                mem[_107 + _110 + _210 + _363 + 32] = 0
                _503 = mem[64]
                mem[mem[64]] = _363 + _107 + _110 + _210 - mem[64]
                mem[64] = _363 + _107 + _110 + _210 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _503
                t = _103
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 64]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _205 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _104
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_205]:
                        revert with 0, 50
                    mem[v + _205 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _352 = mem[64]
                _356 = mem[s]
                t = 0
                while t < _356:
                    mem[t + _352 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_356) <= _356:
                    _486 = mem[_62]
                    s = 0
                    while s < _486:
                        mem[s + _352 + _356 + 32] = mem[s + _62 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_486) <= _486:
                        _692 = mem[_205]
                        s = 0
                        while s < _692:
                            mem[s + _352 + _356 + _486 + 32] = mem[s + _205 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_692) <= _692:
                            _876 = mem[64]
                            mem[mem[64]] = _692 + _352 + _356 + _486 - mem[64]
                            mem[64] = _692 + _352 + _356 + _486 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _876
                            t = _103
                            continue 
                        mem[_352 + _356 + _486 + _692 + 32] = 0
                        _892 = mem[64]
                        mem[mem[64]] = _692 + _352 + _356 + _486 - mem[64]
                        mem[64] = _692 + _352 + _356 + _486 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _892
                        t = _103
                        continue 
                    mem[_352 + _356 + _486 + 32] = 0
                    _700 = mem[_205]
                    s = 0
                    while s < _700:
                        mem[s + _352 + _356 + _486 + 32] = mem[s + _205 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_700) <= _700:
                        _877 = mem[64]
                        mem[mem[64]] = _700 + _352 + _356 + _486 - mem[64]
                        mem[64] = _700 + _352 + _356 + _486 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _877
                        t = _103
                        continue 
                    mem[_352 + _356 + _486 + _700 + 32] = 0
                    _893 = mem[64]
                    mem[mem[64]] = _700 + _352 + _356 + _486 - mem[64]
                    mem[64] = _700 + _352 + _356 + _486 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _893
                    t = _103
                    continue 
                mem[_352 + _356 + 32] = 0
                _492 = mem[_62]
                s = 0
                while s < _492:
                    mem[s + _352 + _356 + 32] = mem[s + _62 + 32]
                    s = s + 32
                    continue 
                if ceil32(_492) <= _492:
                    _693 = mem[_205]
                    s = 0
                    while s < _693:
                        mem[s + _352 + _356 + _492 + 32] = mem[s + _205 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _878 = mem[64]
                        mem[mem[64]] = _693 + _352 + _356 + _492 - mem[64]
                        mem[64] = _693 + _352 + _356 + _492 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _878
                        t = _103
                        continue 
                    mem[_352 + _356 + _492 + _693 + 32] = 0
                    _894 = mem[64]
                    mem[mem[64]] = _693 + _352 + _356 + _492 - mem[64]
                    mem[64] = _693 + _352 + _356 + _492 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _894
                    t = _103
                    continue 
                mem[_352 + _356 + _492 + 32] = 0
                _701 = mem[_205]
                s = 0
                while s < _701:
                    mem[s + _352 + _356 + _492 + 32] = mem[s + _205 + 32]
                    s = s + 32
                    continue 
                if ceil32(_701) <= _701:
                    _879 = mem[64]
                    mem[mem[64]] = _701 + _352 + _356 + _492 - mem[64]
                    mem[64] = _701 + _352 + _356 + _492 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _879
                    t = _103
                    continue 
                mem[_352 + _356 + _492 + _701 + 32] = 0
                _895 = mem[64]
                mem[mem[64]] = _701 + _352 + _356 + _492 - mem[64]
                mem[64] = _701 + _352 + _356 + _492 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _895
                t = _103
                continue 
            mem[_205 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _104
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_205]:
                    revert with 0, 50
                mem[v + _205 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _353 = mem[64]
            _357 = mem[s]
            t = 0
            while t < _357:
                mem[t + _353 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_357) <= _357:
                _487 = mem[_62]
                s = 0
                while s < _487:
                    mem[s + _353 + _357 + 32] = mem[s + _62 + 32]
                    s = s + 32
                    continue 
                if ceil32(_487) <= _487:
                    _694 = mem[_205]
                    s = 0
                    while s < _694:
                        mem[s + _353 + _357 + _487 + 32] = mem[s + _205 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_694) <= _694:
                        _880 = mem[64]
                        mem[mem[64]] = _694 + _353 + _357 + _487 - mem[64]
                        mem[64] = _694 + _353 + _357 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _880
                        t = _103
                        continue 
                    mem[_353 + _357 + _487 + _694 + 32] = 0
                    _896 = mem[64]
                    mem[mem[64]] = _694 + _353 + _357 + _487 - mem[64]
                    mem[64] = _694 + _353 + _357 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _896
                    t = _103
                    continue 
                mem[_353 + _357 + _487 + 32] = 0
                _702 = mem[_205]
                s = 0
                while s < _702:
                    mem[s + _353 + _357 + _487 + 32] = mem[s + _205 + 32]
                    s = s + 32
                    continue 
                if ceil32(_702) <= _702:
                    _881 = mem[64]
                    mem[mem[64]] = _702 + _353 + _357 + _487 - mem[64]
                    mem[64] = _702 + _353 + _357 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _881
                    t = _103
                    continue 
                mem[_353 + _357 + _487 + _702 + 32] = 0
                _897 = mem[64]
                mem[mem[64]] = _702 + _353 + _357 + _487 - mem[64]
                mem[64] = _702 + _353 + _357 + _487 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _897
                t = _103
                continue 
            mem[_353 + _357 + 32] = 0
            _493 = mem[_62]
            s = 0
            while s < _493:
                mem[s + _353 + _357 + 32] = mem[s + _62 + 32]
                s = s + 32
                continue 
            if ceil32(_493) <= _493:
                _695 = mem[_205]
                s = 0
                while s < _695:
                    mem[s + _353 + _357 + _493 + 32] = mem[s + _205 + 32]
                    s = s + 32
                    continue 
                if ceil32(_695) <= _695:
                    _882 = mem[64]
                    mem[mem[64]] = _695 + _353 + _357 + _493 - mem[64]
                    mem[64] = _695 + _353 + _357 + _493 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _882
                    t = _103
                    continue 
                mem[_353 + _357 + _493 + _695 + 32] = 0
                _898 = mem[64]
                mem[mem[64]] = _695 + _353 + _357 + _493 - mem[64]
                mem[64] = _695 + _353 + _357 + _493 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _898
                t = _103
                continue 
            mem[_353 + _357 + _493 + 32] = 0
            _703 = mem[_205]
            s = 0
            while s < _703:
                mem[s + _353 + _357 + _493 + 32] = mem[s + _205 + 32]
                s = s + 32
                continue 
            if ceil32(_703) <= _703:
                _883 = mem[64]
                mem[mem[64]] = _703 + _353 + _357 + _493 - mem[64]
                mem[64] = _703 + _353 + _357 + _493 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _883
                t = _103
                continue 
            mem[_353 + _357 + _493 + _703 + 32] = 0
            _899 = mem[64]
            mem[mem[64]] = _703 + _353 + _357 + _493 - mem[64]
            mem[64] = _703 + _353 + _357 + _493 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _899
            t = _103
            continue 
        _102 = mem[64]
        mem[mem[64]] = 32
        _105 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_105)] = mem[s + 32 len ceil32(_105)]
        if ceil32(_105) <= _105:
            return 32, mem[mem[64] + 32 len ceil32(_105) + 32]
        mem[mem[64] + _105 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_105) + _102 + -mem[64] + 64
    u = 0
    t = mem[mem[128] + 64]
    while t:
        if u == -1:
            revert with 0, 17
        u = u + 1
        t = t / 10
        continue 
    if u > test266151307():
        revert with 0, 65
    _101 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _59
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_101]:
                revert with 0, 50
            mem[s + _101 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        _203 = mem[64]
        mem[64] = mem[64] + 64
        mem[_203] = 1
        mem[_203 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        t = _101
        u = _54
        while idx < _53:
            if idx >= mem[96]:
                revert with 0, 50
            _347 = mem[(32 * idx) + 128]
            _348 = mem[mem[(32 * idx) + 128] + 64]
            if not mem[mem[(32 * idx) + 128] + 64]:
                _360 = mem[64]
                mem[64] = mem[64] + 64
                mem[_360] = 1
                mem[_360 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _364 = mem[64]
                _367 = mem[t]
                u = 0
                while u < _367:
                    mem[u + _364 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_367) <= _367:
                    _484 = mem[_203]
                    t = 0
                    while t < _484:
                        mem[t + _364 + _367 + 32] = mem[t + _203 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_484) <= _484:
                        _686 = mem[_360]
                        s = 0
                        while s < _686:
                            mem[s + _364 + _367 + _484 + 32] = mem[s + _360 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_686) <= _686:
                            _866 = mem[64]
                            mem[mem[64]] = _686 + _364 + _367 + _484 - mem[64]
                            mem[64] = _686 + _364 + _367 + _484 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _866
                            u = _347
                            continue 
                        mem[_364 + _367 + _484 + _686 + 32] = 0
                        _884 = mem[64]
                        mem[mem[64]] = _686 + _364 + _367 + _484 - mem[64]
                        mem[64] = _686 + _364 + _367 + _484 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _884
                        u = _347
                        continue 
                    mem[_364 + _367 + _484 + 32] = 0
                    _696 = mem[_360]
                    s = 0
                    while s < _696:
                        mem[s + _364 + _367 + _484 + 32] = mem[s + _360 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_696) <= _696:
                        _867 = mem[64]
                        mem[mem[64]] = _696 + _364 + _367 + _484 - mem[64]
                        mem[64] = _696 + _364 + _367 + _484 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _867
                        u = _347
                        continue 
                    mem[_364 + _367 + _484 + _696 + 32] = 0
                    _885 = mem[64]
                    mem[mem[64]] = _696 + _364 + _367 + _484 - mem[64]
                    mem[64] = _696 + _364 + _367 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _885
                    u = _347
                    continue 
                mem[_364 + _367 + 32] = 0
                _489 = mem[_203]
                s = 0
                while s < _489:
                    mem[s + _364 + _367 + 32] = mem[s + _203 + 32]
                    s = s + 32
                    continue 
                if ceil32(_489) <= _489:
                    _687 = mem[_360]
                    s = 0
                    while s < _687:
                        mem[s + _364 + _367 + _489 + 32] = mem[s + _360 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_687) <= _687:
                        _868 = mem[64]
                        mem[mem[64]] = _687 + _364 + _367 + _489 - mem[64]
                        mem[64] = _687 + _364 + _367 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _868
                        u = _347
                        continue 
                    mem[_364 + _367 + _489 + _687 + 32] = 0
                    _886 = mem[64]
                    mem[mem[64]] = _687 + _364 + _367 + _489 - mem[64]
                    mem[64] = _687 + _364 + _367 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _886
                    u = _347
                    continue 
                mem[_364 + _367 + _489 + 32] = 0
                _697 = mem[_360]
                s = 0
                while s < _697:
                    mem[s + _364 + _367 + _489 + 32] = mem[s + _360 + 32]
                    s = s + 32
                    continue 
                if ceil32(_697) <= _697:
                    _869 = mem[64]
                    mem[mem[64]] = _697 + _364 + _367 + _489 - mem[64]
                    mem[64] = _697 + _364 + _367 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _869
                    u = _347
                    continue 
                mem[_364 + _367 + _489 + _697 + 32] = 0
                _887 = mem[64]
                mem[mem[64]] = _697 + _364 + _367 + _489 - mem[64]
                mem[64] = _697 + _364 + _367 + _489 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _887
                u = _347
                continue 
            u = 0
            s = mem[mem[(32 * idx) + 128] + 64]
            while s:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                s = s / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _482 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                s = _348
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_482]:
                        revert with 0, 50
                    mem[v + _482 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _680 = mem[64]
                _684 = mem[t]
                s = 0
                while s < _684:
                    mem[s + _680 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_684) <= _684:
                    _860 = mem[_203]
                    s = 0
                    while s < _860:
                        mem[s + _680 + _684 + 32] = mem[s + _203 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_860) <= _860:
                        _980 = mem[_482]
                        s = 0
                        while s < _980:
                            mem[s + _680 + _684 + _860 + 32] = mem[s + _482 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_980) <= _980:
                            _1060 = mem[64]
                            mem[mem[64]] = _980 + _680 + _684 + _860 - mem[64]
                            mem[64] = _980 + _680 + _684 + _860 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1060
                            u = _347
                            continue 
                        mem[_680 + _684 + _860 + _980 + 32] = 0
                        _1076 = mem[64]
                        mem[mem[64]] = _980 + _680 + _684 + _860 - mem[64]
                        mem[64] = _980 + _680 + _684 + _860 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1076
                        u = _347
                        continue 
                    mem[_680 + _684 + _860 + 32] = 0
                    _988 = mem[_482]
                    s = 0
                    while s < _988:
                        mem[s + _680 + _684 + _860 + 32] = mem[s + _482 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_988) <= _988:
                        _1061 = mem[64]
                        mem[mem[64]] = _988 + _680 + _684 + _860 - mem[64]
                        mem[64] = _988 + _680 + _684 + _860 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1061
                        u = _347
                        continue 
                    mem[_680 + _684 + _860 + _988 + 32] = 0
                    _1077 = mem[64]
                    mem[mem[64]] = _988 + _680 + _684 + _860 - mem[64]
                    mem[64] = _988 + _680 + _684 + _860 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1077
                    u = _347
                    continue 
                mem[_680 + _684 + 32] = 0
                _864 = mem[_203]
                s = 0
                while s < _864:
                    mem[s + _680 + _684 + 32] = mem[s + _203 + 32]
                    s = s + 32
                    continue 
                if ceil32(_864) <= _864:
                    _981 = mem[_482]
                    s = 0
                    while s < _981:
                        mem[s + _680 + _684 + _864 + 32] = mem[s + _482 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_981) <= _981:
                        _1062 = mem[64]
                        mem[mem[64]] = _981 + _680 + _684 + _864 - mem[64]
                        mem[64] = _981 + _680 + _684 + _864 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1062
                        u = _347
                        continue 
                    mem[_680 + _684 + _864 + _981 + 32] = 0
                    _1078 = mem[64]
                    mem[mem[64]] = _981 + _680 + _684 + _864 - mem[64]
                    mem[64] = _981 + _680 + _684 + _864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1078
                    u = _347
                    continue 
                mem[_680 + _684 + _864 + 32] = 0
                _989 = mem[_482]
                s = 0
                while s < _989:
                    mem[s + _680 + _684 + _864 + 32] = mem[s + _482 + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1063 = mem[64]
                    mem[mem[64]] = _989 + _680 + _684 + _864 - mem[64]
                    mem[64] = _989 + _680 + _684 + _864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1063
                    u = _347
                    continue 
                mem[_680 + _684 + _864 + _989 + 32] = 0
                _1079 = mem[64]
                mem[mem[64]] = _989 + _680 + _684 + _864 - mem[64]
                mem[64] = _989 + _680 + _684 + _864 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1079
                u = _347
                continue 
            mem[_482 + 32 len u] = call.data[calldata.size len u]
            v = u
            s = _348
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_482]:
                    revert with 0, 50
                mem[v + _482 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _681 = mem[64]
            _685 = mem[t]
            s = 0
            while s < _685:
                mem[s + _681 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_685) <= _685:
                _861 = mem[_203]
                s = 0
                while s < _861:
                    mem[s + _681 + _685 + 32] = mem[s + _203 + 32]
                    s = s + 32
                    continue 
                if ceil32(_861) <= _861:
                    _982 = mem[_482]
                    s = 0
                    while s < _982:
                        mem[s + _681 + _685 + _861 + 32] = mem[s + _482 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_982) <= _982:
                        _1064 = mem[64]
                        mem[mem[64]] = _982 + _681 + _685 + _861 - mem[64]
                        mem[64] = _982 + _681 + _685 + _861 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1064
                        u = _347
                        continue 
                    mem[_681 + _685 + _861 + _982 + 32] = 0
                    _1080 = mem[64]
                    mem[mem[64]] = _982 + _681 + _685 + _861 - mem[64]
                    mem[64] = _982 + _681 + _685 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1080
                    u = _347
                    continue 
                mem[_681 + _685 + _861 + 32] = 0
                _990 = mem[_482]
                s = 0
                while s < _990:
                    mem[s + _681 + _685 + _861 + 32] = mem[s + _482 + 32]
                    s = s + 32
                    continue 
                if ceil32(_990) <= _990:
                    _1065 = mem[64]
                    mem[mem[64]] = _990 + _681 + _685 + _861 - mem[64]
                    mem[64] = _990 + _681 + _685 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1065
                    u = _347
                    continue 
                mem[_681 + _685 + _861 + _990 + 32] = 0
                _1081 = mem[64]
                mem[mem[64]] = _990 + _681 + _685 + _861 - mem[64]
                mem[64] = _990 + _681 + _685 + _861 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1081
                u = _347
                continue 
            mem[_681 + _685 + 32] = 0
            _865 = mem[_203]
            s = 0
            while s < _865:
                mem[s + _681 + _685 + 32] = mem[s + _203 + 32]
                s = s + 32
                continue 
            if ceil32(_865) <= _865:
                _983 = mem[_482]
                s = 0
                while s < _983:
                    mem[s + _681 + _685 + _865 + 32] = mem[s + _482 + 32]
                    s = s + 32
                    continue 
                if ceil32(_983) <= _983:
                    _1066 = mem[64]
                    mem[mem[64]] = _983 + _681 + _685 + _865 - mem[64]
                    mem[64] = _983 + _681 + _685 + _865 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1066
                    u = _347
                    continue 
                mem[_681 + _685 + _865 + _983 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _983 + _681 + _685 + _865 - mem[64]
                mem[64] = _983 + _681 + _685 + _865 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1082
                u = _347
                continue 
            mem[_681 + _685 + _865 + 32] = 0
            _991 = mem[_482]
            s = 0
            while s < _991:
                mem[s + _681 + _685 + _865 + 32] = mem[s + _482 + 32]
                s = s + 32
                continue 
            if ceil32(_991) <= _991:
                _1067 = mem[64]
                mem[mem[64]] = _991 + _681 + _685 + _865 - mem[64]
                mem[64] = _991 + _681 + _685 + _865 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1067
                u = _347
                continue 
            mem[_681 + _685 + _865 + _991 + 32] = 0
            _1083 = mem[64]
            mem[mem[64]] = _991 + _681 + _685 + _865 - mem[64]
            mem[64] = _991 + _681 + _685 + _865 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1083
            u = _347
            continue 
        _346 = mem[64]
        mem[mem[64]] = 32
        _354 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_354)] = mem[t + 32 len ceil32(_354)]
        if ceil32(_354) <= _354:
            return 32, mem[mem[64] + 32 len ceil32(_354) + 32]
        mem[mem[64] + _354 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_354) + _346 + -mem[64] + 64
    mem[_101 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _59
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_101]:
            revert with 0, 50
        mem[s + _101 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    _204 = mem[64]
    mem[64] = mem[64] + 64
    mem[_204] = 1
    mem[_204 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    t = _101
    u = _54
    while idx < _53:
        if idx >= mem[96]:
            revert with 0, 50
        _350 = mem[(32 * idx) + 128]
        _351 = mem[mem[(32 * idx) + 128] + 64]
        if not mem[mem[(32 * idx) + 128] + 64]:
            _361 = mem[64]
            mem[64] = mem[64] + 64
            mem[_361] = 1
            mem[_361 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _365 = mem[64]
            _369 = mem[t]
            u = 0
            while u < _369:
                mem[u + _365 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_369) <= _369:
                _485 = mem[_204]
                t = 0
                while t < _485:
                    mem[t + _365 + _369 + 32] = mem[t + _204 + 32]
                    t = t + 32
                    continue 
                if ceil32(_485) <= _485:
                    _690 = mem[_361]
                    s = 0
                    while s < _690:
                        mem[s + _365 + _369 + _485 + 32] = mem[s + _361 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _872 = mem[64]
                        mem[mem[64]] = _690 + _365 + _369 + _485 - mem[64]
                        mem[64] = _690 + _365 + _369 + _485 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _872
                        u = _350
                        continue 
                    mem[_365 + _369 + _485 + _690 + 32] = 0
                    _888 = mem[64]
                    mem[mem[64]] = _690 + _365 + _369 + _485 - mem[64]
                    mem[64] = _690 + _365 + _369 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _888
                    u = _350
                    continue 
                mem[_365 + _369 + _485 + 32] = 0
                _698 = mem[_361]
                s = 0
                while s < _698:
                    mem[s + _365 + _369 + _485 + 32] = mem[s + _361 + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _873 = mem[64]
                    mem[mem[64]] = _698 + _365 + _369 + _485 - mem[64]
                    mem[64] = _698 + _365 + _369 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _873
                    u = _350
                    continue 
                mem[_365 + _369 + _485 + _698 + 32] = 0
                _889 = mem[64]
                mem[mem[64]] = _698 + _365 + _369 + _485 - mem[64]
                mem[64] = _698 + _365 + _369 + _485 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _889
                u = _350
                continue 
            mem[_365 + _369 + 32] = 0
            _491 = mem[_204]
            s = 0
            while s < _491:
                mem[s + _365 + _369 + 32] = mem[s + _204 + 32]
                s = s + 32
                continue 
            if ceil32(_491) <= _491:
                _691 = mem[_361]
                s = 0
                while s < _691:
                    mem[s + _365 + _369 + _491 + 32] = mem[s + _361 + 32]
                    s = s + 32
                    continue 
                if ceil32(_691) <= _691:
                    _874 = mem[64]
                    mem[mem[64]] = _691 + _365 + _369 + _491 - mem[64]
                    mem[64] = _691 + _365 + _369 + _491 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _874
                    u = _350
                    continue 
                mem[_365 + _369 + _491 + _691 + 32] = 0
                _890 = mem[64]
                mem[mem[64]] = _691 + _365 + _369 + _491 - mem[64]
                mem[64] = _691 + _365 + _369 + _491 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _890
                u = _350
                continue 
            mem[_365 + _369 + _491 + 32] = 0
            _699 = mem[_361]
            s = 0
            while s < _699:
                mem[s + _365 + _369 + _491 + 32] = mem[s + _361 + 32]
                s = s + 32
                continue 
            if ceil32(_699) <= _699:
                _875 = mem[64]
                mem[mem[64]] = _699 + _365 + _369 + _491 - mem[64]
                mem[64] = _699 + _365 + _369 + _491 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _875
                u = _350
                continue 
            mem[_365 + _369 + _491 + _699 + 32] = 0
            _891 = mem[64]
            mem[mem[64]] = _699 + _365 + _369 + _491 - mem[64]
            mem[64] = _699 + _365 + _369 + _491 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _891
            u = _350
            continue 
        u = 0
        s = mem[mem[(32 * idx) + 128] + 64]
        while s:
            if u == -1:
                revert with 0, 17
            u = u + 1
            s = s / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _483 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            s = _351
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_483]:
                    revert with 0, 50
                mem[v + _483 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _682 = mem[64]
            _688 = mem[t]
            s = 0
            while s < _688:
                mem[s + _682 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_688) <= _688:
                _862 = mem[_204]
                s = 0
                while s < _862:
                    mem[s + _682 + _688 + 32] = mem[s + _204 + 32]
                    s = s + 32
                    continue 
                if ceil32(_862) <= _862:
                    _984 = mem[_483]
                    s = 0
                    while s < _984:
                        mem[s + _682 + _688 + _862 + 32] = mem[s + _483 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_984) <= _984:
                        _1068 = mem[64]
                        mem[mem[64]] = _984 + _682 + _688 + _862 - mem[64]
                        mem[64] = _984 + _682 + _688 + _862 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1068
                        u = _350
                        continue 
                    mem[_682 + _688 + _862 + _984 + 32] = 0
                    _1084 = mem[64]
                    mem[mem[64]] = _984 + _682 + _688 + _862 - mem[64]
                    mem[64] = _984 + _682 + _688 + _862 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1084
                    u = _350
                    continue 
                mem[_682 + _688 + _862 + 32] = 0
                _992 = mem[_483]
                s = 0
                while s < _992:
                    mem[s + _682 + _688 + _862 + 32] = mem[s + _483 + 32]
                    s = s + 32
                    continue 
                if ceil32(_992) <= _992:
                    _1069 = mem[64]
                    mem[mem[64]] = _992 + _682 + _688 + _862 - mem[64]
                    mem[64] = _992 + _682 + _688 + _862 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1069
                    u = _350
                    continue 
                mem[_682 + _688 + _862 + _992 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _992 + _682 + _688 + _862 - mem[64]
                mem[64] = _992 + _682 + _688 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1085
                u = _350
                continue 
            mem[_682 + _688 + 32] = 0
            _870 = mem[_204]
            s = 0
            while s < _870:
                mem[s + _682 + _688 + 32] = mem[s + _204 + 32]
                s = s + 32
                continue 
            if ceil32(_870) <= _870:
                _985 = mem[_483]
                s = 0
                while s < _985:
                    mem[s + _682 + _688 + _870 + 32] = mem[s + _483 + 32]
                    s = s + 32
                    continue 
                if ceil32(_985) <= _985:
                    _1070 = mem[64]
                    mem[mem[64]] = _985 + _682 + _688 + _870 - mem[64]
                    mem[64] = _985 + _682 + _688 + _870 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1070
                    u = _350
                    continue 
                mem[_682 + _688 + _870 + _985 + 32] = 0
                _1086 = mem[64]
                mem[mem[64]] = _985 + _682 + _688 + _870 - mem[64]
                mem[64] = _985 + _682 + _688 + _870 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1086
                u = _350
                continue 
            mem[_682 + _688 + _870 + 32] = 0
            _993 = mem[_483]
            s = 0
            while s < _993:
                mem[s + _682 + _688 + _870 + 32] = mem[s + _483 + 32]
                s = s + 32
                continue 
            if ceil32(_993) <= _993:
                _1071 = mem[64]
                mem[mem[64]] = _993 + _682 + _688 + _870 - mem[64]
                mem[64] = _993 + _682 + _688 + _870 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1071
                u = _350
                continue 
            mem[_682 + _688 + _870 + _993 + 32] = 0
            _1087 = mem[64]
            mem[mem[64]] = _993 + _682 + _688 + _870 - mem[64]
            mem[64] = _993 + _682 + _688 + _870 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1087
            u = _350
            continue 
        mem[_483 + 32 len u] = call.data[calldata.size len u]
        v = u
        s = _351
        while s:
            if v < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_483]:
                revert with 0, 50
            mem[v + _483 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _683 = mem[64]
        _689 = mem[t]
        s = 0
        while s < _689:
            mem[s + _683 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_689) <= _689:
            _863 = mem[_204]
            s = 0
            while s < _863:
                mem[s + _683 + _689 + 32] = mem[s + _204 + 32]
                s = s + 32
                continue 
            if ceil32(_863) <= _863:
                _986 = mem[_483]
                s = 0
                while s < _986:
                    mem[s + _683 + _689 + _863 + 32] = mem[s + _483 + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1072 = mem[64]
                    mem[mem[64]] = _986 + _683 + _689 + _863 - mem[64]
                    mem[64] = _986 + _683 + _689 + _863 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1072
                    u = _350
                    continue 
                mem[_683 + _689 + _863 + _986 + 32] = 0
                _1088 = mem[64]
                mem[mem[64]] = _986 + _683 + _689 + _863 - mem[64]
                mem[64] = _986 + _683 + _689 + _863 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1088
                u = _350
                continue 
            mem[_683 + _689 + _863 + 32] = 0
            _994 = mem[_483]
            s = 0
            while s < _994:
                mem[s + _683 + _689 + _863 + 32] = mem[s + _483 + 32]
                s = s + 32
                continue 
            if ceil32(_994) <= _994:
                _1073 = mem[64]
                mem[mem[64]] = _994 + _683 + _689 + _863 - mem[64]
                mem[64] = _994 + _683 + _689 + _863 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1073
                u = _350
                continue 
            mem[_683 + _689 + _863 + _994 + 32] = 0
            _1089 = mem[64]
            mem[mem[64]] = _994 + _683 + _689 + _863 - mem[64]
            mem[64] = _994 + _683 + _689 + _863 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1089
            u = _350
            continue 
        mem[_683 + _689 + 32] = 0
        _871 = mem[_204]
        s = 0
        while s < _871:
            mem[s + _683 + _689 + 32] = mem[s + _204 + 32]
            s = s + 32
            continue 
        if ceil32(_871) <= _871:
            _987 = mem[_483]
            s = 0
            while s < _987:
                mem[s + _683 + _689 + _871 + 32] = mem[s + _483 + 32]
                s = s + 32
                continue 
            if ceil32(_987) <= _987:
                _1074 = mem[64]
                mem[mem[64]] = _987 + _683 + _689 + _871 - mem[64]
                mem[64] = _987 + _683 + _689 + _871 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1074
                u = _350
                continue 
            mem[_683 + _689 + _871 + _987 + 32] = 0
            _1090 = mem[64]
            mem[mem[64]] = _987 + _683 + _689 + _871 - mem[64]
            mem[64] = _987 + _683 + _689 + _871 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1090
            u = _350
            continue 
        mem[_683 + _689 + _871 + 32] = 0
        _995 = mem[_483]
        s = 0
        while s < _995:
            mem[s + _683 + _689 + _871 + 32] = mem[s + _483 + 32]
            s = s + 32
            continue 
        if ceil32(_995) <= _995:
            _1075 = mem[64]
            mem[mem[64]] = _995 + _683 + _689 + _871 - mem[64]
            mem[64] = _995 + _683 + _689 + _871 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1075
            u = _350
            continue 
        mem[_683 + _689 + _871 + _995 + 32] = 0
        _1091 = mem[64]
        mem[mem[64]] = _995 + _683 + _689 + _871 - mem[64]
        mem[64] = _995 + _683 + _689 + _871 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = _1091
        u = _350
        continue 
    _349 = mem[64]
    mem[mem[64]] = 32
    _355 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_355)] = mem[t + 32 len ceil32(_355)]
    if ceil32(_355) <= _355:
        return 32, mem[mem[64] + 32 len ceil32(_355) + 32]
    mem[mem[64] + _355 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_355) + _349 + -mem[64] + 64
}

function _getRewardAmountOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 0
    idx = 0
    s = 0
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        _317 = mem[64]
        mem[64] = mem[64] + 128
        if _getNodeNumberOf[address(arg1)][idx].field_0:
            if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _319 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_319] = uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5
            if _getNodeNumberOf[address(arg1)][idx].field_0:
                if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, _getNodeNumberOf[address(arg1)][idx].field_0):
                    mem[_317] = _319
                    mem[_317 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                    mem[_317 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                    mem[_317 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                    _323 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_323] = 30
                    mem[_323 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                        _333 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _333 + 68] = mem[idx + _323 + 32]
                            idx = idx + 32
                            continue 
                        mem[_333 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _333 + -mem[64] + 100
                    if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                        revert with 0, 17
                    _372 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_372] = 26
                    mem[_372 + 32] = 'SafeMath: division by zero'
                    if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                        _437 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_437] = 30
                        mem[_437 + 32] = 'SafeMath: subtraction overflow'
                        if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                            if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                            continue 
                        _448 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _448 + 68] = mem[idx + _437 + 32]
                            idx = idx + 32
                            continue 
                        mem[_448 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _448 + -mem[64] + 100
                    if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                        revert with 0, 17
                    if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                        revert with 0, 18
                    if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                        revert with 0, 17
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                        revert with 0, 'SafeMath: addition overflow'
                    _484 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_484] = 30
                    mem[_484 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                        if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                        continue 
                    _507 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _507 + 68] = mem[idx + _484 + 32]
                        idx = idx + 32
                        continue 
                    mem[_507 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _507 + -mem[64] + 100
                if 31 >= uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                    mem[_319 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                    mem[_317] = _319
                    mem[_317 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                    mem[_317 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                    mem[_317 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                    _334 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_334] = 30
                    mem[_334 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                        _346 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _346 + 68] = mem[idx + _334 + 32]
                            idx = idx + 32
                            continue 
                        mem[_346 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _346 + -mem[64] + 100
                    if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                        revert with 0, 17
                    _386 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_386] = 26
                    mem[_386 + 32] = 'SafeMath: division by zero'
                    if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                        _450 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_450] = 30
                        mem[_450 + 32] = 'SafeMath: subtraction overflow'
                        if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                            if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                            continue 
                        _466 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _466 + 68] = mem[idx + _450 + 32]
                            idx = idx + 32
                            continue 
                        mem[_466 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _466 + -mem[64] + 100
                    if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                        revert with 0, 17
                    if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                        revert with 0, 18
                    if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                        revert with 0, 17
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                        revert with 0, 'SafeMath: addition overflow'
                    _509 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_509] = 30
                    mem[_509 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                        if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                        continue 
                    _535 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _535 + 68] = mem[idx + _509 + 32]
                        idx = idx + 32
                        continue 
                    mem[_535 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _535 + -mem[64] + 100
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                mem[_319 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
                t = _319 + 32
                u = sha3(mem[0])
                while _319 + (uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_317] = _319
                mem[_317 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_317 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_317 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                _656 = mem[64]
                mem[64] = mem[64] + 64
                mem[_656] = 30
                mem[_656 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                    _705 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _705 + 68] = mem[idx + _656 + 32]
                        idx = idx + 32
                        continue 
                    mem[_705 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _705 + -mem[64] + 100
                if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                    revert with 0, 17
                _717 = mem[64]
                mem[64] = mem[64] + 64
                mem[_717] = 26
                mem[_717 + 32] = 'SafeMath: division by zero'
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    _741 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_741] = 30
                    mem[_741 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                        if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                        continue 
                    _745 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _745 + 68] = mem[idx + _741 + 32]
                        idx = idx + 32
                        continue 
                    mem[_745 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _745 + -mem[64] + 100
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 17
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 18
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                    revert with 0, 'SafeMath: multiplication overflow'
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                    revert with 0, 17
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                    revert with 0, 'SafeMath: addition overflow'
                _761 = mem[64]
                mem[64] = mem[64] + 64
                mem[_761] = 30
                mem[_761 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    continue 
                _769 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                s = 0
                while s < 30:
                    mem[s + _769 + 68] = mem[s + _761 + 32]
                    s = s + 32
                    continue 
                mem[_769 + 98] = 0
                revert with memory
                  from mem[64]
                   len _769 + -mem[64] + 100
            if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not _getNodeNumberOf[address(arg1)][idx].field_1:
                mem[_317] = _319
                mem[_317 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_317 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_317 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                _329 = mem[64]
                mem[64] = mem[64] + 64
                mem[_329] = 30
                mem[_329 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                    _340 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _340 + 68] = mem[idx + _329 + 32]
                        idx = idx + 32
                        continue 
                    mem[_340 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _340 + -mem[64] + 100
                if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                    revert with 0, 17
                _379 = mem[64]
                mem[64] = mem[64] + 64
                mem[_379] = 26
                mem[_379 + 32] = 'SafeMath: division by zero'
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    _443 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_443] = 30
                    mem[_443 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                        if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                        continue 
                    _457 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _457 + 68] = mem[idx + _443 + 32]
                        idx = idx + 32
                        continue 
                    mem[_457 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _457 + -mem[64] + 100
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 17
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 18
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                    revert with 0, 'SafeMath: multiplication overflow'
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                    revert with 0, 17
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                    revert with 0, 'SafeMath: addition overflow'
                _497 = mem[64]
                mem[64] = mem[64] + 64
                mem[_497] = 30
                mem[_497 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    continue 
                _522 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _522 + 68] = mem[idx + _497 + 32]
                    idx = idx + 32
                    continue 
                mem[_522 + 98] = 0
                revert with memory
                  from mem[64]
                   len _522 + -mem[64] + 100
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_1:
                mem[_319 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                mem[_317] = _319
                mem[_317 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_317 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_317 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                _341 = mem[64]
                mem[64] = mem[64] + 64
                mem[_341] = 30
                mem[_341 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                    _355 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _355 + 68] = mem[idx + _341 + 32]
                        idx = idx + 32
                        continue 
                    mem[_355 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _355 + -mem[64] + 100
                if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                    revert with 0, 17
                _394 = mem[64]
                mem[64] = mem[64] + 64
                mem[_394] = 26
                mem[_394 + 32] = 'SafeMath: division by zero'
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    _459 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_459] = 30
                    mem[_459 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                        if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                        continue 
                    _478 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _478 + 68] = mem[idx + _459 + 32]
                        idx = idx + 32
                        continue 
                    mem[_478 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _478 + -mem[64] + 100
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 17
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 18
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                    revert with 0, 'SafeMath: multiplication overflow'
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                    revert with 0, 17
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                    revert with 0, 'SafeMath: addition overflow'
                _524 = mem[64]
                mem[64] = mem[64] + 64
                mem[_524] = 30
                mem[_524 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    continue 
                _551 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _551 + 68] = mem[idx + _524 + 32]
                    idx = idx + 32
                    continue 
                mem[_551 + 98] = 0
                revert with memory
                  from mem[64]
                   len _551 + -mem[64] + 100
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_319 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
            t = _319 + 32
            u = sha3(mem[0])
            while _319 + _getNodeNumberOf[address(arg1)][idx].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_317] = _319
            mem[_317 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
            mem[_317 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
            mem[_317 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
            _663 = mem[64]
            mem[64] = mem[64] + 64
            mem[_663] = 30
            mem[_663 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                _706 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _706 + 68] = mem[idx + _663 + 32]
                    idx = idx + 32
                    continue 
                mem[_706 + 98] = 0
                revert with memory
                  from mem[64]
                   len _706 + -mem[64] + 100
            if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                revert with 0, 17
            _718 = mem[64]
            mem[64] = mem[64] + 64
            mem[_718] = 26
            mem[_718 + 32] = 'SafeMath: division by zero'
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                _742 = mem[64]
                mem[64] = mem[64] + 64
                mem[_742] = 30
                mem[_742 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                    if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    continue 
                _746 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _746 + 68] = mem[idx + _742 + 32]
                    idx = idx + 32
                    continue 
                mem[_746 + 98] = 0
                revert with memory
                  from mem[64]
                   len _746 + -mem[64] + 100
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                revert with 0, 'SafeMath: addition overflow'
            _763 = mem[64]
            mem[64] = mem[64] + 64
            mem[_763] = 30
            mem[_763 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                    revert with 0, 17
                if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                continue 
            _770 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _770 + 68] = mem[idx + _763 + 32]
                idx = idx + 32
                continue 
            mem[_770 + 98] = 0
            revert with memory
              from mem[64]
               len _770 + -mem[64] + 100
        if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _320 = mem[64]
        mem[64] = mem[64] + ceil32(_getNodeNumberOf[address(arg1)][idx].field_1) + 32
        mem[_320] = _getNodeNumberOf[address(arg1)][idx].field_1
        if _getNodeNumberOf[address(arg1)][idx].field_0:
            if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, _getNodeNumberOf[address(arg1)][idx].field_0):
                mem[_317] = _320
                mem[_317 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_317 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_317 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                _330 = mem[64]
                mem[64] = mem[64] + 64
                mem[_330] = 30
                mem[_330 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                    _342 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _342 + 68] = mem[idx + _330 + 32]
                        idx = idx + 32
                        continue 
                    mem[_342 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _342 + -mem[64] + 100
                if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                    revert with 0, 17
                _381 = mem[64]
                mem[64] = mem[64] + 64
                mem[_381] = 26
                mem[_381 + 32] = 'SafeMath: division by zero'
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    _445 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_445] = 30
                    mem[_445 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                        if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                        continue 
                    _460 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _460 + 68] = mem[idx + _445 + 32]
                        idx = idx + 32
                        continue 
                    mem[_460 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _460 + -mem[64] + 100
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 17
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 18
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                    revert with 0, 'SafeMath: multiplication overflow'
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                    revert with 0, 17
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                    revert with 0, 'SafeMath: addition overflow'
                _501 = mem[64]
                mem[64] = mem[64] + 64
                mem[_501] = 30
                mem[_501 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    continue 
                _526 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _526 + 68] = mem[idx + _501 + 32]
                    idx = idx + 32
                    continue 
                mem[_526 + 98] = 0
                revert with memory
                  from mem[64]
                   len _526 + -mem[64] + 100
            if 31 >= uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                mem[_320 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                mem[_317] = _320
                mem[_317 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_317 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_317 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                _343 = mem[64]
                mem[64] = mem[64] + 64
                mem[_343] = 30
                mem[_343 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                    _357 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _357 + 68] = mem[idx + _343 + 32]
                        idx = idx + 32
                        continue 
                    mem[_357 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _357 + -mem[64] + 100
                if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                    revert with 0, 17
                _397 = mem[64]
                mem[64] = mem[64] + 64
                mem[_397] = 26
                mem[_397 + 32] = 'SafeMath: division by zero'
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    _462 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_462] = 30
                    mem[_462 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                        if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                        continue 
                    _481 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _481 + 68] = mem[idx + _462 + 32]
                        idx = idx + 32
                        continue 
                    mem[_481 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _481 + -mem[64] + 100
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 17
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 18
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                    revert with 0, 'SafeMath: multiplication overflow'
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                    revert with 0, 17
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                    revert with 0, 'SafeMath: addition overflow'
                _528 = mem[64]
                mem[64] = mem[64] + 64
                mem[_528] = 30
                mem[_528 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    continue 
                _555 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _555 + 68] = mem[idx + _528 + 32]
                    idx = idx + 32
                    continue 
                mem[_555 + 98] = 0
                revert with memory
                  from mem[64]
                   len _555 + -mem[64] + 100
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_320 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
            t = _320 + 32
            u = sha3(mem[0])
            while _320 + (uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_317] = _320
            mem[_317 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
            mem[_317 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
            mem[_317 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
            _670 = mem[64]
            mem[64] = mem[64] + 64
            mem[_670] = 30
            mem[_670 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                _707 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _707 + 68] = mem[idx + _670 + 32]
                    idx = idx + 32
                    continue 
                mem[_707 + 98] = 0
                revert with memory
                  from mem[64]
                   len _707 + -mem[64] + 100
            if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                revert with 0, 17
            _719 = mem[64]
            mem[64] = mem[64] + 64
            mem[_719] = 26
            mem[_719 + 32] = 'SafeMath: division by zero'
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                _743 = mem[64]
                mem[64] = mem[64] + 64
                mem[_743] = 30
                mem[_743 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                    if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    continue 
                _747 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _747 + 68] = mem[idx + _743 + 32]
                    idx = idx + 32
                    continue 
                mem[_747 + 98] = 0
                revert with memory
                  from mem[64]
                   len _747 + -mem[64] + 100
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                revert with 0, 'SafeMath: addition overflow'
            _765 = mem[64]
            mem[64] = mem[64] + 64
            mem[_765] = 30
            mem[_765 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                    revert with 0, 17
                if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                continue 
            _771 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _771 + 68] = mem[idx + _765 + 32]
                idx = idx + 32
                continue 
            mem[_771 + 98] = 0
            revert with memory
              from mem[64]
               len _771 + -mem[64] + 100
        if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if not _getNodeNumberOf[address(arg1)][idx].field_1:
            mem[_317] = _320
            mem[_317 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
            mem[_317 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
            mem[_317 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
            _337 = mem[64]
            mem[64] = mem[64] + 64
            mem[_337] = 30
            mem[_337 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                _351 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _351 + 68] = mem[idx + _337 + 32]
                    idx = idx + 32
                    continue 
                mem[_351 + 98] = 0
                revert with memory
                  from mem[64]
                   len _351 + -mem[64] + 100
            if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                revert with 0, 17
            _389 = mem[64]
            mem[64] = mem[64] + 64
            mem[_389] = 26
            mem[_389 + 32] = 'SafeMath: division by zero'
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                _453 = mem[64]
                mem[64] = mem[64] + 64
                mem[_453] = 30
                mem[_453 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                    if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    continue 
                _471 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _471 + 68] = mem[idx + _453 + 32]
                    idx = idx + 32
                    continue 
                mem[_471 + 98] = 0
                revert with memory
                  from mem[64]
                   len _471 + -mem[64] + 100
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                revert with 0, 'SafeMath: addition overflow'
            _515 = mem[64]
            mem[64] = mem[64] + 64
            mem[_515] = 30
            mem[_515 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                    revert with 0, 17
                if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                continue 
            _542 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _542 + 68] = mem[idx + _515 + 32]
                idx = idx + 32
                continue 
            mem[_542 + 98] = 0
            revert with memory
              from mem[64]
               len _542 + -mem[64] + 100
        if 31 >= _getNodeNumberOf[address(arg1)][idx].field_1:
            mem[_320 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
            mem[_317] = _320
            mem[_317 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
            mem[_317 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
            mem[_317 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
            _352 = mem[64]
            mem[64] = mem[64] + 64
            mem[_352] = 30
            mem[_352 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                _365 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _365 + 68] = mem[idx + _352 + 32]
                    idx = idx + 32
                    continue 
                mem[_365 + 98] = 0
                revert with memory
                  from mem[64]
                   len _365 + -mem[64] + 100
            if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                revert with 0, 17
            _405 = mem[64]
            mem[64] = mem[64] + 64
            mem[_405] = 26
            mem[_405 + 32] = 'SafeMath: division by zero'
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                _473 = mem[64]
                mem[64] = mem[64] + 64
                mem[_473] = 30
                mem[_473 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                    if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    continue 
                _494 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _494 + 68] = mem[idx + _473 + 32]
                    idx = idx + 32
                    continue 
                mem[_494 + 98] = 0
                revert with memory
                  from mem[64]
                   len _494 + -mem[64] + 100
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                revert with 0, 'SafeMath: addition overflow'
            _544 = mem[64]
            mem[64] = mem[64] + 64
            mem[_544] = 30
            mem[_544 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                    revert with 0, 17
                if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                continue 
            _569 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _569 + 68] = mem[idx + _544 + 32]
                idx = idx + 32
                continue 
            mem[_569 + 98] = 0
            revert with memory
              from mem[64]
               len _569 + -mem[64] + 100
        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
        mem[_320 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
        t = _320 + 32
        u = sha3(mem[0])
        while _320 + _getNodeNumberOf[address(arg1)][idx].field_1 > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[_317] = _320
        mem[_317 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
        mem[_317 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
        mem[_317 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
        _677 = mem[64]
        mem[64] = mem[64] + 64
        mem[_677] = 30
        mem[_677 + 32] = 'SafeMath: subtraction overflow'
        if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
            _708 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _708 + 68] = mem[idx + _677 + 32]
                idx = idx + 32
                continue 
            mem[_708 + 98] = 0
            revert with memory
              from mem[64]
               len _708 + -mem[64] + 100
        if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
            revert with 0, 17
        _720 = mem[64]
        mem[64] = mem[64] + 64
        mem[_720] = 26
        mem[_720 + 32] = 'SafeMath: division by zero'
        if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
            _744 = mem[64]
            mem[64] = mem[64] + 64
            mem[_744] = 30
            mem[_744 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                    revert with 0, 17
                if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                continue 
            _748 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _748 + 68] = mem[idx + _744 + 32]
                idx = idx + 32
                continue 
            mem[_748 + 98] = 0
            revert with memory
              from mem[64]
               len _748 + -mem[64] + 100
        if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
            revert with 0, 17
        if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
            revert with 0, 18
        if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
            revert with 0, 'SafeMath: multiplication overflow'
        if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
            revert with 0, 17
        if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
            revert with 0, 'SafeMath: addition overflow'
        _767 = mem[64]
        mem[64] = mem[64] + 64
        mem[_767] = 30
        mem[_767 + 32] = 'SafeMath: subtraction overflow'
        if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
            if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                revert with 0, 17
            if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
            continue 
        _772 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _772 + 68] = mem[idx + _767 + 32]
            idx = idx + 32
            continue 
        mem[_772 + 98] = 0
        revert with memory
          from mem[64]
           len _772 + -mem[64] + 100
    return s
}

function _cashoutAllNodesReward(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 0
    if not _getNodeNumberOf[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
    idx = 0
    s = 0
    t = 0
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        _316 = mem[64]
        mem[64] = mem[64] + 128
        if _getNodeNumberOf[address(arg1)][idx].field_0:
            if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _318 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_318] = uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5
            if _getNodeNumberOf[address(arg1)][idx].field_0:
                if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, _getNodeNumberOf[address(arg1)][idx].field_0):
                    mem[_316] = _318
                    mem[_316 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                    mem[_316 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                    mem[_316 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                    _322 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_322] = 30
                    mem[_322 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                        _332 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _332 + 68] = mem[idx + _322 + 32]
                            idx = idx + 32
                            continue 
                        mem[_332 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _332 + -mem[64] + 100
                    if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                        revert with 0, 17
                    _371 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_371] = 26
                    mem[_371 + 32] = 'SafeMath: division by zero'
                    if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                        _436 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_436] = 30
                        mem[_436 + 32] = 'SafeMath: subtraction overflow'
                        if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                            if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                                revert with 0, 17
                            if _getNodeNumberOf[address(arg1)][idx].field_768 > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                                revert with 0, 17
                            _getNodeNumberOf[address(arg1)][idx].field_768 = 10^17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                            t = (4 * idx) + sha3(sha3(address(arg1), 0))
                            continue 
                        _447 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _447 + 68] = mem[idx + _436 + 32]
                            idx = idx + 32
                            continue 
                        mem[_447 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _447 + -mem[64] + 100
                    if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                        revert with 0, 17
                    if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                        revert with 0, 18
                    if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                        revert with 0, 17
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                        revert with 0, 'SafeMath: addition overflow'
                    _483 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_483] = 30
                    mem[_483 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                        if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        if _getNodeNumberOf[address(arg1)][idx].field_768 > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        _getNodeNumberOf[address(arg1)][idx].field_768 = (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                        t = (4 * idx) + sha3(sha3(address(arg1), 0))
                        continue 
                    _506 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _506 + 68] = mem[idx + _483 + 32]
                        idx = idx + 32
                        continue 
                    mem[_506 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _506 + -mem[64] + 100
                if 31 >= uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                    mem[_318 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                    mem[_316] = _318
                    mem[_316 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                    mem[_316 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                    mem[_316 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                    _333 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_333] = 30
                    mem[_333 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                        _345 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _345 + 68] = mem[idx + _333 + 32]
                            idx = idx + 32
                            continue 
                        mem[_345 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _345 + -mem[64] + 100
                    if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                        revert with 0, 17
                    _385 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_385] = 26
                    mem[_385 + 32] = 'SafeMath: division by zero'
                    if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                        _449 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_449] = 30
                        mem[_449 + 32] = 'SafeMath: subtraction overflow'
                        if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                            if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                                revert with 0, 17
                            if _getNodeNumberOf[address(arg1)][idx].field_768 > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                                revert with 0, 17
                            _getNodeNumberOf[address(arg1)][idx].field_768 = 10^17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                            t = (4 * idx) + sha3(sha3(address(arg1), 0))
                            continue 
                        _465 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _465 + 68] = mem[idx + _449 + 32]
                            idx = idx + 32
                            continue 
                        mem[_465 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _465 + -mem[64] + 100
                    if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                        revert with 0, 17
                    if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                        revert with 0, 18
                    if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                        revert with 0, 17
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                        revert with 0, 'SafeMath: addition overflow'
                    _508 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_508] = 30
                    mem[_508 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                        if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        if _getNodeNumberOf[address(arg1)][idx].field_768 > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        _getNodeNumberOf[address(arg1)][idx].field_768 = (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                        t = (4 * idx) + sha3(sha3(address(arg1), 0))
                        continue 
                    _534 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _534 + 68] = mem[idx + _508 + 32]
                        idx = idx + 32
                        continue 
                    mem[_534 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _534 + -mem[64] + 100
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                mem[_318 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
                t = _318 + 32
                u = sha3(mem[0])
                while _318 + (uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_316] = _318
                mem[_316 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_316 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_316 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                _655 = mem[64]
                mem[64] = mem[64] + 64
                mem[_655] = 30
                mem[_655 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                    _704 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _704 + 68] = mem[idx + _655 + 32]
                        idx = idx + 32
                        continue 
                    mem[_704 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _704 + -mem[64] + 100
                if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                    revert with 0, 17
                _716 = mem[64]
                mem[64] = mem[64] + 64
                mem[_716] = 26
                mem[_716 + 32] = 'SafeMath: division by zero'
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    _740 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_740] = 30
                    mem[_740 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                        if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        if _getNodeNumberOf[address(arg1)][idx].field_768 > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        _getNodeNumberOf[address(arg1)][idx].field_768 = 10^17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                        t = (4 * idx) + sha3(sha3(address(arg1), 0))
                        continue 
                    _744 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _744 + 68] = mem[idx + _740 + 32]
                        idx = idx + 32
                        continue 
                    mem[_744 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _744 + -mem[64] + 100
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 17
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 18
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                    revert with 0, 'SafeMath: multiplication overflow'
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                    revert with 0, 17
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                    revert with 0, 'SafeMath: addition overflow'
                _760 = mem[64]
                mem[64] = mem[64] + 64
                mem[_760] = 30
                mem[_760 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if _getNodeNumberOf[address(arg1)][idx].field_768 > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    _getNodeNumberOf[address(arg1)][idx].field_768 = (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    t = (4 * idx) + sha3(sha3(address(arg1), 0))
                    continue 
                _768 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _768 + 68] = mem[idx + _760 + 32]
                    idx = idx + 32
                    continue 
                mem[_768 + 98] = 0
                revert with memory
                  from mem[64]
                   len _768 + -mem[64] + 100
            if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not _getNodeNumberOf[address(arg1)][idx].field_1:
                mem[_316] = _318
                mem[_316 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_316 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_316 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                _328 = mem[64]
                mem[64] = mem[64] + 64
                mem[_328] = 30
                mem[_328 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                    _339 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _339 + 68] = mem[idx + _328 + 32]
                        idx = idx + 32
                        continue 
                    mem[_339 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _339 + -mem[64] + 100
                if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                    revert with 0, 17
                _378 = mem[64]
                mem[64] = mem[64] + 64
                mem[_378] = 26
                mem[_378 + 32] = 'SafeMath: division by zero'
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    _442 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_442] = 30
                    mem[_442 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                        if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        if _getNodeNumberOf[address(arg1)][idx].field_768 > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        _getNodeNumberOf[address(arg1)][idx].field_768 = 10^17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                        t = (4 * idx) + sha3(sha3(address(arg1), 0))
                        continue 
                    _456 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _456 + 68] = mem[idx + _442 + 32]
                        idx = idx + 32
                        continue 
                    mem[_456 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _456 + -mem[64] + 100
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 17
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 18
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                    revert with 0, 'SafeMath: multiplication overflow'
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                    revert with 0, 17
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                    revert with 0, 'SafeMath: addition overflow'
                _496 = mem[64]
                mem[64] = mem[64] + 64
                mem[_496] = 30
                mem[_496 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if _getNodeNumberOf[address(arg1)][idx].field_768 > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    _getNodeNumberOf[address(arg1)][idx].field_768 = (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    t = (4 * idx) + sha3(sha3(address(arg1), 0))
                    continue 
                _521 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _521 + 68] = mem[idx + _496 + 32]
                    idx = idx + 32
                    continue 
                mem[_521 + 98] = 0
                revert with memory
                  from mem[64]
                   len _521 + -mem[64] + 100
            if 31 >= _getNodeNumberOf[address(arg1)][idx].field_1:
                mem[_318 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                mem[_316] = _318
                mem[_316 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_316 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_316 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                _340 = mem[64]
                mem[64] = mem[64] + 64
                mem[_340] = 30
                mem[_340 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                    _354 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _354 + 68] = mem[idx + _340 + 32]
                        idx = idx + 32
                        continue 
                    mem[_354 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _354 + -mem[64] + 100
                if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                    revert with 0, 17
                _393 = mem[64]
                mem[64] = mem[64] + 64
                mem[_393] = 26
                mem[_393 + 32] = 'SafeMath: division by zero'
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    _458 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_458] = 30
                    mem[_458 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                        if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        if _getNodeNumberOf[address(arg1)][idx].field_768 > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        _getNodeNumberOf[address(arg1)][idx].field_768 = 10^17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                        t = (4 * idx) + sha3(sha3(address(arg1), 0))
                        continue 
                    _477 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _477 + 68] = mem[idx + _458 + 32]
                        idx = idx + 32
                        continue 
                    mem[_477 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _477 + -mem[64] + 100
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 17
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 18
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                    revert with 0, 'SafeMath: multiplication overflow'
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                    revert with 0, 17
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                    revert with 0, 'SafeMath: addition overflow'
                _523 = mem[64]
                mem[64] = mem[64] + 64
                mem[_523] = 30
                mem[_523 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if _getNodeNumberOf[address(arg1)][idx].field_768 > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    _getNodeNumberOf[address(arg1)][idx].field_768 = (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    t = (4 * idx) + sha3(sha3(address(arg1), 0))
                    continue 
                _550 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _550 + 68] = mem[idx + _523 + 32]
                    idx = idx + 32
                    continue 
                mem[_550 + 98] = 0
                revert with memory
                  from mem[64]
                   len _550 + -mem[64] + 100
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_318 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
            t = _318 + 32
            u = sha3(mem[0])
            while _318 + _getNodeNumberOf[address(arg1)][idx].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_316] = _318
            mem[_316 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
            mem[_316 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
            mem[_316 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
            _662 = mem[64]
            mem[64] = mem[64] + 64
            mem[_662] = 30
            mem[_662 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                _705 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _705 + 68] = mem[idx + _662 + 32]
                    idx = idx + 32
                    continue 
                mem[_705 + 98] = 0
                revert with memory
                  from mem[64]
                   len _705 + -mem[64] + 100
            if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                revert with 0, 17
            _717 = mem[64]
            mem[64] = mem[64] + 64
            mem[_717] = 26
            mem[_717 + 32] = 'SafeMath: division by zero'
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                _741 = mem[64]
                mem[64] = mem[64] + 64
                mem[_741] = 30
                mem[_741 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                    if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if _getNodeNumberOf[address(arg1)][idx].field_768 > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    _getNodeNumberOf[address(arg1)][idx].field_768 = 10^17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    t = (4 * idx) + sha3(sha3(address(arg1), 0))
                    continue 
                _745 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _745 + 68] = mem[idx + _741 + 32]
                    idx = idx + 32
                    continue 
                mem[_745 + 98] = 0
                revert with memory
                  from mem[64]
                   len _745 + -mem[64] + 100
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                revert with 0, 'SafeMath: addition overflow'
            _762 = mem[64]
            mem[64] = mem[64] + 64
            mem[_762] = 30
            mem[_762 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                    revert with 0, 17
                if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                    revert with 0, 17
                if _getNodeNumberOf[address(arg1)][idx].field_768 > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                    revert with 0, 17
                _getNodeNumberOf[address(arg1)][idx].field_768 = (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                t = (4 * idx) + sha3(sha3(address(arg1), 0))
                continue 
            _769 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _769 + 68] = mem[idx + _762 + 32]
                idx = idx + 32
                continue 
            mem[_769 + 98] = 0
            revert with memory
              from mem[64]
               len _769 + -mem[64] + 100
        if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _319 = mem[64]
        mem[64] = mem[64] + ceil32(_getNodeNumberOf[address(arg1)][idx].field_1) + 32
        mem[_319] = _getNodeNumberOf[address(arg1)][idx].field_1
        if _getNodeNumberOf[address(arg1)][idx].field_0:
            if _getNodeNumberOf[address(arg1)][idx].field_0 == uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, _getNodeNumberOf[address(arg1)][idx].field_0):
                mem[_316] = _319
                mem[_316 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_316 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_316 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                _329 = mem[64]
                mem[64] = mem[64] + 64
                mem[_329] = 30
                mem[_329 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                    _341 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _341 + 68] = mem[idx + _329 + 32]
                        idx = idx + 32
                        continue 
                    mem[_341 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _341 + -mem[64] + 100
                if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                    revert with 0, 17
                _380 = mem[64]
                mem[64] = mem[64] + 64
                mem[_380] = 26
                mem[_380 + 32] = 'SafeMath: division by zero'
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    _444 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_444] = 30
                    mem[_444 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                        if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        if _getNodeNumberOf[address(arg1)][idx].field_768 > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        _getNodeNumberOf[address(arg1)][idx].field_768 = 10^17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                        t = (4 * idx) + sha3(sha3(address(arg1), 0))
                        continue 
                    _459 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _459 + 68] = mem[idx + _444 + 32]
                        idx = idx + 32
                        continue 
                    mem[_459 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _459 + -mem[64] + 100
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 17
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 18
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                    revert with 0, 'SafeMath: multiplication overflow'
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                    revert with 0, 17
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                    revert with 0, 'SafeMath: addition overflow'
                _500 = mem[64]
                mem[64] = mem[64] + 64
                mem[_500] = 30
                mem[_500 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if _getNodeNumberOf[address(arg1)][idx].field_768 > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    _getNodeNumberOf[address(arg1)][idx].field_768 = (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    t = (4 * idx) + sha3(sha3(address(arg1), 0))
                    continue 
                _525 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _525 + 68] = mem[idx + _500 + 32]
                    idx = idx + 32
                    continue 
                mem[_525 + 98] = 0
                revert with memory
                  from mem[64]
                   len _525 + -mem[64] + 100
            if 31 >= uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                mem[_319 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
                mem[_316] = _319
                mem[_316 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
                mem[_316 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
                mem[_316 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
                _342 = mem[64]
                mem[64] = mem[64] + 64
                mem[_342] = 30
                mem[_342 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                    _356 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _356 + 68] = mem[idx + _342 + 32]
                        idx = idx + 32
                        continue 
                    mem[_356 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _356 + -mem[64] + 100
                if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                    revert with 0, 17
                _396 = mem[64]
                mem[64] = mem[64] + 64
                mem[_396] = 26
                mem[_396 + 32] = 'SafeMath: division by zero'
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    _461 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_461] = 30
                    mem[_461 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                        if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        if _getNodeNumberOf[address(arg1)][idx].field_768 > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                            revert with 0, 17
                        _getNodeNumberOf[address(arg1)][idx].field_768 = 10^17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                        t = (4 * idx) + sha3(sha3(address(arg1), 0))
                        continue 
                    _480 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _480 + 68] = mem[idx + _461 + 32]
                        idx = idx + 32
                        continue 
                    mem[_480 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _480 + -mem[64] + 100
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 17
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                    revert with 0, 18
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                    revert with 0, 'SafeMath: multiplication overflow'
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                    revert with 0, 17
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                    revert with 0, 'SafeMath: addition overflow'
                _527 = mem[64]
                mem[64] = mem[64] + 64
                mem[_527] = 30
                mem[_527 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if _getNodeNumberOf[address(arg1)][idx].field_768 > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    _getNodeNumberOf[address(arg1)][idx].field_768 = (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    t = (4 * idx) + sha3(sha3(address(arg1), 0))
                    continue 
                _554 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _554 + 68] = mem[idx + _527 + 32]
                    idx = idx + 32
                    continue 
                mem[_554 + 98] = 0
                revert with memory
                  from mem[64]
                   len _554 + -mem[64] + 100
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_319 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
            t = _319 + 32
            u = sha3(mem[0])
            while _319 + (uint255(_getNodeNumberOf[address(arg1)][idx].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_316] = _319
            mem[_316 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
            mem[_316 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
            mem[_316 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
            _669 = mem[64]
            mem[64] = mem[64] + 64
            mem[_669] = 30
            mem[_669 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                _706 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _706 + 68] = mem[idx + _669 + 32]
                    idx = idx + 32
                    continue 
                mem[_706 + 98] = 0
                revert with memory
                  from mem[64]
                   len _706 + -mem[64] + 100
            if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                revert with 0, 17
            _718 = mem[64]
            mem[64] = mem[64] + 64
            mem[_718] = 26
            mem[_718 + 32] = 'SafeMath: division by zero'
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                _742 = mem[64]
                mem[64] = mem[64] + 64
                mem[_742] = 30
                mem[_742 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                    if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if _getNodeNumberOf[address(arg1)][idx].field_768 > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    _getNodeNumberOf[address(arg1)][idx].field_768 = 10^17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    t = (4 * idx) + sha3(sha3(address(arg1), 0))
                    continue 
                _746 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _746 + 68] = mem[idx + _742 + 32]
                    idx = idx + 32
                    continue 
                mem[_746 + 98] = 0
                revert with memory
                  from mem[64]
                   len _746 + -mem[64] + 100
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                revert with 0, 'SafeMath: addition overflow'
            _764 = mem[64]
            mem[64] = mem[64] + 64
            mem[_764] = 30
            mem[_764 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                    revert with 0, 17
                if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                    revert with 0, 17
                if _getNodeNumberOf[address(arg1)][idx].field_768 > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                    revert with 0, 17
                _getNodeNumberOf[address(arg1)][idx].field_768 = (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                t = (4 * idx) + sha3(sha3(address(arg1), 0))
                continue 
            _770 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _770 + 68] = mem[idx + _764 + 32]
                idx = idx + 32
                continue 
            mem[_770 + 98] = 0
            revert with memory
              from mem[64]
               len _770 + -mem[64] + 100
        if _getNodeNumberOf[address(arg1)][idx].field_0 == _getNodeNumberOf[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if not _getNodeNumberOf[address(arg1)][idx].field_1:
            mem[_316] = _319
            mem[_316 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
            mem[_316 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
            mem[_316 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
            _336 = mem[64]
            mem[64] = mem[64] + 64
            mem[_336] = 30
            mem[_336 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                _350 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _350 + 68] = mem[idx + _336 + 32]
                    idx = idx + 32
                    continue 
                mem[_350 + 98] = 0
                revert with memory
                  from mem[64]
                   len _350 + -mem[64] + 100
            if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                revert with 0, 17
            _388 = mem[64]
            mem[64] = mem[64] + 64
            mem[_388] = 26
            mem[_388 + 32] = 'SafeMath: division by zero'
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                _452 = mem[64]
                mem[64] = mem[64] + 64
                mem[_452] = 30
                mem[_452 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                    if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if _getNodeNumberOf[address(arg1)][idx].field_768 > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    _getNodeNumberOf[address(arg1)][idx].field_768 = 10^17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    t = (4 * idx) + sha3(sha3(address(arg1), 0))
                    continue 
                _470 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _470 + 68] = mem[idx + _452 + 32]
                    idx = idx + 32
                    continue 
                mem[_470 + 98] = 0
                revert with memory
                  from mem[64]
                   len _470 + -mem[64] + 100
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                revert with 0, 'SafeMath: addition overflow'
            _514 = mem[64]
            mem[64] = mem[64] + 64
            mem[_514] = 30
            mem[_514 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                    revert with 0, 17
                if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                    revert with 0, 17
                if _getNodeNumberOf[address(arg1)][idx].field_768 > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                    revert with 0, 17
                _getNodeNumberOf[address(arg1)][idx].field_768 = (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                t = (4 * idx) + sha3(sha3(address(arg1), 0))
                continue 
            _541 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _541 + 68] = mem[idx + _514 + 32]
                idx = idx + 32
                continue 
            mem[_541 + 98] = 0
            revert with memory
              from mem[64]
               len _541 + -mem[64] + 100
        if 31 >= _getNodeNumberOf[address(arg1)][idx].field_1:
            mem[_319 + 32] = 256 * _getNodeNumberOf[address(arg1)][idx].field_8
            mem[_316] = _319
            mem[_316 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
            mem[_316 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
            mem[_316 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
            _351 = mem[64]
            mem[64] = mem[64] + 64
            mem[_351] = 30
            mem[_351 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
                _364 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _364 + 68] = mem[idx + _351 + 32]
                    idx = idx + 32
                    continue 
                mem[_364 + 98] = 0
                revert with memory
                  from mem[64]
                   len _364 + -mem[64] + 100
            if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
                revert with 0, 17
            _404 = mem[64]
            mem[64] = mem[64] + 64
            mem[_404] = 26
            mem[_404 + 32] = 'SafeMath: division by zero'
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                _472 = mem[64]
                mem[64] = mem[64] + 64
                mem[_472] = 30
                mem[_472 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                    if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    if _getNodeNumberOf[address(arg1)][idx].field_768 > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                        revert with 0, 17
                    _getNodeNumberOf[address(arg1)][idx].field_768 = 10^17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                    t = (4 * idx) + sha3(sha3(address(arg1), 0))
                    continue 
                _493 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _493 + 68] = mem[idx + _472 + 32]
                    idx = idx + 32
                    continue 
                mem[_493 + 98] = 0
                revert with memory
                  from mem[64]
                   len _493 + -mem[64] + 100
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
                revert with 0, 'SafeMath: addition overflow'
            _543 = mem[64]
            mem[64] = mem[64] + 64
            mem[_543] = 30
            mem[_543 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                    revert with 0, 17
                if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                    revert with 0, 17
                if _getNodeNumberOf[address(arg1)][idx].field_768 > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                    revert with 0, 17
                _getNodeNumberOf[address(arg1)][idx].field_768 = (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                t = (4 * idx) + sha3(sha3(address(arg1), 0))
                continue 
            _568 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _568 + 68] = mem[idx + _543 + 32]
                idx = idx + 32
                continue 
            mem[_568 + 98] = 0
            revert with memory
              from mem[64]
               len _568 + -mem[64] + 100
        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
        mem[_319 + 32] = _getNodeNumberOf[address(arg1)][idx].field_0
        t = _319 + 32
        u = sha3(mem[0])
        while _319 + _getNodeNumberOf[address(arg1)][idx].field_1 > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[_316] = _319
        mem[_316 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
        mem[_316 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
        mem[_316 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
        _676 = mem[64]
        mem[64] = mem[64] + 64
        mem[_676] = 30
        mem[_676 + 32] = 'SafeMath: subtraction overflow'
        if _getNodeNumberOf[address(arg1)][idx].field_256 > block.timestamp:
            _707 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _707 + 68] = mem[idx + _676 + 32]
                idx = idx + 32
                continue 
            mem[_707 + 98] = 0
            revert with memory
              from mem[64]
               len _707 + -mem[64] + 100
        if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_256:
            revert with 0, 17
        _719 = mem[64]
        mem[64] = mem[64] + 64
        mem[_719] = 26
        mem[_719 + 32] = 'SafeMath: division by zero'
        if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
            _743 = mem[64]
            mem[64] = mem[64] + 64
            mem[_743] = 30
            mem[_743 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_768 <= 10^17:
                if 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                    revert with 0, 17
                if s > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                    revert with 0, 17
                if _getNodeNumberOf[address(arg1)][idx].field_768 > !(-_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                    revert with 0, 17
                _getNodeNumberOf[address(arg1)][idx].field_768 = 10^17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
                t = (4 * idx) + sha3(sha3(address(arg1), 0))
                continue 
            _747 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _747 + 68] = mem[idx + _743 + 32]
                idx = idx + 32
                continue 
            mem[_747 + 98] = 0
            revert with memory
              from mem[64]
               len _747 + -mem[64] + 100
        if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 and stor1.length > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
            revert with 0, 17
        if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60:
            revert with 0, 18
        if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 != stor1.length:
            revert with 0, 'SafeMath: multiplication overflow'
        if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length > -100000000000000001:
            revert with 0, 17
        if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length:
            revert with 0, 'SafeMath: addition overflow'
        _766 = mem[64]
        mem[64] = mem[64] + 64
        mem[_766] = 30
        mem[_766 + 32] = 'SafeMath: subtraction overflow'
        if _getNodeNumberOf[address(arg1)][idx].field_768 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17:
            if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17 < _getNodeNumberOf[address(arg1)][idx].field_768:
                revert with 0, 17
            if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                revert with 0, 17
            if _getNodeNumberOf[address(arg1)][idx].field_768 > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17):
                revert with 0, 17
            _getNodeNumberOf[address(arg1)][idx].field_768 = (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + 10^17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_256 / 60 * stor1.length) + -_getNodeNumberOf[address(arg1)][idx].field_768 + 10^17
            t = (4 * idx) + sha3(sha3(address(arg1), 0))
            continue 
        _771 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _771 + 68] = mem[idx + _766 + 32]
            idx = idx + 32
            continue 
        mem[_771 + 98] = 0
        revert with memory
          from mem[64]
           len _771 + -mem[64] + 100
    return s
}



}
