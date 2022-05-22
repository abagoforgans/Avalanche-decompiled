contract main {




// =====================  Runtime code  =====================


#
#  - createNode(address arg1, string arg2)
#  - _getNodesRewardAvailable(address arg1)
#  - _getNodeRewardAmountOf(address arg1, uint256 arg2)
#  - _cashoutNodeReward(address arg1, uint256 arg2)
#  - _distributeRewards()
#  - _getRewardAmountOf(address arg1, uint256 arg2)
#
address owner;
array of uint256 stor1;
array of struct stor5;
uint256 nodePrice;
uint256 rewardPerNode;
uint256 claimTime;
uint8 stor9;
uint8 stor9; offset 8
uint256 gasForDistribution;
uint256 lastDistributionCount;
uint256 lastIndexProcessed;
uint256 totalNodesCreated;
uint256 totalRewardStaked;

function claimTime() payable {
    return claimTime
}

function distribution() payable {
    return bool(uint8(stor9.field_8))
}

function rewardPerNode() payable {
    return rewardPerNode
}

function lastIndexProcessed() payable {
    return lastIndexProcessed
}

function autoDistri() payable {
    return bool(uint8(stor9.field_0))
}

function totalRewardStaked() payable {
    return totalRewardStaked
}

function owner() payable {
    return owner
}

function totalNodesCreated() payable {
    return totalNodesCreated
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function _changeNodePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nodePrice = arg1
}

function _changeClaimTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    claimTime = arg1
}

function _changeRewardPerNode(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerNode = arg1
}

function _changeGasDistri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    gasForDistribution = arg1
}

function _changeAutoDistri(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor9.field_0) = uint8(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xb91d0b7ebad8d2c57ec0e631418f2b16c62f2cce)
    delegate 0xb91d0b7ebad8d2c57ec0e631418f2b16c62f2cce.0x732a2ccf with:
         gas gas_remaining wei
        args 1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function _isNodeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xb91d0b7ebad8d2c57ec0e631418f2b16c62f2cce)
    delegate 0xb91d0b7ebad8d2c57ec0e631418f2b16c62f2cce.0x732a2ccf with:
         gas gas_remaining wei
        args 1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] > 0)
}

function _cashoutAllNodesReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[address(arg1)].field_0:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 'CASHOUT ERROR: You don't have nodes to cash-out'
    idx = 0
    s = 0
    while idx < stor5[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        if s > !stor5[address(arg1)][idx].field_768:
            revert with 4266543227, 17
        stor5[address(arg1)][idx].field_768 = 0
        if idx == -1:
            revert with 4266543227, 17
        idx = idx + 1
        s = s + stor5[address(arg1)][idx].field_768
        continue 
    return (s * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0)
}

function _getRewardAmountOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xb91d0b7ebad8d2c57ec0e631418f2b16c62f2cce)
    delegate 0xb91d0b7ebad8d2c57ec0e631418f2b16c62f2cce.0x732a2ccf with:
         gas gas_remaining wei
        args 1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    idx = 0
    s = 0
    while idx < stor5[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        if s > !stor5[address(arg1)][idx].field_768:
            revert with 4266543227, 17
        if idx == -1:
            revert with 4266543227, 17
        idx = idx + 1
        s = s + stor5[address(arg1)][idx].field_768
        continue 
    return (s * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0)
}

