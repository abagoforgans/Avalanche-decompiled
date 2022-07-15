contract main {




// =====================  Runtime code  =====================


#
#  - createNode(address arg1, string arg2)
#  - _getNodesRewardAvailable(address arg1)
#  - _getNodeRewardAmountOf(address arg1, uint256 arg2)
#  - _cashoutNodeReward(address arg1, uint256 arg2)
#  - _distributeRewards()
#  - _getRewardAmountOf(address arg1, uint256 arg2)
#  - sub_e18c4487(?)
#
array of uint256 stor1;
array of struct stor4;
uint256 nodePrice;
uint256 rewardPerNode;
uint256 claimTime;
address gateKeeperAddress;
uint8 autoDistri; offset 160
uint8 distribution; offset 168
uint128 stor9; offset 160
address tokenAddress;
uint256 gasForDistribution;
uint256 lastDistributionCount;
uint256 lastIndexProcessed;
uint256 totalNodesCreated;
uint256 totalRewardStaked;

function claimTime() payable {
    return claimTime
}

function gateKeeper() payable {
    return gateKeeperAddress
}

function distribution() payable {
    return bool(distribution)
}

function rewardPerNode() payable {
    return rewardPerNode
}

function lastIndexProcessed() payable {
    return lastIndexProcessed
}

function autoDistri() payable {
    return bool(autoDistri)
}

function totalRewardStaked() payable {
    return totalRewardStaked
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

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    tokenAddress = arg1
}

function _changeNodePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    nodePrice = arg1
}

function _changeClaimTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    claimTime = arg1
}

function _changeAutoDistri(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    stor9 = Mask(96, 0, arg1)
}

function _changeRewardPerNode(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    rewardPerNode = arg1
}

function _changeGasDistri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    gasForDistribution = arg1
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x58e8dea597155f07a093c6e0527c9ac8e5a3f31a)
    delegate 0x58e8dea597155f07a093c6e0527c9ac8e5a3f31a.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    return delegate.return_data[0]
}

function _isNodeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x58e8dea597155f07a093c6e0527c9ac8e5a3f31a)
    delegate 0x58e8dea597155f07a093c6e0527c9ac8e5a3f31a.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    return (delegate.return_data[0] > 0)
}

function _cashoutAllNodesReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    if stor4[address(arg1)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
    idx = 0
    s = 0
    t = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        if s > -stor4[address(arg1)][idx].field_768 - 1:
            revert with 'NH{q', 17
        stor4[address(arg1)][idx].field_768 = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + stor4[address(arg1)][idx].field_768
        t = (4 * idx) + sha3(sha3(address(arg1), 4))
        continue 
    return (s * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0)
}

function _getRewardAmountOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x58e8dea597155f07a093c6e0527c9ac8e5a3f31a)
    delegate 0x58e8dea597155f07a093c6e0527c9ac8e5a3f31a.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    idx = 0
    s = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        if s > -stor4[address(arg1)][idx].field_768 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + stor4[address(arg1)][idx].field_768
        continue 
    return (s * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0)
}

