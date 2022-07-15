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
uint8 stor9; offset 160
uint8 stor9; offset 168
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
    return bool(uint8(stor9.field_168))
}

function rewardPerNode() payable {
    return rewardPerNode
}

function lastIndexProcessed() payable {
    return lastIndexProcessed
}

function autoDistri() payable {
    return bool(uint8(stor9.field_160))
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

function _changeNodePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    nodePrice = arg1
}

function _changeClaimTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    claimTime = arg1
}

function _changeRewardPerNode(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    rewardPerNode = arg1
}

function _changeGasDistri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    gasForDistribution = arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    tokenAddress = arg1
}

function _changeAutoDistri(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    Mask(96, 0, stor9.field_160) = Mask(96, 0, arg1)
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegate 0xd9145cce52d386f254917e481eb44e9943f39138.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function _isNodeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegate 0xd9145cce52d386f254917e481eb44e9943f39138.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] > 0)
}

function _getRewardAmountOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegate 0xd9145cce52d386f254917e481eb44e9943f39138.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    idx = 0
    s = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        if s > !stor4[address(arg1)][idx].field_768:
            revert with 0, 17
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor4[address(arg1)][idx].field_768
        continue 
    return (s * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0)
}

function _cashoutAllNodesReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    if not stor4[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
    idx = 0
    s = 0
    t = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        if s > !stor4[address(arg1)][idx].field_768:
            revert with 0, 17
        stor4[address(arg1)][idx].field_768 = 0
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor4[address(arg1)][idx].field_768
        t = (4 * idx) + sha3(sha3(address(arg1), 4))
        continue 
    return (s * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0)
}