function _getNodesNames(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 1
    mem[132] = arg1
    require ext_code.size(0xb91d0b7ebad8d2c57ec0e631418f2b16c62f2cce)
    delegate 0xb91d0b7ebad8d2c57ec0e631418f2b16c62f2cce.0x732a2ccf with:
         gas gas_remaining wei
        args 1, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET NAMES: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 5
    mem[64] = ceil32(return_data.size) + (32 * stor5[address(arg1)].field_0) + 128
    mem[ceil32(return_data.size) + 96] = stor5[address(arg1)].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < stor5[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        _74 = mem[64]
        mem[64] = mem[64] + 128
        if stor5[address(arg1)][idx].field_0:
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 4266543227, 34
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1) + 32
            mem[_84] = stor5[address(arg1)][idx].field_1
            if stor5[address(arg1)][idx].field_0:
                if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                    revert with 4266543227, 34
                if stor5[address(arg1)][idx].field_1:
                    if 31 >= stor5[address(arg1)][idx].field_1:
                        mem[_84 + 32] = 256 * stor5[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                        mem[_84 + 32] = stor5[address(arg1)][idx].field_0
                        t = _84 + 32
                        u = sha3(mem[0])
                        while _84 + stor5[address(arg1)][idx].field_1 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_74] = _84
                mem[_74 + 32] = stor5[address(arg1)][idx].field_256
                mem[_74 + 64] = stor5[address(arg1)][idx].field_512
                mem[_74 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _74
                s = s + 32
                idx = idx + 1
                continue 
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 4266543227, 34
            if not stor5[address(arg1)][idx].field_1:
                mem[_74] = _84
                mem[_74 + 32] = stor5[address(arg1)][idx].field_256
                mem[_74 + 64] = stor5[address(arg1)][idx].field_512
                mem[_74 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _74
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_84 + 32] = 256 * stor5[address(arg1)][idx].field_8
                mem[_74] = _84
                mem[_74 + 32] = stor5[address(arg1)][idx].field_256
                mem[_74 + 64] = stor5[address(arg1)][idx].field_512
                mem[_74 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _74
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_84 + 32] = stor5[address(arg1)][idx].field_0
            t = _84 + 32
            u = sha3(mem[0])
            while _84 + stor5[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_74] = _84
            mem[_74 + 32] = stor5[address(arg1)][u].field_256
            mem[_74 + 64] = stor5[address(arg1)][u].field_512
            mem[_74 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _74
            t = t + 32
            u = u + 1
            continue 
        if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
            revert with 4266543227, 34
        _88 = mem[64]
        mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1) + 32
        mem[_88] = stor5[address(arg1)][idx].field_1
        if stor5[address(arg1)][idx].field_0:
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 4266543227, 34
            if not stor5[address(arg1)][idx].field_1:
                mem[_74] = _88
                mem[_74 + 32] = stor5[address(arg1)][idx].field_256
                mem[_74 + 64] = stor5[address(arg1)][idx].field_512
                mem[_74 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _74
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_88 + 32] = 256 * stor5[address(arg1)][idx].field_8
                mem[_74] = _88
                mem[_74 + 32] = stor5[address(arg1)][idx].field_256
                mem[_74 + 64] = stor5[address(arg1)][idx].field_512
                mem[_74 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _74
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_88 + 32] = stor5[address(arg1)][idx].field_0
            t = _88 + 32
            u = sha3(mem[0])
            while _88 + stor5[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_74] = _88
            mem[_74 + 32] = stor5[address(arg1)][u].field_256
            mem[_74 + 64] = stor5[address(arg1)][u].field_512
            mem[_74 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _74
            t = t + 32
            u = u + 1
            continue 
        if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
            revert with 4266543227, 34
        if stor5[address(arg1)][idx].field_1:
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_88 + 32] = 256 * stor5[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                mem[_88 + 32] = stor5[address(arg1)][idx].field_0
                t = _88 + 32
                u = sha3(mem[0])
                while _88 + stor5[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_74] = _88
        mem[_74 + 32] = stor5[address(arg1)][idx].field_256
        mem[_74 + 64] = stor5[address(arg1)][idx].field_512
        mem[_74 + 96] = stor5[address(arg1)][idx].field_768
        mem[s] = _74
        s = s + 32
        idx = idx + 1
        continue 
    _72 = mem[ceil32(return_data.size) + 96]
    _75 = mem[64]
    mem[64] = mem[64] + 128
    mem[_75] = 96
    mem[_75 + 32] = 0
    mem[_75 + 64] = 0
    mem[_75 + 96] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 4266543227, 50
    _78 = mem[mem[ceil32(return_data.size) + 128]]
    _79 = mem[64]
    mem[64] = mem[64] + 64
    mem[_79] = 1
    mem[_79 + 32] = '#'
    idx = 1
    s = _78
    t = _75
    while idx < _72:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 4266543227, 50
        _134 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _135 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
        _136 = mem[64]
        _140 = mem[s]
        t = 0
        while t < _140:
            mem[t + _136 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_140) <= _140:
            _184 = mem[_79]
            s = 0
            while s < _184:
                mem[s + _136 + _140 + 32] = mem[s + _79 + 32]
                s = s + 32
                continue 
            if ceil32(_184) <= _184:
                _224 = mem[_135]
                s = 0
                while s < _224:
                    mem[s + _136 + _140 + _184 + 32] = mem[s + _135 + 32]
                    s = s + 32
                    continue 
                if ceil32(_224) <= _224:
                    _260 = mem[64]
                    mem[mem[64]] = _224 + _136 + _140 + _184 - mem[64]
                    mem[64] = _224 + _136 + _140 + _184 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _260
                    t = _134
                    continue 
                mem[_136 + _140 + _184 + _224 + 32] = 0
                _264 = mem[64]
                mem[mem[64]] = _224 + _136 + _140 + _184 - mem[64]
                mem[64] = _224 + _136 + _140 + _184 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _264
                t = _134
                continue 
            mem[_136 + _140 + _184 + 32] = 0
            _226 = mem[_135]
            s = 0
            while s < _226:
                mem[s + _136 + _140 + _184 + 32] = mem[s + _135 + 32]
                s = s + 32
                continue 
            if ceil32(_226) <= _226:
                _261 = mem[64]
                mem[mem[64]] = _226 + _136 + _140 + _184 - mem[64]
                mem[64] = _226 + _136 + _140 + _184 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _261
                t = _134
                continue 
            mem[_136 + _140 + _184 + _226 + 32] = 0
            _265 = mem[64]
            mem[mem[64]] = _226 + _136 + _140 + _184 - mem[64]
            mem[64] = _226 + _136 + _140 + _184 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _265
            t = _134
            continue 
        mem[_136 + _140 + 32] = 0
        _186 = mem[_79]
        s = 0
        while s < _186:
            mem[s + _136 + _140 + 32] = mem[s + _79 + 32]
            s = s + 32
            continue 
        if ceil32(_186) <= _186:
            _225 = mem[_135]
            s = 0
            while s < _225:
                mem[s + _136 + _140 + _186 + 32] = mem[s + _135 + 32]
                s = s + 32
                continue 
            if ceil32(_225) <= _225:
                _262 = mem[64]
                mem[mem[64]] = _225 + _136 + _140 + _186 - mem[64]
                mem[64] = _225 + _136 + _140 + _186 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _262
                t = _134
                continue 
            mem[_136 + _140 + _186 + _225 + 32] = 0
            _266 = mem[64]
            mem[mem[64]] = _225 + _136 + _140 + _186 - mem[64]
            mem[64] = _225 + _136 + _140 + _186 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _266
            t = _134
            continue 
        mem[_136 + _140 + _186 + 32] = 0
        _227 = mem[_135]
        s = 0
        while s < _227:
            mem[s + _136 + _140 + _186 + 32] = mem[s + _135 + 32]
            s = s + 32
            continue 
        if ceil32(_227) <= _227:
            _263 = mem[64]
            mem[mem[64]] = _227 + _136 + _140 + _186 - mem[64]
            mem[64] = _227 + _136 + _140 + _186 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _263
            t = _134
            continue 
        mem[_136 + _140 + _186 + _227 + 32] = 0
        _267 = mem[64]
        mem[mem[64]] = _227 + _136 + _140 + _186 - mem[64]
        mem[64] = _227 + _136 + _140 + _186 + 32
        if idx == -1:
            revert with 4266543227, 17
        idx = idx + 1
        s = _267
        t = _134
        continue 
    mem[mem[64]] = 32
    _141 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_141)] = mem[s + 32 len ceil32(_141)]
    if ceil32(_141) > _141:
        mem[mem[64] + _141 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_141) + 32]
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 1
    mem[132] = arg1
    require ext_code.size(0xb91d0b7ebad8d2c57ec0e631418f2b16c62f2cce)
    delegate 0xb91d0b7ebad8d2c57ec0e631418f2b16c62f2cce.0x732a2ccf with:
         gas gas_remaining wei
        args 1, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        return ''
    mem[0] = arg1
    mem[32] = 5
    mem[64] = ceil32(return_data.size) + (32 * stor5[address(arg1)].field_0) + 128
    mem[ceil32(return_data.size) + 96] = stor5[address(arg1)].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < stor5[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        _79 = mem[64]
        mem[64] = mem[64] + 128
        if stor5[address(arg1)][idx].field_0:
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 4266543227, 34
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1) + 32
            mem[_90] = stor5[address(arg1)][idx].field_1
            if stor5[address(arg1)][idx].field_0:
                if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                    revert with 4266543227, 34
                if stor5[address(arg1)][idx].field_1:
                    if 31 >= stor5[address(arg1)][idx].field_1:
                        mem[_90 + 32] = 256 * stor5[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                        mem[_90 + 32] = stor5[address(arg1)][idx].field_0
                        t = _90 + 32
                        u = sha3(mem[0])
                        while _90 + stor5[address(arg1)][idx].field_1 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_79] = _90
                mem[_79 + 32] = stor5[address(arg1)][idx].field_256
                mem[_79 + 64] = stor5[address(arg1)][idx].field_512
                mem[_79 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _79
                s = s + 32
                idx = idx + 1
                continue 
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 4266543227, 34
            if not stor5[address(arg1)][idx].field_1:
                mem[_79] = _90
                mem[_79 + 32] = stor5[address(arg1)][idx].field_256
                mem[_79 + 64] = stor5[address(arg1)][idx].field_512
                mem[_79 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _79
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_90 + 32] = 256 * stor5[address(arg1)][idx].field_8
                mem[_79] = _90
                mem[_79 + 32] = stor5[address(arg1)][idx].field_256
                mem[_79 + 64] = stor5[address(arg1)][idx].field_512
                mem[_79 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _79
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_90 + 32] = stor5[address(arg1)][idx].field_0
            t = _90 + 32
            u = sha3(mem[0])
            while _90 + stor5[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_79] = _90
            mem[_79 + 32] = stor5[address(arg1)][u].field_256
            mem[_79 + 64] = stor5[address(arg1)][u].field_512
            mem[_79 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _79
            t = t + 32
            u = u + 1
            continue 
        if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
            revert with 4266543227, 34
        _94 = mem[64]
        mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1) + 32
        mem[_94] = stor5[address(arg1)][idx].field_1
        if stor5[address(arg1)][idx].field_0:
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 4266543227, 34
            if not stor5[address(arg1)][idx].field_1:
                mem[_79] = _94
                mem[_79 + 32] = stor5[address(arg1)][idx].field_256
                mem[_79 + 64] = stor5[address(arg1)][idx].field_512
                mem[_79 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _79
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_94 + 32] = 256 * stor5[address(arg1)][idx].field_8
                mem[_79] = _94
                mem[_79 + 32] = stor5[address(arg1)][idx].field_256
                mem[_79 + 64] = stor5[address(arg1)][idx].field_512
                mem[_79 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _79
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_94 + 32] = stor5[address(arg1)][idx].field_0
            t = _94 + 32
            u = sha3(mem[0])
            while _94 + stor5[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_79] = _94
            mem[_79 + 32] = stor5[address(arg1)][u].field_256
            mem[_79 + 64] = stor5[address(arg1)][u].field_512
            mem[_79 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _79
            t = t + 32
            u = u + 1
            continue 
        if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
            revert with 4266543227, 34
        if stor5[address(arg1)][idx].field_1:
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_94 + 32] = 256 * stor5[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                mem[_94 + 32] = stor5[address(arg1)][idx].field_0
                t = _94 + 32
                u = sha3(mem[0])
                while _94 + stor5[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_79] = _94
        mem[_79 + 32] = stor5[address(arg1)][idx].field_256
        mem[_79 + 64] = stor5[address(arg1)][idx].field_512
        mem[_79 + 96] = stor5[address(arg1)][idx].field_768
        mem[s] = _79
        s = s + 32
        idx = idx + 1
        continue 
    _77 = mem[ceil32(return_data.size) + 96]
    _80 = mem[64]
    mem[64] = mem[64] + 128
    mem[_80] = 96
    mem[_80 + 32] = 0
    mem[_80 + 64] = 0
    mem[_80 + 96] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 4266543227, 50
    _84 = mem[mem[ceil32(return_data.size) + 128] + 64]
    if not mem[mem[ceil32(return_data.size) + 128] + 64]:
        _93 = mem[64]
        mem[64] = mem[64] + 64
        mem[_93] = 1
        mem[_93 + 32] = '0'
        _95 = mem[64]
        mem[64] = mem[64] + 64
        mem[_95] = 1
        mem[_95 + 32] = '#'
        idx = 1
        s = _93
        t = _80
        while idx < _77:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 4266543227, 50
            _146 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _147 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                _154 = mem[64]
                mem[64] = mem[64] + 64
                mem[_154] = 1
                mem[_154 + 32] = '0'
                _156 = mem[64]
                _159 = mem[s]
                t = 0
                while t < _159:
                    mem[t + _156 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_159) <= _159:
                    _296 = mem[_95]
                    s = 0
                    while s < _296:
                        mem[s + _156 + _159 + 32] = mem[s + _95 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_296) <= _296:
                        _544 = mem[_154]
                        s = 0
                        while s < _544:
                            mem[s + _156 + _159 + _296 + 32] = mem[s + _154 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_544) <= _544:
                            _790 = mem[64]
                            mem[mem[64]] = _544 + _156 + _159 + _296 - mem[64]
                            mem[64] = _544 + _156 + _159 + _296 + 32
                            if idx == -1:
                                revert with 4266543227, 17
                            idx = idx + 1
                            s = _790
                            t = _146
                            continue 
                        mem[_156 + _159 + _296 + _544 + 32] = 0
                        _796 = mem[64]
                        mem[mem[64]] = _544 + _156 + _159 + _296 - mem[64]
                        mem[64] = _544 + _156 + _159 + _296 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _796
                        t = _146
                        continue 
                    mem[_156 + _159 + _296 + 32] = 0
                    _554 = mem[_154]
                    s = 0
                    while s < _554:
                        mem[s + _156 + _159 + _296 + 32] = mem[s + _154 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_554) <= _554:
                        _791 = mem[64]
                        mem[mem[64]] = _554 + _156 + _159 + _296 - mem[64]
                        mem[64] = _554 + _156 + _159 + _296 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _791
                        t = _146
                        continue 
                    mem[_156 + _159 + _296 + _554 + 32] = 0
                    _797 = mem[64]
                    mem[mem[64]] = _554 + _156 + _159 + _296 - mem[64]
                    mem[64] = _554 + _156 + _159 + _296 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _797
                    t = _146
                    continue 
                mem[_156 + _159 + 32] = 0
                _306 = mem[_95]
                s = 0
                while s < _306:
                    mem[s + _156 + _159 + 32] = mem[s + _95 + 32]
                    s = s + 32
                    continue 
                if ceil32(_306) <= _306:
                    _545 = mem[_154]
                    s = 0
                    while s < _545:
                        mem[s + _156 + _159 + _306 + 32] = mem[s + _154 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_545) <= _545:
                        _792 = mem[64]
                        mem[mem[64]] = _545 + _156 + _159 + _306 - mem[64]
                        mem[64] = _545 + _156 + _159 + _306 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _792
                        t = _146
                        continue 
                    mem[_156 + _159 + _306 + _545 + 32] = 0
                    _798 = mem[64]
                    mem[mem[64]] = _545 + _156 + _159 + _306 - mem[64]
                    mem[64] = _545 + _156 + _159 + _306 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _798
                    t = _146
                    continue 
                mem[_156 + _159 + _306 + 32] = 0
                _555 = mem[_154]
                s = 0
                while s < _555:
                    mem[s + _156 + _159 + _306 + 32] = mem[s + _154 + 32]
                    s = s + 32
                    continue 
                if ceil32(_555) <= _555:
                    _793 = mem[64]
                    mem[mem[64]] = _555 + _156 + _159 + _306 - mem[64]
                    mem[64] = _555 + _156 + _159 + _306 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _793
                    t = _146
                    continue 
                mem[_156 + _159 + _306 + _555 + 32] = 0
                _799 = mem[64]
                mem[mem[64]] = _555 + _156 + _159 + _306 - mem[64]
                mem[64] = _555 + _156 + _159 + _306 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _799
                t = _146
                continue 
            u = 0
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            while t:
                if u == -1:
                    revert with 4266543227, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 4266543227, 65
            _293 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _147
                while t:
                    if v < 1:
                        revert with 4266543227, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 4266543227, 17
                    if t < 10 * t / 10:
                        revert with 4266543227, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 4266543227, 17
                    if v - 1 >= mem[_293]:
                        revert with 4266543227, 50
                    mem[v + _293 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _538 = mem[64]
                _542 = mem[s]
                t = 0
                while t < _542:
                    mem[t + _538 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_542) <= _542:
                    _778 = mem[_95]
                    s = 0
                    while s < _778:
                        mem[s + _538 + _542 + 32] = mem[s + _95 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_778) <= _778:
                        _1172 = mem[_293]
                        s = 0
                        while s < _1172:
                            mem[s + _538 + _542 + _778 + 32] = mem[s + _293 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1172) <= _1172:
                            _1524 = mem[64]
                            mem[mem[64]] = _1172 + _538 + _542 + _778 - mem[64]
                            mem[64] = _1172 + _538 + _542 + _778 + 32
                            if idx == -1:
                                revert with 4266543227, 17
                            idx = idx + 1
                            s = _1524
                            t = _146
                            continue 
                        mem[_538 + _542 + _778 + _1172 + 32] = 0
                        _1540 = mem[64]
                        mem[mem[64]] = _1172 + _538 + _542 + _778 - mem[64]
                        mem[64] = _1172 + _538 + _542 + _778 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1540
                        t = _146
                        continue 
                    mem[_538 + _542 + _778 + 32] = 0
                    _1188 = mem[_293]
                    s = 0
                    while s < _1188:
                        mem[s + _538 + _542 + _778 + 32] = mem[s + _293 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1188) <= _1188:
                        _1525 = mem[64]
                        mem[mem[64]] = _1188 + _538 + _542 + _778 - mem[64]
                        mem[64] = _1188 + _538 + _542 + _778 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1525
                        t = _146
                        continue 
                    mem[_538 + _542 + _778 + _1188 + 32] = 0
                    _1541 = mem[64]
                    mem[mem[64]] = _1188 + _538 + _542 + _778 - mem[64]
                    mem[64] = _1188 + _538 + _542 + _778 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1541
                    t = _146
                    continue 
                mem[_538 + _542 + 32] = 0
                _788 = mem[_95]
                s = 0
                while s < _788:
                    mem[s + _538 + _542 + 32] = mem[s + _95 + 32]
                    s = s + 32
                    continue 
                if ceil32(_788) <= _788:
                    _1173 = mem[_293]
                    s = 0
                    while s < _1173:
                        mem[s + _538 + _542 + _788 + 32] = mem[s + _293 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1173) <= _1173:
                        _1526 = mem[64]
                        mem[mem[64]] = _1173 + _538 + _542 + _788 - mem[64]
                        mem[64] = _1173 + _538 + _542 + _788 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1526
                        t = _146
                        continue 
                    mem[_538 + _542 + _788 + _1173 + 32] = 0
                    _1542 = mem[64]
                    mem[mem[64]] = _1173 + _538 + _542 + _788 - mem[64]
                    mem[64] = _1173 + _538 + _542 + _788 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1542
                    t = _146
                    continue 
                mem[_538 + _542 + _788 + 32] = 0
                _1189 = mem[_293]
                s = 0
                while s < _1189:
                    mem[s + _538 + _542 + _788 + 32] = mem[s + _293 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1189) <= _1189:
                    _1527 = mem[64]
                    mem[mem[64]] = _1189 + _538 + _542 + _788 - mem[64]
                    mem[64] = _1189 + _538 + _542 + _788 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1527
                    t = _146
                    continue 
                mem[_538 + _542 + _788 + _1189 + 32] = 0
                _1543 = mem[64]
                mem[mem[64]] = _1189 + _538 + _542 + _788 - mem[64]
                mem[64] = _1189 + _538 + _542 + _788 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1543
                t = _146
                continue 
            mem[_293 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _147
            while t:
                if v < 1:
                    revert with 4266543227, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 4266543227, 17
                if t < 10 * t / 10:
                    revert with 4266543227, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 4266543227, 17
                if v - 1 >= mem[_293]:
                    revert with 4266543227, 50
                mem[v + _293 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _539 = mem[64]
            _543 = mem[s]
            t = 0
            while t < _543:
                mem[t + _539 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_543) <= _543:
                _779 = mem[_95]
                s = 0
                while s < _779:
                    mem[s + _539 + _543 + 32] = mem[s + _95 + 32]
                    s = s + 32
                    continue 
                if ceil32(_779) <= _779:
                    _1174 = mem[_293]
                    s = 0
                    while s < _1174:
                        mem[s + _539 + _543 + _779 + 32] = mem[s + _293 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1174) <= _1174:
                        _1528 = mem[64]
                        mem[mem[64]] = _1174 + _539 + _543 + _779 - mem[64]
                        mem[64] = _1174 + _539 + _543 + _779 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1528
                        t = _146
                        continue 
                    mem[_539 + _543 + _779 + _1174 + 32] = 0
                    _1544 = mem[64]
                    mem[mem[64]] = _1174 + _539 + _543 + _779 - mem[64]
                    mem[64] = _1174 + _539 + _543 + _779 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1544
                    t = _146
                    continue 
                mem[_539 + _543 + _779 + 32] = 0
                _1190 = mem[_293]
                s = 0
                while s < _1190:
                    mem[s + _539 + _543 + _779 + 32] = mem[s + _293 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1190) <= _1190:
                    _1529 = mem[64]
                    mem[mem[64]] = _1190 + _539 + _543 + _779 - mem[64]
                    mem[64] = _1190 + _539 + _543 + _779 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1529
                    t = _146
                    continue 
                mem[_539 + _543 + _779 + _1190 + 32] = 0
                _1545 = mem[64]
                mem[mem[64]] = _1190 + _539 + _543 + _779 - mem[64]
                mem[64] = _1190 + _539 + _543 + _779 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1545
                t = _146
                continue 
            mem[_539 + _543 + 32] = 0
            _789 = mem[_95]
            s = 0
            while s < _789:
                mem[s + _539 + _543 + 32] = mem[s + _95 + 32]
                s = s + 32
                continue 
            if ceil32(_789) <= _789:
                _1175 = mem[_293]
                s = 0
                while s < _1175:
                    mem[s + _539 + _543 + _789 + 32] = mem[s + _293 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1175) <= _1175:
                    _1530 = mem[64]
                    mem[mem[64]] = _1175 + _539 + _543 + _789 - mem[64]
                    mem[64] = _1175 + _539 + _543 + _789 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1530
                    t = _146
                    continue 
                mem[_539 + _543 + _789 + _1175 + 32] = 0
                _1546 = mem[64]
                mem[mem[64]] = _1175 + _539 + _543 + _789 - mem[64]
                mem[64] = _1175 + _539 + _543 + _789 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1546
                t = _146
                continue 
            mem[_539 + _543 + _789 + 32] = 0
            _1191 = mem[_293]
            s = 0
            while s < _1191:
                mem[s + _539 + _543 + _789 + 32] = mem[s + _293 + 32]
                s = s + 32
                continue 
            if ceil32(_1191) <= _1191:
                _1531 = mem[64]
                mem[mem[64]] = _1191 + _539 + _543 + _789 - mem[64]
                mem[64] = _1191 + _539 + _543 + _789 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1531
                t = _146
                continue 
            mem[_539 + _543 + _789 + _1191 + 32] = 0
            _1547 = mem[64]
            mem[mem[64]] = _1191 + _539 + _543 + _789 - mem[64]
            mem[64] = _1191 + _539 + _543 + _789 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _1547
            t = _146
            continue 
        mem[mem[64]] = 32
        _153 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_153)] = mem[s + 32 len ceil32(_153)]
        if ceil32(_153) > _153:
            mem[mem[64] + _153 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_153) + 32]
    s = 0
    idx = mem[mem[ceil32(return_data.size) + 128] + 64]
    while idx:
        if s == -1:
            revert with 4266543227, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 4266543227, 65
    _143 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _84
        while idx:
            if t < 1:
                revert with 4266543227, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 4266543227, 17
            if idx < 10 * idx / 10:
                revert with 4266543227, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 4266543227, 17
            if t - 1 >= mem[_143]:
                revert with 4266543227, 50
            mem[t + _143 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _291 = mem[64]
        mem[64] = mem[64] + 64
        mem[_291] = 1
        mem[_291 + 32] = '#'
        idx = 1
        s = _143
        t = _80
        while idx < _77:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 4266543227, 50
            _530 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _531 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                _547 = mem[64]
                mem[64] = mem[64] + 64
                mem[_547] = 1
                mem[_547 + 32] = '0'
                _556 = mem[64]
                _563 = mem[s]
                t = 0
                while t < _563:
                    mem[t + _556 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_563) <= _563:
                    _776 = mem[_291]
                    s = 0
                    while s < _776:
                        mem[s + _556 + _563 + 32] = mem[s + _291 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_776) <= _776:
                        _1166 = mem[_547]
                        s = 0
                        while s < _1166:
                            mem[s + _556 + _563 + _776 + 32] = mem[s + _547 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1166) <= _1166:
                            _1514 = mem[64]
                            mem[mem[64]] = _1166 + _556 + _563 + _776 - mem[64]
                            mem[64] = _1166 + _556 + _563 + _776 + 32
                            if idx == -1:
                                revert with 4266543227, 17
                            idx = idx + 1
                            s = _1514
                            t = _530
                            continue 
                        mem[_556 + _563 + _776 + _1166 + 32] = 0
                        _1532 = mem[64]
                        mem[mem[64]] = _1166 + _556 + _563 + _776 - mem[64]
                        mem[64] = _1166 + _556 + _563 + _776 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1532
                        t = _530
                        continue 
                    mem[_556 + _563 + _776 + 32] = 0
                    _1180 = mem[_547]
                    s = 0
                    while s < _1180:
                        mem[s + _556 + _563 + _776 + 32] = mem[s + _547 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1180) <= _1180:
                        _1515 = mem[64]
                        mem[mem[64]] = _1180 + _556 + _563 + _776 - mem[64]
                        mem[64] = _1180 + _556 + _563 + _776 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1515
                        t = _530
                        continue 
                    mem[_556 + _563 + _776 + _1180 + 32] = 0
                    _1533 = mem[64]
                    mem[mem[64]] = _1180 + _556 + _563 + _776 - mem[64]
                    mem[64] = _1180 + _556 + _563 + _776 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1533
                    t = _530
                    continue 
                mem[_556 + _563 + 32] = 0
                _783 = mem[_291]
                s = 0
                while s < _783:
                    mem[s + _556 + _563 + 32] = mem[s + _291 + 32]
                    s = s + 32
                    continue 
                if ceil32(_783) <= _783:
                    _1167 = mem[_547]
                    s = 0
                    while s < _1167:
                        mem[s + _556 + _563 + _783 + 32] = mem[s + _547 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1167) <= _1167:
                        _1516 = mem[64]
                        mem[mem[64]] = _1167 + _556 + _563 + _783 - mem[64]
                        mem[64] = _1167 + _556 + _563 + _783 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1516
                        t = _530
                        continue 
                    mem[_556 + _563 + _783 + _1167 + 32] = 0
                    _1534 = mem[64]
                    mem[mem[64]] = _1167 + _556 + _563 + _783 - mem[64]
                    mem[64] = _1167 + _556 + _563 + _783 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1534
                    t = _530
                    continue 
                mem[_556 + _563 + _783 + 32] = 0
                _1181 = mem[_547]
                s = 0
                while s < _1181:
                    mem[s + _556 + _563 + _783 + 32] = mem[s + _547 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1181) <= _1181:
                    _1517 = mem[64]
                    mem[mem[64]] = _1181 + _556 + _563 + _783 - mem[64]
                    mem[64] = _1181 + _556 + _563 + _783 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1517
                    t = _530
                    continue 
                mem[_556 + _563 + _783 + _1181 + 32] = 0
                _1535 = mem[64]
                mem[mem[64]] = _1181 + _556 + _563 + _783 - mem[64]
                mem[64] = _1181 + _556 + _563 + _783 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1535
                t = _530
                continue 
            u = 0
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            while t:
                if u == -1:
                    revert with 4266543227, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 4266543227, 65
            _770 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _531
                while t:
                    if v < 1:
                        revert with 4266543227, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 4266543227, 17
                    if t < 10 * t / 10:
                        revert with 4266543227, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 4266543227, 17
                    if v - 1 >= mem[_770]:
                        revert with 4266543227, 50
                    mem[v + _770 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _1160 = mem[64]
                _1164 = mem[s]
                t = 0
                while t < _1164:
                    mem[t + _1160 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_1164) <= _1164:
                    _1508 = mem[_291]
                    s = 0
                    while s < _1508:
                        mem[s + _1160 + _1164 + 32] = mem[s + _291 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1508) <= _1508:
                        _1756 = mem[_770]
                        s = 0
                        while s < _1756:
                            mem[s + _1160 + _1164 + _1508 + 32] = mem[s + _770 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1756) <= _1756:
                            _1900 = mem[64]
                            mem[mem[64]] = _1756 + _1160 + _1164 + _1508 - mem[64]
                            mem[64] = _1756 + _1160 + _1164 + _1508 + 32
                            if idx == -1:
                                revert with 4266543227, 17
                            idx = idx + 1
                            s = _1900
                            t = _530
                            continue 
                        mem[_1160 + _1164 + _1508 + _1756 + 32] = 0
                        _1916 = mem[64]
                        mem[mem[64]] = _1756 + _1160 + _1164 + _1508 - mem[64]
                        mem[64] = _1756 + _1160 + _1164 + _1508 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1916
                        t = _530
                        continue 
                    mem[_1160 + _1164 + _1508 + 32] = 0
                    _1764 = mem[_770]
                    s = 0
                    while s < _1764:
                        mem[s + _1160 + _1164 + _1508 + 32] = mem[s + _770 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1764) <= _1764:
                        _1901 = mem[64]
                        mem[mem[64]] = _1764 + _1160 + _1164 + _1508 - mem[64]
                        mem[64] = _1764 + _1160 + _1164 + _1508 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1901
                        t = _530
                        continue 
                    mem[_1160 + _1164 + _1508 + _1764 + 32] = 0
                    _1917 = mem[64]
                    mem[mem[64]] = _1764 + _1160 + _1164 + _1508 - mem[64]
                    mem[64] = _1764 + _1160 + _1164 + _1508 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1917
                    t = _530
                    continue 
                mem[_1160 + _1164 + 32] = 0
                _1512 = mem[_291]
                s = 0
                while s < _1512:
                    mem[s + _1160 + _1164 + 32] = mem[s + _291 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1512) <= _1512:
                    _1757 = mem[_770]
                    s = 0
                    while s < _1757:
                        mem[s + _1160 + _1164 + _1512 + 32] = mem[s + _770 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1757) <= _1757:
                        _1902 = mem[64]
                        mem[mem[64]] = _1757 + _1160 + _1164 + _1512 - mem[64]
                        mem[64] = _1757 + _1160 + _1164 + _1512 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1902
                        t = _530
                        continue 
                    mem[_1160 + _1164 + _1512 + _1757 + 32] = 0
                    _1918 = mem[64]
                    mem[mem[64]] = _1757 + _1160 + _1164 + _1512 - mem[64]
                    mem[64] = _1757 + _1160 + _1164 + _1512 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1918
                    t = _530
                    continue 
                mem[_1160 + _1164 + _1512 + 32] = 0
                _1765 = mem[_770]
                s = 0
                while s < _1765:
                    mem[s + _1160 + _1164 + _1512 + 32] = mem[s + _770 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1765) <= _1765:
                    _1903 = mem[64]
                    mem[mem[64]] = _1765 + _1160 + _1164 + _1512 - mem[64]
                    mem[64] = _1765 + _1160 + _1164 + _1512 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1903
                    t = _530
                    continue 
                mem[_1160 + _1164 + _1512 + _1765 + 32] = 0
                _1919 = mem[64]
                mem[mem[64]] = _1765 + _1160 + _1164 + _1512 - mem[64]
                mem[64] = _1765 + _1160 + _1164 + _1512 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1919
                t = _530
                continue 
            mem[_770 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _531
            while t:
                if v < 1:
                    revert with 4266543227, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 4266543227, 17
                if t < 10 * t / 10:
                    revert with 4266543227, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 4266543227, 17
                if v - 1 >= mem[_770]:
                    revert with 4266543227, 50
                mem[v + _770 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _1161 = mem[64]
            _1165 = mem[s]
            t = 0
            while t < _1165:
                mem[t + _1161 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_1165) <= _1165:
                _1509 = mem[_291]
                s = 0
                while s < _1509:
                    mem[s + _1161 + _1165 + 32] = mem[s + _291 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1509) <= _1509:
                    _1758 = mem[_770]
                    s = 0
                    while s < _1758:
                        mem[s + _1161 + _1165 + _1509 + 32] = mem[s + _770 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1758) <= _1758:
                        _1904 = mem[64]
                        mem[mem[64]] = _1758 + _1161 + _1165 + _1509 - mem[64]
                        mem[64] = _1758 + _1161 + _1165 + _1509 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1904
                        t = _530
                        continue 
                    mem[_1161 + _1165 + _1509 + _1758 + 32] = 0
                    _1920 = mem[64]
                    mem[mem[64]] = _1758 + _1161 + _1165 + _1509 - mem[64]
                    mem[64] = _1758 + _1161 + _1165 + _1509 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1920
                    t = _530
                    continue 
                mem[_1161 + _1165 + _1509 + 32] = 0
                _1766 = mem[_770]
                s = 0
                while s < _1766:
                    mem[s + _1161 + _1165 + _1509 + 32] = mem[s + _770 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1766) <= _1766:
                    _1905 = mem[64]
                    mem[mem[64]] = _1766 + _1161 + _1165 + _1509 - mem[64]
                    mem[64] = _1766 + _1161 + _1165 + _1509 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1905
                    t = _530
                    continue 
                mem[_1161 + _1165 + _1509 + _1766 + 32] = 0
                _1921 = mem[64]
                mem[mem[64]] = _1766 + _1161 + _1165 + _1509 - mem[64]
                mem[64] = _1766 + _1161 + _1165 + _1509 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1921
                t = _530
                continue 
            mem[_1161 + _1165 + 32] = 0
            _1513 = mem[_291]
            s = 0
            while s < _1513:
                mem[s + _1161 + _1165 + 32] = mem[s + _291 + 32]
                s = s + 32
                continue 
            if ceil32(_1513) <= _1513:
                _1759 = mem[_770]
                s = 0
                while s < _1759:
                    mem[s + _1161 + _1165 + _1513 + 32] = mem[s + _770 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1759) <= _1759:
                    _1906 = mem[64]
                    mem[mem[64]] = _1759 + _1161 + _1165 + _1513 - mem[64]
                    mem[64] = _1759 + _1161 + _1165 + _1513 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1906
                    t = _530
                    continue 
                mem[_1161 + _1165 + _1513 + _1759 + 32] = 0
                _1922 = mem[64]
                mem[mem[64]] = _1759 + _1161 + _1165 + _1513 - mem[64]
                mem[64] = _1759 + _1161 + _1165 + _1513 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1922
                t = _530
                continue 
            mem[_1161 + _1165 + _1513 + 32] = 0
            _1767 = mem[_770]
            s = 0
            while s < _1767:
                mem[s + _1161 + _1165 + _1513 + 32] = mem[s + _770 + 32]
                s = s + 32
                continue 
            if ceil32(_1767) <= _1767:
                _1907 = mem[64]
                mem[mem[64]] = _1767 + _1161 + _1165 + _1513 - mem[64]
                mem[64] = _1767 + _1161 + _1165 + _1513 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1907
                t = _530
                continue 
            mem[_1161 + _1165 + _1513 + _1767 + 32] = 0
            _1923 = mem[64]
            mem[mem[64]] = _1767 + _1161 + _1165 + _1513 - mem[64]
            mem[64] = _1767 + _1161 + _1165 + _1513 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _1923
            t = _530
            continue 
        mem[mem[64]] = 32
        _546 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_546)] = mem[s + 32 len ceil32(_546)]
        if ceil32(_546) > _546:
            mem[mem[64] + _546 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_546) + 32]
    mem[_143 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _84
    while idx:
        if t < 1:
            revert with 4266543227, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 4266543227, 17
        if idx < 10 * idx / 10:
            revert with 4266543227, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 4266543227, 17
        if t - 1 >= mem[_143]:
            revert with 4266543227, 50
        mem[t + _143 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _292 = mem[64]
    mem[64] = mem[64] + 64
    mem[_292] = 1
    mem[_292 + 32] = '#'
    idx = 1
    s = _143
    t = _80
    while idx < _77:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 4266543227, 50
        _534 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _535 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
        if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
            _549 = mem[64]
            mem[64] = mem[64] + 64
            mem[_549] = 1
            mem[_549 + 32] = '0'
            _557 = mem[64]
            _565 = mem[s]
            t = 0
            while t < _565:
                mem[t + _557 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_565) <= _565:
                _777 = mem[_292]
                s = 0
                while s < _777:
                    mem[s + _557 + _565 + 32] = mem[s + _292 + 32]
                    s = s + 32
                    continue 
                if ceil32(_777) <= _777:
                    _1170 = mem[_549]
                    s = 0
                    while s < _1170:
                        mem[s + _557 + _565 + _777 + 32] = mem[s + _549 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1170) <= _1170:
                        _1520 = mem[64]
                        mem[mem[64]] = _1170 + _557 + _565 + _777 - mem[64]
                        mem[64] = _1170 + _557 + _565 + _777 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1520
                        t = _534
                        continue 
                    mem[_557 + _565 + _777 + _1170 + 32] = 0
                    _1536 = mem[64]
                    mem[mem[64]] = _1170 + _557 + _565 + _777 - mem[64]
                    mem[64] = _1170 + _557 + _565 + _777 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1536
                    t = _534
                    continue 
                mem[_557 + _565 + _777 + 32] = 0
                _1186 = mem[_549]
                s = 0
                while s < _1186:
                    mem[s + _557 + _565 + _777 + 32] = mem[s + _549 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1186) <= _1186:
                    _1521 = mem[64]
                    mem[mem[64]] = _1186 + _557 + _565 + _777 - mem[64]
                    mem[64] = _1186 + _557 + _565 + _777 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1521
                    t = _534
                    continue 
                mem[_557 + _565 + _777 + _1186 + 32] = 0
                _1537 = mem[64]
                mem[mem[64]] = _1186 + _557 + _565 + _777 - mem[64]
                mem[64] = _1186 + _557 + _565 + _777 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1537
                t = _534
                continue 
            mem[_557 + _565 + 32] = 0
            _787 = mem[_292]
            s = 0
            while s < _787:
                mem[s + _557 + _565 + 32] = mem[s + _292 + 32]
                s = s + 32
                continue 
            if ceil32(_787) <= _787:
                _1171 = mem[_549]
                s = 0
                while s < _1171:
                    mem[s + _557 + _565 + _787 + 32] = mem[s + _549 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1171) <= _1171:
                    _1522 = mem[64]
                    mem[mem[64]] = _1171 + _557 + _565 + _787 - mem[64]
                    mem[64] = _1171 + _557 + _565 + _787 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1522
                    t = _534
                    continue 
                mem[_557 + _565 + _787 + _1171 + 32] = 0
                _1538 = mem[64]
                mem[mem[64]] = _1171 + _557 + _565 + _787 - mem[64]
                mem[64] = _1171 + _557 + _565 + _787 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1538
                t = _534
                continue 
            mem[_557 + _565 + _787 + 32] = 0
            _1187 = mem[_549]
            s = 0
            while s < _1187:
                mem[s + _557 + _565 + _787 + 32] = mem[s + _549 + 32]
                s = s + 32
                continue 
            if ceil32(_1187) <= _1187:
                _1523 = mem[64]
                mem[mem[64]] = _1187 + _557 + _565 + _787 - mem[64]
                mem[64] = _1187 + _557 + _565 + _787 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1523
                t = _534
                continue 
            mem[_557 + _565 + _787 + _1187 + 32] = 0
            _1539 = mem[64]
            mem[mem[64]] = _1187 + _557 + _565 + _787 - mem[64]
            mem[64] = _1187 + _557 + _565 + _787 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _1539
            t = _534
            continue 
        u = 0
        t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
        while t:
            if u == -1:
                revert with 4266543227, 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 4266543227, 65
        _773 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = _535
            while t:
                if v < 1:
                    revert with 4266543227, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 4266543227, 17
                if t < 10 * t / 10:
                    revert with 4266543227, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 4266543227, 17
                if v - 1 >= mem[_773]:
                    revert with 4266543227, 50
                mem[v + _773 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _1162 = mem[64]
            _1168 = mem[s]
            t = 0
            while t < _1168:
                mem[t + _1162 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_1168) <= _1168:
                _1510 = mem[_292]
                s = 0
                while s < _1510:
                    mem[s + _1162 + _1168 + 32] = mem[s + _292 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1510) <= _1510:
                    _1760 = mem[_773]
                    s = 0
                    while s < _1760:
                        mem[s + _1162 + _1168 + _1510 + 32] = mem[s + _773 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1760) <= _1760:
                        _1908 = mem[64]
                        mem[mem[64]] = _1760 + _1162 + _1168 + _1510 - mem[64]
                        mem[64] = _1760 + _1162 + _1168 + _1510 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1908
                        t = _534
                        continue 
                    mem[_1162 + _1168 + _1510 + _1760 + 32] = 0
                    _1924 = mem[64]
                    mem[mem[64]] = _1760 + _1162 + _1168 + _1510 - mem[64]
                    mem[64] = _1760 + _1162 + _1168 + _1510 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1924
                    t = _534
                    continue 
                mem[_1162 + _1168 + _1510 + 32] = 0
                _1768 = mem[_773]
                s = 0
                while s < _1768:
                    mem[s + _1162 + _1168 + _1510 + 32] = mem[s + _773 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1768) <= _1768:
                    _1909 = mem[64]
                    mem[mem[64]] = _1768 + _1162 + _1168 + _1510 - mem[64]
                    mem[64] = _1768 + _1162 + _1168 + _1510 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1909
                    t = _534
                    continue 
                mem[_1162 + _1168 + _1510 + _1768 + 32] = 0
                _1925 = mem[64]
                mem[mem[64]] = _1768 + _1162 + _1168 + _1510 - mem[64]
                mem[64] = _1768 + _1162 + _1168 + _1510 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1925
                t = _534
                continue 
            mem[_1162 + _1168 + 32] = 0
            _1518 = mem[_292]
            s = 0
            while s < _1518:
                mem[s + _1162 + _1168 + 32] = mem[s + _292 + 32]
                s = s + 32
                continue 
            if ceil32(_1518) <= _1518:
                _1761 = mem[_773]
                s = 0
                while s < _1761:
                    mem[s + _1162 + _1168 + _1518 + 32] = mem[s + _773 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1761) <= _1761:
                    _1910 = mem[64]
                    mem[mem[64]] = _1761 + _1162 + _1168 + _1518 - mem[64]
                    mem[64] = _1761 + _1162 + _1168 + _1518 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1910
                    t = _534
                    continue 
                mem[_1162 + _1168 + _1518 + _1761 + 32] = 0
                _1926 = mem[64]
                mem[mem[64]] = _1761 + _1162 + _1168 + _1518 - mem[64]
                mem[64] = _1761 + _1162 + _1168 + _1518 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1926
                t = _534
                continue 
            mem[_1162 + _1168 + _1518 + 32] = 0
            _1769 = mem[_773]
            s = 0
            while s < _1769:
                mem[s + _1162 + _1168 + _1518 + 32] = mem[s + _773 + 32]
                s = s + 32
                continue 
            if ceil32(_1769) <= _1769:
                _1911 = mem[64]
                mem[mem[64]] = _1769 + _1162 + _1168 + _1518 - mem[64]
                mem[64] = _1769 + _1162 + _1168 + _1518 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1911
                t = _534
                continue 
            mem[_1162 + _1168 + _1518 + _1769 + 32] = 0
            _1927 = mem[64]
            mem[mem[64]] = _1769 + _1162 + _1168 + _1518 - mem[64]
            mem[64] = _1769 + _1162 + _1168 + _1518 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _1927
            t = _534
            continue 
        mem[_773 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = _535
        while t:
            if v < 1:
                revert with 4266543227, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 4266543227, 17
            if t < 10 * t / 10:
                revert with 4266543227, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 4266543227, 17
            if v - 1 >= mem[_773]:
                revert with 4266543227, 50
            mem[v + _773 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _1163 = mem[64]
        _1169 = mem[s]
        t = 0
        while t < _1169:
            mem[t + _1163 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_1169) <= _1169:
            _1511 = mem[_292]
            s = 0
            while s < _1511:
                mem[s + _1163 + _1169 + 32] = mem[s + _292 + 32]
                s = s + 32
                continue 
            if ceil32(_1511) <= _1511:
                _1762 = mem[_773]
                s = 0
                while s < _1762:
                    mem[s + _1163 + _1169 + _1511 + 32] = mem[s + _773 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1762) <= _1762:
                    _1912 = mem[64]
                    mem[mem[64]] = _1762 + _1163 + _1169 + _1511 - mem[64]
                    mem[64] = _1762 + _1163 + _1169 + _1511 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1912
                    t = _534
                    continue 
                mem[_1163 + _1169 + _1511 + _1762 + 32] = 0
                _1928 = mem[64]
                mem[mem[64]] = _1762 + _1163 + _1169 + _1511 - mem[64]
                mem[64] = _1762 + _1163 + _1169 + _1511 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1928
                t = _534
                continue 
            mem[_1163 + _1169 + _1511 + 32] = 0
            _1770 = mem[_773]
            s = 0
            while s < _1770:
                mem[s + _1163 + _1169 + _1511 + 32] = mem[s + _773 + 32]
                s = s + 32
                continue 
            if ceil32(_1770) <= _1770:
                _1913 = mem[64]
                mem[mem[64]] = _1770 + _1163 + _1169 + _1511 - mem[64]
                mem[64] = _1770 + _1163 + _1169 + _1511 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1913
                t = _534
                continue 
            mem[_1163 + _1169 + _1511 + _1770 + 32] = 0
            _1929 = mem[64]
            mem[mem[64]] = _1770 + _1163 + _1169 + _1511 - mem[64]
            mem[64] = _1770 + _1163 + _1169 + _1511 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _1929
            t = _534
            continue 
        mem[_1163 + _1169 + 32] = 0
        _1519 = mem[_292]
        s = 0
        while s < _1519:
            mem[s + _1163 + _1169 + 32] = mem[s + _292 + 32]
            s = s + 32
            continue 
        if ceil32(_1519) <= _1519:
            _1763 = mem[_773]
            s = 0
            while s < _1763:
                mem[s + _1163 + _1169 + _1519 + 32] = mem[s + _773 + 32]
                s = s + 32
                continue 
            if ceil32(_1763) <= _1763:
                _1914 = mem[64]
                mem[mem[64]] = _1763 + _1163 + _1169 + _1519 - mem[64]
                mem[64] = _1763 + _1163 + _1169 + _1519 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1914
                t = _534
                continue 
            mem[_1163 + _1169 + _1519 + _1763 + 32] = 0
            _1930 = mem[64]
            mem[mem[64]] = _1763 + _1163 + _1169 + _1519 - mem[64]
            mem[64] = _1763 + _1163 + _1169 + _1519 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _1930
            t = _534
            continue 
        mem[_1163 + _1169 + _1519 + 32] = 0
        _1771 = mem[_773]
        s = 0
        while s < _1771:
            mem[s + _1163 + _1169 + _1519 + 32] = mem[s + _773 + 32]
            s = s + 32
            continue 
        if ceil32(_1771) <= _1771:
            _1915 = mem[64]
            mem[mem[64]] = _1771 + _1163 + _1169 + _1519 - mem[64]
            mem[64] = _1771 + _1163 + _1169 + _1519 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _1915
            t = _534
            continue 
        mem[_1163 + _1169 + _1519 + _1771 + 32] = 0
        _1931 = mem[64]
        mem[mem[64]] = _1771 + _1163 + _1169 + _1519 - mem[64]
        mem[64] = _1771 + _1163 + _1169 + _1519 + 32
        if idx == -1:
            revert with 4266543227, 17
        idx = idx + 1
        s = _1931
        t = _534
        continue 
    mem[mem[64]] = 32
    _548 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_548)] = mem[s + 32 len ceil32(_548)]
    if ceil32(_548) > _548:
        mem[mem[64] + _548 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_548) + 32]
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 1
    mem[132] = arg1
    require ext_code.size(0xb91d0b7ebad8d2c57ec0e631418f2b16c62f2cce)
    delegate 0xb91d0b7ebad8d2c57ec0e631418f2b16c62f2cce.0x732a2ccf with:
         gas gas_remaining wei
        args 1, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET CREATIME: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 5
    mem[64] = ceil32(return_data.size) + (32 * stor5[address(arg1)].field_0) + 128
    mem[ceil32(return_data.size) + 96] = stor5[address(arg1)].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < stor5[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        _76 = mem[64]
        mem[64] = mem[64] + 128
        if stor5[address(arg1)][idx].field_0:
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 4266543227, 34
            _85 = mem[64]
            mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1) + 32
            mem[_85] = stor5[address(arg1)][idx].field_1
            if stor5[address(arg1)][idx].field_0:
                if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                    revert with 4266543227, 34
                if stor5[address(arg1)][idx].field_1:
                    if 31 >= stor5[address(arg1)][idx].field_1:
                        mem[_85 + 32] = 256 * stor5[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                        mem[_85 + 32] = stor5[address(arg1)][idx].field_0
                        t = _85 + 32
                        u = sha3(mem[0])
                        while _85 + stor5[address(arg1)][idx].field_1 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_76] = _85
                mem[_76 + 32] = stor5[address(arg1)][idx].field_256
                mem[_76 + 64] = stor5[address(arg1)][idx].field_512
                mem[_76 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _76
                s = s + 32
                idx = idx + 1
                continue 
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 4266543227, 34
            if not stor5[address(arg1)][idx].field_1:
                mem[_76] = _85
                mem[_76 + 32] = stor5[address(arg1)][idx].field_256
                mem[_76 + 64] = stor5[address(arg1)][idx].field_512
                mem[_76 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _76
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_85 + 32] = 256 * stor5[address(arg1)][idx].field_8
                mem[_76] = _85
                mem[_76 + 32] = stor5[address(arg1)][idx].field_256
                mem[_76 + 64] = stor5[address(arg1)][idx].field_512
                mem[_76 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _76
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_85 + 32] = stor5[address(arg1)][idx].field_0
            t = _85 + 32
            u = sha3(mem[0])
            while _85 + stor5[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_76] = _85
            mem[_76 + 32] = stor5[address(arg1)][u].field_256
            mem[_76 + 64] = stor5[address(arg1)][u].field_512
            mem[_76 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _76
            t = t + 32
            u = u + 1
            continue 
        if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
            revert with 4266543227, 34
        _89 = mem[64]
        mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1) + 32
        mem[_89] = stor5[address(arg1)][idx].field_1
        if stor5[address(arg1)][idx].field_0:
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 4266543227, 34
            if not stor5[address(arg1)][idx].field_1:
                mem[_76] = _89
                mem[_76 + 32] = stor5[address(arg1)][idx].field_256
                mem[_76 + 64] = stor5[address(arg1)][idx].field_512
                mem[_76 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _76
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_89 + 32] = 256 * stor5[address(arg1)][idx].field_8
                mem[_76] = _89
                mem[_76 + 32] = stor5[address(arg1)][idx].field_256
                mem[_76 + 64] = stor5[address(arg1)][idx].field_512
                mem[_76 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _76
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_89 + 32] = stor5[address(arg1)][idx].field_0
            t = _89 + 32
            u = sha3(mem[0])
            while _89 + stor5[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_76] = _89
            mem[_76 + 32] = stor5[address(arg1)][u].field_256
            mem[_76 + 64] = stor5[address(arg1)][u].field_512
            mem[_76 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _76
            t = t + 32
            u = u + 1
            continue 
        if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
            revert with 4266543227, 34
        if stor5[address(arg1)][idx].field_1:
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_89 + 32] = 256 * stor5[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                mem[_89 + 32] = stor5[address(arg1)][idx].field_0
                t = _89 + 32
                u = sha3(mem[0])
                while _89 + stor5[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_76] = _89
        mem[_76 + 32] = stor5[address(arg1)][idx].field_256
        mem[_76 + 64] = stor5[address(arg1)][idx].field_512
        mem[_76 + 96] = stor5[address(arg1)][idx].field_768
        mem[s] = _76
        s = s + 32
        idx = idx + 1
        continue 
    _74 = mem[ceil32(return_data.size) + 96]
    _77 = mem[64]
    mem[64] = mem[64] + 128
    mem[_77] = 96
    mem[_77 + 32] = 0
    mem[_77 + 64] = 0
    mem[_77 + 96] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 4266543227, 50
    _80 = mem[mem[ceil32(return_data.size) + 128] + 32]
    if not mem[mem[ceil32(return_data.size) + 128] + 32]:
        _88 = mem[64]
        mem[64] = mem[64] + 64
        mem[_88] = 1
        mem[_88 + 32] = '0'
        _90 = mem[64]
        mem[64] = mem[64] + 64
        mem[_90] = 1
        mem[_90 + 32] = '#'
        idx = 1
        s = _88
        t = _77
        while idx < _74:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 4266543227, 50
            _141 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _142 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                _149 = mem[64]
                mem[64] = mem[64] + 64
                mem[_149] = 1
                mem[_149 + 32] = '0'
                _151 = mem[64]
                _154 = mem[s]
                t = 0
                while t < _154:
                    mem[t + _151 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_154) <= _154:
                    _291 = mem[_90]
                    s = 0
                    while s < _291:
                        mem[s + _151 + _154 + 32] = mem[s + _90 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_291) <= _291:
                        _539 = mem[_149]
                        s = 0
                        while s < _539:
                            mem[s + _151 + _154 + _291 + 32] = mem[s + _149 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_539) <= _539:
                            _785 = mem[64]
                            mem[mem[64]] = _539 + _151 + _154 + _291 - mem[64]
                            mem[64] = _539 + _151 + _154 + _291 + 32
                            if idx == -1:
                                revert with 4266543227, 17
                            idx = idx + 1
                            s = _785
                            t = _141
                            continue 
                        mem[_151 + _154 + _291 + _539 + 32] = 0
                        _791 = mem[64]
                        mem[mem[64]] = _539 + _151 + _154 + _291 - mem[64]
                        mem[64] = _539 + _151 + _154 + _291 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _791
                        t = _141
                        continue 
                    mem[_151 + _154 + _291 + 32] = 0
                    _549 = mem[_149]
                    s = 0
                    while s < _549:
                        mem[s + _151 + _154 + _291 + 32] = mem[s + _149 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_549) <= _549:
                        _786 = mem[64]
                        mem[mem[64]] = _549 + _151 + _154 + _291 - mem[64]
                        mem[64] = _549 + _151 + _154 + _291 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _786
                        t = _141
                        continue 
                    mem[_151 + _154 + _291 + _549 + 32] = 0
                    _792 = mem[64]
                    mem[mem[64]] = _549 + _151 + _154 + _291 - mem[64]
                    mem[64] = _549 + _151 + _154 + _291 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _792
                    t = _141
                    continue 
                mem[_151 + _154 + 32] = 0
                _301 = mem[_90]
                s = 0
                while s < _301:
                    mem[s + _151 + _154 + 32] = mem[s + _90 + 32]
                    s = s + 32
                    continue 
                if ceil32(_301) <= _301:
                    _540 = mem[_149]
                    s = 0
                    while s < _540:
                        mem[s + _151 + _154 + _301 + 32] = mem[s + _149 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_540) <= _540:
                        _787 = mem[64]
                        mem[mem[64]] = _540 + _151 + _154 + _301 - mem[64]
                        mem[64] = _540 + _151 + _154 + _301 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _787
                        t = _141
                        continue 
                    mem[_151 + _154 + _301 + _540 + 32] = 0
                    _793 = mem[64]
                    mem[mem[64]] = _540 + _151 + _154 + _301 - mem[64]
                    mem[64] = _540 + _151 + _154 + _301 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _793
                    t = _141
                    continue 
                mem[_151 + _154 + _301 + 32] = 0
                _550 = mem[_149]
                s = 0
                while s < _550:
                    mem[s + _151 + _154 + _301 + 32] = mem[s + _149 + 32]
                    s = s + 32
                    continue 
                if ceil32(_550) <= _550:
                    _788 = mem[64]
                    mem[mem[64]] = _550 + _151 + _154 + _301 - mem[64]
                    mem[64] = _550 + _151 + _154 + _301 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _788
                    t = _141
                    continue 
                mem[_151 + _154 + _301 + _550 + 32] = 0
                _794 = mem[64]
                mem[mem[64]] = _550 + _151 + _154 + _301 - mem[64]
                mem[64] = _550 + _151 + _154 + _301 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _794
                t = _141
                continue 
            u = 0
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            while t:
                if u == -1:
                    revert with 4266543227, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 4266543227, 65
            _288 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _142
                while t:
                    if v < 1:
                        revert with 4266543227, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 4266543227, 17
                    if t < 10 * t / 10:
                        revert with 4266543227, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 4266543227, 17
                    if v - 1 >= mem[_288]:
                        revert with 4266543227, 50
                    mem[v + _288 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _533 = mem[64]
                _537 = mem[s]
                t = 0
                while t < _537:
                    mem[t + _533 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_537) <= _537:
                    _773 = mem[_90]
                    s = 0
                    while s < _773:
                        mem[s + _533 + _537 + 32] = mem[s + _90 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_773) <= _773:
                        _1167 = mem[_288]
                        s = 0
                        while s < _1167:
                            mem[s + _533 + _537 + _773 + 32] = mem[s + _288 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1167) <= _1167:
                            _1519 = mem[64]
                            mem[mem[64]] = _1167 + _533 + _537 + _773 - mem[64]
                            mem[64] = _1167 + _533 + _537 + _773 + 32
                            if idx == -1:
                                revert with 4266543227, 17
                            idx = idx + 1
                            s = _1519
                            t = _141
                            continue 
                        mem[_533 + _537 + _773 + _1167 + 32] = 0
                        _1535 = mem[64]
                        mem[mem[64]] = _1167 + _533 + _537 + _773 - mem[64]
                        mem[64] = _1167 + _533 + _537 + _773 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1535
                        t = _141
                        continue 
                    mem[_533 + _537 + _773 + 32] = 0
                    _1183 = mem[_288]
                    s = 0
                    while s < _1183:
                        mem[s + _533 + _537 + _773 + 32] = mem[s + _288 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1183) <= _1183:
                        _1520 = mem[64]
                        mem[mem[64]] = _1183 + _533 + _537 + _773 - mem[64]
                        mem[64] = _1183 + _533 + _537 + _773 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1520
                        t = _141
                        continue 
                    mem[_533 + _537 + _773 + _1183 + 32] = 0
                    _1536 = mem[64]
                    mem[mem[64]] = _1183 + _533 + _537 + _773 - mem[64]
                    mem[64] = _1183 + _533 + _537 + _773 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1536
                    t = _141
                    continue 
                mem[_533 + _537 + 32] = 0
                _783 = mem[_90]
                s = 0
                while s < _783:
                    mem[s + _533 + _537 + 32] = mem[s + _90 + 32]
                    s = s + 32
                    continue 
                if ceil32(_783) <= _783:
                    _1168 = mem[_288]
                    s = 0
                    while s < _1168:
                        mem[s + _533 + _537 + _783 + 32] = mem[s + _288 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1168) <= _1168:
                        _1521 = mem[64]
                        mem[mem[64]] = _1168 + _533 + _537 + _783 - mem[64]
                        mem[64] = _1168 + _533 + _537 + _783 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1521
                        t = _141
                        continue 
                    mem[_533 + _537 + _783 + _1168 + 32] = 0
                    _1537 = mem[64]
                    mem[mem[64]] = _1168 + _533 + _537 + _783 - mem[64]
                    mem[64] = _1168 + _533 + _537 + _783 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1537
                    t = _141
                    continue 
                mem[_533 + _537 + _783 + 32] = 0
                _1184 = mem[_288]
                s = 0
                while s < _1184:
                    mem[s + _533 + _537 + _783 + 32] = mem[s + _288 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1184) <= _1184:
                    _1522 = mem[64]
                    mem[mem[64]] = _1184 + _533 + _537 + _783 - mem[64]
                    mem[64] = _1184 + _533 + _537 + _783 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1522
                    t = _141
                    continue 
                mem[_533 + _537 + _783 + _1184 + 32] = 0
                _1538 = mem[64]
                mem[mem[64]] = _1184 + _533 + _537 + _783 - mem[64]
                mem[64] = _1184 + _533 + _537 + _783 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1538
                t = _141
                continue 
            mem[_288 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _142
            while t:
                if v < 1:
                    revert with 4266543227, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 4266543227, 17
                if t < 10 * t / 10:
                    revert with 4266543227, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 4266543227, 17
                if v - 1 >= mem[_288]:
                    revert with 4266543227, 50
                mem[v + _288 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _534 = mem[64]
            _538 = mem[s]
            t = 0
            while t < _538:
                mem[t + _534 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_538) <= _538:
                _774 = mem[_90]
                s = 0
                while s < _774:
                    mem[s + _534 + _538 + 32] = mem[s + _90 + 32]
                    s = s + 32
                    continue 
                if ceil32(_774) <= _774:
                    _1169 = mem[_288]
                    s = 0
                    while s < _1169:
                        mem[s + _534 + _538 + _774 + 32] = mem[s + _288 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1169) <= _1169:
                        _1523 = mem[64]
                        mem[mem[64]] = _1169 + _534 + _538 + _774 - mem[64]
                        mem[64] = _1169 + _534 + _538 + _774 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1523
                        t = _141
                        continue 
                    mem[_534 + _538 + _774 + _1169 + 32] = 0
                    _1539 = mem[64]
                    mem[mem[64]] = _1169 + _534 + _538 + _774 - mem[64]
                    mem[64] = _1169 + _534 + _538 + _774 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1539
                    t = _141
                    continue 
                mem[_534 + _538 + _774 + 32] = 0
                _1185 = mem[_288]
                s = 0
                while s < _1185:
                    mem[s + _534 + _538 + _774 + 32] = mem[s + _288 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1185) <= _1185:
                    _1524 = mem[64]
                    mem[mem[64]] = _1185 + _534 + _538 + _774 - mem[64]
                    mem[64] = _1185 + _534 + _538 + _774 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1524
                    t = _141
                    continue 
                mem[_534 + _538 + _774 + _1185 + 32] = 0
                _1540 = mem[64]
                mem[mem[64]] = _1185 + _534 + _538 + _774 - mem[64]
                mem[64] = _1185 + _534 + _538 + _774 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1540
                t = _141
                continue 
            mem[_534 + _538 + 32] = 0
            _784 = mem[_90]
            s = 0
            while s < _784:
                mem[s + _534 + _538 + 32] = mem[s + _90 + 32]
                s = s + 32
                continue 
            if ceil32(_784) <= _784:
                _1170 = mem[_288]
                s = 0
                while s < _1170:
                    mem[s + _534 + _538 + _784 + 32] = mem[s + _288 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1170) <= _1170:
                    _1525 = mem[64]
                    mem[mem[64]] = _1170 + _534 + _538 + _784 - mem[64]
                    mem[64] = _1170 + _534 + _538 + _784 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1525
                    t = _141
                    continue 
                mem[_534 + _538 + _784 + _1170 + 32] = 0
                _1541 = mem[64]
                mem[mem[64]] = _1170 + _534 + _538 + _784 - mem[64]
                mem[64] = _1170 + _534 + _538 + _784 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1541
                t = _141
                continue 
            mem[_534 + _538 + _784 + 32] = 0
            _1186 = mem[_288]
            s = 0
            while s < _1186:
                mem[s + _534 + _538 + _784 + 32] = mem[s + _288 + 32]
                s = s + 32
                continue 
            if ceil32(_1186) <= _1186:
                _1526 = mem[64]
                mem[mem[64]] = _1186 + _534 + _538 + _784 - mem[64]
                mem[64] = _1186 + _534 + _538 + _784 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1526
                t = _141
                continue 
            mem[_534 + _538 + _784 + _1186 + 32] = 0
            _1542 = mem[64]
            mem[mem[64]] = _1186 + _534 + _538 + _784 - mem[64]
            mem[64] = _1186 + _534 + _538 + _784 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _1542
            t = _141
            continue 
        mem[mem[64]] = 32
        _148 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_148)] = mem[s + 32 len ceil32(_148)]
        if ceil32(_148) > _148:
            mem[mem[64] + _148 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_148) + 32]
    s = 0
    idx = mem[mem[ceil32(return_data.size) + 128] + 32]
    while idx:
        if s == -1:
            revert with 4266543227, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 4266543227, 65
    _138 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _80
        while idx:
            if t < 1:
                revert with 4266543227, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 4266543227, 17
            if idx < 10 * idx / 10:
                revert with 4266543227, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 4266543227, 17
            if t - 1 >= mem[_138]:
                revert with 4266543227, 50
            mem[t + _138 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _286 = mem[64]
        mem[64] = mem[64] + 64
        mem[_286] = 1
        mem[_286 + 32] = '#'
        idx = 1
        s = _138
        t = _77
        while idx < _74:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 4266543227, 50
            _525 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _526 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                _542 = mem[64]
                mem[64] = mem[64] + 64
                mem[_542] = 1
                mem[_542 + 32] = '0'
                _551 = mem[64]
                _558 = mem[s]
                t = 0
                while t < _558:
                    mem[t + _551 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_558) <= _558:
                    _771 = mem[_286]
                    s = 0
                    while s < _771:
                        mem[s + _551 + _558 + 32] = mem[s + _286 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_771) <= _771:
                        _1161 = mem[_542]
                        s = 0
                        while s < _1161:
                            mem[s + _551 + _558 + _771 + 32] = mem[s + _542 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1161) <= _1161:
                            _1509 = mem[64]
                            mem[mem[64]] = _1161 + _551 + _558 + _771 - mem[64]
                            mem[64] = _1161 + _551 + _558 + _771 + 32
                            if idx == -1:
                                revert with 4266543227, 17
                            idx = idx + 1
                            s = _1509
                            t = _525
                            continue 
                        mem[_551 + _558 + _771 + _1161 + 32] = 0
                        _1527 = mem[64]
                        mem[mem[64]] = _1161 + _551 + _558 + _771 - mem[64]
                        mem[64] = _1161 + _551 + _558 + _771 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1527
                        t = _525
                        continue 
                    mem[_551 + _558 + _771 + 32] = 0
                    _1175 = mem[_542]
                    s = 0
                    while s < _1175:
                        mem[s + _551 + _558 + _771 + 32] = mem[s + _542 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1175) <= _1175:
                        _1510 = mem[64]
                        mem[mem[64]] = _1175 + _551 + _558 + _771 - mem[64]
                        mem[64] = _1175 + _551 + _558 + _771 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1510
                        t = _525
                        continue 
                    mem[_551 + _558 + _771 + _1175 + 32] = 0
                    _1528 = mem[64]
                    mem[mem[64]] = _1175 + _551 + _558 + _771 - mem[64]
                    mem[64] = _1175 + _551 + _558 + _771 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1528
                    t = _525
                    continue 
                mem[_551 + _558 + 32] = 0
                _778 = mem[_286]
                s = 0
                while s < _778:
                    mem[s + _551 + _558 + 32] = mem[s + _286 + 32]
                    s = s + 32
                    continue 
                if ceil32(_778) <= _778:
                    _1162 = mem[_542]
                    s = 0
                    while s < _1162:
                        mem[s + _551 + _558 + _778 + 32] = mem[s + _542 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1162) <= _1162:
                        _1511 = mem[64]
                        mem[mem[64]] = _1162 + _551 + _558 + _778 - mem[64]
                        mem[64] = _1162 + _551 + _558 + _778 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1511
                        t = _525
                        continue 
                    mem[_551 + _558 + _778 + _1162 + 32] = 0
                    _1529 = mem[64]
                    mem[mem[64]] = _1162 + _551 + _558 + _778 - mem[64]
                    mem[64] = _1162 + _551 + _558 + _778 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1529
                    t = _525
                    continue 
                mem[_551 + _558 + _778 + 32] = 0
                _1176 = mem[_542]
                s = 0
                while s < _1176:
                    mem[s + _551 + _558 + _778 + 32] = mem[s + _542 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1176) <= _1176:
                    _1512 = mem[64]
                    mem[mem[64]] = _1176 + _551 + _558 + _778 - mem[64]
                    mem[64] = _1176 + _551 + _558 + _778 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1512
                    t = _525
                    continue 
                mem[_551 + _558 + _778 + _1176 + 32] = 0
                _1530 = mem[64]
                mem[mem[64]] = _1176 + _551 + _558 + _778 - mem[64]
                mem[64] = _1176 + _551 + _558 + _778 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1530
                t = _525
                continue 
            u = 0
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            while t:
                if u == -1:
                    revert with 4266543227, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 4266543227, 65
            _765 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _526
                while t:
                    if v < 1:
                        revert with 4266543227, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 4266543227, 17
                    if t < 10 * t / 10:
                        revert with 4266543227, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 4266543227, 17
                    if v - 1 >= mem[_765]:
                        revert with 4266543227, 50
                    mem[v + _765 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _1155 = mem[64]
                _1159 = mem[s]
                t = 0
                while t < _1159:
                    mem[t + _1155 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_1159) <= _1159:
                    _1503 = mem[_286]
                    s = 0
                    while s < _1503:
                        mem[s + _1155 + _1159 + 32] = mem[s + _286 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1503) <= _1503:
                        _1751 = mem[_765]
                        s = 0
                        while s < _1751:
                            mem[s + _1155 + _1159 + _1503 + 32] = mem[s + _765 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1751) <= _1751:
                            _1895 = mem[64]
                            mem[mem[64]] = _1751 + _1155 + _1159 + _1503 - mem[64]
                            mem[64] = _1751 + _1155 + _1159 + _1503 + 32
                            if idx == -1:
                                revert with 4266543227, 17
                            idx = idx + 1
                            s = _1895
                            t = _525
                            continue 
                        mem[_1155 + _1159 + _1503 + _1751 + 32] = 0
                        _1911 = mem[64]
                        mem[mem[64]] = _1751 + _1155 + _1159 + _1503 - mem[64]
                        mem[64] = _1751 + _1155 + _1159 + _1503 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1911
                        t = _525
                        continue 
                    mem[_1155 + _1159 + _1503 + 32] = 0
                    _1759 = mem[_765]
                    s = 0
                    while s < _1759:
                        mem[s + _1155 + _1159 + _1503 + 32] = mem[s + _765 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1759) <= _1759:
                        _1896 = mem[64]
                        mem[mem[64]] = _1759 + _1155 + _1159 + _1503 - mem[64]
                        mem[64] = _1759 + _1155 + _1159 + _1503 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1896
                        t = _525
                        continue 
                    mem[_1155 + _1159 + _1503 + _1759 + 32] = 0
                    _1912 = mem[64]
                    mem[mem[64]] = _1759 + _1155 + _1159 + _1503 - mem[64]
                    mem[64] = _1759 + _1155 + _1159 + _1503 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1912
                    t = _525
                    continue 
                mem[_1155 + _1159 + 32] = 0
                _1507 = mem[_286]
                s = 0
                while s < _1507:
                    mem[s + _1155 + _1159 + 32] = mem[s + _286 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1507) <= _1507:
                    _1752 = mem[_765]
                    s = 0
                    while s < _1752:
                        mem[s + _1155 + _1159 + _1507 + 32] = mem[s + _765 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1752) <= _1752:
                        _1897 = mem[64]
                        mem[mem[64]] = _1752 + _1155 + _1159 + _1507 - mem[64]
                        mem[64] = _1752 + _1155 + _1159 + _1507 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1897
                        t = _525
                        continue 
                    mem[_1155 + _1159 + _1507 + _1752 + 32] = 0
                    _1913 = mem[64]
                    mem[mem[64]] = _1752 + _1155 + _1159 + _1507 - mem[64]
                    mem[64] = _1752 + _1155 + _1159 + _1507 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1913
                    t = _525
                    continue 
                mem[_1155 + _1159 + _1507 + 32] = 0
                _1760 = mem[_765]
                s = 0
                while s < _1760:
                    mem[s + _1155 + _1159 + _1507 + 32] = mem[s + _765 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1760) <= _1760:
                    _1898 = mem[64]
                    mem[mem[64]] = _1760 + _1155 + _1159 + _1507 - mem[64]
                    mem[64] = _1760 + _1155 + _1159 + _1507 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1898
                    t = _525
                    continue 
                mem[_1155 + _1159 + _1507 + _1760 + 32] = 0
                _1914 = mem[64]
                mem[mem[64]] = _1760 + _1155 + _1159 + _1507 - mem[64]
                mem[64] = _1760 + _1155 + _1159 + _1507 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1914
                t = _525
                continue 
            mem[_765 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _526
            while t:
                if v < 1:
                    revert with 4266543227, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 4266543227, 17
                if t < 10 * t / 10:
                    revert with 4266543227, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 4266543227, 17
                if v - 1 >= mem[_765]:
                    revert with 4266543227, 50
                mem[v + _765 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _1156 = mem[64]
            _1160 = mem[s]
            t = 0
            while t < _1160:
                mem[t + _1156 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_1160) <= _1160:
                _1504 = mem[_286]
                s = 0
                while s < _1504:
                    mem[s + _1156 + _1160 + 32] = mem[s + _286 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1504) <= _1504:
                    _1753 = mem[_765]
                    s = 0
                    while s < _1753:
                        mem[s + _1156 + _1160 + _1504 + 32] = mem[s + _765 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1753) <= _1753:
                        _1899 = mem[64]
                        mem[mem[64]] = _1753 + _1156 + _1160 + _1504 - mem[64]
                        mem[64] = _1753 + _1156 + _1160 + _1504 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1899
                        t = _525
                        continue 
                    mem[_1156 + _1160 + _1504 + _1753 + 32] = 0
                    _1915 = mem[64]
                    mem[mem[64]] = _1753 + _1156 + _1160 + _1504 - mem[64]
                    mem[64] = _1753 + _1156 + _1160 + _1504 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1915
                    t = _525
                    continue 
                mem[_1156 + _1160 + _1504 + 32] = 0
                _1761 = mem[_765]
                s = 0
                while s < _1761:
                    mem[s + _1156 + _1160 + _1504 + 32] = mem[s + _765 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1761) <= _1761:
                    _1900 = mem[64]
                    mem[mem[64]] = _1761 + _1156 + _1160 + _1504 - mem[64]
                    mem[64] = _1761 + _1156 + _1160 + _1504 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1900
                    t = _525
                    continue 
                mem[_1156 + _1160 + _1504 + _1761 + 32] = 0
                _1916 = mem[64]
                mem[mem[64]] = _1761 + _1156 + _1160 + _1504 - mem[64]
                mem[64] = _1761 + _1156 + _1160 + _1504 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1916
                t = _525
                continue 
            mem[_1156 + _1160 + 32] = 0
            _1508 = mem[_286]
            s = 0
            while s < _1508:
                mem[s + _1156 + _1160 + 32] = mem[s + _286 + 32]
                s = s + 32
                continue 
            if ceil32(_1508) <= _1508:
                _1754 = mem[_765]
                s = 0
                while s < _1754:
                    mem[s + _1156 + _1160 + _1508 + 32] = mem[s + _765 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1754) <= _1754:
                    _1901 = mem[64]
                    mem[mem[64]] = _1754 + _1156 + _1160 + _1508 - mem[64]
                    mem[64] = _1754 + _1156 + _1160 + _1508 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1901
                    t = _525
                    continue 
                mem[_1156 + _1160 + _1508 + _1754 + 32] = 0
                _1917 = mem[64]
                mem[mem[64]] = _1754 + _1156 + _1160 + _1508 - mem[64]
                mem[64] = _1754 + _1156 + _1160 + _1508 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1917
                t = _525
                continue 
            mem[_1156 + _1160 + _1508 + 32] = 0
            _1762 = mem[_765]
            s = 0
            while s < _1762:
                mem[s + _1156 + _1160 + _1508 + 32] = mem[s + _765 + 32]
                s = s + 32
                continue 
            if ceil32(_1762) <= _1762:
                _1902 = mem[64]
                mem[mem[64]] = _1762 + _1156 + _1160 + _1508 - mem[64]
                mem[64] = _1762 + _1156 + _1160 + _1508 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1902
                t = _525
                continue 
            mem[_1156 + _1160 + _1508 + _1762 + 32] = 0
            _1918 = mem[64]
            mem[mem[64]] = _1762 + _1156 + _1160 + _1508 - mem[64]
            mem[64] = _1762 + _1156 + _1160 + _1508 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _1918
            t = _525
            continue 
        mem[mem[64]] = 32
        _541 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_541)] = mem[s + 32 len ceil32(_541)]
        if ceil32(_541) > _541:
            mem[mem[64] + _541 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_541) + 32]
    mem[_138 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _80
    while idx:
        if t < 1:
            revert with 4266543227, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 4266543227, 17
        if idx < 10 * idx / 10:
            revert with 4266543227, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 4266543227, 17
        if t - 1 >= mem[_138]:
            revert with 4266543227, 50
        mem[t + _138 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _287 = mem[64]
    mem[64] = mem[64] + 64
    mem[_287] = 1
    mem[_287 + 32] = '#'
    idx = 1
    s = _138
    t = _77
    while idx < _74:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 4266543227, 50
        _529 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _530 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
        if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
            _544 = mem[64]
            mem[64] = mem[64] + 64
            mem[_544] = 1
            mem[_544 + 32] = '0'
            _552 = mem[64]
            _560 = mem[s]
            t = 0
            while t < _560:
                mem[t + _552 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_560) <= _560:
                _772 = mem[_287]
                s = 0
                while s < _772:
                    mem[s + _552 + _560 + 32] = mem[s + _287 + 32]
                    s = s + 32
                    continue 
                if ceil32(_772) <= _772:
                    _1165 = mem[_544]
                    s = 0
                    while s < _1165:
                        mem[s + _552 + _560 + _772 + 32] = mem[s + _544 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1165) <= _1165:
                        _1515 = mem[64]
                        mem[mem[64]] = _1165 + _552 + _560 + _772 - mem[64]
                        mem[64] = _1165 + _552 + _560 + _772 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1515
                        t = _529
                        continue 
                    mem[_552 + _560 + _772 + _1165 + 32] = 0
                    _1531 = mem[64]
                    mem[mem[64]] = _1165 + _552 + _560 + _772 - mem[64]
                    mem[64] = _1165 + _552 + _560 + _772 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1531
                    t = _529
                    continue 
                mem[_552 + _560 + _772 + 32] = 0
                _1181 = mem[_544]
                s = 0
                while s < _1181:
                    mem[s + _552 + _560 + _772 + 32] = mem[s + _544 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1181) <= _1181:
                    _1516 = mem[64]
                    mem[mem[64]] = _1181 + _552 + _560 + _772 - mem[64]
                    mem[64] = _1181 + _552 + _560 + _772 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1516
                    t = _529
                    continue 
                mem[_552 + _560 + _772 + _1181 + 32] = 0
                _1532 = mem[64]
                mem[mem[64]] = _1181 + _552 + _560 + _772 - mem[64]
                mem[64] = _1181 + _552 + _560 + _772 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1532
                t = _529
                continue 
            mem[_552 + _560 + 32] = 0
            _782 = mem[_287]
            s = 0
            while s < _782:
                mem[s + _552 + _560 + 32] = mem[s + _287 + 32]
                s = s + 32
                continue 
            if ceil32(_782) <= _782:
                _1166 = mem[_544]
                s = 0
                while s < _1166:
                    mem[s + _552 + _560 + _782 + 32] = mem[s + _544 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1166) <= _1166:
                    _1517 = mem[64]
                    mem[mem[64]] = _1166 + _552 + _560 + _782 - mem[64]
                    mem[64] = _1166 + _552 + _560 + _782 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1517
                    t = _529
                    continue 
                mem[_552 + _560 + _782 + _1166 + 32] = 0
                _1533 = mem[64]
                mem[mem[64]] = _1166 + _552 + _560 + _782 - mem[64]
                mem[64] = _1166 + _552 + _560 + _782 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1533
                t = _529
                continue 
            mem[_552 + _560 + _782 + 32] = 0
            _1182 = mem[_544]
            s = 0
            while s < _1182:
                mem[s + _552 + _560 + _782 + 32] = mem[s + _544 + 32]
                s = s + 32
                continue 
            if ceil32(_1182) <= _1182:
                _1518 = mem[64]
                mem[mem[64]] = _1182 + _552 + _560 + _782 - mem[64]
                mem[64] = _1182 + _552 + _560 + _782 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1518
                t = _529
                continue 
            mem[_552 + _560 + _782 + _1182 + 32] = 0
            _1534 = mem[64]
            mem[mem[64]] = _1182 + _552 + _560 + _782 - mem[64]
            mem[64] = _1182 + _552 + _560 + _782 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _1534
            t = _529
            continue 
        u = 0
        t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
        while t:
            if u == -1:
                revert with 4266543227, 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 4266543227, 65
        _768 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = _530
            while t:
                if v < 1:
                    revert with 4266543227, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 4266543227, 17
                if t < 10 * t / 10:
                    revert with 4266543227, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 4266543227, 17
                if v - 1 >= mem[_768]:
                    revert with 4266543227, 50
                mem[v + _768 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _1157 = mem[64]
            _1163 = mem[s]
            t = 0
            while t < _1163:
                mem[t + _1157 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_1163) <= _1163:
                _1505 = mem[_287]
                s = 0
                while s < _1505:
                    mem[s + _1157 + _1163 + 32] = mem[s + _287 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1505) <= _1505:
                    _1755 = mem[_768]
                    s = 0
                    while s < _1755:
                        mem[s + _1157 + _1163 + _1505 + 32] = mem[s + _768 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1755) <= _1755:
                        _1903 = mem[64]
                        mem[mem[64]] = _1755 + _1157 + _1163 + _1505 - mem[64]
                        mem[64] = _1755 + _1157 + _1163 + _1505 + 32
                        if idx == -1:
                            revert with 4266543227, 17
                        idx = idx + 1
                        s = _1903
                        t = _529
                        continue 
                    mem[_1157 + _1163 + _1505 + _1755 + 32] = 0
                    _1919 = mem[64]
                    mem[mem[64]] = _1755 + _1157 + _1163 + _1505 - mem[64]
                    mem[64] = _1755 + _1157 + _1163 + _1505 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1919
                    t = _529
                    continue 
                mem[_1157 + _1163 + _1505 + 32] = 0
                _1763 = mem[_768]
                s = 0
                while s < _1763:
                    mem[s + _1157 + _1163 + _1505 + 32] = mem[s + _768 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1763) <= _1763:
                    _1904 = mem[64]
                    mem[mem[64]] = _1763 + _1157 + _1163 + _1505 - mem[64]
                    mem[64] = _1763 + _1157 + _1163 + _1505 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1904
                    t = _529
                    continue 
                mem[_1157 + _1163 + _1505 + _1763 + 32] = 0
                _1920 = mem[64]
                mem[mem[64]] = _1763 + _1157 + _1163 + _1505 - mem[64]
                mem[64] = _1763 + _1157 + _1163 + _1505 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1920
                t = _529
                continue 
            mem[_1157 + _1163 + 32] = 0
            _1513 = mem[_287]
            s = 0
            while s < _1513:
                mem[s + _1157 + _1163 + 32] = mem[s + _287 + 32]
                s = s + 32
                continue 
            if ceil32(_1513) <= _1513:
                _1756 = mem[_768]
                s = 0
                while s < _1756:
                    mem[s + _1157 + _1163 + _1513 + 32] = mem[s + _768 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1756) <= _1756:
                    _1905 = mem[64]
                    mem[mem[64]] = _1756 + _1157 + _1163 + _1513 - mem[64]
                    mem[64] = _1756 + _1157 + _1163 + _1513 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1905
                    t = _529
                    continue 
                mem[_1157 + _1163 + _1513 + _1756 + 32] = 0
                _1921 = mem[64]
                mem[mem[64]] = _1756 + _1157 + _1163 + _1513 - mem[64]
                mem[64] = _1756 + _1157 + _1163 + _1513 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1921
                t = _529
                continue 
            mem[_1157 + _1163 + _1513 + 32] = 0
            _1764 = mem[_768]
            s = 0
            while s < _1764:
                mem[s + _1157 + _1163 + _1513 + 32] = mem[s + _768 + 32]
                s = s + 32
                continue 
            if ceil32(_1764) <= _1764:
                _1906 = mem[64]
                mem[mem[64]] = _1764 + _1157 + _1163 + _1513 - mem[64]
                mem[64] = _1764 + _1157 + _1163 + _1513 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1906
                t = _529
                continue 
            mem[_1157 + _1163 + _1513 + _1764 + 32] = 0
            _1922 = mem[64]
            mem[mem[64]] = _1764 + _1157 + _1163 + _1513 - mem[64]
            mem[64] = _1764 + _1157 + _1163 + _1513 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _1922
            t = _529
            continue 
        mem[_768 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = _530
        while t:
            if v < 1:
                revert with 4266543227, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 4266543227, 17
            if t < 10 * t / 10:
                revert with 4266543227, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 4266543227, 17
            if v - 1 >= mem[_768]:
                revert with 4266543227, 50
            mem[v + _768 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _1158 = mem[64]
        _1164 = mem[s]
        t = 0
        while t < _1164:
            mem[t + _1158 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_1164) <= _1164:
            _1506 = mem[_287]
            s = 0
            while s < _1506:
                mem[s + _1158 + _1164 + 32] = mem[s + _287 + 32]
                s = s + 32
                continue 
            if ceil32(_1506) <= _1506:
                _1757 = mem[_768]
                s = 0
                while s < _1757:
                    mem[s + _1158 + _1164 + _1506 + 32] = mem[s + _768 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1757) <= _1757:
                    _1907 = mem[64]
                    mem[mem[64]] = _1757 + _1158 + _1164 + _1506 - mem[64]
                    mem[64] = _1757 + _1158 + _1164 + _1506 + 32
                    if idx == -1:
                        revert with 4266543227, 17
                    idx = idx + 1
                    s = _1907
                    t = _529
                    continue 
                mem[_1158 + _1164 + _1506 + _1757 + 32] = 0
                _1923 = mem[64]
                mem[mem[64]] = _1757 + _1158 + _1164 + _1506 - mem[64]
                mem[64] = _1757 + _1158 + _1164 + _1506 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1923
                t = _529
                continue 
            mem[_1158 + _1164 + _1506 + 32] = 0
            _1765 = mem[_768]
            s = 0
            while s < _1765:
                mem[s + _1158 + _1164 + _1506 + 32] = mem[s + _768 + 32]
                s = s + 32
                continue 
            if ceil32(_1765) <= _1765:
                _1908 = mem[64]
                mem[mem[64]] = _1765 + _1158 + _1164 + _1506 - mem[64]
                mem[64] = _1765 + _1158 + _1164 + _1506 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1908
                t = _529
                continue 
            mem[_1158 + _1164 + _1506 + _1765 + 32] = 0
            _1924 = mem[64]
            mem[mem[64]] = _1765 + _1158 + _1164 + _1506 - mem[64]
            mem[64] = _1765 + _1158 + _1164 + _1506 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _1924
            t = _529
            continue 
        mem[_1158 + _1164 + 32] = 0
        _1514 = mem[_287]
        s = 0
        while s < _1514:
            mem[s + _1158 + _1164 + 32] = mem[s + _287 + 32]
            s = s + 32
            continue 
        if ceil32(_1514) <= _1514:
            _1758 = mem[_768]
            s = 0
            while s < _1758:
                mem[s + _1158 + _1164 + _1514 + 32] = mem[s + _768 + 32]
                s = s + 32
                continue 
            if ceil32(_1758) <= _1758:
                _1909 = mem[64]
                mem[mem[64]] = _1758 + _1158 + _1164 + _1514 - mem[64]
                mem[64] = _1758 + _1158 + _1164 + _1514 + 32
                if idx == -1:
                    revert with 4266543227, 17
                idx = idx + 1
                s = _1909
                t = _529
                continue 
            mem[_1158 + _1164 + _1514 + _1758 + 32] = 0
            _1925 = mem[64]
            mem[mem[64]] = _1758 + _1158 + _1164 + _1514 - mem[64]
            mem[64] = _1758 + _1158 + _1164 + _1514 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _1925
            t = _529
            continue 
        mem[_1158 + _1164 + _1514 + 32] = 0
        _1766 = mem[_768]
        s = 0
        while s < _1766:
            mem[s + _1158 + _1164 + _1514 + 32] = mem[s + _768 + 32]
            s = s + 32
            continue 
        if ceil32(_1766) <= _1766:
            _1910 = mem[64]
            mem[mem[64]] = _1766 + _1158 + _1164 + _1514 - mem[64]
            mem[64] = _1766 + _1158 + _1164 + _1514 + 32
            if idx == -1:
                revert with 4266543227, 17
            idx = idx + 1
            s = _1910
            t = _529
            continue 
        mem[_1158 + _1164 + _1514 + _1766 + 32] = 0
        _1926 = mem[64]
        mem[mem[64]] = _1766 + _1158 + _1164 + _1514 - mem[64]
        mem[64] = _1766 + _1158 + _1164 + _1514 + 32
        if idx == -1:
            revert with 4266543227, 17
        idx = idx + 1
        s = _1926
        t = _529
        continue 
    mem[mem[64]] = 32
    _543 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_543)] = mem[s + 32 len ceil32(_543)]
    if ceil32(_543) > _543:
        mem[mem[64] + _543 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_543) + 32]
}



}