function _getNodesNames(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0x58e8dea597155f07a093c6e0527c9ac8e5a3f31a)
    delegate 0x58e8dea597155f07a093c6e0527c9ac8e5a3f31a.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET NAMES: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 4
    mem[64] = ceil32(return_data.size) + (32 * stor4[address(arg1)].field_0) + 128
    mem[ceil32(return_data.size) + 96] = stor4[address(arg1)].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        _56 = mem[64]
        mem[64] = mem[64] + 128
        if stor4[address(arg1)][idx].field_0:
            if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                revert with 'NH{q', 34
            _62 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
            mem[_62] = stor4[address(arg1)][idx].field_1
            if stor4[address(arg1)][idx].field_0:
                if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor4[address(arg1)][idx].field_1:
                    if 31 >= stor4[address(arg1)][idx].field_1:
                        mem[_62 + 32] = 256 * stor4[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_62 + 32] = stor4[address(arg1)][idx].field_0
                        t = _62 + 32
                        u = sha3(mem[0])
                        while _62 + stor4[address(arg1)][idx].field_1 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_56] = _62
                mem[_56 + 32] = stor4[address(arg1)][idx].field_256
                mem[_56 + 64] = stor4[address(arg1)][idx].field_512
                mem[_56 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor4[address(arg1)][idx].field_1:
                mem[_56] = _62
                mem[_56 + 32] = stor4[address(arg1)][idx].field_256
                mem[_56 + 64] = stor4[address(arg1)][idx].field_512
                mem[_56 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_62 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_56] = _62
                mem[_56 + 32] = stor4[address(arg1)][idx].field_256
                mem[_56 + 64] = stor4[address(arg1)][idx].field_512
                mem[_56 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_62 + 32] = stor4[address(arg1)][idx].field_0
            t = _62 + 32
            u = sha3(mem[0])
            while _62 + stor4[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_56] = _62
            mem[_56 + 32] = stor4[address(arg1)][u].field_256
            mem[_56 + 64] = stor4[address(arg1)][u].field_512
            mem[_56 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _56
            t = t + 32
            u = u + 1
            continue 
        if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
            revert with 'NH{q', 34
        _64 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
        mem[_64] = stor4[address(arg1)][idx].field_1
        if stor4[address(arg1)][idx].field_0:
            if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor4[address(arg1)][idx].field_1:
                mem[_56] = _64
                mem[_56 + 32] = stor4[address(arg1)][idx].field_256
                mem[_56 + 64] = stor4[address(arg1)][idx].field_512
                mem[_56 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_64 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_56] = _64
                mem[_56 + 32] = stor4[address(arg1)][idx].field_256
                mem[_56 + 64] = stor4[address(arg1)][idx].field_512
                mem[_56 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_64 + 32] = stor4[address(arg1)][idx].field_0
            t = _64 + 32
            u = sha3(mem[0])
            while _64 + stor4[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_56] = _64
            mem[_56 + 32] = stor4[address(arg1)][u].field_256
            mem[_56 + 64] = stor4[address(arg1)][u].field_512
            mem[_56 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _56
            t = t + 32
            u = u + 1
            continue 
        if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[address(arg1)][idx].field_1:
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_64 + 32] = 256 * stor4[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_64 + 32] = stor4[address(arg1)][idx].field_0
                t = _64 + 32
                u = sha3(mem[0])
                while _64 + stor4[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_56] = _64
        mem[_56 + 32] = stor4[address(arg1)][idx].field_256
        mem[_56 + 64] = stor4[address(arg1)][idx].field_512
        mem[_56 + 96] = stor4[address(arg1)][idx].field_768
        mem[s] = _56
        s = s + 32
        idx = idx + 1
        continue 
    _54 = mem[ceil32(return_data.size) + 96]
    _57 = mem[64]
    mem[64] = mem[64] + 128
    mem[_57] = 96
    mem[_57 + 32] = 0
    mem[_57 + 64] = 0
    mem[_57 + 96] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    _60 = mem[mem[ceil32(return_data.size) + 128]]
    _61 = mem[64]
    mem[64] = mem[64] + 64
    mem[_61] = 1
    mem[_61 + 32] = '#'
    idx = 1
    s = _60
    t = _57
    while idx < _54:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _101 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _102 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
        _103 = mem[64]
        _105 = mem[s]
        t = 0
        while t < _105:
            mem[_103 + t + 32] = mem[s + t + 32]
            t = t + 32
            continue 
        if ceil32(_105) <= _105:
            _132 = mem[_61]
            s = 0
            while s < _132:
                mem[_103 + _105 + s + 32] = mem[_61 + s + 32]
                s = s + 32
                continue 
            if ceil32(_132) <= _132:
                _156 = mem[_102]
                s = 0
                while s < _156:
                    mem[_103 + _105 + _132 + s + 32] = mem[_102 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_156) <= _156:
                    _176 = mem[64]
                    mem[mem[64]] = _103 + _105 + _132 + _156 - mem[64]
                    mem[64] = _103 + _105 + _132 + _156 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _176
                    t = _101
                    continue 
                mem[_103 + _105 + _132 + _156 + 32] = 0
                _180 = mem[64]
                mem[mem[64]] = _103 + _105 + _132 + _156 - mem[64]
                mem[64] = _103 + _105 + _132 + _156 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _180
                t = _101
                continue 
            mem[_103 + _105 + _132 + 32] = 0
            _158 = mem[_102]
            s = 0
            while s < _158:
                mem[_103 + _105 + _132 + s + 32] = mem[_102 + s + 32]
                s = s + 32
                continue 
            if ceil32(_158) <= _158:
                _177 = mem[64]
                mem[mem[64]] = _103 + _105 + _132 + _158 - mem[64]
                mem[64] = _103 + _105 + _132 + _158 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _177
                t = _101
                continue 
            mem[_103 + _105 + _132 + _158 + 32] = 0
            _181 = mem[64]
            mem[mem[64]] = _103 + _105 + _132 + _158 - mem[64]
            mem[64] = _103 + _105 + _132 + _158 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _181
            t = _101
            continue 
        mem[_103 + _105 + 32] = 0
        _134 = mem[_61]
        s = 0
        while s < _134:
            mem[_103 + _105 + s + 32] = mem[_61 + s + 32]
            s = s + 32
            continue 
        if ceil32(_134) <= _134:
            _157 = mem[_102]
            s = 0
            while s < _157:
                mem[_103 + _105 + _134 + s + 32] = mem[_102 + s + 32]
                s = s + 32
                continue 
            if ceil32(_157) <= _157:
                _178 = mem[64]
                mem[mem[64]] = _103 + _105 + _134 + _157 - mem[64]
                mem[64] = _103 + _105 + _134 + _157 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _178
                t = _101
                continue 
            mem[_103 + _105 + _134 + _157 + 32] = 0
            _182 = mem[64]
            mem[mem[64]] = _103 + _105 + _134 + _157 - mem[64]
            mem[64] = _103 + _105 + _134 + _157 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _182
            t = _101
            continue 
        mem[_103 + _105 + _134 + 32] = 0
        _159 = mem[_102]
        s = 0
        while s < _159:
            mem[_103 + _105 + _134 + s + 32] = mem[_102 + s + 32]
            s = s + 32
            continue 
        if ceil32(_159) <= _159:
            _179 = mem[64]
            mem[mem[64]] = _103 + _105 + _134 + _159 - mem[64]
            mem[64] = _103 + _105 + _134 + _159 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _179
            t = _101
            continue 
        mem[_103 + _105 + _134 + _159 + 32] = 0
        _183 = mem[64]
        mem[mem[64]] = _103 + _105 + _134 + _159 - mem[64]
        mem[64] = _103 + _105 + _134 + _159 + 32
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _183
        t = _101
        continue 
    mem[mem[64]] = 32
    _104 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_104)] = mem[s + 32 len ceil32(_104)]
    if ceil32(_104) > _104:
        mem[mem[64] + _104 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_104) + 32]
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0x58e8dea597155f07a093c6e0527c9ac8e5a3f31a)
    delegate 0x58e8dea597155f07a093c6e0527c9ac8e5a3f31a.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET CREATIME: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 4
    mem[64] = ceil32(return_data.size) + (32 * stor4[address(arg1)].field_0) + 128
    mem[ceil32(return_data.size) + 96] = stor4[address(arg1)].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        _58 = mem[64]
        mem[64] = mem[64] + 128
        if stor4[address(arg1)][idx].field_0:
            if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                revert with 'NH{q', 34
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
            mem[_63] = stor4[address(arg1)][idx].field_1
            if stor4[address(arg1)][idx].field_0:
                if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor4[address(arg1)][idx].field_1:
                    if 31 >= stor4[address(arg1)][idx].field_1:
                        mem[_63 + 32] = 256 * stor4[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_63 + 32] = stor4[address(arg1)][idx].field_0
                        t = _63 + 32
                        u = sha3(mem[0])
                        while _63 + stor4[address(arg1)][idx].field_1 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_58] = _63
                mem[_58 + 32] = stor4[address(arg1)][idx].field_256
                mem[_58 + 64] = stor4[address(arg1)][idx].field_512
                mem[_58 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor4[address(arg1)][idx].field_1:
                mem[_58] = _63
                mem[_58 + 32] = stor4[address(arg1)][idx].field_256
                mem[_58 + 64] = stor4[address(arg1)][idx].field_512
                mem[_58 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_63 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_58] = _63
                mem[_58 + 32] = stor4[address(arg1)][idx].field_256
                mem[_58 + 64] = stor4[address(arg1)][idx].field_512
                mem[_58 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_63 + 32] = stor4[address(arg1)][idx].field_0
            t = _63 + 32
            u = sha3(mem[0])
            while _63 + stor4[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_58] = _63
            mem[_58 + 32] = stor4[address(arg1)][u].field_256
            mem[_58 + 64] = stor4[address(arg1)][u].field_512
            mem[_58 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
            revert with 'NH{q', 34
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
        mem[_65] = stor4[address(arg1)][idx].field_1
        if stor4[address(arg1)][idx].field_0:
            if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor4[address(arg1)][idx].field_1:
                mem[_58] = _65
                mem[_58 + 32] = stor4[address(arg1)][idx].field_256
                mem[_58 + 64] = stor4[address(arg1)][idx].field_512
                mem[_58 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_65 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_58] = _65
                mem[_58 + 32] = stor4[address(arg1)][idx].field_256
                mem[_58 + 64] = stor4[address(arg1)][idx].field_512
                mem[_58 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_65 + 32] = stor4[address(arg1)][idx].field_0
            t = _65 + 32
            u = sha3(mem[0])
            while _65 + stor4[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_58] = _65
            mem[_58 + 32] = stor4[address(arg1)][u].field_256
            mem[_58 + 64] = stor4[address(arg1)][u].field_512
            mem[_58 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[address(arg1)][idx].field_1:
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_65 + 32] = 256 * stor4[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_65 + 32] = stor4[address(arg1)][idx].field_0
                t = _65 + 32
                u = sha3(mem[0])
                while _65 + stor4[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_58] = _65
        mem[_58 + 32] = stor4[address(arg1)][idx].field_256
        mem[_58 + 64] = stor4[address(arg1)][idx].field_512
        mem[_58 + 96] = stor4[address(arg1)][idx].field_768
        mem[s] = _58
        s = s + 32
        idx = idx + 1
        continue 
    _56 = mem[ceil32(return_data.size) + 96]
    _59 = mem[64]
    mem[64] = mem[64] + 128
    mem[_59] = 96
    mem[_59 + 32] = 0
    mem[_59 + 64] = 0
    mem[_59 + 96] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    _62 = mem[mem[ceil32(return_data.size) + 128] + 32]
    if not mem[mem[ceil32(return_data.size) + 128] + 32]:
        _64 = mem[64]
        mem[64] = mem[64] + 64
        mem[_64] = 1
        mem[_64 + 32] = '0'
        _66 = mem[64]
        mem[64] = mem[64] + 64
        mem[_66] = 1
        mem[_66 + 32] = '#'
        idx = 1
        s = _64
        t = _59
        while idx < _56:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _106 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _107 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                _108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_108] = 1
                mem[_108 + 32] = '0'
                _110 = mem[64]
                _114 = mem[s]
                t = 0
                while t < _114:
                    mem[_110 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_114) <= _114:
                    _217 = mem[_66]
                    s = 0
                    while s < _217:
                        mem[_110 + _114 + s + 32] = mem[_66 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_217) <= _217:
                        _365 = mem[_108]
                        s = 0
                        while s < _365:
                            mem[_110 + _114 + _217 + s + 32] = mem[_108 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_365) <= _365:
                            _487 = mem[64]
                            mem[mem[64]] = _110 + _114 + _217 + _365 - mem[64]
                            mem[64] = _110 + _114 + _217 + _365 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _487
                            t = _106
                            continue 
                        mem[_110 + _114 + _217 + _365 + 32] = 0
                        _495 = mem[64]
                        mem[mem[64]] = _110 + _114 + _217 + _365 - mem[64]
                        mem[64] = _110 + _114 + _217 + _365 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _495
                        t = _106
                        continue 
                    mem[_110 + _114 + _217 + 32] = 0
                    _367 = mem[_108]
                    s = 0
                    while s < _367:
                        mem[_110 + _114 + _217 + s + 32] = mem[_108 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_367) <= _367:
                        _488 = mem[64]
                        mem[mem[64]] = _110 + _114 + _217 + _367 - mem[64]
                        mem[64] = _110 + _114 + _217 + _367 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _488
                        t = _106
                        continue 
                    mem[_110 + _114 + _217 + _367 + 32] = 0
                    _496 = mem[64]
                    mem[mem[64]] = _110 + _114 + _217 + _367 - mem[64]
                    mem[64] = _110 + _114 + _217 + _367 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _496
                    t = _106
                    continue 
                mem[_110 + _114 + 32] = 0
                _220 = mem[_66]
                s = 0
                while s < _220:
                    mem[_110 + _114 + s + 32] = mem[_66 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_220) <= _220:
                    _366 = mem[_108]
                    s = 0
                    while s < _366:
                        mem[_110 + _114 + _220 + s + 32] = mem[_108 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_366) <= _366:
                        _489 = mem[64]
                        mem[mem[64]] = _110 + _114 + _220 + _366 - mem[64]
                        mem[64] = _110 + _114 + _220 + _366 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _489
                        t = _106
                        continue 
                    mem[_110 + _114 + _220 + _366 + 32] = 0
                    _497 = mem[64]
                    mem[mem[64]] = _110 + _114 + _220 + _366 - mem[64]
                    mem[64] = _110 + _114 + _220 + _366 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _497
                    t = _106
                    continue 
                mem[_110 + _114 + _220 + 32] = 0
                _368 = mem[_108]
                s = 0
                while s < _368:
                    mem[_110 + _114 + _220 + s + 32] = mem[_108 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_368) <= _368:
                    _490 = mem[64]
                    mem[mem[64]] = _110 + _114 + _220 + _368 - mem[64]
                    mem[64] = _110 + _114 + _220 + _368 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _490
                    t = _106
                    continue 
                mem[_110 + _114 + _220 + _368 + 32] = 0
                _498 = mem[64]
                mem[mem[64]] = _110 + _114 + _220 + _368 - mem[64]
                mem[64] = _110 + _114 + _220 + _368 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _498
                t = _106
                continue 
            u = 0
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            while t:
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 'NH{q', 65
            _206 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _107
                while t:
                    if v < 1:
                        revert with 'NH{q', 17
                    if t / 10 and 10 > -1 / t / 10:
                        revert with 'NH{q', 17
                    if t < 10 * t / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 'NH{q', 17
                    if v - 1 >= mem[_206]:
                        revert with 'NH{q', 50
                    mem[v + _206 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _355 = mem[64]
                _363 = mem[s]
                t = 0
                while t < _363:
                    mem[_355 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_363) <= _363:
                    _493 = mem[_66]
                    s = 0
                    while s < _493:
                        mem[_355 + _363 + s + 32] = mem[_66 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_493) <= _493:
                        _695 = mem[_206]
                        s = 0
                        while s < _695:
                            mem[_355 + _363 + _493 + s + 32] = mem[_206 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_695) <= _695:
                            _871 = mem[64]
                            mem[mem[64]] = _355 + _363 + _493 + _695 - mem[64]
                            mem[64] = _355 + _363 + _493 + _695 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _871
                            t = _106
                            continue 
                        mem[_355 + _363 + _493 + _695 + 32] = 0
                        _891 = mem[64]
                        mem[mem[64]] = _355 + _363 + _493 + _695 - mem[64]
                        mem[64] = _355 + _363 + _493 + _695 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _891
                        t = _106
                        continue 
                    mem[_355 + _363 + _493 + 32] = 0
                    _703 = mem[_206]
                    s = 0
                    while s < _703:
                        mem[_355 + _363 + _493 + s + 32] = mem[_206 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_703) <= _703:
                        _872 = mem[64]
                        mem[mem[64]] = _355 + _363 + _493 + _703 - mem[64]
                        mem[64] = _355 + _363 + _493 + _703 + 32
                        if ceil32(_703) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_703) + 1
                        s = _872
                        t = _106
                        continue 
                    mem[_355 + _363 + _493 + _703 + 32] = 0
                    _892 = mem[64]
                    mem[mem[64]] = _355 + _363 + _493 + _703 - mem[64]
                    mem[64] = _355 + _363 + _493 + _703 + 32
                    if ceil32(_703) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_703) + 1
                    s = _892
                    t = _106
                    continue 
                mem[_355 + _363 + 32] = 0
                _505 = mem[_66]
                s = 0
                while s < _505:
                    mem[_355 + _363 + s + 32] = mem[_66 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_505) <= _505:
                    _696 = mem[_206]
                    s = 0
                    while s < _696:
                        mem[_355 + _363 + _505 + s + 32] = mem[_206 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_696) <= _696:
                        _873 = mem[64]
                        mem[mem[64]] = _355 + _363 + _505 + _696 - mem[64]
                        mem[64] = _355 + _363 + _505 + _696 + 32
                        if ceil32(_696) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_696) + 1
                        s = _873
                        t = _106
                        continue 
                    mem[_355 + _363 + _505 + _696 + 32] = 0
                    _893 = mem[64]
                    mem[mem[64]] = _355 + _363 + _505 + _696 - mem[64]
                    mem[64] = _355 + _363 + _505 + _696 + 32
                    if ceil32(_696) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_696) + 1
                    s = _893
                    t = _106
                    continue 
                mem[_355 + _363 + _505 + 32] = 0
                _704 = mem[_206]
                s = 0
                while s < _704:
                    mem[_355 + _363 + _505 + s + 32] = mem[_206 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_704) <= _704:
                    _874 = mem[64]
                    mem[mem[64]] = _355 + _363 + _505 + _704 - mem[64]
                    mem[64] = _355 + _363 + _505 + _704 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _874
                    t = _106
                    continue 
                mem[_355 + _363 + _505 + _704 + 32] = 0
                _894 = mem[64]
                mem[mem[64]] = _355 + _363 + _505 + _704 - mem[64]
                mem[64] = _355 + _363 + _505 + _704 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _894
                t = _106
                continue 
            mem[_206 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _107
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 and 10 > -1 / t / 10:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_206]:
                    revert with 'NH{q', 50
                mem[v + _206 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _356 = mem[64]
            _364 = mem[s]
            t = 0
            while t < _364:
                mem[_356 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_364) <= _364:
                _494 = mem[_66]
                s = 0
                while s < _494:
                    mem[_356 + _364 + s + 32] = mem[_66 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_494) <= _494:
                    _697 = mem[_206]
                    s = 0
                    while s < _697:
                        mem[_356 + _364 + _494 + s + 32] = mem[_206 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _875 = mem[64]
                        mem[mem[64]] = _356 + _364 + _494 + _697 - mem[64]
                        mem[64] = _356 + _364 + _494 + _697 + 32
                        if ceil32(_697) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_697) + 1
                        s = _875
                        t = _106
                        continue 
                    mem[_356 + _364 + _494 + _697 + 32] = 0
                    _895 = mem[64]
                    mem[mem[64]] = _356 + _364 + _494 + _697 - mem[64]
                    mem[64] = _356 + _364 + _494 + _697 + 32
                    if ceil32(_697) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_697) + 1
                    s = _895
                    t = _106
                    continue 
                mem[_356 + _364 + _494 + 32] = 0
                _705 = mem[_206]
                s = 0
                while s < _705:
                    mem[_356 + _364 + _494 + s + 32] = mem[_206 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_705) <= _705:
                    _876 = mem[64]
                    mem[mem[64]] = _356 + _364 + _494 + _705 - mem[64]
                    mem[64] = _356 + _364 + _494 + _705 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _876
                    t = _106
                    continue 
                mem[_356 + _364 + _494 + _705 + 32] = 0
                _896 = mem[64]
                mem[mem[64]] = _356 + _364 + _494 + _705 - mem[64]
                mem[64] = _356 + _364 + _494 + _705 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _896
                t = _106
                continue 
            mem[_356 + _364 + 32] = 0
            _506 = mem[_66]
            s = 0
            while s < _506:
                mem[_356 + _364 + s + 32] = mem[_66 + s + 32]
                s = s + 32
                continue 
            if ceil32(_506) <= _506:
                _698 = mem[_206]
                s = 0
                while s < _698:
                    mem[_356 + _364 + _506 + s + 32] = mem[_206 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _877 = mem[64]
                    mem[mem[64]] = _356 + _364 + _506 + _698 - mem[64]
                    mem[64] = _356 + _364 + _506 + _698 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _877
                    t = _106
                    continue 
                mem[_356 + _364 + _506 + _698 + 32] = 0
                _897 = mem[64]
                mem[mem[64]] = _356 + _364 + _506 + _698 - mem[64]
                mem[64] = _356 + _364 + _506 + _698 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _897
                t = _106
                continue 
            mem[_356 + _364 + _506 + 32] = 0
            _706 = mem[_206]
            s = 0
            while s < _706:
                mem[_356 + _364 + _506 + s + 32] = mem[_206 + s + 32]
                s = s + 32
                continue 
            if ceil32(_706) <= _706:
                _878 = mem[64]
                mem[mem[64]] = _356 + _364 + _506 + _706 - mem[64]
                mem[64] = _356 + _364 + _506 + _706 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _878
                t = _106
                continue 
            mem[_356 + _364 + _506 + _706 + 32] = 0
            _898 = mem[64]
            mem[mem[64]] = _356 + _364 + _506 + _706 - mem[64]
            mem[64] = _356 + _364 + _506 + _706 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _898
            t = _106
            continue 
        mem[mem[64]] = 32
        _109 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_109)] = mem[s + 32 len ceil32(_109)]
        if ceil32(_109) > _109:
            mem[mem[64] + _109 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_109) + 32]
    s = 0
    idx = mem[mem[ceil32(return_data.size) + 128] + 32]
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _104 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _62
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[_104]:
                revert with 'NH{q', 50
            mem[t + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _207 = mem[64]
        mem[64] = mem[64] + 64
        mem[_207] = 1
        mem[_207 + 32] = '#'
        idx = 1
        s = _104
        t = _59
        while idx < _56:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _350 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _351 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                _357 = mem[64]
                mem[64] = mem[64] + 64
                mem[_357] = 1
                mem[_357 + 32] = '0'
                _361 = mem[64]
                _369 = mem[s]
                t = 0
                while t < _369:
                    mem[_361 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_369) <= _369:
                    _491 = mem[_207]
                    s = 0
                    while s < _491:
                        mem[_361 + _369 + s + 32] = mem[_207 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_491) <= _491:
                        _689 = mem[_357]
                        s = 0
                        while s < _689:
                            mem[_361 + _369 + _491 + s + 32] = mem[_357 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_689) <= _689:
                            _863 = mem[64]
                            mem[mem[64]] = _361 + _369 + _491 + _689 - mem[64]
                            mem[64] = _361 + _369 + _491 + _689 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _863
                            t = _350
                            continue 
                        mem[_361 + _369 + _491 + _689 + 32] = 0
                        _881 = mem[64]
                        mem[mem[64]] = _361 + _369 + _491 + _689 - mem[64]
                        mem[64] = _361 + _369 + _491 + _689 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _881
                        t = _350
                        continue 
                    mem[_361 + _369 + _491 + 32] = 0
                    _699 = mem[_357]
                    s = 0
                    while s < _699:
                        mem[_361 + _369 + _491 + s + 32] = mem[_357 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_699) <= _699:
                        _864 = mem[64]
                        mem[mem[64]] = _361 + _369 + _491 + _699 - mem[64]
                        mem[64] = _361 + _369 + _491 + _699 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _864
                        t = _350
                        continue 
                    mem[_361 + _369 + _491 + _699 + 32] = 0
                    _882 = mem[64]
                    mem[mem[64]] = _361 + _369 + _491 + _699 - mem[64]
                    mem[64] = _361 + _369 + _491 + _699 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _882
                    t = _350
                    continue 
                mem[_361 + _369 + 32] = 0
                _501 = mem[_207]
                s = 0
                while s < _501:
                    mem[_361 + _369 + s + 32] = mem[_207 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_501) <= _501:
                    _690 = mem[_357]
                    s = 0
                    while s < _690:
                        mem[_361 + _369 + _501 + s + 32] = mem[_357 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _865 = mem[64]
                        mem[mem[64]] = _361 + _369 + _501 + _690 - mem[64]
                        mem[64] = _361 + _369 + _501 + _690 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _865
                        t = _350
                        continue 
                    mem[_361 + _369 + _501 + _690 + 32] = 0
                    _883 = mem[64]
                    mem[mem[64]] = _361 + _369 + _501 + _690 - mem[64]
                    mem[64] = _361 + _369 + _501 + _690 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _883
                    t = _350
                    continue 
                mem[_361 + _369 + _501 + 32] = 0
                _700 = mem[_357]
                s = 0
                while s < _700:
                    mem[_361 + _369 + _501 + s + 32] = mem[_357 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_700) <= _700:
                    _866 = mem[64]
                    mem[mem[64]] = _361 + _369 + _501 + _700 - mem[64]
                    mem[64] = _361 + _369 + _501 + _700 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _866
                    t = _350
                    continue 
                mem[_361 + _369 + _501 + _700 + 32] = 0
                _884 = mem[64]
                mem[mem[64]] = _361 + _369 + _501 + _700 - mem[64]
                mem[64] = _361 + _369 + _501 + _700 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _884
                t = _350
                continue 
            u = 0
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            while t:
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 'NH{q', 65
            _485 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _351
                while t:
                    if v < 1:
                        revert with 'NH{q', 17
                    if t / 10 and 10 > -1 / t / 10:
                        revert with 'NH{q', 17
                    if t < 10 * t / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 'NH{q', 17
                    if v - 1 >= mem[_485]:
                        revert with 'NH{q', 50
                    mem[v + _485 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _683 = mem[64]
                _687 = mem[s]
                t = 0
                while t < _687:
                    mem[_683 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_687) <= _687:
                    _879 = mem[_207]
                    s = 0
                    while s < _879:
                        mem[_683 + _687 + s + 32] = mem[_207 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_879) <= _879:
                        _983 = mem[_485]
                        s = 0
                        while s < _983:
                            mem[_683 + _687 + _879 + s + 32] = mem[_485 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_983) <= _983:
                            _1063 = mem[64]
                            mem[mem[64]] = _683 + _687 + _879 + _983 - mem[64]
                            mem[64] = _683 + _687 + _879 + _983 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _1063
                            t = _350
                            continue 
                        mem[_683 + _687 + _879 + _983 + 32] = 0
                        _1079 = mem[64]
                        mem[mem[64]] = _683 + _687 + _879 + _983 - mem[64]
                        mem[64] = _683 + _687 + _879 + _983 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1079
                        t = _350
                        continue 
                    mem[_683 + _687 + _879 + 32] = 0
                    _991 = mem[_485]
                    s = 0
                    while s < _991:
                        mem[_683 + _687 + _879 + s + 32] = mem[_485 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_991) <= _991:
                        _1064 = mem[64]
                        mem[mem[64]] = _683 + _687 + _879 + _991 - mem[64]
                        mem[64] = _683 + _687 + _879 + _991 + 32
                        if ceil32(_991) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_991) + 1
                        s = _1064
                        t = _350
                        continue 
                    mem[_683 + _687 + _879 + _991 + 32] = 0
                    _1080 = mem[64]
                    mem[mem[64]] = _683 + _687 + _879 + _991 - mem[64]
                    mem[64] = _683 + _687 + _879 + _991 + 32
                    if ceil32(_991) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_991) + 1
                    s = _1080
                    t = _350
                    continue 
                mem[_683 + _687 + 32] = 0
                _899 = mem[_207]
                s = 0
                while s < _899:
                    mem[_683 + _687 + s + 32] = mem[_207 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_899) <= _899:
                    _984 = mem[_485]
                    s = 0
                    while s < _984:
                        mem[_683 + _687 + _899 + s + 32] = mem[_485 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_984) <= _984:
                        _1065 = mem[64]
                        mem[mem[64]] = _683 + _687 + _899 + _984 - mem[64]
                        mem[64] = _683 + _687 + _899 + _984 + 32
                        if ceil32(_984) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_984) + 1
                        s = _1065
                        t = _350
                        continue 
                    mem[_683 + _687 + _899 + _984 + 32] = 0
                    _1081 = mem[64]
                    mem[mem[64]] = _683 + _687 + _899 + _984 - mem[64]
                    mem[64] = _683 + _687 + _899 + _984 + 32
                    if ceil32(_984) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_984) + 1
                    s = _1081
                    t = _350
                    continue 
                mem[_683 + _687 + _899 + 32] = 0
                _992 = mem[_485]
                s = 0
                while s < _992:
                    mem[_683 + _687 + _899 + s + 32] = mem[_485 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_992) <= _992:
                    _1066 = mem[64]
                    mem[mem[64]] = _683 + _687 + _899 + _992 - mem[64]
                    mem[64] = _683 + _687 + _899 + _992 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1066
                    t = _350
                    continue 
                mem[_683 + _687 + _899 + _992 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _683 + _687 + _899 + _992 - mem[64]
                mem[64] = _683 + _687 + _899 + _992 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1082
                t = _350
                continue 
            mem[_485 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _351
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 and 10 > -1 / t / 10:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_485]:
                    revert with 'NH{q', 50
                mem[v + _485 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _684 = mem[64]
            _688 = mem[s]
            t = 0
            while t < _688:
                mem[_684 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_688) <= _688:
                _880 = mem[_207]
                s = 0
                while s < _880:
                    mem[_684 + _688 + s + 32] = mem[_207 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_880) <= _880:
                    _985 = mem[_485]
                    s = 0
                    while s < _985:
                        mem[_684 + _688 + _880 + s + 32] = mem[_485 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_985) <= _985:
                        _1067 = mem[64]
                        mem[mem[64]] = _684 + _688 + _880 + _985 - mem[64]
                        mem[64] = _684 + _688 + _880 + _985 + 32
                        if ceil32(_985) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_985) + 1
                        s = _1067
                        t = _350
                        continue 
                    mem[_684 + _688 + _880 + _985 + 32] = 0
                    _1083 = mem[64]
                    mem[mem[64]] = _684 + _688 + _880 + _985 - mem[64]
                    mem[64] = _684 + _688 + _880 + _985 + 32
                    if ceil32(_985) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_985) + 1
                    s = _1083
                    t = _350
                    continue 
                mem[_684 + _688 + _880 + 32] = 0
                _993 = mem[_485]
                s = 0
                while s < _993:
                    mem[_684 + _688 + _880 + s + 32] = mem[_485 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_993) <= _993:
                    _1068 = mem[64]
                    mem[mem[64]] = _684 + _688 + _880 + _993 - mem[64]
                    mem[64] = _684 + _688 + _880 + _993 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1068
                    t = _350
                    continue 
                mem[_684 + _688 + _880 + _993 + 32] = 0
                _1084 = mem[64]
                mem[mem[64]] = _684 + _688 + _880 + _993 - mem[64]
                mem[64] = _684 + _688 + _880 + _993 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1084
                t = _350
                continue 
            mem[_684 + _688 + 32] = 0
            _900 = mem[_207]
            s = 0
            while s < _900:
                mem[_684 + _688 + s + 32] = mem[_207 + s + 32]
                s = s + 32
                continue 
            if ceil32(_900) <= _900:
                _986 = mem[_485]
                s = 0
                while s < _986:
                    mem[_684 + _688 + _900 + s + 32] = mem[_485 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1069 = mem[64]
                    mem[mem[64]] = _684 + _688 + _900 + _986 - mem[64]
                    mem[64] = _684 + _688 + _900 + _986 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1069
                    t = _350
                    continue 
                mem[_684 + _688 + _900 + _986 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _684 + _688 + _900 + _986 - mem[64]
                mem[64] = _684 + _688 + _900 + _986 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1085
                t = _350
                continue 
            mem[_684 + _688 + _900 + 32] = 0
            _994 = mem[_485]
            s = 0
            while s < _994:
                mem[_684 + _688 + _900 + s + 32] = mem[_485 + s + 32]
                s = s + 32
                continue 
            if ceil32(_994) <= _994:
                _1070 = mem[64]
                mem[mem[64]] = _684 + _688 + _900 + _994 - mem[64]
                mem[64] = _684 + _688 + _900 + _994 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1070
                t = _350
                continue 
            mem[_684 + _688 + _900 + _994 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _684 + _688 + _900 + _994 - mem[64]
            mem[64] = _684 + _688 + _900 + _994 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1086
            t = _350
            continue 
        mem[mem[64]] = 32
        _359 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_359)] = mem[s + 32 len ceil32(_359)]
        if ceil32(_359) > _359:
            mem[mem[64] + _359 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_359) + 32]
    mem[_104 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _62
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if idx / 10 and 10 > -1 / idx / 10:
            revert with 'NH{q', 17
        if idx < 10 * idx / 10:
            revert with 'NH{q', 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 'NH{q', 17
        if t - 1 >= mem[_104]:
            revert with 'NH{q', 50
        mem[t + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _208 = mem[64]
    mem[64] = mem[64] + 64
    mem[_208] = 1
    mem[_208 + 32] = '#'
    idx = 1
    s = _104
    t = _59
    while idx < _56:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _353 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _354 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
        if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
            _358 = mem[64]
            mem[64] = mem[64] + 64
            mem[_358] = 1
            mem[_358 + 32] = '0'
            _362 = mem[64]
            _370 = mem[s]
            t = 0
            while t < _370:
                mem[_362 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_370) <= _370:
                _492 = mem[_208]
                s = 0
                while s < _492:
                    mem[_362 + _370 + s + 32] = mem[_208 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_492) <= _492:
                    _693 = mem[_358]
                    s = 0
                    while s < _693:
                        mem[_362 + _370 + _492 + s + 32] = mem[_358 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _867 = mem[64]
                        mem[mem[64]] = _362 + _370 + _492 + _693 - mem[64]
                        mem[64] = _362 + _370 + _492 + _693 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _867
                        t = _353
                        continue 
                    mem[_362 + _370 + _492 + _693 + 32] = 0
                    _887 = mem[64]
                    mem[mem[64]] = _362 + _370 + _492 + _693 - mem[64]
                    mem[64] = _362 + _370 + _492 + _693 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _887
                    t = _353
                    continue 
                mem[_362 + _370 + _492 + 32] = 0
                _701 = mem[_358]
                s = 0
                while s < _701:
                    mem[_362 + _370 + _492 + s + 32] = mem[_358 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_701) <= _701:
                    _868 = mem[64]
                    mem[mem[64]] = _362 + _370 + _492 + _701 - mem[64]
                    mem[64] = _362 + _370 + _492 + _701 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _868
                    t = _353
                    continue 
                mem[_362 + _370 + _492 + _701 + 32] = 0
                _888 = mem[64]
                mem[mem[64]] = _362 + _370 + _492 + _701 - mem[64]
                mem[64] = _362 + _370 + _492 + _701 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _888
                t = _353
                continue 
            mem[_362 + _370 + 32] = 0
            _504 = mem[_208]
            s = 0
            while s < _504:
                mem[_362 + _370 + s + 32] = mem[_208 + s + 32]
                s = s + 32
                continue 
            if ceil32(_504) <= _504:
                _694 = mem[_358]
                s = 0
                while s < _694:
                    mem[_362 + _370 + _504 + s + 32] = mem[_358 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _869 = mem[64]
                    mem[mem[64]] = _362 + _370 + _504 + _694 - mem[64]
                    mem[64] = _362 + _370 + _504 + _694 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _869
                    t = _353
                    continue 
                mem[_362 + _370 + _504 + _694 + 32] = 0
                _889 = mem[64]
                mem[mem[64]] = _362 + _370 + _504 + _694 - mem[64]
                mem[64] = _362 + _370 + _504 + _694 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _889
                t = _353
                continue 
            mem[_362 + _370 + _504 + 32] = 0
            _702 = mem[_358]
            s = 0
            while s < _702:
                mem[_362 + _370 + _504 + s + 32] = mem[_358 + s + 32]
                s = s + 32
                continue 
            if ceil32(_702) <= _702:
                _870 = mem[64]
                mem[mem[64]] = _362 + _370 + _504 + _702 - mem[64]
                mem[64] = _362 + _370 + _504 + _702 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _870
                t = _353
                continue 
            mem[_362 + _370 + _504 + _702 + 32] = 0
            _890 = mem[64]
            mem[mem[64]] = _362 + _370 + _504 + _702 - mem[64]
            mem[64] = _362 + _370 + _504 + _702 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _890
            t = _353
            continue 
        u = 0
        t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
        while t:
            if u == -1:
                revert with 'NH{q', 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 'NH{q', 65
        _486 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = _354
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 and 10 > -1 / t / 10:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_486]:
                    revert with 'NH{q', 50
                mem[v + _486 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _685 = mem[64]
            _691 = mem[s]
            t = 0
            while t < _691:
                mem[_685 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_691) <= _691:
                _885 = mem[_208]
                s = 0
                while s < _885:
                    mem[_685 + _691 + s + 32] = mem[_208 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_885) <= _885:
                    _987 = mem[_486]
                    s = 0
                    while s < _987:
                        mem[_685 + _691 + _885 + s + 32] = mem[_486 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_987) <= _987:
                        _1071 = mem[64]
                        mem[mem[64]] = _685 + _691 + _885 + _987 - mem[64]
                        mem[64] = _685 + _691 + _885 + _987 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1071
                        t = _353
                        continue 
                    mem[_685 + _691 + _885 + _987 + 32] = 0
                    _1087 = mem[64]
                    mem[mem[64]] = _685 + _691 + _885 + _987 - mem[64]
                    mem[64] = _685 + _691 + _885 + _987 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1087
                    t = _353
                    continue 
                mem[_685 + _691 + _885 + 32] = 0
                _995 = mem[_486]
                s = 0
                while s < _995:
                    mem[_685 + _691 + _885 + s + 32] = mem[_486 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_995) <= _995:
                    _1072 = mem[64]
                    mem[mem[64]] = _685 + _691 + _885 + _995 - mem[64]
                    mem[64] = _685 + _691 + _885 + _995 + 32
                    if ceil32(_995) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_995) + 1
                    s = _1072
                    t = _353
                    continue 
                mem[_685 + _691 + _885 + _995 + 32] = 0
                _1088 = mem[64]
                mem[mem[64]] = _685 + _691 + _885 + _995 - mem[64]
                mem[64] = _685 + _691 + _885 + _995 + 32
                if ceil32(_995) == -1:
                    revert with 'NH{q', 17
                s = ceil32(_995) + 1
                s = _1088
                t = _353
                continue 
            mem[_685 + _691 + 32] = 0
            _901 = mem[_208]
            s = 0
            while s < _901:
                mem[_685 + _691 + s + 32] = mem[_208 + s + 32]
                s = s + 32
                continue 
            if ceil32(_901) <= _901:
                _988 = mem[_486]
                s = 0
                while s < _988:
                    mem[_685 + _691 + _901 + s + 32] = mem[_486 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_988) <= _988:
                    _1073 = mem[64]
                    mem[mem[64]] = _685 + _691 + _901 + _988 - mem[64]
                    mem[64] = _685 + _691 + _901 + _988 + 32
                    if ceil32(_988) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_988) + 1
                    s = _1073
                    t = _353
                    continue 
                mem[_685 + _691 + _901 + _988 + 32] = 0
                _1089 = mem[64]
                mem[mem[64]] = _685 + _691 + _901 + _988 - mem[64]
                mem[64] = _685 + _691 + _901 + _988 + 32
                if ceil32(_988) == -1:
                    revert with 'NH{q', 17
                s = ceil32(_988) + 1
                s = _1089
                t = _353
                continue 
            mem[_685 + _691 + _901 + 32] = 0
            _996 = mem[_486]
            s = 0
            while s < _996:
                mem[_685 + _691 + _901 + s + 32] = mem[_486 + s + 32]
                s = s + 32
                continue 
            if ceil32(_996) <= _996:
                _1074 = mem[64]
                mem[mem[64]] = _685 + _691 + _901 + _996 - mem[64]
                mem[64] = _685 + _691 + _901 + _996 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1074
                t = _353
                continue 
            mem[_685 + _691 + _901 + _996 + 32] = 0
            _1090 = mem[64]
            mem[mem[64]] = _685 + _691 + _901 + _996 - mem[64]
            mem[64] = _685 + _691 + _901 + _996 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1090
            t = _353
            continue 
        mem[_486 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = _354
        while t:
            if v < 1:
                revert with 'NH{q', 17
            if t / 10 and 10 > -1 / t / 10:
                revert with 'NH{q', 17
            if t < 10 * t / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 'NH{q', 17
            if v - 1 >= mem[_486]:
                revert with 'NH{q', 50
            mem[v + _486 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _686 = mem[64]
        _692 = mem[s]
        t = 0
        while t < _692:
            mem[_686 + t + 32] = mem[s + t + 32]
            t = t + 32
            continue 
        if ceil32(_692) <= _692:
            _886 = mem[_208]
            s = 0
            while s < _886:
                mem[_686 + _692 + s + 32] = mem[_208 + s + 32]
                s = s + 32
                continue 
            if ceil32(_886) <= _886:
                _989 = mem[_486]
                s = 0
                while s < _989:
                    mem[_686 + _692 + _886 + s + 32] = mem[_486 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1075 = mem[64]
                    mem[mem[64]] = _686 + _692 + _886 + _989 - mem[64]
                    mem[64] = _686 + _692 + _886 + _989 + 32
                    if ceil32(_989) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_989) + 1
                    s = _1075
                    t = _353
                    continue 
                mem[_686 + _692 + _886 + _989 + 32] = 0
                _1091 = mem[64]
                mem[mem[64]] = _686 + _692 + _886 + _989 - mem[64]
                mem[64] = _686 + _692 + _886 + _989 + 32
                if ceil32(_989) == -1:
                    revert with 'NH{q', 17
                s = ceil32(_989) + 1
                s = _1091
                t = _353
                continue 
            mem[_686 + _692 + _886 + 32] = 0
            _997 = mem[_486]
            s = 0
            while s < _997:
                mem[_686 + _692 + _886 + s + 32] = mem[_486 + s + 32]
                s = s + 32
                continue 
            if ceil32(_997) <= _997:
                _1076 = mem[64]
                mem[mem[64]] = _686 + _692 + _886 + _997 - mem[64]
                mem[64] = _686 + _692 + _886 + _997 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1076
                t = _353
                continue 
            mem[_686 + _692 + _886 + _997 + 32] = 0
            _1092 = mem[64]
            mem[mem[64]] = _686 + _692 + _886 + _997 - mem[64]
            mem[64] = _686 + _692 + _886 + _997 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1092
            t = _353
            continue 
        mem[_686 + _692 + 32] = 0
        _902 = mem[_208]
        s = 0
        while s < _902:
            mem[_686 + _692 + s + 32] = mem[_208 + s + 32]
            s = s + 32
            continue 
        if ceil32(_902) <= _902:
            _990 = mem[_486]
            s = 0
            while s < _990:
                mem[_686 + _692 + _902 + s + 32] = mem[_486 + s + 32]
                s = s + 32
                continue 
            if ceil32(_990) <= _990:
                _1077 = mem[64]
                mem[mem[64]] = _686 + _692 + _902 + _990 - mem[64]
                mem[64] = _686 + _692 + _902 + _990 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1077
                t = _353
                continue 
            mem[_686 + _692 + _902 + _990 + 32] = 0
            _1093 = mem[64]
            mem[mem[64]] = _686 + _692 + _902 + _990 - mem[64]
            mem[64] = _686 + _692 + _902 + _990 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1093
            t = _353
            continue 
        mem[_686 + _692 + _902 + 32] = 0
        _998 = mem[_486]
        s = 0
        while s < _998:
            mem[_686 + _692 + _902 + s + 32] = mem[_486 + s + 32]
            s = s + 32
            continue 
        if ceil32(_998) <= _998:
            _1078 = mem[64]
            mem[mem[64]] = _686 + _692 + _902 + _998 - mem[64]
            mem[64] = _686 + _692 + _902 + _998 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1078
            t = _353
            continue 
        mem[_686 + _692 + _902 + _998 + 32] = 0
        _1094 = mem[64]
        mem[mem[64]] = _686 + _692 + _902 + _998 - mem[64]
        mem[64] = _686 + _692 + _902 + _998 + 32
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _1094
        t = _353
        continue 
    mem[mem[64]] = 32
    _360 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_360)] = mem[s + 32 len ceil32(_360)]
    if ceil32(_360) > _360:
        mem[mem[64] + _360 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_360) + 32]
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0x58e8dea597155f07a093c6e0527c9ac8e5a3f31a)
    delegate 0x58e8dea597155f07a093c6e0527c9ac8e5a3f31a.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    if delegate.return_data[0] <= 0:
        revert with 0, 'LAST CLAIME TIME: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 4
    mem[64] = ceil32(return_data.size) + (32 * stor4[address(arg1)].field_0) + 128
    mem[ceil32(return_data.size) + 96] = stor4[address(arg1)].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        _58 = mem[64]
        mem[64] = mem[64] + 128
        if stor4[address(arg1)][idx].field_0:
            if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                revert with 'NH{q', 34
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
            mem[_63] = stor4[address(arg1)][idx].field_1
            if stor4[address(arg1)][idx].field_0:
                if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor4[address(arg1)][idx].field_1:
                    if 31 >= stor4[address(arg1)][idx].field_1:
                        mem[_63 + 32] = 256 * stor4[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_63 + 32] = stor4[address(arg1)][idx].field_0
                        t = _63 + 32
                        u = sha3(mem[0])
                        while _63 + stor4[address(arg1)][idx].field_1 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_58] = _63
                mem[_58 + 32] = stor4[address(arg1)][idx].field_256
                mem[_58 + 64] = stor4[address(arg1)][idx].field_512
                mem[_58 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor4[address(arg1)][idx].field_1:
                mem[_58] = _63
                mem[_58 + 32] = stor4[address(arg1)][idx].field_256
                mem[_58 + 64] = stor4[address(arg1)][idx].field_512
                mem[_58 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_63 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_58] = _63
                mem[_58 + 32] = stor4[address(arg1)][idx].field_256
                mem[_58 + 64] = stor4[address(arg1)][idx].field_512
                mem[_58 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_63 + 32] = stor4[address(arg1)][idx].field_0
            t = _63 + 32
            u = sha3(mem[0])
            while _63 + stor4[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_58] = _63
            mem[_58 + 32] = stor4[address(arg1)][u].field_256
            mem[_58 + 64] = stor4[address(arg1)][u].field_512
            mem[_58 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
            revert with 'NH{q', 34
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
        mem[_65] = stor4[address(arg1)][idx].field_1
        if stor4[address(arg1)][idx].field_0:
            if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor4[address(arg1)][idx].field_1:
                mem[_58] = _65
                mem[_58 + 32] = stor4[address(arg1)][idx].field_256
                mem[_58 + 64] = stor4[address(arg1)][idx].field_512
                mem[_58 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_65 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_58] = _65
                mem[_58 + 32] = stor4[address(arg1)][idx].field_256
                mem[_58 + 64] = stor4[address(arg1)][idx].field_512
                mem[_58 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_65 + 32] = stor4[address(arg1)][idx].field_0
            t = _65 + 32
            u = sha3(mem[0])
            while _65 + stor4[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_58] = _65
            mem[_58 + 32] = stor4[address(arg1)][u].field_256
            mem[_58 + 64] = stor4[address(arg1)][u].field_512
            mem[_58 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[address(arg1)][idx].field_1:
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_65 + 32] = 256 * stor4[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_65 + 32] = stor4[address(arg1)][idx].field_0
                t = _65 + 32
                u = sha3(mem[0])
                while _65 + stor4[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_58] = _65
        mem[_58 + 32] = stor4[address(arg1)][idx].field_256
        mem[_58 + 64] = stor4[address(arg1)][idx].field_512
        mem[_58 + 96] = stor4[address(arg1)][idx].field_768
        mem[s] = _58
        s = s + 32
        idx = idx + 1
        continue 
    _56 = mem[ceil32(return_data.size) + 96]
    _59 = mem[64]
    mem[64] = mem[64] + 128
    mem[_59] = 96
    mem[_59 + 32] = 0
    mem[_59 + 64] = 0
    mem[_59 + 96] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    _62 = mem[mem[ceil32(return_data.size) + 128] + 64]
    if not mem[mem[ceil32(return_data.size) + 128] + 64]:
        _64 = mem[64]
        mem[64] = mem[64] + 64
        mem[_64] = 1
        mem[_64 + 32] = '0'
        _66 = mem[64]
        mem[64] = mem[64] + 64
        mem[_66] = 1
        mem[_66 + 32] = '#'
        idx = 1
        s = _64
        t = _59
        while idx < _56:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _106 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _107 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                _108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_108] = 1
                mem[_108 + 32] = '0'
                _110 = mem[64]
                _114 = mem[s]
                t = 0
                while t < _114:
                    mem[_110 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_114) <= _114:
                    _217 = mem[_66]
                    s = 0
                    while s < _217:
                        mem[_110 + _114 + s + 32] = mem[_66 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_217) <= _217:
                        _365 = mem[_108]
                        s = 0
                        while s < _365:
                            mem[_110 + _114 + _217 + s + 32] = mem[_108 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_365) <= _365:
                            _487 = mem[64]
                            mem[mem[64]] = _110 + _114 + _217 + _365 - mem[64]
                            mem[64] = _110 + _114 + _217 + _365 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _487
                            t = _106
                            continue 
                        mem[_110 + _114 + _217 + _365 + 32] = 0
                        _495 = mem[64]
                        mem[mem[64]] = _110 + _114 + _217 + _365 - mem[64]
                        mem[64] = _110 + _114 + _217 + _365 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _495
                        t = _106
                        continue 
                    mem[_110 + _114 + _217 + 32] = 0
                    _367 = mem[_108]
                    s = 0
                    while s < _367:
                        mem[_110 + _114 + _217 + s + 32] = mem[_108 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_367) <= _367:
                        _488 = mem[64]
                        mem[mem[64]] = _110 + _114 + _217 + _367 - mem[64]
                        mem[64] = _110 + _114 + _217 + _367 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _488
                        t = _106
                        continue 
                    mem[_110 + _114 + _217 + _367 + 32] = 0
                    _496 = mem[64]
                    mem[mem[64]] = _110 + _114 + _217 + _367 - mem[64]
                    mem[64] = _110 + _114 + _217 + _367 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _496
                    t = _106
                    continue 
                mem[_110 + _114 + 32] = 0
                _220 = mem[_66]
                s = 0
                while s < _220:
                    mem[_110 + _114 + s + 32] = mem[_66 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_220) <= _220:
                    _366 = mem[_108]
                    s = 0
                    while s < _366:
                        mem[_110 + _114 + _220 + s + 32] = mem[_108 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_366) <= _366:
                        _489 = mem[64]
                        mem[mem[64]] = _110 + _114 + _220 + _366 - mem[64]
                        mem[64] = _110 + _114 + _220 + _366 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _489
                        t = _106
                        continue 
                    mem[_110 + _114 + _220 + _366 + 32] = 0
                    _497 = mem[64]
                    mem[mem[64]] = _110 + _114 + _220 + _366 - mem[64]
                    mem[64] = _110 + _114 + _220 + _366 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _497
                    t = _106
                    continue 
                mem[_110 + _114 + _220 + 32] = 0
                _368 = mem[_108]
                s = 0
                while s < _368:
                    mem[_110 + _114 + _220 + s + 32] = mem[_108 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_368) <= _368:
                    _490 = mem[64]
                    mem[mem[64]] = _110 + _114 + _220 + _368 - mem[64]
                    mem[64] = _110 + _114 + _220 + _368 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _490
                    t = _106
                    continue 
                mem[_110 + _114 + _220 + _368 + 32] = 0
                _498 = mem[64]
                mem[mem[64]] = _110 + _114 + _220 + _368 - mem[64]
                mem[64] = _110 + _114 + _220 + _368 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _498
                t = _106
                continue 
            u = 0
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            while t:
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 'NH{q', 65
            _206 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _107
                while t:
                    if v < 1:
                        revert with 'NH{q', 17
                    if t / 10 and 10 > -1 / t / 10:
                        revert with 'NH{q', 17
                    if t < 10 * t / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 'NH{q', 17
                    if v - 1 >= mem[_206]:
                        revert with 'NH{q', 50
                    mem[v + _206 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _355 = mem[64]
                _363 = mem[s]
                t = 0
                while t < _363:
                    mem[_355 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_363) <= _363:
                    _493 = mem[_66]
                    s = 0
                    while s < _493:
                        mem[_355 + _363 + s + 32] = mem[_66 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_493) <= _493:
                        _695 = mem[_206]
                        s = 0
                        while s < _695:
                            mem[_355 + _363 + _493 + s + 32] = mem[_206 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_695) <= _695:
                            _871 = mem[64]
                            mem[mem[64]] = _355 + _363 + _493 + _695 - mem[64]
                            mem[64] = _355 + _363 + _493 + _695 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _871
                            t = _106
                            continue 
                        mem[_355 + _363 + _493 + _695 + 32] = 0
                        _891 = mem[64]
                        mem[mem[64]] = _355 + _363 + _493 + _695 - mem[64]
                        mem[64] = _355 + _363 + _493 + _695 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _891
                        t = _106
                        continue 
                    mem[_355 + _363 + _493 + 32] = 0
                    _703 = mem[_206]
                    s = 0
                    while s < _703:
                        mem[_355 + _363 + _493 + s + 32] = mem[_206 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_703) <= _703:
                        _872 = mem[64]
                        mem[mem[64]] = _355 + _363 + _493 + _703 - mem[64]
                        mem[64] = _355 + _363 + _493 + _703 + 32
                        if ceil32(_703) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_703) + 1
                        s = _872
                        t = _106
                        continue 
                    mem[_355 + _363 + _493 + _703 + 32] = 0
                    _892 = mem[64]
                    mem[mem[64]] = _355 + _363 + _493 + _703 - mem[64]
                    mem[64] = _355 + _363 + _493 + _703 + 32
                    if ceil32(_703) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_703) + 1
                    s = _892
                    t = _106
                    continue 
                mem[_355 + _363 + 32] = 0
                _505 = mem[_66]
                s = 0
                while s < _505:
                    mem[_355 + _363 + s + 32] = mem[_66 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_505) <= _505:
                    _696 = mem[_206]
                    s = 0
                    while s < _696:
                        mem[_355 + _363 + _505 + s + 32] = mem[_206 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_696) <= _696:
                        _873 = mem[64]
                        mem[mem[64]] = _355 + _363 + _505 + _696 - mem[64]
                        mem[64] = _355 + _363 + _505 + _696 + 32
                        if ceil32(_696) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_696) + 1
                        s = _873
                        t = _106
                        continue 
                    mem[_355 + _363 + _505 + _696 + 32] = 0
                    _893 = mem[64]
                    mem[mem[64]] = _355 + _363 + _505 + _696 - mem[64]
                    mem[64] = _355 + _363 + _505 + _696 + 32
                    if ceil32(_696) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_696) + 1
                    s = _893
                    t = _106
                    continue 
                mem[_355 + _363 + _505 + 32] = 0
                _704 = mem[_206]
                s = 0
                while s < _704:
                    mem[_355 + _363 + _505 + s + 32] = mem[_206 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_704) <= _704:
                    _874 = mem[64]
                    mem[mem[64]] = _355 + _363 + _505 + _704 - mem[64]
                    mem[64] = _355 + _363 + _505 + _704 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _874
                    t = _106
                    continue 
                mem[_355 + _363 + _505 + _704 + 32] = 0
                _894 = mem[64]
                mem[mem[64]] = _355 + _363 + _505 + _704 - mem[64]
                mem[64] = _355 + _363 + _505 + _704 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _894
                t = _106
                continue 
            mem[_206 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _107
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 and 10 > -1 / t / 10:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_206]:
                    revert with 'NH{q', 50
                mem[v + _206 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _356 = mem[64]
            _364 = mem[s]
            t = 0
            while t < _364:
                mem[_356 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_364) <= _364:
                _494 = mem[_66]
                s = 0
                while s < _494:
                    mem[_356 + _364 + s + 32] = mem[_66 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_494) <= _494:
                    _697 = mem[_206]
                    s = 0
                    while s < _697:
                        mem[_356 + _364 + _494 + s + 32] = mem[_206 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _875 = mem[64]
                        mem[mem[64]] = _356 + _364 + _494 + _697 - mem[64]
                        mem[64] = _356 + _364 + _494 + _697 + 32
                        if ceil32(_697) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_697) + 1
                        s = _875
                        t = _106
                        continue 
                    mem[_356 + _364 + _494 + _697 + 32] = 0
                    _895 = mem[64]
                    mem[mem[64]] = _356 + _364 + _494 + _697 - mem[64]
                    mem[64] = _356 + _364 + _494 + _697 + 32
                    if ceil32(_697) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_697) + 1
                    s = _895
                    t = _106
                    continue 
                mem[_356 + _364 + _494 + 32] = 0
                _705 = mem[_206]
                s = 0
                while s < _705:
                    mem[_356 + _364 + _494 + s + 32] = mem[_206 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_705) <= _705:
                    _876 = mem[64]
                    mem[mem[64]] = _356 + _364 + _494 + _705 - mem[64]
                    mem[64] = _356 + _364 + _494 + _705 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _876
                    t = _106
                    continue 
                mem[_356 + _364 + _494 + _705 + 32] = 0
                _896 = mem[64]
                mem[mem[64]] = _356 + _364 + _494 + _705 - mem[64]
                mem[64] = _356 + _364 + _494 + _705 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _896
                t = _106
                continue 
            mem[_356 + _364 + 32] = 0
            _506 = mem[_66]
            s = 0
            while s < _506:
                mem[_356 + _364 + s + 32] = mem[_66 + s + 32]
                s = s + 32
                continue 
            if ceil32(_506) <= _506:
                _698 = mem[_206]
                s = 0
                while s < _698:
                    mem[_356 + _364 + _506 + s + 32] = mem[_206 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _877 = mem[64]
                    mem[mem[64]] = _356 + _364 + _506 + _698 - mem[64]
                    mem[64] = _356 + _364 + _506 + _698 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _877
                    t = _106
                    continue 
                mem[_356 + _364 + _506 + _698 + 32] = 0
                _897 = mem[64]
                mem[mem[64]] = _356 + _364 + _506 + _698 - mem[64]
                mem[64] = _356 + _364 + _506 + _698 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _897
                t = _106
                continue 
            mem[_356 + _364 + _506 + 32] = 0
            _706 = mem[_206]
            s = 0
            while s < _706:
                mem[_356 + _364 + _506 + s + 32] = mem[_206 + s + 32]
                s = s + 32
                continue 
            if ceil32(_706) <= _706:
                _878 = mem[64]
                mem[mem[64]] = _356 + _364 + _506 + _706 - mem[64]
                mem[64] = _356 + _364 + _506 + _706 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _878
                t = _106
                continue 
            mem[_356 + _364 + _506 + _706 + 32] = 0
            _898 = mem[64]
            mem[mem[64]] = _356 + _364 + _506 + _706 - mem[64]
            mem[64] = _356 + _364 + _506 + _706 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _898
            t = _106
            continue 
        mem[mem[64]] = 32
        _109 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_109)] = mem[s + 32 len ceil32(_109)]
        if ceil32(_109) > _109:
            mem[mem[64] + _109 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_109) + 32]
    s = 0
    idx = mem[mem[ceil32(return_data.size) + 128] + 64]
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _104 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _62
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[_104]:
                revert with 'NH{q', 50
            mem[t + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _207 = mem[64]
        mem[64] = mem[64] + 64
        mem[_207] = 1
        mem[_207 + 32] = '#'
        idx = 1
        s = _104
        t = _59
        while idx < _56:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _350 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _351 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                _357 = mem[64]
                mem[64] = mem[64] + 64
                mem[_357] = 1
                mem[_357 + 32] = '0'
                _361 = mem[64]
                _369 = mem[s]
                t = 0
                while t < _369:
                    mem[_361 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_369) <= _369:
                    _491 = mem[_207]
                    s = 0
                    while s < _491:
                        mem[_361 + _369 + s + 32] = mem[_207 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_491) <= _491:
                        _689 = mem[_357]
                        s = 0
                        while s < _689:
                            mem[_361 + _369 + _491 + s + 32] = mem[_357 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_689) <= _689:
                            _863 = mem[64]
                            mem[mem[64]] = _361 + _369 + _491 + _689 - mem[64]
                            mem[64] = _361 + _369 + _491 + _689 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _863
                            t = _350
                            continue 
                        mem[_361 + _369 + _491 + _689 + 32] = 0
                        _881 = mem[64]
                        mem[mem[64]] = _361 + _369 + _491 + _689 - mem[64]
                        mem[64] = _361 + _369 + _491 + _689 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _881
                        t = _350
                        continue 
                    mem[_361 + _369 + _491 + 32] = 0
                    _699 = mem[_357]
                    s = 0
                    while s < _699:
                        mem[_361 + _369 + _491 + s + 32] = mem[_357 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_699) <= _699:
                        _864 = mem[64]
                        mem[mem[64]] = _361 + _369 + _491 + _699 - mem[64]
                        mem[64] = _361 + _369 + _491 + _699 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _864
                        t = _350
                        continue 
                    mem[_361 + _369 + _491 + _699 + 32] = 0
                    _882 = mem[64]
                    mem[mem[64]] = _361 + _369 + _491 + _699 - mem[64]
                    mem[64] = _361 + _369 + _491 + _699 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _882
                    t = _350
                    continue 
                mem[_361 + _369 + 32] = 0
                _501 = mem[_207]
                s = 0
                while s < _501:
                    mem[_361 + _369 + s + 32] = mem[_207 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_501) <= _501:
                    _690 = mem[_357]
                    s = 0
                    while s < _690:
                        mem[_361 + _369 + _501 + s + 32] = mem[_357 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _865 = mem[64]
                        mem[mem[64]] = _361 + _369 + _501 + _690 - mem[64]
                        mem[64] = _361 + _369 + _501 + _690 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _865
                        t = _350
                        continue 
                    mem[_361 + _369 + _501 + _690 + 32] = 0
                    _883 = mem[64]
                    mem[mem[64]] = _361 + _369 + _501 + _690 - mem[64]
                    mem[64] = _361 + _369 + _501 + _690 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _883
                    t = _350
                    continue 
                mem[_361 + _369 + _501 + 32] = 0
                _700 = mem[_357]
                s = 0
                while s < _700:
                    mem[_361 + _369 + _501 + s + 32] = mem[_357 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_700) <= _700:
                    _866 = mem[64]
                    mem[mem[64]] = _361 + _369 + _501 + _700 - mem[64]
                    mem[64] = _361 + _369 + _501 + _700 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _866
                    t = _350
                    continue 
                mem[_361 + _369 + _501 + _700 + 32] = 0
                _884 = mem[64]
                mem[mem[64]] = _361 + _369 + _501 + _700 - mem[64]
                mem[64] = _361 + _369 + _501 + _700 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _884
                t = _350
                continue 
            u = 0
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            while t:
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 'NH{q', 65
            _485 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _351
                while t:
                    if v < 1:
                        revert with 'NH{q', 17
                    if t / 10 and 10 > -1 / t / 10:
                        revert with 'NH{q', 17
                    if t < 10 * t / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 'NH{q', 17
                    if v - 1 >= mem[_485]:
                        revert with 'NH{q', 50
                    mem[v + _485 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _683 = mem[64]
                _687 = mem[s]
                t = 0
                while t < _687:
                    mem[_683 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_687) <= _687:
                    _879 = mem[_207]
                    s = 0
                    while s < _879:
                        mem[_683 + _687 + s + 32] = mem[_207 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_879) <= _879:
                        _983 = mem[_485]
                        s = 0
                        while s < _983:
                            mem[_683 + _687 + _879 + s + 32] = mem[_485 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_983) <= _983:
                            _1063 = mem[64]
                            mem[mem[64]] = _683 + _687 + _879 + _983 - mem[64]
                            mem[64] = _683 + _687 + _879 + _983 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _1063
                            t = _350
                            continue 
                        mem[_683 + _687 + _879 + _983 + 32] = 0
                        _1079 = mem[64]
                        mem[mem[64]] = _683 + _687 + _879 + _983 - mem[64]
                        mem[64] = _683 + _687 + _879 + _983 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1079
                        t = _350
                        continue 
                    mem[_683 + _687 + _879 + 32] = 0
                    _991 = mem[_485]
                    s = 0
                    while s < _991:
                        mem[_683 + _687 + _879 + s + 32] = mem[_485 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_991) <= _991:
                        _1064 = mem[64]
                        mem[mem[64]] = _683 + _687 + _879 + _991 - mem[64]
                        mem[64] = _683 + _687 + _879 + _991 + 32
                        if ceil32(_991) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_991) + 1
                        s = _1064
                        t = _350
                        continue 
                    mem[_683 + _687 + _879 + _991 + 32] = 0
                    _1080 = mem[64]
                    mem[mem[64]] = _683 + _687 + _879 + _991 - mem[64]
                    mem[64] = _683 + _687 + _879 + _991 + 32
                    if ceil32(_991) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_991) + 1
                    s = _1080
                    t = _350
                    continue 
                mem[_683 + _687 + 32] = 0
                _899 = mem[_207]
                s = 0
                while s < _899:
                    mem[_683 + _687 + s + 32] = mem[_207 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_899) <= _899:
                    _984 = mem[_485]
                    s = 0
                    while s < _984:
                        mem[_683 + _687 + _899 + s + 32] = mem[_485 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_984) <= _984:
                        _1065 = mem[64]
                        mem[mem[64]] = _683 + _687 + _899 + _984 - mem[64]
                        mem[64] = _683 + _687 + _899 + _984 + 32
                        if ceil32(_984) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_984) + 1
                        s = _1065
                        t = _350
                        continue 
                    mem[_683 + _687 + _899 + _984 + 32] = 0
                    _1081 = mem[64]
                    mem[mem[64]] = _683 + _687 + _899 + _984 - mem[64]
                    mem[64] = _683 + _687 + _899 + _984 + 32
                    if ceil32(_984) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_984) + 1
                    s = _1081
                    t = _350
                    continue 
                mem[_683 + _687 + _899 + 32] = 0
                _992 = mem[_485]
                s = 0
                while s < _992:
                    mem[_683 + _687 + _899 + s + 32] = mem[_485 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_992) <= _992:
                    _1066 = mem[64]
                    mem[mem[64]] = _683 + _687 + _899 + _992 - mem[64]
                    mem[64] = _683 + _687 + _899 + _992 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1066
                    t = _350
                    continue 
                mem[_683 + _687 + _899 + _992 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _683 + _687 + _899 + _992 - mem[64]
                mem[64] = _683 + _687 + _899 + _992 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1082
                t = _350
                continue 
            mem[_485 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _351
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 and 10 > -1 / t / 10:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_485]:
                    revert with 'NH{q', 50
                mem[v + _485 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _684 = mem[64]
            _688 = mem[s]
            t = 0
            while t < _688:
                mem[_684 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_688) <= _688:
                _880 = mem[_207]
                s = 0
                while s < _880:
                    mem[_684 + _688 + s + 32] = mem[_207 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_880) <= _880:
                    _985 = mem[_485]
                    s = 0
                    while s < _985:
                        mem[_684 + _688 + _880 + s + 32] = mem[_485 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_985) <= _985:
                        _1067 = mem[64]
                        mem[mem[64]] = _684 + _688 + _880 + _985 - mem[64]
                        mem[64] = _684 + _688 + _880 + _985 + 32
                        if ceil32(_985) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_985) + 1
                        s = _1067
                        t = _350
                        continue 
                    mem[_684 + _688 + _880 + _985 + 32] = 0
                    _1083 = mem[64]
                    mem[mem[64]] = _684 + _688 + _880 + _985 - mem[64]
                    mem[64] = _684 + _688 + _880 + _985 + 32
                    if ceil32(_985) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_985) + 1
                    s = _1083
                    t = _350
                    continue 
                mem[_684 + _688 + _880 + 32] = 0
                _993 = mem[_485]
                s = 0
                while s < _993:
                    mem[_684 + _688 + _880 + s + 32] = mem[_485 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_993) <= _993:
                    _1068 = mem[64]
                    mem[mem[64]] = _684 + _688 + _880 + _993 - mem[64]
                    mem[64] = _684 + _688 + _880 + _993 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1068
                    t = _350
                    continue 
                mem[_684 + _688 + _880 + _993 + 32] = 0
                _1084 = mem[64]
                mem[mem[64]] = _684 + _688 + _880 + _993 - mem[64]
                mem[64] = _684 + _688 + _880 + _993 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1084
                t = _350
                continue 
            mem[_684 + _688 + 32] = 0
            _900 = mem[_207]
            s = 0
            while s < _900:
                mem[_684 + _688 + s + 32] = mem[_207 + s + 32]
                s = s + 32
                continue 
            if ceil32(_900) <= _900:
                _986 = mem[_485]
                s = 0
                while s < _986:
                    mem[_684 + _688 + _900 + s + 32] = mem[_485 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1069 = mem[64]
                    mem[mem[64]] = _684 + _688 + _900 + _986 - mem[64]
                    mem[64] = _684 + _688 + _900 + _986 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1069
                    t = _350
                    continue 
                mem[_684 + _688 + _900 + _986 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _684 + _688 + _900 + _986 - mem[64]
                mem[64] = _684 + _688 + _900 + _986 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1085
                t = _350
                continue 
            mem[_684 + _688 + _900 + 32] = 0
            _994 = mem[_485]
            s = 0
            while s < _994:
                mem[_684 + _688 + _900 + s + 32] = mem[_485 + s + 32]
                s = s + 32
                continue 
            if ceil32(_994) <= _994:
                _1070 = mem[64]
                mem[mem[64]] = _684 + _688 + _900 + _994 - mem[64]
                mem[64] = _684 + _688 + _900 + _994 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1070
                t = _350
                continue 
            mem[_684 + _688 + _900 + _994 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _684 + _688 + _900 + _994 - mem[64]
            mem[64] = _684 + _688 + _900 + _994 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1086
            t = _350
            continue 
        mem[mem[64]] = 32
        _359 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_359)] = mem[s + 32 len ceil32(_359)]
        if ceil32(_359) > _359:
            mem[mem[64] + _359 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_359) + 32]
    mem[_104 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _62
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if idx / 10 and 10 > -1 / idx / 10:
            revert with 'NH{q', 17
        if idx < 10 * idx / 10:
            revert with 'NH{q', 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 'NH{q', 17
        if t - 1 >= mem[_104]:
            revert with 'NH{q', 50
        mem[t + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _208 = mem[64]
    mem[64] = mem[64] + 64
    mem[_208] = 1
    mem[_208 + 32] = '#'
    idx = 1
    s = _104
    t = _59
    while idx < _56:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _353 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _354 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
        if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
            _358 = mem[64]
            mem[64] = mem[64] + 64
            mem[_358] = 1
            mem[_358 + 32] = '0'
            _362 = mem[64]
            _370 = mem[s]
            t = 0
            while t < _370:
                mem[_362 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_370) <= _370:
                _492 = mem[_208]
                s = 0
                while s < _492:
                    mem[_362 + _370 + s + 32] = mem[_208 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_492) <= _492:
                    _693 = mem[_358]
                    s = 0
                    while s < _693:
                        mem[_362 + _370 + _492 + s + 32] = mem[_358 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _867 = mem[64]
                        mem[mem[64]] = _362 + _370 + _492 + _693 - mem[64]
                        mem[64] = _362 + _370 + _492 + _693 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _867
                        t = _353
                        continue 
                    mem[_362 + _370 + _492 + _693 + 32] = 0
                    _887 = mem[64]
                    mem[mem[64]] = _362 + _370 + _492 + _693 - mem[64]
                    mem[64] = _362 + _370 + _492 + _693 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _887
                    t = _353
                    continue 
                mem[_362 + _370 + _492 + 32] = 0
                _701 = mem[_358]
                s = 0
                while s < _701:
                    mem[_362 + _370 + _492 + s + 32] = mem[_358 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_701) <= _701:
                    _868 = mem[64]
                    mem[mem[64]] = _362 + _370 + _492 + _701 - mem[64]
                    mem[64] = _362 + _370 + _492 + _701 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _868
                    t = _353
                    continue 
                mem[_362 + _370 + _492 + _701 + 32] = 0
                _888 = mem[64]
                mem[mem[64]] = _362 + _370 + _492 + _701 - mem[64]
                mem[64] = _362 + _370 + _492 + _701 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _888
                t = _353
                continue 
            mem[_362 + _370 + 32] = 0
            _504 = mem[_208]
            s = 0
            while s < _504:
                mem[_362 + _370 + s + 32] = mem[_208 + s + 32]
                s = s + 32
                continue 
            if ceil32(_504) <= _504:
                _694 = mem[_358]
                s = 0
                while s < _694:
                    mem[_362 + _370 + _504 + s + 32] = mem[_358 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _869 = mem[64]
                    mem[mem[64]] = _362 + _370 + _504 + _694 - mem[64]
                    mem[64] = _362 + _370 + _504 + _694 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _869
                    t = _353
                    continue 
                mem[_362 + _370 + _504 + _694 + 32] = 0
                _889 = mem[64]
                mem[mem[64]] = _362 + _370 + _504 + _694 - mem[64]
                mem[64] = _362 + _370 + _504 + _694 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _889
                t = _353
                continue 
            mem[_362 + _370 + _504 + 32] = 0
            _702 = mem[_358]
            s = 0
            while s < _702:
                mem[_362 + _370 + _504 + s + 32] = mem[_358 + s + 32]
                s = s + 32
                continue 
            if ceil32(_702) <= _702:
                _870 = mem[64]
                mem[mem[64]] = _362 + _370 + _504 + _702 - mem[64]
                mem[64] = _362 + _370 + _504 + _702 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _870
                t = _353
                continue 
            mem[_362 + _370 + _504 + _702 + 32] = 0
            _890 = mem[64]
            mem[mem[64]] = _362 + _370 + _504 + _702 - mem[64]
            mem[64] = _362 + _370 + _504 + _702 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _890
            t = _353
            continue 
        u = 0
        t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
        while t:
            if u == -1:
                revert with 'NH{q', 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 'NH{q', 65
        _486 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = _354
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 and 10 > -1 / t / 10:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_486]:
                    revert with 'NH{q', 50
                mem[v + _486 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _685 = mem[64]
            _691 = mem[s]
            t = 0
            while t < _691:
                mem[_685 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_691) <= _691:
                _885 = mem[_208]
                s = 0
                while s < _885:
                    mem[_685 + _691 + s + 32] = mem[_208 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_885) <= _885:
                    _987 = mem[_486]
                    s = 0
                    while s < _987:
                        mem[_685 + _691 + _885 + s + 32] = mem[_486 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_987) <= _987:
                        _1071 = mem[64]
                        mem[mem[64]] = _685 + _691 + _885 + _987 - mem[64]
                        mem[64] = _685 + _691 + _885 + _987 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1071
                        t = _353
                        continue 
                    mem[_685 + _691 + _885 + _987 + 32] = 0
                    _1087 = mem[64]
                    mem[mem[64]] = _685 + _691 + _885 + _987 - mem[64]
                    mem[64] = _685 + _691 + _885 + _987 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1087
                    t = _353
                    continue 
                mem[_685 + _691 + _885 + 32] = 0
                _995 = mem[_486]
                s = 0
                while s < _995:
                    mem[_685 + _691 + _885 + s + 32] = mem[_486 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_995) <= _995:
                    _1072 = mem[64]
                    mem[mem[64]] = _685 + _691 + _885 + _995 - mem[64]
                    mem[64] = _685 + _691 + _885 + _995 + 32
                    if ceil32(_995) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_995) + 1
                    s = _1072
                    t = _353
                    continue 
                mem[_685 + _691 + _885 + _995 + 32] = 0
                _1088 = mem[64]
                mem[mem[64]] = _685 + _691 + _885 + _995 - mem[64]
                mem[64] = _685 + _691 + _885 + _995 + 32
                if ceil32(_995) == -1:
                    revert with 'NH{q', 17
                s = ceil32(_995) + 1
                s = _1088
                t = _353
                continue 
            mem[_685 + _691 + 32] = 0
            _901 = mem[_208]
            s = 0
            while s < _901:
                mem[_685 + _691 + s + 32] = mem[_208 + s + 32]
                s = s + 32
                continue 
            if ceil32(_901) <= _901:
                _988 = mem[_486]
                s = 0
                while s < _988:
                    mem[_685 + _691 + _901 + s + 32] = mem[_486 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_988) <= _988:
                    _1073 = mem[64]
                    mem[mem[64]] = _685 + _691 + _901 + _988 - mem[64]
                    mem[64] = _685 + _691 + _901 + _988 + 32
                    if ceil32(_988) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_988) + 1
                    s = _1073
                    t = _353
                    continue 
                mem[_685 + _691 + _901 + _988 + 32] = 0
                _1089 = mem[64]
                mem[mem[64]] = _685 + _691 + _901 + _988 - mem[64]
                mem[64] = _685 + _691 + _901 + _988 + 32
                if ceil32(_988) == -1:
                    revert with 'NH{q', 17
                s = ceil32(_988) + 1
                s = _1089
                t = _353
                continue 
            mem[_685 + _691 + _901 + 32] = 0
            _996 = mem[_486]
            s = 0
            while s < _996:
                mem[_685 + _691 + _901 + s + 32] = mem[_486 + s + 32]
                s = s + 32
                continue 
            if ceil32(_996) <= _996:
                _1074 = mem[64]
                mem[mem[64]] = _685 + _691 + _901 + _996 - mem[64]
                mem[64] = _685 + _691 + _901 + _996 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1074
                t = _353
                continue 
            mem[_685 + _691 + _901 + _996 + 32] = 0
            _1090 = mem[64]
            mem[mem[64]] = _685 + _691 + _901 + _996 - mem[64]
            mem[64] = _685 + _691 + _901 + _996 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1090
            t = _353
            continue 
        mem[_486 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = _354
        while t:
            if v < 1:
                revert with 'NH{q', 17
            if t / 10 and 10 > -1 / t / 10:
                revert with 'NH{q', 17
            if t < 10 * t / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 'NH{q', 17
            if v - 1 >= mem[_486]:
                revert with 'NH{q', 50
            mem[v + _486 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _686 = mem[64]
        _692 = mem[s]
        t = 0
        while t < _692:
            mem[_686 + t + 32] = mem[s + t + 32]
            t = t + 32
            continue 
        if ceil32(_692) <= _692:
            _886 = mem[_208]
            s = 0
            while s < _886:
                mem[_686 + _692 + s + 32] = mem[_208 + s + 32]
                s = s + 32
                continue 
            if ceil32(_886) <= _886:
                _989 = mem[_486]
                s = 0
                while s < _989:
                    mem[_686 + _692 + _886 + s + 32] = mem[_486 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1075 = mem[64]
                    mem[mem[64]] = _686 + _692 + _886 + _989 - mem[64]
                    mem[64] = _686 + _692 + _886 + _989 + 32
                    if ceil32(_989) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_989) + 1
                    s = _1075
                    t = _353
                    continue 
                mem[_686 + _692 + _886 + _989 + 32] = 0
                _1091 = mem[64]
                mem[mem[64]] = _686 + _692 + _886 + _989 - mem[64]
                mem[64] = _686 + _692 + _886 + _989 + 32
                if ceil32(_989) == -1:
                    revert with 'NH{q', 17
                s = ceil32(_989) + 1
                s = _1091
                t = _353
                continue 
            mem[_686 + _692 + _886 + 32] = 0
            _997 = mem[_486]
            s = 0
            while s < _997:
                mem[_686 + _692 + _886 + s + 32] = mem[_486 + s + 32]
                s = s + 32
                continue 
            if ceil32(_997) <= _997:
                _1076 = mem[64]
                mem[mem[64]] = _686 + _692 + _886 + _997 - mem[64]
                mem[64] = _686 + _692 + _886 + _997 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1076
                t = _353
                continue 
            mem[_686 + _692 + _886 + _997 + 32] = 0
            _1092 = mem[64]
            mem[mem[64]] = _686 + _692 + _886 + _997 - mem[64]
            mem[64] = _686 + _692 + _886 + _997 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1092
            t = _353
            continue 
        mem[_686 + _692 + 32] = 0
        _902 = mem[_208]
        s = 0
        while s < _902:
            mem[_686 + _692 + s + 32] = mem[_208 + s + 32]
            s = s + 32
            continue 
        if ceil32(_902) <= _902:
            _990 = mem[_486]
            s = 0
            while s < _990:
                mem[_686 + _692 + _902 + s + 32] = mem[_486 + s + 32]
                s = s + 32
                continue 
            if ceil32(_990) <= _990:
                _1077 = mem[64]
                mem[mem[64]] = _686 + _692 + _902 + _990 - mem[64]
                mem[64] = _686 + _692 + _902 + _990 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1077
                t = _353
                continue 
            mem[_686 + _692 + _902 + _990 + 32] = 0
            _1093 = mem[64]
            mem[mem[64]] = _686 + _692 + _902 + _990 - mem[64]
            mem[64] = _686 + _692 + _902 + _990 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1093
            t = _353
            continue 
        mem[_686 + _692 + _902 + 32] = 0
        _998 = mem[_486]
        s = 0
        while s < _998:
            mem[_686 + _692 + _902 + s + 32] = mem[_486 + s + 32]
            s = s + 32
            continue 
        if ceil32(_998) <= _998:
            _1078 = mem[64]
            mem[mem[64]] = _686 + _692 + _902 + _998 - mem[64]
            mem[64] = _686 + _692 + _902 + _998 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1078
            t = _353
            continue 
        mem[_686 + _692 + _902 + _998 + 32] = 0
        _1094 = mem[64]
        mem[mem[64]] = _686 + _692 + _902 + _998 - mem[64]
        mem[64] = _686 + _692 + _902 + _998 + 32
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _1094
        t = _353
        continue 
    mem[mem[64]] = 32
    _360 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_360)] = mem[s + 32 len ceil32(_360)]
    if ceil32(_360) > _360:
        mem[mem[64] + _360 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_360) + 32]
}



}