function _getNodesNames(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    delegate 0xd9145cce52d386f254917e481eb44e9943f39138.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        _57 = mem[64]
        mem[64] = mem[64] + 128
        if stor4[address(arg1)][idx].field_0:
            if not stor4[address(arg1)][idx].field_0 - (uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32):
                revert with 0, 34
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_63] = uint255(stor4[address(arg1)][idx].field_0) * 0.5
            if stor4[address(arg1)][idx].field_0:
                if not stor4[address(arg1)][idx].field_0 - (uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor4[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                        mem[_63 + 32] = 256 * stor4[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_63 + 32] = stor4[address(arg1)][idx].field_0
                        t = _63 + 32
                        u = sha3(mem[0])
                        while _63 + (uint255(stor4[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_57] = _63
                mem[_57 + 32] = stor4[address(arg1)][idx].field_256
                mem[_57 + 64] = stor4[address(arg1)][idx].field_512
                mem[_57 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            if not stor4[address(arg1)][idx].field_0 - (stor4[address(arg1)][idx].field_1 < 32):
                revert with 0, 34
            if not stor4[address(arg1)][idx].field_1:
                mem[_57] = _63
                mem[_57 + 32] = stor4[address(arg1)][idx].field_256
                mem[_57 + 64] = stor4[address(arg1)][idx].field_512
                mem[_57 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_63 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_57] = _63
                mem[_57 + 32] = stor4[address(arg1)][idx].field_256
                mem[_57 + 64] = stor4[address(arg1)][idx].field_512
                mem[_57 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _57
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
            mem[_57] = _63
            mem[_57 + 32] = stor4[address(arg1)][u].field_256
            mem[_57 + 64] = stor4[address(arg1)][u].field_512
            mem[_57 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _57
            t = t + 32
            u = u + 1
            continue 
        if not stor4[address(arg1)][idx].field_0 - (stor4[address(arg1)][idx].field_1 < 32):
            revert with 0, 34
        _68 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
        mem[_68] = stor4[address(arg1)][idx].field_1
        if stor4[address(arg1)][idx].field_0:
            if not stor4[address(arg1)][idx].field_0 - (uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32):
                revert with 0, 34
            if not Mask(256, -1, stor4[address(arg1)][idx].field_0):
                mem[_57] = _68
                mem[_57 + 32] = stor4[address(arg1)][idx].field_256
                mem[_57 + 64] = stor4[address(arg1)][idx].field_512
                mem[_57 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                mem[_68 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_57] = _68
                mem[_57 + 32] = stor4[address(arg1)][idx].field_256
                mem[_57 + 64] = stor4[address(arg1)][idx].field_512
                mem[_57 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_68 + 32] = stor4[address(arg1)][idx].field_0
            t = _68 + 32
            u = sha3(mem[0])
            while _68 + (uint255(stor4[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_57] = _68
            mem[_57 + 32] = stor4[address(arg1)][u].field_256
            mem[_57 + 64] = stor4[address(arg1)][u].field_512
            mem[_57 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _57
            t = t + 32
            u = u + 1
            continue 
        if not stor4[address(arg1)][idx].field_0 - (stor4[address(arg1)][idx].field_1 < 32):
            revert with 0, 34
        if stor4[address(arg1)][idx].field_1:
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_68 + 32] = 256 * stor4[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_68 + 32] = stor4[address(arg1)][idx].field_0
                t = _68 + 32
                u = sha3(mem[0])
                while _68 + stor4[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_57] = _68
        mem[_57 + 32] = stor4[address(arg1)][idx].field_256
        mem[_57 + 64] = stor4[address(arg1)][idx].field_512
        mem[_57 + 96] = stor4[address(arg1)][idx].field_768
        mem[s] = _57
        s = s + 32
        idx = idx + 1
        continue 
    _54 = mem[ceil32(return_data.size) + 96]
    _55 = mem[64]
    mem[64] = mem[64] + 128
    mem[_55] = 96
    mem[_55 + 32] = 0
    mem[_55 + 64] = 0
    mem[_55 + 96] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    _60 = mem[mem[ceil32(return_data.size) + 128]]
    _61 = mem[64]
    mem[64] = mem[64] + 64
    mem[_61] = 1
    mem[_61 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = _60
    t = _55
    while idx < _54:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _101 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _102 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
        _103 = mem[64]
        _105 = mem[s]
        t = 0
        while t < _105:
            mem[t + _103 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_105) <= _105:
            _132 = mem[_61]
            s = 0
            while s < _132:
                mem[s + _103 + _105 + 32] = mem[s + _61 + 32]
                s = s + 32
                continue 
            if ceil32(_132) <= _132:
                _156 = mem[_102]
                s = 0
                while s < _156:
                    mem[s + _103 + _105 + _132 + 32] = mem[s + _102 + 32]
                    s = s + 32
                    continue 
                if ceil32(_156) <= _156:
                    _176 = mem[64]
                    mem[mem[64]] = _156 + _103 + _105 + _132 - mem[64]
                    mem[64] = _156 + _103 + _105 + _132 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _176
                    t = _101
                    continue 
                mem[_103 + _105 + _132 + _156 + 32] = 0
                _180 = mem[64]
                mem[mem[64]] = _156 + _103 + _105 + _132 - mem[64]
                mem[64] = _156 + _103 + _105 + _132 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                s = _180
                t = _101
                continue 
            mem[_103 + _105 + _132 + 32] = 0
            _158 = mem[_102]
            s = 0
            while s < _158:
                mem[s + _103 + _105 + _132 + 32] = mem[s + _102 + 32]
                s = s + 32
                continue 
            if ceil32(_158) <= _158:
                _177 = mem[64]
                mem[mem[64]] = _158 + _103 + _105 + _132 - mem[64]
                mem[64] = _158 + _103 + _105 + _132 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                s = _177
                t = _101
                continue 
            mem[_103 + _105 + _132 + _158 + 32] = 0
            _181 = mem[64]
            mem[mem[64]] = _158 + _103 + _105 + _132 - mem[64]
            mem[64] = _158 + _103 + _105 + _132 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            s = _181
            t = _101
            continue 
        mem[_103 + _105 + 32] = 0
        _134 = mem[_61]
        s = 0
        while s < _134:
            mem[s + _103 + _105 + 32] = mem[s + _61 + 32]
            s = s + 32
            continue 
        if ceil32(_134) <= _134:
            _157 = mem[_102]
            s = 0
            while s < _157:
                mem[s + _103 + _105 + _134 + 32] = mem[s + _102 + 32]
                s = s + 32
                continue 
            if ceil32(_157) <= _157:
                _178 = mem[64]
                mem[mem[64]] = _157 + _103 + _105 + _134 - mem[64]
                mem[64] = _157 + _103 + _105 + _134 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                s = _178
                t = _101
                continue 
            mem[_103 + _105 + _134 + _157 + 32] = 0
            _182 = mem[64]
            mem[mem[64]] = _157 + _103 + _105 + _134 - mem[64]
            mem[64] = _157 + _103 + _105 + _134 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            s = _182
            t = _101
            continue 
        mem[_103 + _105 + _134 + 32] = 0
        _159 = mem[_102]
        s = 0
        while s < _159:
            mem[s + _103 + _105 + _134 + 32] = mem[s + _102 + 32]
            s = s + 32
            continue 
        if ceil32(_159) <= _159:
            _179 = mem[64]
            mem[mem[64]] = _159 + _103 + _105 + _134 - mem[64]
            mem[64] = _159 + _103 + _105 + _134 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            s = _179
            t = _101
            continue 
        mem[_103 + _105 + _134 + _159 + 32] = 0
        _183 = mem[64]
        mem[mem[64]] = _159 + _103 + _105 + _134 - mem[64]
        mem[64] = _159 + _103 + _105 + _134 + 32
        if not idx + 1:
            revert with 0, 17
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
    delegate 0xd9145cce52d386f254917e481eb44e9943f39138.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        _141 = mem[64]
        mem[64] = mem[64] + 128
        if stor4[address(arg1)][idx].field_0:
            if not stor4[address(arg1)][idx].field_0 - (uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32):
                revert with 0, 34
            _146 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_146] = uint255(stor4[address(arg1)][idx].field_0) * 0.5
            if stor4[address(arg1)][idx].field_0:
                if not stor4[address(arg1)][idx].field_0 - (uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor4[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                        mem[_146 + 32] = 256 * stor4[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_146 + 32] = stor4[address(arg1)][idx].field_0
                        t = _146 + 32
                        u = sha3(mem[0])
                        while _146 + (uint255(stor4[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_141] = _146
                mem[_141 + 32] = stor4[address(arg1)][idx].field_256
                mem[_141 + 64] = stor4[address(arg1)][idx].field_512
                mem[_141 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _141
                s = s + 32
                idx = idx + 1
                continue 
            if not stor4[address(arg1)][idx].field_0 - (stor4[address(arg1)][idx].field_1 < 32):
                revert with 0, 34
            if not stor4[address(arg1)][idx].field_1:
                mem[_141] = _146
                mem[_141 + 32] = stor4[address(arg1)][idx].field_256
                mem[_141 + 64] = stor4[address(arg1)][idx].field_512
                mem[_141 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _141
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_146 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_141] = _146
                mem[_141 + 32] = stor4[address(arg1)][idx].field_256
                mem[_141 + 64] = stor4[address(arg1)][idx].field_512
                mem[_141 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _141
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_146 + 32] = stor4[address(arg1)][idx].field_0
            t = _146 + 32
            u = sha3(mem[0])
            while _146 + stor4[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_141] = _146
            mem[_141 + 32] = stor4[address(arg1)][u].field_256
            mem[_141 + 64] = stor4[address(arg1)][u].field_512
            mem[_141 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _141
            t = t + 32
            u = u + 1
            continue 
        if not stor4[address(arg1)][idx].field_0 - (stor4[address(arg1)][idx].field_1 < 32):
            revert with 0, 34
        _148 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
        mem[_148] = stor4[address(arg1)][idx].field_1
        if stor4[address(arg1)][idx].field_0:
            if not stor4[address(arg1)][idx].field_0 - (uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32):
                revert with 0, 34
            if not Mask(256, -1, stor4[address(arg1)][idx].field_0):
                mem[_141] = _148
                mem[_141 + 32] = stor4[address(arg1)][idx].field_256
                mem[_141 + 64] = stor4[address(arg1)][idx].field_512
                mem[_141 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _141
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                mem[_148 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_141] = _148
                mem[_141 + 32] = stor4[address(arg1)][idx].field_256
                mem[_141 + 64] = stor4[address(arg1)][idx].field_512
                mem[_141 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _141
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_148 + 32] = stor4[address(arg1)][idx].field_0
            t = _148 + 32
            u = sha3(mem[0])
            while _148 + (uint255(stor4[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_141] = _148
            mem[_141 + 32] = stor4[address(arg1)][u].field_256
            mem[_141 + 64] = stor4[address(arg1)][u].field_512
            mem[_141 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _141
            t = t + 32
            u = u + 1
            continue 
        if not stor4[address(arg1)][idx].field_0 - (stor4[address(arg1)][idx].field_1 < 32):
            revert with 0, 34
        if stor4[address(arg1)][idx].field_1:
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_148 + 32] = 256 * stor4[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_148 + 32] = stor4[address(arg1)][idx].field_0
                t = _148 + 32
                u = sha3(mem[0])
                while _148 + stor4[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_141] = _148
        mem[_141 + 32] = stor4[address(arg1)][idx].field_256
        mem[_141 + 64] = stor4[address(arg1)][idx].field_512
        mem[_141 + 96] = stor4[address(arg1)][idx].field_768
        mem[s] = _141
        s = s + 32
        idx = idx + 1
        continue 
    _138 = mem[ceil32(return_data.size) + 96]
    _139 = mem[64]
    mem[64] = mem[64] + 128
    mem[_139] = 96
    mem[_139 + 32] = 0
    mem[_139 + 64] = 0
    mem[_139 + 96] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    _144 = mem[mem[ceil32(return_data.size) + 128] + 32]
    if not -mem[mem[ceil32(return_data.size) + 128] + 32]:
        _145 = mem[64]
        mem[64] = mem[64] + 64
        mem[_145] = 1
        mem[_145 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _147 = mem[64]
        mem[64] = mem[64] + 64
        mem[_147] = 1
        mem[_147 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _145
        t = _139
        while idx < _138:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _270 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _271 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            if not -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                _273 = mem[64]
                mem[64] = mem[64] + 64
                mem[_273] = 1
                mem[_273 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _274 = mem[64]
                _277 = mem[s]
                t = 0
                while t < _277:
                    mem[t + _274 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_277) <= _277:
                    _445 = mem[_147]
                    s = 0
                    while s < _445:
                        mem[s + _274 + _277 + 32] = mem[s + _147 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_445) <= _445:
                        _645 = mem[_273]
                        s = 0
                        while s < _645:
                            mem[s + _274 + _277 + _445 + 32] = mem[s + _273 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_645) <= _645:
                            _829 = mem[64]
                            mem[mem[64]] = _645 + _274 + _277 + _445 - mem[64]
                            mem[64] = _645 + _274 + _277 + _445 + 32
                            if not idx + 1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _829
                            t = _270
                            continue 
                        mem[_274 + _277 + _445 + _645 + 32] = 0
                        _835 = mem[64]
                        mem[mem[64]] = _645 + _274 + _277 + _445 - mem[64]
                        mem[64] = _645 + _274 + _277 + _445 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _835
                        t = _270
                        continue 
                    mem[_274 + _277 + _445 + 32] = 0
                    _649 = mem[_273]
                    s = 0
                    while s < _649:
                        mem[s + _274 + _277 + _445 + 32] = mem[s + _273 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_649) <= _649:
                        _830 = mem[64]
                        mem[mem[64]] = _649 + _274 + _277 + _445 - mem[64]
                        mem[64] = _649 + _274 + _277 + _445 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _830
                        t = _270
                        continue 
                    mem[_274 + _277 + _445 + _649 + 32] = 0
                    _836 = mem[64]
                    mem[mem[64]] = _649 + _274 + _277 + _445 - mem[64]
                    mem[64] = _649 + _274 + _277 + _445 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _836
                    t = _270
                    continue 
                mem[_274 + _277 + 32] = 0
                _449 = mem[_147]
                s = 0
                while s < _449:
                    mem[s + _274 + _277 + 32] = mem[s + _147 + 32]
                    s = s + 32
                    continue 
                if ceil32(_449) <= _449:
                    _646 = mem[_273]
                    s = 0
                    while s < _646:
                        mem[s + _274 + _277 + _449 + 32] = mem[s + _273 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_646) <= _646:
                        _831 = mem[64]
                        mem[mem[64]] = _646 + _274 + _277 + _449 - mem[64]
                        mem[64] = _646 + _274 + _277 + _449 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _831
                        t = _270
                        continue 
                    mem[_274 + _277 + _449 + _646 + 32] = 0
                    _837 = mem[64]
                    mem[mem[64]] = _646 + _274 + _277 + _449 - mem[64]
                    mem[64] = _646 + _274 + _277 + _449 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _837
                    t = _270
                    continue 
                mem[_274 + _277 + _449 + 32] = 0
                _650 = mem[_273]
                s = 0
                while s < _650:
                    mem[s + _274 + _277 + _449 + 32] = mem[s + _273 + 32]
                    s = s + 32
                    continue 
                if ceil32(_650) <= _650:
                    _832 = mem[64]
                    mem[mem[64]] = _650 + _274 + _277 + _449 - mem[64]
                    mem[64] = _650 + _274 + _277 + _449 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _832
                    t = _270
                    continue 
                mem[_274 + _277 + _449 + _650 + 32] = 0
                _838 = mem[64]
                mem[mem[64]] = _650 + _274 + _277 + _449 - mem[64]
                mem[64] = _650 + _274 + _277 + _449 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                s = _838
                t = _270
                continue 
            u = 0
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            while t:
                if not u + 1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _444 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _271
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_444]:
                        revert with 0, 50
                    mem[v + _444 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _639 = mem[64]
                _643 = mem[s]
                t = 0
                while t < _643:
                    mem[t + _639 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_643) <= _643:
                    _821 = mem[_147]
                    s = 0
                    while s < _821:
                        mem[s + _639 + _643 + 32] = mem[s + _147 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_821) <= _821:
                        _1027 = mem[_444]
                        s = 0
                        while s < _1027:
                            mem[s + _639 + _643 + _821 + 32] = mem[s + _444 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1027) <= _1027:
                            _1211 = mem[64]
                            mem[mem[64]] = _1027 + _639 + _643 + _821 - mem[64]
                            mem[64] = _1027 + _639 + _643 + _821 + 32
                            if not idx + 1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1211
                            t = _270
                            continue 
                        mem[_639 + _643 + _821 + _1027 + 32] = 0
                        _1227 = mem[64]
                        mem[mem[64]] = _1027 + _639 + _643 + _821 - mem[64]
                        mem[64] = _1027 + _639 + _643 + _821 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1227
                        t = _270
                        continue 
                    mem[_639 + _643 + _821 + 32] = 0
                    _1035 = mem[_444]
                    s = 0
                    while s < _1035:
                        mem[s + _639 + _643 + _821 + 32] = mem[s + _444 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1035) <= _1035:
                        _1212 = mem[64]
                        mem[mem[64]] = _1035 + _639 + _643 + _821 - mem[64]
                        mem[64] = _1035 + _639 + _643 + _821 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1212
                        t = _270
                        continue 
                    mem[_639 + _643 + _821 + _1035 + 32] = 0
                    _1228 = mem[64]
                    mem[mem[64]] = _1035 + _639 + _643 + _821 - mem[64]
                    mem[64] = _1035 + _639 + _643 + _821 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1228
                    t = _270
                    continue 
                mem[_639 + _643 + 32] = 0
                _827 = mem[_147]
                s = 0
                while s < _827:
                    mem[s + _639 + _643 + 32] = mem[s + _147 + 32]
                    s = s + 32
                    continue 
                if ceil32(_827) <= _827:
                    _1028 = mem[_444]
                    s = 0
                    while s < _1028:
                        mem[s + _639 + _643 + _827 + 32] = mem[s + _444 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1028) <= _1028:
                        _1213 = mem[64]
                        mem[mem[64]] = _1028 + _639 + _643 + _827 - mem[64]
                        mem[64] = _1028 + _639 + _643 + _827 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1213
                        t = _270
                        continue 
                    mem[_639 + _643 + _827 + _1028 + 32] = 0
                    _1229 = mem[64]
                    mem[mem[64]] = _1028 + _639 + _643 + _827 - mem[64]
                    mem[64] = _1028 + _639 + _643 + _827 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1229
                    t = _270
                    continue 
                mem[_639 + _643 + _827 + 32] = 0
                _1036 = mem[_444]
                s = 0
                while s < _1036:
                    mem[s + _639 + _643 + _827 + 32] = mem[s + _444 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1036) <= _1036:
                    _1214 = mem[64]
                    mem[mem[64]] = _1036 + _639 + _643 + _827 - mem[64]
                    mem[64] = _1036 + _639 + _643 + _827 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1214
                    t = _270
                    continue 
                mem[_639 + _643 + _827 + _1036 + 32] = 0
                _1230 = mem[64]
                mem[mem[64]] = _1036 + _639 + _643 + _827 - mem[64]
                mem[64] = _1036 + _639 + _643 + _827 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                s = _1230
                t = _270
                continue 
            mem[_444 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _271
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_444]:
                    revert with 0, 50
                mem[v + _444 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _640 = mem[64]
            _644 = mem[s]
            t = 0
            while t < _644:
                mem[t + _640 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_644) <= _644:
                _822 = mem[_147]
                s = 0
                while s < _822:
                    mem[s + _640 + _644 + 32] = mem[s + _147 + 32]
                    s = s + 32
                    continue 
                if ceil32(_822) <= _822:
                    _1029 = mem[_444]
                    s = 0
                    while s < _1029:
                        mem[s + _640 + _644 + _822 + 32] = mem[s + _444 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1029) <= _1029:
                        _1215 = mem[64]
                        mem[mem[64]] = _1029 + _640 + _644 + _822 - mem[64]
                        mem[64] = _1029 + _640 + _644 + _822 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1215
                        t = _270
                        continue 
                    mem[_640 + _644 + _822 + _1029 + 32] = 0
                    _1231 = mem[64]
                    mem[mem[64]] = _1029 + _640 + _644 + _822 - mem[64]
                    mem[64] = _1029 + _640 + _644 + _822 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1231
                    t = _270
                    continue 
                mem[_640 + _644 + _822 + 32] = 0
                _1037 = mem[_444]
                s = 0
                while s < _1037:
                    mem[s + _640 + _644 + _822 + 32] = mem[s + _444 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1037) <= _1037:
                    _1216 = mem[64]
                    mem[mem[64]] = _1037 + _640 + _644 + _822 - mem[64]
                    mem[64] = _1037 + _640 + _644 + _822 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1216
                    t = _270
                    continue 
                mem[_640 + _644 + _822 + _1037 + 32] = 0
                _1232 = mem[64]
                mem[mem[64]] = _1037 + _640 + _644 + _822 - mem[64]
                mem[64] = _1037 + _640 + _644 + _822 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                s = _1232
                t = _270
                continue 
            mem[_640 + _644 + 32] = 0
            _828 = mem[_147]
            s = 0
            while s < _828:
                mem[s + _640 + _644 + 32] = mem[s + _147 + 32]
                s = s + 32
                continue 
            if ceil32(_828) <= _828:
                _1030 = mem[_444]
                s = 0
                while s < _1030:
                    mem[s + _640 + _644 + _828 + 32] = mem[s + _444 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1030) <= _1030:
                    _1217 = mem[64]
                    mem[mem[64]] = _1030 + _640 + _644 + _828 - mem[64]
                    mem[64] = _1030 + _640 + _644 + _828 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1217
                    t = _270
                    continue 
                mem[_640 + _644 + _828 + _1030 + 32] = 0
                _1233 = mem[64]
                mem[mem[64]] = _1030 + _640 + _644 + _828 - mem[64]
                mem[64] = _1030 + _640 + _644 + _828 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                s = _1233
                t = _270
                continue 
            mem[_640 + _644 + _828 + 32] = 0
            _1038 = mem[_444]
            s = 0
            while s < _1038:
                mem[s + _640 + _644 + _828 + 32] = mem[s + _444 + 32]
                s = s + 32
                continue 
            if ceil32(_1038) <= _1038:
                _1218 = mem[64]
                mem[mem[64]] = _1038 + _640 + _644 + _828 - mem[64]
                mem[64] = _1038 + _640 + _644 + _828 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                s = _1218
                t = _270
                continue 
            mem[_640 + _644 + _828 + _1038 + 32] = 0
            _1234 = mem[64]
            mem[mem[64]] = _1038 + _640 + _644 + _828 - mem[64]
            mem[64] = _1038 + _640 + _644 + _828 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            s = _1234
            t = _270
            continue 
        mem[mem[64]] = 32
        _272 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_272)] = mem[s + 32 len ceil32(_272)]
        if ceil32(_272) > _272:
            mem[mem[64] + _272 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_272) + 32]
    u = 0
    t = mem[mem[ceil32(return_data.size) + 128] + 32]
    while t:
        if not u + 1:
            revert with 0, 17
        u = u + 1
        t = t / 10
        continue 
    if u > test266151307():
        revert with 0, 65
    _268 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _144
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_268]:
                revert with 0, 50
            mem[s + _268 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        _442 = mem[64]
        mem[64] = mem[64] + 64
        mem[_442] = 1
        mem[_442 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        t = _268
        u = _139
        while idx < _138:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _634 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _635 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            if not -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                _647 = mem[64]
                mem[64] = mem[64] + 64
                mem[_647] = 1
                mem[_647 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _651 = mem[64]
                _654 = mem[t]
                u = 0
                while u < _654:
                    mem[u + _651 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_654) <= _654:
                    _819 = mem[_442]
                    t = 0
                    while t < _819:
                        mem[t + _651 + _654 + 32] = mem[t + _442 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_819) <= _819:
                        _1021 = mem[_647]
                        s = 0
                        while s < _1021:
                            mem[s + _651 + _654 + _819 + 32] = mem[s + _647 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1021) <= _1021:
                            _1201 = mem[64]
                            mem[mem[64]] = _1021 + _651 + _654 + _819 - mem[64]
                            mem[64] = _1021 + _651 + _654 + _819 + 32
                            if not idx + 1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1201
                            u = _634
                            continue 
                        mem[_651 + _654 + _819 + _1021 + 32] = 0
                        _1219 = mem[64]
                        mem[mem[64]] = _1021 + _651 + _654 + _819 - mem[64]
                        mem[64] = _1021 + _651 + _654 + _819 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1219
                        u = _634
                        continue 
                    mem[_651 + _654 + _819 + 32] = 0
                    _1031 = mem[_647]
                    s = 0
                    while s < _1031:
                        mem[s + _651 + _654 + _819 + 32] = mem[s + _647 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1031) <= _1031:
                        _1202 = mem[64]
                        mem[mem[64]] = _1031 + _651 + _654 + _819 - mem[64]
                        mem[64] = _1031 + _651 + _654 + _819 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1202
                        u = _634
                        continue 
                    mem[_651 + _654 + _819 + _1031 + 32] = 0
                    _1220 = mem[64]
                    mem[mem[64]] = _1031 + _651 + _654 + _819 - mem[64]
                    mem[64] = _1031 + _651 + _654 + _819 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1220
                    u = _634
                    continue 
                mem[_651 + _654 + 32] = 0
                _824 = mem[_442]
                s = 0
                while s < _824:
                    mem[s + _651 + _654 + 32] = mem[s + _442 + 32]
                    s = s + 32
                    continue 
                if ceil32(_824) <= _824:
                    _1022 = mem[_647]
                    s = 0
                    while s < _1022:
                        mem[s + _651 + _654 + _824 + 32] = mem[s + _647 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1022) <= _1022:
                        _1203 = mem[64]
                        mem[mem[64]] = _1022 + _651 + _654 + _824 - mem[64]
                        mem[64] = _1022 + _651 + _654 + _824 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1203
                        u = _634
                        continue 
                    mem[_651 + _654 + _824 + _1022 + 32] = 0
                    _1221 = mem[64]
                    mem[mem[64]] = _1022 + _651 + _654 + _824 - mem[64]
                    mem[64] = _1022 + _651 + _654 + _824 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1221
                    u = _634
                    continue 
                mem[_651 + _654 + _824 + 32] = 0
                _1032 = mem[_647]
                s = 0
                while s < _1032:
                    mem[s + _651 + _654 + _824 + 32] = mem[s + _647 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1032) <= _1032:
                    _1204 = mem[64]
                    mem[mem[64]] = _1032 + _651 + _654 + _824 - mem[64]
                    mem[64] = _1032 + _651 + _654 + _824 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1204
                    u = _634
                    continue 
                mem[_651 + _654 + _824 + _1032 + 32] = 0
                _1222 = mem[64]
                mem[mem[64]] = _1032 + _651 + _654 + _824 - mem[64]
                mem[64] = _1032 + _651 + _654 + _824 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1222
                u = _634
                continue 
            u = 0
            s = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            while s:
                if not u + 1:
                    revert with 0, 17
                u = u + 1
                s = s / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _817 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                s = _635
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_817]:
                        revert with 0, 50
                    mem[v + _817 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _1015 = mem[64]
                _1019 = mem[t]
                s = 0
                while s < _1019:
                    mem[s + _1015 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_1019) <= _1019:
                    _1195 = mem[_442]
                    s = 0
                    while s < _1195:
                        mem[s + _1015 + _1019 + 32] = mem[s + _442 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1195) <= _1195:
                        _1315 = mem[_817]
                        s = 0
                        while s < _1315:
                            mem[s + _1015 + _1019 + _1195 + 32] = mem[s + _817 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1315) <= _1315:
                            _1395 = mem[64]
                            mem[mem[64]] = _1315 + _1015 + _1019 + _1195 - mem[64]
                            mem[64] = _1315 + _1015 + _1019 + _1195 + 32
                            if not idx + 1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1395
                            u = _634
                            continue 
                        mem[_1015 + _1019 + _1195 + _1315 + 32] = 0
                        _1411 = mem[64]
                        mem[mem[64]] = _1315 + _1015 + _1019 + _1195 - mem[64]
                        mem[64] = _1315 + _1015 + _1019 + _1195 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1411
                        u = _634
                        continue 
                    mem[_1015 + _1019 + _1195 + 32] = 0
                    _1323 = mem[_817]
                    s = 0
                    while s < _1323:
                        mem[s + _1015 + _1019 + _1195 + 32] = mem[s + _817 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1323) <= _1323:
                        _1396 = mem[64]
                        mem[mem[64]] = _1323 + _1015 + _1019 + _1195 - mem[64]
                        mem[64] = _1323 + _1015 + _1019 + _1195 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1396
                        u = _634
                        continue 
                    mem[_1015 + _1019 + _1195 + _1323 + 32] = 0
                    _1412 = mem[64]
                    mem[mem[64]] = _1323 + _1015 + _1019 + _1195 - mem[64]
                    mem[64] = _1323 + _1015 + _1019 + _1195 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1412
                    u = _634
                    continue 
                mem[_1015 + _1019 + 32] = 0
                _1199 = mem[_442]
                s = 0
                while s < _1199:
                    mem[s + _1015 + _1019 + 32] = mem[s + _442 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1199) <= _1199:
                    _1316 = mem[_817]
                    s = 0
                    while s < _1316:
                        mem[s + _1015 + _1019 + _1199 + 32] = mem[s + _817 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1316) <= _1316:
                        _1397 = mem[64]
                        mem[mem[64]] = _1316 + _1015 + _1019 + _1199 - mem[64]
                        mem[64] = _1316 + _1015 + _1019 + _1199 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1397
                        u = _634
                        continue 
                    mem[_1015 + _1019 + _1199 + _1316 + 32] = 0
                    _1413 = mem[64]
                    mem[mem[64]] = _1316 + _1015 + _1019 + _1199 - mem[64]
                    mem[64] = _1316 + _1015 + _1019 + _1199 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1413
                    u = _634
                    continue 
                mem[_1015 + _1019 + _1199 + 32] = 0
                _1324 = mem[_817]
                s = 0
                while s < _1324:
                    mem[s + _1015 + _1019 + _1199 + 32] = mem[s + _817 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1324) <= _1324:
                    _1398 = mem[64]
                    mem[mem[64]] = _1324 + _1015 + _1019 + _1199 - mem[64]
                    mem[64] = _1324 + _1015 + _1019 + _1199 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1398
                    u = _634
                    continue 
                mem[_1015 + _1019 + _1199 + _1324 + 32] = 0
                _1414 = mem[64]
                mem[mem[64]] = _1324 + _1015 + _1019 + _1199 - mem[64]
                mem[64] = _1324 + _1015 + _1019 + _1199 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1414
                u = _634
                continue 
            mem[_817 + 32 len u] = call.data[calldata.size len u]
            v = u
            s = _635
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_817]:
                    revert with 0, 50
                mem[v + _817 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _1016 = mem[64]
            _1020 = mem[t]
            s = 0
            while s < _1020:
                mem[s + _1016 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_1020) <= _1020:
                _1196 = mem[_442]
                s = 0
                while s < _1196:
                    mem[s + _1016 + _1020 + 32] = mem[s + _442 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1196) <= _1196:
                    _1317 = mem[_817]
                    s = 0
                    while s < _1317:
                        mem[s + _1016 + _1020 + _1196 + 32] = mem[s + _817 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1317) <= _1317:
                        _1399 = mem[64]
                        mem[mem[64]] = _1317 + _1016 + _1020 + _1196 - mem[64]
                        mem[64] = _1317 + _1016 + _1020 + _1196 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1399
                        u = _634
                        continue 
                    mem[_1016 + _1020 + _1196 + _1317 + 32] = 0
                    _1415 = mem[64]
                    mem[mem[64]] = _1317 + _1016 + _1020 + _1196 - mem[64]
                    mem[64] = _1317 + _1016 + _1020 + _1196 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1415
                    u = _634
                    continue 
                mem[_1016 + _1020 + _1196 + 32] = 0
                _1325 = mem[_817]
                s = 0
                while s < _1325:
                    mem[s + _1016 + _1020 + _1196 + 32] = mem[s + _817 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1325) <= _1325:
                    _1400 = mem[64]
                    mem[mem[64]] = _1325 + _1016 + _1020 + _1196 - mem[64]
                    mem[64] = _1325 + _1016 + _1020 + _1196 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1400
                    u = _634
                    continue 
                mem[_1016 + _1020 + _1196 + _1325 + 32] = 0
                _1416 = mem[64]
                mem[mem[64]] = _1325 + _1016 + _1020 + _1196 - mem[64]
                mem[64] = _1325 + _1016 + _1020 + _1196 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1416
                u = _634
                continue 
            mem[_1016 + _1020 + 32] = 0
            _1200 = mem[_442]
            s = 0
            while s < _1200:
                mem[s + _1016 + _1020 + 32] = mem[s + _442 + 32]
                s = s + 32
                continue 
            if ceil32(_1200) <= _1200:
                _1318 = mem[_817]
                s = 0
                while s < _1318:
                    mem[s + _1016 + _1020 + _1200 + 32] = mem[s + _817 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1318) <= _1318:
                    _1401 = mem[64]
                    mem[mem[64]] = _1318 + _1016 + _1020 + _1200 - mem[64]
                    mem[64] = _1318 + _1016 + _1020 + _1200 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1401
                    u = _634
                    continue 
                mem[_1016 + _1020 + _1200 + _1318 + 32] = 0
                _1417 = mem[64]
                mem[mem[64]] = _1318 + _1016 + _1020 + _1200 - mem[64]
                mem[64] = _1318 + _1016 + _1020 + _1200 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1417
                u = _634
                continue 
            mem[_1016 + _1020 + _1200 + 32] = 0
            _1326 = mem[_817]
            s = 0
            while s < _1326:
                mem[s + _1016 + _1020 + _1200 + 32] = mem[s + _817 + 32]
                s = s + 32
                continue 
            if ceil32(_1326) <= _1326:
                _1402 = mem[64]
                mem[mem[64]] = _1326 + _1016 + _1020 + _1200 - mem[64]
                mem[64] = _1326 + _1016 + _1020 + _1200 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1402
                u = _634
                continue 
            mem[_1016 + _1020 + _1200 + _1326 + 32] = 0
            _1418 = mem[64]
            mem[mem[64]] = _1326 + _1016 + _1020 + _1200 - mem[64]
            mem[64] = _1326 + _1016 + _1020 + _1200 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            t = _1418
            u = _634
            continue 
        mem[mem[64]] = 32
        _641 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_641)] = mem[t + 32 len ceil32(_641)]
        if ceil32(_641) > _641:
            mem[mem[64] + _641 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_641) + 32]
    mem[_268 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _144
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_268]:
            revert with 0, 50
        mem[s + _268 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    _443 = mem[64]
    mem[64] = mem[64] + 64
    mem[_443] = 1
    mem[_443 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    t = _268
    u = _139
    while idx < _138:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _637 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _638 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
        if not -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
            _648 = mem[64]
            mem[64] = mem[64] + 64
            mem[_648] = 1
            mem[_648 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _652 = mem[64]
            _656 = mem[t]
            u = 0
            while u < _656:
                mem[u + _652 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_656) <= _656:
                _820 = mem[_443]
                t = 0
                while t < _820:
                    mem[t + _652 + _656 + 32] = mem[t + _443 + 32]
                    t = t + 32
                    continue 
                if ceil32(_820) <= _820:
                    _1025 = mem[_648]
                    s = 0
                    while s < _1025:
                        mem[s + _652 + _656 + _820 + 32] = mem[s + _648 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1025) <= _1025:
                        _1207 = mem[64]
                        mem[mem[64]] = _1025 + _652 + _656 + _820 - mem[64]
                        mem[64] = _1025 + _652 + _656 + _820 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1207
                        u = _637
                        continue 
                    mem[_652 + _656 + _820 + _1025 + 32] = 0
                    _1223 = mem[64]
                    mem[mem[64]] = _1025 + _652 + _656 + _820 - mem[64]
                    mem[64] = _1025 + _652 + _656 + _820 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1223
                    u = _637
                    continue 
                mem[_652 + _656 + _820 + 32] = 0
                _1033 = mem[_648]
                s = 0
                while s < _1033:
                    mem[s + _652 + _656 + _820 + 32] = mem[s + _648 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1033) <= _1033:
                    _1208 = mem[64]
                    mem[mem[64]] = _1033 + _652 + _656 + _820 - mem[64]
                    mem[64] = _1033 + _652 + _656 + _820 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1208
                    u = _637
                    continue 
                mem[_652 + _656 + _820 + _1033 + 32] = 0
                _1224 = mem[64]
                mem[mem[64]] = _1033 + _652 + _656 + _820 - mem[64]
                mem[64] = _1033 + _652 + _656 + _820 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1224
                u = _637
                continue 
            mem[_652 + _656 + 32] = 0
            _826 = mem[_443]
            s = 0
            while s < _826:
                mem[s + _652 + _656 + 32] = mem[s + _443 + 32]
                s = s + 32
                continue 
            if ceil32(_826) <= _826:
                _1026 = mem[_648]
                s = 0
                while s < _1026:
                    mem[s + _652 + _656 + _826 + 32] = mem[s + _648 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1026) <= _1026:
                    _1209 = mem[64]
                    mem[mem[64]] = _1026 + _652 + _656 + _826 - mem[64]
                    mem[64] = _1026 + _652 + _656 + _826 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1209
                    u = _637
                    continue 
                mem[_652 + _656 + _826 + _1026 + 32] = 0
                _1225 = mem[64]
                mem[mem[64]] = _1026 + _652 + _656 + _826 - mem[64]
                mem[64] = _1026 + _652 + _656 + _826 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1225
                u = _637
                continue 
            mem[_652 + _656 + _826 + 32] = 0
            _1034 = mem[_648]
            s = 0
            while s < _1034:
                mem[s + _652 + _656 + _826 + 32] = mem[s + _648 + 32]
                s = s + 32
                continue 
            if ceil32(_1034) <= _1034:
                _1210 = mem[64]
                mem[mem[64]] = _1034 + _652 + _656 + _826 - mem[64]
                mem[64] = _1034 + _652 + _656 + _826 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1210
                u = _637
                continue 
            mem[_652 + _656 + _826 + _1034 + 32] = 0
            _1226 = mem[64]
            mem[mem[64]] = _1034 + _652 + _656 + _826 - mem[64]
            mem[64] = _1034 + _652 + _656 + _826 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            t = _1226
            u = _637
            continue 
        u = 0
        s = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
        while s:
            if not u + 1:
                revert with 0, 17
            u = u + 1
            s = s / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _818 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            s = _638
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_818]:
                    revert with 0, 50
                mem[v + _818 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _1017 = mem[64]
            _1023 = mem[t]
            s = 0
            while s < _1023:
                mem[s + _1017 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_1023) <= _1023:
                _1197 = mem[_443]
                s = 0
                while s < _1197:
                    mem[s + _1017 + _1023 + 32] = mem[s + _443 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1197) <= _1197:
                    _1319 = mem[_818]
                    s = 0
                    while s < _1319:
                        mem[s + _1017 + _1023 + _1197 + 32] = mem[s + _818 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1319) <= _1319:
                        _1403 = mem[64]
                        mem[mem[64]] = _1319 + _1017 + _1023 + _1197 - mem[64]
                        mem[64] = _1319 + _1017 + _1023 + _1197 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1403
                        u = _637
                        continue 
                    mem[_1017 + _1023 + _1197 + _1319 + 32] = 0
                    _1419 = mem[64]
                    mem[mem[64]] = _1319 + _1017 + _1023 + _1197 - mem[64]
                    mem[64] = _1319 + _1017 + _1023 + _1197 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1419
                    u = _637
                    continue 
                mem[_1017 + _1023 + _1197 + 32] = 0
                _1327 = mem[_818]
                s = 0
                while s < _1327:
                    mem[s + _1017 + _1023 + _1197 + 32] = mem[s + _818 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1327) <= _1327:
                    _1404 = mem[64]
                    mem[mem[64]] = _1327 + _1017 + _1023 + _1197 - mem[64]
                    mem[64] = _1327 + _1017 + _1023 + _1197 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1404
                    u = _637
                    continue 
                mem[_1017 + _1023 + _1197 + _1327 + 32] = 0
                _1420 = mem[64]
                mem[mem[64]] = _1327 + _1017 + _1023 + _1197 - mem[64]
                mem[64] = _1327 + _1017 + _1023 + _1197 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1420
                u = _637
                continue 
            mem[_1017 + _1023 + 32] = 0
            _1205 = mem[_443]
            s = 0
            while s < _1205:
                mem[s + _1017 + _1023 + 32] = mem[s + _443 + 32]
                s = s + 32
                continue 
            if ceil32(_1205) <= _1205:
                _1320 = mem[_818]
                s = 0
                while s < _1320:
                    mem[s + _1017 + _1023 + _1205 + 32] = mem[s + _818 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1320) <= _1320:
                    _1405 = mem[64]
                    mem[mem[64]] = _1320 + _1017 + _1023 + _1205 - mem[64]
                    mem[64] = _1320 + _1017 + _1023 + _1205 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1405
                    u = _637
                    continue 
                mem[_1017 + _1023 + _1205 + _1320 + 32] = 0
                _1421 = mem[64]
                mem[mem[64]] = _1320 + _1017 + _1023 + _1205 - mem[64]
                mem[64] = _1320 + _1017 + _1023 + _1205 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1421
                u = _637
                continue 
            mem[_1017 + _1023 + _1205 + 32] = 0
            _1328 = mem[_818]
            s = 0
            while s < _1328:
                mem[s + _1017 + _1023 + _1205 + 32] = mem[s + _818 + 32]
                s = s + 32
                continue 
            if ceil32(_1328) <= _1328:
                _1406 = mem[64]
                mem[mem[64]] = _1328 + _1017 + _1023 + _1205 - mem[64]
                mem[64] = _1328 + _1017 + _1023 + _1205 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1406
                u = _637
                continue 
            mem[_1017 + _1023 + _1205 + _1328 + 32] = 0
            _1422 = mem[64]
            mem[mem[64]] = _1328 + _1017 + _1023 + _1205 - mem[64]
            mem[64] = _1328 + _1017 + _1023 + _1205 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            t = _1422
            u = _637
            continue 
        mem[_818 + 32 len u] = call.data[calldata.size len u]
        v = u
        s = _638
        while s:
            if v < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_818]:
                revert with 0, 50
            mem[v + _818 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _1018 = mem[64]
        _1024 = mem[t]
        s = 0
        while s < _1024:
            mem[s + _1018 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_1024) <= _1024:
            _1198 = mem[_443]
            s = 0
            while s < _1198:
                mem[s + _1018 + _1024 + 32] = mem[s + _443 + 32]
                s = s + 32
                continue 
            if ceil32(_1198) <= _1198:
                _1321 = mem[_818]
                s = 0
                while s < _1321:
                    mem[s + _1018 + _1024 + _1198 + 32] = mem[s + _818 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1321) <= _1321:
                    _1407 = mem[64]
                    mem[mem[64]] = _1321 + _1018 + _1024 + _1198 - mem[64]
                    mem[64] = _1321 + _1018 + _1024 + _1198 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1407
                    u = _637
                    continue 
                mem[_1018 + _1024 + _1198 + _1321 + 32] = 0
                _1423 = mem[64]
                mem[mem[64]] = _1321 + _1018 + _1024 + _1198 - mem[64]
                mem[64] = _1321 + _1018 + _1024 + _1198 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1423
                u = _637
                continue 
            mem[_1018 + _1024 + _1198 + 32] = 0
            _1329 = mem[_818]
            s = 0
            while s < _1329:
                mem[s + _1018 + _1024 + _1198 + 32] = mem[s + _818 + 32]
                s = s + 32
                continue 
            if ceil32(_1329) <= _1329:
                _1408 = mem[64]
                mem[mem[64]] = _1329 + _1018 + _1024 + _1198 - mem[64]
                mem[64] = _1329 + _1018 + _1024 + _1198 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1408
                u = _637
                continue 
            mem[_1018 + _1024 + _1198 + _1329 + 32] = 0
            _1424 = mem[64]
            mem[mem[64]] = _1329 + _1018 + _1024 + _1198 - mem[64]
            mem[64] = _1329 + _1018 + _1024 + _1198 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            t = _1424
            u = _637
            continue 
        mem[_1018 + _1024 + 32] = 0
        _1206 = mem[_443]
        s = 0
        while s < _1206:
            mem[s + _1018 + _1024 + 32] = mem[s + _443 + 32]
            s = s + 32
            continue 
        if ceil32(_1206) <= _1206:
            _1322 = mem[_818]
            s = 0
            while s < _1322:
                mem[s + _1018 + _1024 + _1206 + 32] = mem[s + _818 + 32]
                s = s + 32
                continue 
            if ceil32(_1322) <= _1322:
                _1409 = mem[64]
                mem[mem[64]] = _1322 + _1018 + _1024 + _1206 - mem[64]
                mem[64] = _1322 + _1018 + _1024 + _1206 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1409
                u = _637
                continue 
            mem[_1018 + _1024 + _1206 + _1322 + 32] = 0
            _1425 = mem[64]
            mem[mem[64]] = _1322 + _1018 + _1024 + _1206 - mem[64]
            mem[64] = _1322 + _1018 + _1024 + _1206 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            t = _1425
            u = _637
            continue 
        mem[_1018 + _1024 + _1206 + 32] = 0
        _1330 = mem[_818]
        s = 0
        while s < _1330:
            mem[s + _1018 + _1024 + _1206 + 32] = mem[s + _818 + 32]
            s = s + 32
            continue 
        if ceil32(_1330) <= _1330:
            _1410 = mem[64]
            mem[mem[64]] = _1330 + _1018 + _1024 + _1206 - mem[64]
            mem[64] = _1330 + _1018 + _1024 + _1206 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            t = _1410
            u = _637
            continue 
        mem[_1018 + _1024 + _1206 + _1330 + 32] = 0
        _1426 = mem[64]
        mem[mem[64]] = _1330 + _1018 + _1024 + _1206 - mem[64]
        mem[64] = _1330 + _1018 + _1024 + _1206 + 32
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        t = _1426
        u = _637
        continue 
    mem[mem[64]] = 32
    _642 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_642)] = mem[t + 32 len ceil32(_642)]
    if ceil32(_642) > _642:
        mem[mem[64] + _642 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_642) + 32]
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    delegate 0xd9145cce52d386f254917e481eb44e9943f39138.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        _141 = mem[64]
        mem[64] = mem[64] + 128
        if stor4[address(arg1)][idx].field_0:
            if not stor4[address(arg1)][idx].field_0 - (uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32):
                revert with 0, 34
            _146 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_146] = uint255(stor4[address(arg1)][idx].field_0) * 0.5
            if stor4[address(arg1)][idx].field_0:
                if not stor4[address(arg1)][idx].field_0 - (uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor4[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                        mem[_146 + 32] = 256 * stor4[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_146 + 32] = stor4[address(arg1)][idx].field_0
                        t = _146 + 32
                        u = sha3(mem[0])
                        while _146 + (uint255(stor4[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_141] = _146
                mem[_141 + 32] = stor4[address(arg1)][idx].field_256
                mem[_141 + 64] = stor4[address(arg1)][idx].field_512
                mem[_141 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _141
                s = s + 32
                idx = idx + 1
                continue 
            if not stor4[address(arg1)][idx].field_0 - (stor4[address(arg1)][idx].field_1 < 32):
                revert with 0, 34
            if not stor4[address(arg1)][idx].field_1:
                mem[_141] = _146
                mem[_141 + 32] = stor4[address(arg1)][idx].field_256
                mem[_141 + 64] = stor4[address(arg1)][idx].field_512
                mem[_141 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _141
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_146 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_141] = _146
                mem[_141 + 32] = stor4[address(arg1)][idx].field_256
                mem[_141 + 64] = stor4[address(arg1)][idx].field_512
                mem[_141 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _141
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_146 + 32] = stor4[address(arg1)][idx].field_0
            t = _146 + 32
            u = sha3(mem[0])
            while _146 + stor4[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_141] = _146
            mem[_141 + 32] = stor4[address(arg1)][u].field_256
            mem[_141 + 64] = stor4[address(arg1)][u].field_512
            mem[_141 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _141
            t = t + 32
            u = u + 1
            continue 
        if not stor4[address(arg1)][idx].field_0 - (stor4[address(arg1)][idx].field_1 < 32):
            revert with 0, 34
        _148 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
        mem[_148] = stor4[address(arg1)][idx].field_1
        if stor4[address(arg1)][idx].field_0:
            if not stor4[address(arg1)][idx].field_0 - (uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32):
                revert with 0, 34
            if not Mask(256, -1, stor4[address(arg1)][idx].field_0):
                mem[_141] = _148
                mem[_141 + 32] = stor4[address(arg1)][idx].field_256
                mem[_141 + 64] = stor4[address(arg1)][idx].field_512
                mem[_141 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _141
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                mem[_148 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_141] = _148
                mem[_141 + 32] = stor4[address(arg1)][idx].field_256
                mem[_141 + 64] = stor4[address(arg1)][idx].field_512
                mem[_141 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _141
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_148 + 32] = stor4[address(arg1)][idx].field_0
            t = _148 + 32
            u = sha3(mem[0])
            while _148 + (uint255(stor4[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_141] = _148
            mem[_141 + 32] = stor4[address(arg1)][u].field_256
            mem[_141 + 64] = stor4[address(arg1)][u].field_512
            mem[_141 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _141
            t = t + 32
            u = u + 1
            continue 
        if not stor4[address(arg1)][idx].field_0 - (stor4[address(arg1)][idx].field_1 < 32):
            revert with 0, 34
        if stor4[address(arg1)][idx].field_1:
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_148 + 32] = 256 * stor4[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_148 + 32] = stor4[address(arg1)][idx].field_0
                t = _148 + 32
                u = sha3(mem[0])
                while _148 + stor4[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_141] = _148
        mem[_141 + 32] = stor4[address(arg1)][idx].field_256
        mem[_141 + 64] = stor4[address(arg1)][idx].field_512
        mem[_141 + 96] = stor4[address(arg1)][idx].field_768
        mem[s] = _141
        s = s + 32
        idx = idx + 1
        continue 
    _138 = mem[ceil32(return_data.size) + 96]
    _139 = mem[64]
    mem[64] = mem[64] + 128
    mem[_139] = 96
    mem[_139 + 32] = 0
    mem[_139 + 64] = 0
    mem[_139 + 96] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    _144 = mem[mem[ceil32(return_data.size) + 128] + 64]
    if not -mem[mem[ceil32(return_data.size) + 128] + 64]:
        _145 = mem[64]
        mem[64] = mem[64] + 64
        mem[_145] = 1
        mem[_145 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _147 = mem[64]
        mem[64] = mem[64] + 64
        mem[_147] = 1
        mem[_147 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _145
        t = _139
        while idx < _138:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _270 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _271 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            if not -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                _273 = mem[64]
                mem[64] = mem[64] + 64
                mem[_273] = 1
                mem[_273 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _274 = mem[64]
                _277 = mem[s]
                t = 0
                while t < _277:
                    mem[t + _274 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_277) <= _277:
                    _445 = mem[_147]
                    s = 0
                    while s < _445:
                        mem[s + _274 + _277 + 32] = mem[s + _147 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_445) <= _445:
                        _645 = mem[_273]
                        s = 0
                        while s < _645:
                            mem[s + _274 + _277 + _445 + 32] = mem[s + _273 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_645) <= _645:
                            _829 = mem[64]
                            mem[mem[64]] = _645 + _274 + _277 + _445 - mem[64]
                            mem[64] = _645 + _274 + _277 + _445 + 32
                            if not idx + 1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _829
                            t = _270
                            continue 
                        mem[_274 + _277 + _445 + _645 + 32] = 0
                        _835 = mem[64]
                        mem[mem[64]] = _645 + _274 + _277 + _445 - mem[64]
                        mem[64] = _645 + _274 + _277 + _445 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _835
                        t = _270
                        continue 
                    mem[_274 + _277 + _445 + 32] = 0
                    _649 = mem[_273]
                    s = 0
                    while s < _649:
                        mem[s + _274 + _277 + _445 + 32] = mem[s + _273 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_649) <= _649:
                        _830 = mem[64]
                        mem[mem[64]] = _649 + _274 + _277 + _445 - mem[64]
                        mem[64] = _649 + _274 + _277 + _445 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _830
                        t = _270
                        continue 
                    mem[_274 + _277 + _445 + _649 + 32] = 0
                    _836 = mem[64]
                    mem[mem[64]] = _649 + _274 + _277 + _445 - mem[64]
                    mem[64] = _649 + _274 + _277 + _445 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _836
                    t = _270
                    continue 
                mem[_274 + _277 + 32] = 0
                _449 = mem[_147]
                s = 0
                while s < _449:
                    mem[s + _274 + _277 + 32] = mem[s + _147 + 32]
                    s = s + 32
                    continue 
                if ceil32(_449) <= _449:
                    _646 = mem[_273]
                    s = 0
                    while s < _646:
                        mem[s + _274 + _277 + _449 + 32] = mem[s + _273 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_646) <= _646:
                        _831 = mem[64]
                        mem[mem[64]] = _646 + _274 + _277 + _449 - mem[64]
                        mem[64] = _646 + _274 + _277 + _449 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _831
                        t = _270
                        continue 
                    mem[_274 + _277 + _449 + _646 + 32] = 0
                    _837 = mem[64]
                    mem[mem[64]] = _646 + _274 + _277 + _449 - mem[64]
                    mem[64] = _646 + _274 + _277 + _449 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _837
                    t = _270
                    continue 
                mem[_274 + _277 + _449 + 32] = 0
                _650 = mem[_273]
                s = 0
                while s < _650:
                    mem[s + _274 + _277 + _449 + 32] = mem[s + _273 + 32]
                    s = s + 32
                    continue 
                if ceil32(_650) <= _650:
                    _832 = mem[64]
                    mem[mem[64]] = _650 + _274 + _277 + _449 - mem[64]
                    mem[64] = _650 + _274 + _277 + _449 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _832
                    t = _270
                    continue 
                mem[_274 + _277 + _449 + _650 + 32] = 0
                _838 = mem[64]
                mem[mem[64]] = _650 + _274 + _277 + _449 - mem[64]
                mem[64] = _650 + _274 + _277 + _449 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                s = _838
                t = _270
                continue 
            u = 0
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            while t:
                if not u + 1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _444 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _271
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_444]:
                        revert with 0, 50
                    mem[v + _444 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _639 = mem[64]
                _643 = mem[s]
                t = 0
                while t < _643:
                    mem[t + _639 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_643) <= _643:
                    _821 = mem[_147]
                    s = 0
                    while s < _821:
                        mem[s + _639 + _643 + 32] = mem[s + _147 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_821) <= _821:
                        _1027 = mem[_444]
                        s = 0
                        while s < _1027:
                            mem[s + _639 + _643 + _821 + 32] = mem[s + _444 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1027) <= _1027:
                            _1211 = mem[64]
                            mem[mem[64]] = _1027 + _639 + _643 + _821 - mem[64]
                            mem[64] = _1027 + _639 + _643 + _821 + 32
                            if not idx + 1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1211
                            t = _270
                            continue 
                        mem[_639 + _643 + _821 + _1027 + 32] = 0
                        _1227 = mem[64]
                        mem[mem[64]] = _1027 + _639 + _643 + _821 - mem[64]
                        mem[64] = _1027 + _639 + _643 + _821 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1227
                        t = _270
                        continue 
                    mem[_639 + _643 + _821 + 32] = 0
                    _1035 = mem[_444]
                    s = 0
                    while s < _1035:
                        mem[s + _639 + _643 + _821 + 32] = mem[s + _444 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1035) <= _1035:
                        _1212 = mem[64]
                        mem[mem[64]] = _1035 + _639 + _643 + _821 - mem[64]
                        mem[64] = _1035 + _639 + _643 + _821 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1212
                        t = _270
                        continue 
                    mem[_639 + _643 + _821 + _1035 + 32] = 0
                    _1228 = mem[64]
                    mem[mem[64]] = _1035 + _639 + _643 + _821 - mem[64]
                    mem[64] = _1035 + _639 + _643 + _821 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1228
                    t = _270
                    continue 
                mem[_639 + _643 + 32] = 0
                _827 = mem[_147]
                s = 0
                while s < _827:
                    mem[s + _639 + _643 + 32] = mem[s + _147 + 32]
                    s = s + 32
                    continue 
                if ceil32(_827) <= _827:
                    _1028 = mem[_444]
                    s = 0
                    while s < _1028:
                        mem[s + _639 + _643 + _827 + 32] = mem[s + _444 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1028) <= _1028:
                        _1213 = mem[64]
                        mem[mem[64]] = _1028 + _639 + _643 + _827 - mem[64]
                        mem[64] = _1028 + _639 + _643 + _827 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1213
                        t = _270
                        continue 
                    mem[_639 + _643 + _827 + _1028 + 32] = 0
                    _1229 = mem[64]
                    mem[mem[64]] = _1028 + _639 + _643 + _827 - mem[64]
                    mem[64] = _1028 + _639 + _643 + _827 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1229
                    t = _270
                    continue 
                mem[_639 + _643 + _827 + 32] = 0
                _1036 = mem[_444]
                s = 0
                while s < _1036:
                    mem[s + _639 + _643 + _827 + 32] = mem[s + _444 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1036) <= _1036:
                    _1214 = mem[64]
                    mem[mem[64]] = _1036 + _639 + _643 + _827 - mem[64]
                    mem[64] = _1036 + _639 + _643 + _827 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1214
                    t = _270
                    continue 
                mem[_639 + _643 + _827 + _1036 + 32] = 0
                _1230 = mem[64]
                mem[mem[64]] = _1036 + _639 + _643 + _827 - mem[64]
                mem[64] = _1036 + _639 + _643 + _827 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                s = _1230
                t = _270
                continue 
            mem[_444 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _271
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_444]:
                    revert with 0, 50
                mem[v + _444 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _640 = mem[64]
            _644 = mem[s]
            t = 0
            while t < _644:
                mem[t + _640 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_644) <= _644:
                _822 = mem[_147]
                s = 0
                while s < _822:
                    mem[s + _640 + _644 + 32] = mem[s + _147 + 32]
                    s = s + 32
                    continue 
                if ceil32(_822) <= _822:
                    _1029 = mem[_444]
                    s = 0
                    while s < _1029:
                        mem[s + _640 + _644 + _822 + 32] = mem[s + _444 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1029) <= _1029:
                        _1215 = mem[64]
                        mem[mem[64]] = _1029 + _640 + _644 + _822 - mem[64]
                        mem[64] = _1029 + _640 + _644 + _822 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1215
                        t = _270
                        continue 
                    mem[_640 + _644 + _822 + _1029 + 32] = 0
                    _1231 = mem[64]
                    mem[mem[64]] = _1029 + _640 + _644 + _822 - mem[64]
                    mem[64] = _1029 + _640 + _644 + _822 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1231
                    t = _270
                    continue 
                mem[_640 + _644 + _822 + 32] = 0
                _1037 = mem[_444]
                s = 0
                while s < _1037:
                    mem[s + _640 + _644 + _822 + 32] = mem[s + _444 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1037) <= _1037:
                    _1216 = mem[64]
                    mem[mem[64]] = _1037 + _640 + _644 + _822 - mem[64]
                    mem[64] = _1037 + _640 + _644 + _822 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1216
                    t = _270
                    continue 
                mem[_640 + _644 + _822 + _1037 + 32] = 0
                _1232 = mem[64]
                mem[mem[64]] = _1037 + _640 + _644 + _822 - mem[64]
                mem[64] = _1037 + _640 + _644 + _822 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                s = _1232
                t = _270
                continue 
            mem[_640 + _644 + 32] = 0
            _828 = mem[_147]
            s = 0
            while s < _828:
                mem[s + _640 + _644 + 32] = mem[s + _147 + 32]
                s = s + 32
                continue 
            if ceil32(_828) <= _828:
                _1030 = mem[_444]
                s = 0
                while s < _1030:
                    mem[s + _640 + _644 + _828 + 32] = mem[s + _444 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1030) <= _1030:
                    _1217 = mem[64]
                    mem[mem[64]] = _1030 + _640 + _644 + _828 - mem[64]
                    mem[64] = _1030 + _640 + _644 + _828 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1217
                    t = _270
                    continue 
                mem[_640 + _644 + _828 + _1030 + 32] = 0
                _1233 = mem[64]
                mem[mem[64]] = _1030 + _640 + _644 + _828 - mem[64]
                mem[64] = _1030 + _640 + _644 + _828 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                s = _1233
                t = _270
                continue 
            mem[_640 + _644 + _828 + 32] = 0
            _1038 = mem[_444]
            s = 0
            while s < _1038:
                mem[s + _640 + _644 + _828 + 32] = mem[s + _444 + 32]
                s = s + 32
                continue 
            if ceil32(_1038) <= _1038:
                _1218 = mem[64]
                mem[mem[64]] = _1038 + _640 + _644 + _828 - mem[64]
                mem[64] = _1038 + _640 + _644 + _828 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                s = _1218
                t = _270
                continue 
            mem[_640 + _644 + _828 + _1038 + 32] = 0
            _1234 = mem[64]
            mem[mem[64]] = _1038 + _640 + _644 + _828 - mem[64]
            mem[64] = _1038 + _640 + _644 + _828 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            s = _1234
            t = _270
            continue 
        mem[mem[64]] = 32
        _272 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_272)] = mem[s + 32 len ceil32(_272)]
        if ceil32(_272) > _272:
            mem[mem[64] + _272 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_272) + 32]
    u = 0
    t = mem[mem[ceil32(return_data.size) + 128] + 64]
    while t:
        if not u + 1:
            revert with 0, 17
        u = u + 1
        t = t / 10
        continue 
    if u > test266151307():
        revert with 0, 65
    _268 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _144
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_268]:
                revert with 0, 50
            mem[s + _268 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        _442 = mem[64]
        mem[64] = mem[64] + 64
        mem[_442] = 1
        mem[_442 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        t = _268
        u = _139
        while idx < _138:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _634 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _635 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            if not -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                _647 = mem[64]
                mem[64] = mem[64] + 64
                mem[_647] = 1
                mem[_647 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _651 = mem[64]
                _654 = mem[t]
                u = 0
                while u < _654:
                    mem[u + _651 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_654) <= _654:
                    _819 = mem[_442]
                    t = 0
                    while t < _819:
                        mem[t + _651 + _654 + 32] = mem[t + _442 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_819) <= _819:
                        _1021 = mem[_647]
                        s = 0
                        while s < _1021:
                            mem[s + _651 + _654 + _819 + 32] = mem[s + _647 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1021) <= _1021:
                            _1201 = mem[64]
                            mem[mem[64]] = _1021 + _651 + _654 + _819 - mem[64]
                            mem[64] = _1021 + _651 + _654 + _819 + 32
                            if not idx + 1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1201
                            u = _634
                            continue 
                        mem[_651 + _654 + _819 + _1021 + 32] = 0
                        _1219 = mem[64]
                        mem[mem[64]] = _1021 + _651 + _654 + _819 - mem[64]
                        mem[64] = _1021 + _651 + _654 + _819 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1219
                        u = _634
                        continue 
                    mem[_651 + _654 + _819 + 32] = 0
                    _1031 = mem[_647]
                    s = 0
                    while s < _1031:
                        mem[s + _651 + _654 + _819 + 32] = mem[s + _647 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1031) <= _1031:
                        _1202 = mem[64]
                        mem[mem[64]] = _1031 + _651 + _654 + _819 - mem[64]
                        mem[64] = _1031 + _651 + _654 + _819 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1202
                        u = _634
                        continue 
                    mem[_651 + _654 + _819 + _1031 + 32] = 0
                    _1220 = mem[64]
                    mem[mem[64]] = _1031 + _651 + _654 + _819 - mem[64]
                    mem[64] = _1031 + _651 + _654 + _819 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1220
                    u = _634
                    continue 
                mem[_651 + _654 + 32] = 0
                _824 = mem[_442]
                s = 0
                while s < _824:
                    mem[s + _651 + _654 + 32] = mem[s + _442 + 32]
                    s = s + 32
                    continue 
                if ceil32(_824) <= _824:
                    _1022 = mem[_647]
                    s = 0
                    while s < _1022:
                        mem[s + _651 + _654 + _824 + 32] = mem[s + _647 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1022) <= _1022:
                        _1203 = mem[64]
                        mem[mem[64]] = _1022 + _651 + _654 + _824 - mem[64]
                        mem[64] = _1022 + _651 + _654 + _824 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1203
                        u = _634
                        continue 
                    mem[_651 + _654 + _824 + _1022 + 32] = 0
                    _1221 = mem[64]
                    mem[mem[64]] = _1022 + _651 + _654 + _824 - mem[64]
                    mem[64] = _1022 + _651 + _654 + _824 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1221
                    u = _634
                    continue 
                mem[_651 + _654 + _824 + 32] = 0
                _1032 = mem[_647]
                s = 0
                while s < _1032:
                    mem[s + _651 + _654 + _824 + 32] = mem[s + _647 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1032) <= _1032:
                    _1204 = mem[64]
                    mem[mem[64]] = _1032 + _651 + _654 + _824 - mem[64]
                    mem[64] = _1032 + _651 + _654 + _824 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1204
                    u = _634
                    continue 
                mem[_651 + _654 + _824 + _1032 + 32] = 0
                _1222 = mem[64]
                mem[mem[64]] = _1032 + _651 + _654 + _824 - mem[64]
                mem[64] = _1032 + _651 + _654 + _824 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1222
                u = _634
                continue 
            u = 0
            s = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            while s:
                if not u + 1:
                    revert with 0, 17
                u = u + 1
                s = s / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _817 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                s = _635
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_817]:
                        revert with 0, 50
                    mem[v + _817 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _1015 = mem[64]
                _1019 = mem[t]
                s = 0
                while s < _1019:
                    mem[s + _1015 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_1019) <= _1019:
                    _1195 = mem[_442]
                    s = 0
                    while s < _1195:
                        mem[s + _1015 + _1019 + 32] = mem[s + _442 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1195) <= _1195:
                        _1315 = mem[_817]
                        s = 0
                        while s < _1315:
                            mem[s + _1015 + _1019 + _1195 + 32] = mem[s + _817 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1315) <= _1315:
                            _1395 = mem[64]
                            mem[mem[64]] = _1315 + _1015 + _1019 + _1195 - mem[64]
                            mem[64] = _1315 + _1015 + _1019 + _1195 + 32
                            if not idx + 1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1395
                            u = _634
                            continue 
                        mem[_1015 + _1019 + _1195 + _1315 + 32] = 0
                        _1411 = mem[64]
                        mem[mem[64]] = _1315 + _1015 + _1019 + _1195 - mem[64]
                        mem[64] = _1315 + _1015 + _1019 + _1195 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1411
                        u = _634
                        continue 
                    mem[_1015 + _1019 + _1195 + 32] = 0
                    _1323 = mem[_817]
                    s = 0
                    while s < _1323:
                        mem[s + _1015 + _1019 + _1195 + 32] = mem[s + _817 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1323) <= _1323:
                        _1396 = mem[64]
                        mem[mem[64]] = _1323 + _1015 + _1019 + _1195 - mem[64]
                        mem[64] = _1323 + _1015 + _1019 + _1195 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1396
                        u = _634
                        continue 
                    mem[_1015 + _1019 + _1195 + _1323 + 32] = 0
                    _1412 = mem[64]
                    mem[mem[64]] = _1323 + _1015 + _1019 + _1195 - mem[64]
                    mem[64] = _1323 + _1015 + _1019 + _1195 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1412
                    u = _634
                    continue 
                mem[_1015 + _1019 + 32] = 0
                _1199 = mem[_442]
                s = 0
                while s < _1199:
                    mem[s + _1015 + _1019 + 32] = mem[s + _442 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1199) <= _1199:
                    _1316 = mem[_817]
                    s = 0
                    while s < _1316:
                        mem[s + _1015 + _1019 + _1199 + 32] = mem[s + _817 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1316) <= _1316:
                        _1397 = mem[64]
                        mem[mem[64]] = _1316 + _1015 + _1019 + _1199 - mem[64]
                        mem[64] = _1316 + _1015 + _1019 + _1199 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1397
                        u = _634
                        continue 
                    mem[_1015 + _1019 + _1199 + _1316 + 32] = 0
                    _1413 = mem[64]
                    mem[mem[64]] = _1316 + _1015 + _1019 + _1199 - mem[64]
                    mem[64] = _1316 + _1015 + _1019 + _1199 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1413
                    u = _634
                    continue 
                mem[_1015 + _1019 + _1199 + 32] = 0
                _1324 = mem[_817]
                s = 0
                while s < _1324:
                    mem[s + _1015 + _1019 + _1199 + 32] = mem[s + _817 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1324) <= _1324:
                    _1398 = mem[64]
                    mem[mem[64]] = _1324 + _1015 + _1019 + _1199 - mem[64]
                    mem[64] = _1324 + _1015 + _1019 + _1199 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1398
                    u = _634
                    continue 
                mem[_1015 + _1019 + _1199 + _1324 + 32] = 0
                _1414 = mem[64]
                mem[mem[64]] = _1324 + _1015 + _1019 + _1199 - mem[64]
                mem[64] = _1324 + _1015 + _1019 + _1199 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1414
                u = _634
                continue 
            mem[_817 + 32 len u] = call.data[calldata.size len u]
            v = u
            s = _635
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_817]:
                    revert with 0, 50
                mem[v + _817 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _1016 = mem[64]
            _1020 = mem[t]
            s = 0
            while s < _1020:
                mem[s + _1016 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_1020) <= _1020:
                _1196 = mem[_442]
                s = 0
                while s < _1196:
                    mem[s + _1016 + _1020 + 32] = mem[s + _442 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1196) <= _1196:
                    _1317 = mem[_817]
                    s = 0
                    while s < _1317:
                        mem[s + _1016 + _1020 + _1196 + 32] = mem[s + _817 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1317) <= _1317:
                        _1399 = mem[64]
                        mem[mem[64]] = _1317 + _1016 + _1020 + _1196 - mem[64]
                        mem[64] = _1317 + _1016 + _1020 + _1196 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1399
                        u = _634
                        continue 
                    mem[_1016 + _1020 + _1196 + _1317 + 32] = 0
                    _1415 = mem[64]
                    mem[mem[64]] = _1317 + _1016 + _1020 + _1196 - mem[64]
                    mem[64] = _1317 + _1016 + _1020 + _1196 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1415
                    u = _634
                    continue 
                mem[_1016 + _1020 + _1196 + 32] = 0
                _1325 = mem[_817]
                s = 0
                while s < _1325:
                    mem[s + _1016 + _1020 + _1196 + 32] = mem[s + _817 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1325) <= _1325:
                    _1400 = mem[64]
                    mem[mem[64]] = _1325 + _1016 + _1020 + _1196 - mem[64]
                    mem[64] = _1325 + _1016 + _1020 + _1196 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1400
                    u = _634
                    continue 
                mem[_1016 + _1020 + _1196 + _1325 + 32] = 0
                _1416 = mem[64]
                mem[mem[64]] = _1325 + _1016 + _1020 + _1196 - mem[64]
                mem[64] = _1325 + _1016 + _1020 + _1196 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1416
                u = _634
                continue 
            mem[_1016 + _1020 + 32] = 0
            _1200 = mem[_442]
            s = 0
            while s < _1200:
                mem[s + _1016 + _1020 + 32] = mem[s + _442 + 32]
                s = s + 32
                continue 
            if ceil32(_1200) <= _1200:
                _1318 = mem[_817]
                s = 0
                while s < _1318:
                    mem[s + _1016 + _1020 + _1200 + 32] = mem[s + _817 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1318) <= _1318:
                    _1401 = mem[64]
                    mem[mem[64]] = _1318 + _1016 + _1020 + _1200 - mem[64]
                    mem[64] = _1318 + _1016 + _1020 + _1200 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1401
                    u = _634
                    continue 
                mem[_1016 + _1020 + _1200 + _1318 + 32] = 0
                _1417 = mem[64]
                mem[mem[64]] = _1318 + _1016 + _1020 + _1200 - mem[64]
                mem[64] = _1318 + _1016 + _1020 + _1200 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1417
                u = _634
                continue 
            mem[_1016 + _1020 + _1200 + 32] = 0
            _1326 = mem[_817]
            s = 0
            while s < _1326:
                mem[s + _1016 + _1020 + _1200 + 32] = mem[s + _817 + 32]
                s = s + 32
                continue 
            if ceil32(_1326) <= _1326:
                _1402 = mem[64]
                mem[mem[64]] = _1326 + _1016 + _1020 + _1200 - mem[64]
                mem[64] = _1326 + _1016 + _1020 + _1200 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1402
                u = _634
                continue 
            mem[_1016 + _1020 + _1200 + _1326 + 32] = 0
            _1418 = mem[64]
            mem[mem[64]] = _1326 + _1016 + _1020 + _1200 - mem[64]
            mem[64] = _1326 + _1016 + _1020 + _1200 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            t = _1418
            u = _634
            continue 
        mem[mem[64]] = 32
        _641 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_641)] = mem[t + 32 len ceil32(_641)]
        if ceil32(_641) > _641:
            mem[mem[64] + _641 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_641) + 32]
    mem[_268 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _144
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_268]:
            revert with 0, 50
        mem[s + _268 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    _443 = mem[64]
    mem[64] = mem[64] + 64
    mem[_443] = 1
    mem[_443 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    t = _268
    u = _139
    while idx < _138:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _637 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _638 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
        if not -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
            _648 = mem[64]
            mem[64] = mem[64] + 64
            mem[_648] = 1
            mem[_648 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _652 = mem[64]
            _656 = mem[t]
            u = 0
            while u < _656:
                mem[u + _652 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_656) <= _656:
                _820 = mem[_443]
                t = 0
                while t < _820:
                    mem[t + _652 + _656 + 32] = mem[t + _443 + 32]
                    t = t + 32
                    continue 
                if ceil32(_820) <= _820:
                    _1025 = mem[_648]
                    s = 0
                    while s < _1025:
                        mem[s + _652 + _656 + _820 + 32] = mem[s + _648 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1025) <= _1025:
                        _1207 = mem[64]
                        mem[mem[64]] = _1025 + _652 + _656 + _820 - mem[64]
                        mem[64] = _1025 + _652 + _656 + _820 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1207
                        u = _637
                        continue 
                    mem[_652 + _656 + _820 + _1025 + 32] = 0
                    _1223 = mem[64]
                    mem[mem[64]] = _1025 + _652 + _656 + _820 - mem[64]
                    mem[64] = _1025 + _652 + _656 + _820 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1223
                    u = _637
                    continue 
                mem[_652 + _656 + _820 + 32] = 0
                _1033 = mem[_648]
                s = 0
                while s < _1033:
                    mem[s + _652 + _656 + _820 + 32] = mem[s + _648 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1033) <= _1033:
                    _1208 = mem[64]
                    mem[mem[64]] = _1033 + _652 + _656 + _820 - mem[64]
                    mem[64] = _1033 + _652 + _656 + _820 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1208
                    u = _637
                    continue 
                mem[_652 + _656 + _820 + _1033 + 32] = 0
                _1224 = mem[64]
                mem[mem[64]] = _1033 + _652 + _656 + _820 - mem[64]
                mem[64] = _1033 + _652 + _656 + _820 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1224
                u = _637
                continue 
            mem[_652 + _656 + 32] = 0
            _826 = mem[_443]
            s = 0
            while s < _826:
                mem[s + _652 + _656 + 32] = mem[s + _443 + 32]
                s = s + 32
                continue 
            if ceil32(_826) <= _826:
                _1026 = mem[_648]
                s = 0
                while s < _1026:
                    mem[s + _652 + _656 + _826 + 32] = mem[s + _648 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1026) <= _1026:
                    _1209 = mem[64]
                    mem[mem[64]] = _1026 + _652 + _656 + _826 - mem[64]
                    mem[64] = _1026 + _652 + _656 + _826 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1209
                    u = _637
                    continue 
                mem[_652 + _656 + _826 + _1026 + 32] = 0
                _1225 = mem[64]
                mem[mem[64]] = _1026 + _652 + _656 + _826 - mem[64]
                mem[64] = _1026 + _652 + _656 + _826 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1225
                u = _637
                continue 
            mem[_652 + _656 + _826 + 32] = 0
            _1034 = mem[_648]
            s = 0
            while s < _1034:
                mem[s + _652 + _656 + _826 + 32] = mem[s + _648 + 32]
                s = s + 32
                continue 
            if ceil32(_1034) <= _1034:
                _1210 = mem[64]
                mem[mem[64]] = _1034 + _652 + _656 + _826 - mem[64]
                mem[64] = _1034 + _652 + _656 + _826 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1210
                u = _637
                continue 
            mem[_652 + _656 + _826 + _1034 + 32] = 0
            _1226 = mem[64]
            mem[mem[64]] = _1034 + _652 + _656 + _826 - mem[64]
            mem[64] = _1034 + _652 + _656 + _826 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            t = _1226
            u = _637
            continue 
        u = 0
        s = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
        while s:
            if not u + 1:
                revert with 0, 17
            u = u + 1
            s = s / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _818 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            s = _638
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_818]:
                    revert with 0, 50
                mem[v + _818 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _1017 = mem[64]
            _1023 = mem[t]
            s = 0
            while s < _1023:
                mem[s + _1017 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_1023) <= _1023:
                _1197 = mem[_443]
                s = 0
                while s < _1197:
                    mem[s + _1017 + _1023 + 32] = mem[s + _443 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1197) <= _1197:
                    _1319 = mem[_818]
                    s = 0
                    while s < _1319:
                        mem[s + _1017 + _1023 + _1197 + 32] = mem[s + _818 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1319) <= _1319:
                        _1403 = mem[64]
                        mem[mem[64]] = _1319 + _1017 + _1023 + _1197 - mem[64]
                        mem[64] = _1319 + _1017 + _1023 + _1197 + 32
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1403
                        u = _637
                        continue 
                    mem[_1017 + _1023 + _1197 + _1319 + 32] = 0
                    _1419 = mem[64]
                    mem[mem[64]] = _1319 + _1017 + _1023 + _1197 - mem[64]
                    mem[64] = _1319 + _1017 + _1023 + _1197 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1419
                    u = _637
                    continue 
                mem[_1017 + _1023 + _1197 + 32] = 0
                _1327 = mem[_818]
                s = 0
                while s < _1327:
                    mem[s + _1017 + _1023 + _1197 + 32] = mem[s + _818 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1327) <= _1327:
                    _1404 = mem[64]
                    mem[mem[64]] = _1327 + _1017 + _1023 + _1197 - mem[64]
                    mem[64] = _1327 + _1017 + _1023 + _1197 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1404
                    u = _637
                    continue 
                mem[_1017 + _1023 + _1197 + _1327 + 32] = 0
                _1420 = mem[64]
                mem[mem[64]] = _1327 + _1017 + _1023 + _1197 - mem[64]
                mem[64] = _1327 + _1017 + _1023 + _1197 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1420
                u = _637
                continue 
            mem[_1017 + _1023 + 32] = 0
            _1205 = mem[_443]
            s = 0
            while s < _1205:
                mem[s + _1017 + _1023 + 32] = mem[s + _443 + 32]
                s = s + 32
                continue 
            if ceil32(_1205) <= _1205:
                _1320 = mem[_818]
                s = 0
                while s < _1320:
                    mem[s + _1017 + _1023 + _1205 + 32] = mem[s + _818 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1320) <= _1320:
                    _1405 = mem[64]
                    mem[mem[64]] = _1320 + _1017 + _1023 + _1205 - mem[64]
                    mem[64] = _1320 + _1017 + _1023 + _1205 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1405
                    u = _637
                    continue 
                mem[_1017 + _1023 + _1205 + _1320 + 32] = 0
                _1421 = mem[64]
                mem[mem[64]] = _1320 + _1017 + _1023 + _1205 - mem[64]
                mem[64] = _1320 + _1017 + _1023 + _1205 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1421
                u = _637
                continue 
            mem[_1017 + _1023 + _1205 + 32] = 0
            _1328 = mem[_818]
            s = 0
            while s < _1328:
                mem[s + _1017 + _1023 + _1205 + 32] = mem[s + _818 + 32]
                s = s + 32
                continue 
            if ceil32(_1328) <= _1328:
                _1406 = mem[64]
                mem[mem[64]] = _1328 + _1017 + _1023 + _1205 - mem[64]
                mem[64] = _1328 + _1017 + _1023 + _1205 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1406
                u = _637
                continue 
            mem[_1017 + _1023 + _1205 + _1328 + 32] = 0
            _1422 = mem[64]
            mem[mem[64]] = _1328 + _1017 + _1023 + _1205 - mem[64]
            mem[64] = _1328 + _1017 + _1023 + _1205 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            t = _1422
            u = _637
            continue 
        mem[_818 + 32 len u] = call.data[calldata.size len u]
        v = u
        s = _638
        while s:
            if v < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_818]:
                revert with 0, 50
            mem[v + _818 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _1018 = mem[64]
        _1024 = mem[t]
        s = 0
        while s < _1024:
            mem[s + _1018 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_1024) <= _1024:
            _1198 = mem[_443]
            s = 0
            while s < _1198:
                mem[s + _1018 + _1024 + 32] = mem[s + _443 + 32]
                s = s + 32
                continue 
            if ceil32(_1198) <= _1198:
                _1321 = mem[_818]
                s = 0
                while s < _1321:
                    mem[s + _1018 + _1024 + _1198 + 32] = mem[s + _818 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1321) <= _1321:
                    _1407 = mem[64]
                    mem[mem[64]] = _1321 + _1018 + _1024 + _1198 - mem[64]
                    mem[64] = _1321 + _1018 + _1024 + _1198 + 32
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1407
                    u = _637
                    continue 
                mem[_1018 + _1024 + _1198 + _1321 + 32] = 0
                _1423 = mem[64]
                mem[mem[64]] = _1321 + _1018 + _1024 + _1198 - mem[64]
                mem[64] = _1321 + _1018 + _1024 + _1198 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1423
                u = _637
                continue 
            mem[_1018 + _1024 + _1198 + 32] = 0
            _1329 = mem[_818]
            s = 0
            while s < _1329:
                mem[s + _1018 + _1024 + _1198 + 32] = mem[s + _818 + 32]
                s = s + 32
                continue 
            if ceil32(_1329) <= _1329:
                _1408 = mem[64]
                mem[mem[64]] = _1329 + _1018 + _1024 + _1198 - mem[64]
                mem[64] = _1329 + _1018 + _1024 + _1198 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1408
                u = _637
                continue 
            mem[_1018 + _1024 + _1198 + _1329 + 32] = 0
            _1424 = mem[64]
            mem[mem[64]] = _1329 + _1018 + _1024 + _1198 - mem[64]
            mem[64] = _1329 + _1018 + _1024 + _1198 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            t = _1424
            u = _637
            continue 
        mem[_1018 + _1024 + 32] = 0
        _1206 = mem[_443]
        s = 0
        while s < _1206:
            mem[s + _1018 + _1024 + 32] = mem[s + _443 + 32]
            s = s + 32
            continue 
        if ceil32(_1206) <= _1206:
            _1322 = mem[_818]
            s = 0
            while s < _1322:
                mem[s + _1018 + _1024 + _1206 + 32] = mem[s + _818 + 32]
                s = s + 32
                continue 
            if ceil32(_1322) <= _1322:
                _1409 = mem[64]
                mem[mem[64]] = _1322 + _1018 + _1024 + _1206 - mem[64]
                mem[64] = _1322 + _1018 + _1024 + _1206 + 32
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                t = _1409
                u = _637
                continue 
            mem[_1018 + _1024 + _1206 + _1322 + 32] = 0
            _1425 = mem[64]
            mem[mem[64]] = _1322 + _1018 + _1024 + _1206 - mem[64]
            mem[64] = _1322 + _1018 + _1024 + _1206 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            t = _1425
            u = _637
            continue 
        mem[_1018 + _1024 + _1206 + 32] = 0
        _1330 = mem[_818]
        s = 0
        while s < _1330:
            mem[s + _1018 + _1024 + _1206 + 32] = mem[s + _818 + 32]
            s = s + 32
            continue 
        if ceil32(_1330) <= _1330:
            _1410 = mem[64]
            mem[mem[64]] = _1330 + _1018 + _1024 + _1206 - mem[64]
            mem[64] = _1330 + _1018 + _1024 + _1206 + 32
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            t = _1410
            u = _637
            continue 
        mem[_1018 + _1024 + _1206 + _1330 + 32] = 0
        _1426 = mem[64]
        mem[mem[64]] = _1330 + _1018 + _1024 + _1206 - mem[64]
        mem[64] = _1330 + _1018 + _1024 + _1206 + 32
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        t = _1426
        u = _637
        continue 
    mem[mem[64]] = 32
    _642 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_642)] = mem[t + 32 len ceil32(_642)]
    if ceil32(_642) > _642:
        mem[mem[64] + _642 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_642) + 32]
}



}
