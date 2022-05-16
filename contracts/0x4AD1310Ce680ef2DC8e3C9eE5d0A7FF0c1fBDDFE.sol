contract main {




// =====================  Runtime code  =====================


#
#  - _getNodesRewardAvailable(address arg1)
#  - _getNodeRewardAmountOf(address arg1, uint256 arg2)
#  - _cashoutNodeReward(address arg1, uint256 arg2)
#  - _getRewardAmountOf(address arg1, uint256 arg2)
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

function _distributeRewards() payable {
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    return 0, 0, lastIndexProcessed
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
    require ext_code.size(0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1)
    delegate 0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1.0x732a2ccf with:
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
    require ext_code.size(0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1)
    delegate 0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    return (delegate.return_data[0] > 0)
}

function _nodesOfUser(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < uint256(stor4[arg1].field_0)
    if bool(stor4[arg1][arg2].field_0):
        if bool(stor4[arg1][arg2].field_0) == uint255(stor4[arg1][arg2].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor4[arg1][arg2].field_0):
            if bool(stor4[arg1][arg2].field_0) == uint255(stor4[arg1][arg2].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor4[arg1][arg2].field_1):
                if 31 >= uint255(stor4[arg1][arg2].field_1):
                    mem[128] = 256 * Mask(248, 0, stor4[arg1][arg2].field_8)
                else:
                    mem[128] = uint256(stor4[arg1][arg2].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor4[arg1][arg2].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor4[arg1][(4 * arg2) + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor4[arg1][arg2].field_0) == stor4[arg1][arg2].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor4[arg1][arg2].field_1 % 128:
                if 31 >= stor4[arg1][arg2].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor4[arg1][arg2].field_8)
                else:
                    mem[128] = uint256(stor4[arg1][arg2].field_0)
                    idx = 128
                    s = 0
                    while stor4[arg1][arg2].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor4[arg1][(4 * arg2) + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, uint255(stor4[arg1][arg2].field_1)), data=mem[128 len ceil32(uint255(stor4[arg1][arg2].field_1))]), 
               uint256(stor4[arg1][arg2].field_256),
               uint256(stor4[arg1][arg2].field_512),
               uint256(stor4[arg1][arg2].field_768)
    if bool(stor4[arg1][arg2].field_0) == stor4[arg1][arg2].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor4[arg1][arg2].field_0):
        if bool(stor4[arg1][arg2].field_0) == uint255(stor4[arg1][arg2].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor4[arg1][arg2].field_1):
            if 31 >= uint255(stor4[arg1][arg2].field_1):
                mem[128] = 256 * Mask(248, 0, stor4[arg1][arg2].field_8)
            else:
                mem[128] = uint256(stor4[arg1][arg2].field_0)
                idx = 128
                s = 0
                while uint255(stor4[arg1][arg2].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor4[arg1][(4 * arg2) + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor4[arg1][arg2].field_0) == stor4[arg1][arg2].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor4[arg1][arg2].field_1 % 128:
            if 31 >= stor4[arg1][arg2].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor4[arg1][arg2].field_8)
            else:
                mem[128] = uint256(stor4[arg1][arg2].field_0)
                idx = 128
                s = 0
                while stor4[arg1][arg2].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor4[arg1][(4 * arg2) + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor4[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(stor4[arg1][arg2].field_1 % 128)]), 
           uint256(stor4[arg1][arg2].field_256),
           uint256(stor4[arg1][arg2].field_512),
           uint256(stor4[arg1][arg2].field_768)
}

function _getNodesNames(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1)
    delegate 0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1.0x732a2ccf with:
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
    mem[64] = ceil32(return_data.size) + (32 * uint256(stor4[address(arg1)].field_0)) + 128
    mem[ceil32(return_data.size) + 96] = uint256(stor4[address(arg1)].field_0)
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 4)
        _56 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                revert with 'NH{q', 34
            _62 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
            mem[_62] = uint255(stor4[address(arg1)][idx].field_1)
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor4[address(arg1)][idx].field_1):
                    if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                        mem[_62 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_62 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _62 + 32
                        u = sha3(mem[0])
                        while _62 + uint255(stor4[address(arg1)][idx].field_1) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_56] = _62
                mem[_56 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_56 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_56 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor4[address(arg1)][idx].field_1 % 128:
                mem[_56] = _62
                mem[_56 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_56 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_56 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_62 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_56] = _62
                mem[_56 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_56 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_56 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_62 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _62 + 32
            u = sha3(mem[0])
            while _62 + stor4[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_56] = _62
            mem[_56 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_56 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_56 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _56
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        _64 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
        mem[_64] = stor4[address(arg1)][idx].field_1 % 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor4[address(arg1)][idx].field_1):
                mem[_56] = _64
                mem[_56 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_56 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_56 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                mem[_64 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_56] = _64
                mem[_56 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_56 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_56 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_64 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _64 + 32
            u = sha3(mem[0])
            while _64 + uint255(stor4[address(arg1)][u].field_1) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_56] = _64
            mem[_56 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_56 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_56 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _56
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor4[address(arg1)][idx].field_1 % 128:
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_64 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_64 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _64 + 32
                u = sha3(mem[0])
                while _64 + stor4[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_56] = _64
        mem[_56 + 32] = uint256(stor4[address(arg1)][idx].field_256)
        mem[_56 + 64] = uint256(stor4[address(arg1)][idx].field_512)
        mem[_56 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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

function _migrateNodes(address arg1, string[] arg2, uint256[] arg3, uint256[] arg4, uint256[] arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + 97
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] <= test266151307()
        require arg2 + cd[s] + 67 < calldata.size
        if cd[(arg2 + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _117 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1
        mem[_117] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_117 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_117 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _117
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    _116 = mem[64]
    if mem[64] + floor32(arg3.length) + 1 > test266151307() or mem[64] + floor32(arg3.length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(arg3.length) + 1
    mem[_116] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = _116 + 32
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    _230 = mem[64]
    if mem[64] + floor32(arg4.length) + 1 > test266151307() or mem[64] + floor32(arg4.length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(arg4.length) + 1
    mem[_230] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = _230 + 32
    while idx < arg4.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    _342 = mem[64]
    if mem[64] + floor32(arg5.length) + 1 > test266151307() or mem[64] + floor32(arg5.length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(arg5.length) + 1
    mem[_342] = arg5.length
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    idx = 0
    s = arg5 + 36
    t = _342 + 32
    while idx < arg5.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == tokenAddress:
        _453 = mem[96]
        require mem[_116] == mem[96]
        require mem[_230] == mem[96]
        require arg5.length == mem[96]
        mem[32] = 4
        uint256(stor4[address(arg1)].field_0) = 0
        mem[0] = sha3(address(arg1), 4)
        idx = 0
        while sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)) > idx + sha3(mem[0]):
            if bool(stor[idx + sha3(mem[0])].field_0):
                if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                    revert with 'NH{q', 34
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            idx = idx + 4
            continue 
        idx = 0
        while idx < _453:
            mem[0] = arg1
            mem[32] = 4
            _662 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_662] = mem[(32 * idx) + 128]
            if idx >= mem[_116]:
                revert with 'NH{q', 50
            mem[_662 + 32] = mem[(32 * idx) + _116 + 32]
            if idx >= mem[_230]:
                revert with 'NH{q', 50
            mem[_662 + 64] = mem[(32 * idx) + _230 + 32]
            if idx >= mem[_342]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + _342 + 32] and 10^9 > -1 / mem[(32 * idx) + _342 + 32]:
                revert with 'NH{q', 17
            mem[_662 + 96] = 10^9 * mem[(32 * idx) + _342 + 32]
            uint256(stor4[address(arg1)].field_0)++
            mem[0] = sha3(address(arg1), 4)
            _684 = mem[_662]
            _685 = mem[mem[_662]]
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) < 32:
                    revert with 'NH{q', 34
                mem[0] = (4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))
                if not _685:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                    while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                else:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _685) + 1
                    t = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                    s = _684 + 32
                    while _684 + _685 + 32 > s:
                        uint256(stor[t].field_0) = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (Mask(251, 0, _685 + 31) >> 5)
                    while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = (4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))
                if not _685:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                    while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                else:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _685) + 1
                    t = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                    s = _684 + 32
                    while _684 + _685 + 32 > s:
                        uint256(stor[t].field_0) = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (Mask(251, 0, _685 + 31) >> 5)
                    while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = mem[_662 + 32]
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = mem[_662 + 64]
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = mem[_662 + 96]
            if totalNodesCreated == -1:
                revert with 'NH{q', 17
            totalNodesCreated++
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
        _456 = mem[96]
        require mem[_116] == mem[96]
        require mem[_230] == mem[96]
        require arg5.length == mem[96]
        mem[32] = 4
        uint256(stor4[address(arg1)].field_0) = 0
        mem[0] = sha3(address(arg1), 4)
        idx = 0
        while sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)) > idx + sha3(mem[0]):
            if bool(stor[idx + sha3(mem[0])].field_0):
                if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                    revert with 'NH{q', 34
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                if 31 < uint255(stor[idx + sha3(mem[0])].field_1):
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            idx = idx + 4
            continue 
        idx = 0
        while idx < _456:
            mem[0] = arg1
            mem[32] = 4
            _667 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_667] = mem[(32 * idx) + 128]
            if idx >= mem[_116]:
                revert with 'NH{q', 50
            mem[_667 + 32] = mem[(32 * idx) + _116 + 32]
            if idx >= mem[_230]:
                revert with 'NH{q', 50
            mem[_667 + 64] = mem[(32 * idx) + _230 + 32]
            if idx >= mem[_342]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + _342 + 32] and 10^9 > -1 / mem[(32 * idx) + _342 + 32]:
                revert with 'NH{q', 17
            mem[_667 + 96] = 10^9 * mem[(32 * idx) + _342 + 32]
            uint256(stor4[address(arg1)].field_0)++
            mem[0] = sha3(address(arg1), 4)
            _687 = mem[_667]
            _688 = mem[mem[_667]]
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) < 32:
                    revert with 'NH{q', 34
                mem[0] = (4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))
                if not _688:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                    while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                else:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _688) + 1
                    t = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                    s = _687 + 32
                    while _687 + _688 + 32 > s:
                        uint256(stor[t].field_0) = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (Mask(251, 0, _688 + 31) >> 5)
                    while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = (4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))
                if not _688:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                    while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                else:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _688) + 1
                    t = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                    s = _687 + 32
                    while _687 + _688 + 32 > s:
                        uint256(stor[t].field_0) = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (Mask(251, 0, _688 + 31) >> 5)
                    while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = mem[_667 + 32]
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = mem[_667 + 64]
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = mem[_667 + 96]
            if totalNodesCreated == -1:
                revert with 'NH{q', 17
            totalNodesCreated++
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    require ext_code.size(0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1)
    delegate 0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1.0xbc2b405c with:
         gas gas_remaining wei
        args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function createNodeForAddress(address arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if msg.sender == tokenAddress:
        mem[0] = arg1
        mem[32] = 4
        mem[64] = ceil32(ceil32(arg2.length)) + (32 * uint256(stor4[address(arg1)].field_0)) + 129
        mem[ceil32(ceil32(arg2.length)) + 97] = uint256(stor4[address(arg1)].field_0)
        s = ceil32(ceil32(arg2.length)) + 129
        idx = 0
        while idx < uint256(stor4[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 4)
            _163 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                _182 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
                mem[_182] = uint255(stor4[address(arg1)][idx].field_1)
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor4[address(arg1)][idx].field_1):
                        if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                            mem[_182 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_182 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _182 + 32
                            u = sha3(mem[0])
                            while _182 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_163] = _182
                    mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _163
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_163] = _182
                    mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _163
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_182 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_163] = _182
                    mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _163
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_182 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _182 + 32
                u = sha3(mem[0])
                while _182 + stor4[address(arg1)][u].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_163] = _182
                mem[_163 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_163 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_163 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _163
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            _186 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_186] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor4[address(arg1)][idx].field_1):
                    mem[_163] = _186
                    mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _163
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                    mem[_186 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_163] = _186
                    mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _163
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_186 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _186 + 32
                u = sha3(mem[0])
                while _186 + uint255(stor4[address(arg1)][u].field_1) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_163] = _186
                mem[_163 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_163 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_163 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _163
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor4[address(arg1)][idx].field_1 % 128:
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_186 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_186 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _186 + 32
                    u = sha3(mem[0])
                    while _186 + stor4[address(arg1)][idx].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_163] = _186
            mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
            mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
            mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
            mem[s] = _163
            s = s + 32
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[ceil32(ceil32(arg2.length)) + 97]:
            if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 50
            if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
                revert with 0, 'CREATE NODE: Name not available'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 4
        _333 = mem[64]
        mem[64] = mem[64] + 128
        mem[_333] = 96
        mem[_333 + 32] = arg3
        mem[_333 + 64] = arg4
        if arg5 and 10^9 > -1 / arg5:
            revert with 'NH{q', 17
        mem[_333 + 96] = 10^9 * arg5
    else:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
        mem[0] = arg1
        mem[32] = 4
        mem[64] = ceil32(ceil32(arg2.length)) + (32 * uint256(stor4[address(arg1)].field_0)) + 129
        mem[ceil32(ceil32(arg2.length)) + 97] = uint256(stor4[address(arg1)].field_0)
        s = ceil32(ceil32(arg2.length)) + 129
        idx = 0
        while idx < uint256(stor4[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 4)
            _165 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                _183 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
                mem[_183] = uint255(stor4[address(arg1)][idx].field_1)
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor4[address(arg1)][idx].field_1):
                        if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                            mem[_183 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_183 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _183 + 32
                            u = sha3(mem[0])
                            while _183 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_165] = _183
                    mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _165
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_165] = _183
                    mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _165
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_183 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_165] = _183
                    mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _165
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_183 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _183 + 32
                u = sha3(mem[0])
                while _183 + stor4[address(arg1)][u].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_165] = _183
                mem[_165 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_165 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_165 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _165
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            _189 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_189] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor4[address(arg1)][idx].field_1):
                    mem[_165] = _189
                    mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _165
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                    mem[_189 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_165] = _189
                    mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _165
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_189 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _189 + 32
                u = sha3(mem[0])
                while _189 + uint255(stor4[address(arg1)][u].field_1) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_165] = _189
                mem[_165 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_165 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_165 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _165
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor4[address(arg1)][idx].field_1 % 128:
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_189 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_189 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _189 + 32
                    u = sha3(mem[0])
                    while _189 + stor4[address(arg1)][idx].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_165] = _189
            mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
            mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
            mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
            mem[s] = _165
            s = s + 32
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[ceil32(ceil32(arg2.length)) + 97]:
            if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 'NH{q', 50
            if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
                revert with 0, 'CREATE NODE: Name not available'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 4
        _335 = mem[64]
        mem[64] = mem[64] + 128
        mem[_335] = 96
        mem[_335 + 32] = arg3
        mem[_335 + 64] = arg4
        if arg5 and 10^9 > -1 / arg5:
            revert with 'NH{q', 17
        mem[_335 + 96] = 10^9 * arg5
    uint256(stor4[address(arg1)].field_0)++
    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) < 32:
            revert with 'NH{q', 34
        if mem[96]:
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
            idx = 0
            while uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) + 31 / 32 > idx:
                uint256(stor4[address(arg1)][(4 * uint256(stor4[address(arg1)].field_0)) + idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if mem[96]:
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
            idx = 0
            while stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32 > idx:
                uint256(stor4[address(arg1)][(4 * uint256(stor4[address(arg1)].field_0)) + idx].field_0) = 0
                idx = idx + 1
                continue 
    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = arg3
    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = arg4
    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = 10^9 * arg5
    if totalNodesCreated == -1:
        revert with 'NH{q', 17
    totalNodesCreated++
    require ext_code.size(0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1)
    delegate 0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1.0xbc2b405c with:
         gas gas_remaining wei
        args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function createNode(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    else:
        if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
            revert with 'NH{q', 65
        else:
            mem[96] = arg2.length
            require arg2 + arg2.length + 36 <= calldata.size
            mem[128 len arg2.length] = arg2[all]
            mem[arg2.length + 128] = 0
            if msg.sender == tokenAddress:
                mem[0] = arg1
                mem[32] = 4
                mem[64] = ceil32(ceil32(arg2.length)) + (32 * uint256(stor4[address(arg1)].field_0)) + 129
                mem[ceil32(ceil32(arg2.length)) + 97] = uint256(stor4[address(arg1)].field_0)
                s = ceil32(ceil32(arg2.length)) + 129
                idx = 0
                while idx < uint256(stor4[address(arg1)].field_0):
                    mem[0] = sha3(address(arg1), 4)
                    _163 = mem[64]
                    mem[64] = mem[64] + 128
                    if bool(stor4[address(arg1)][idx].field_0):
                        if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                            revert with 'NH{q', 34
                        else:
                            _182 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
                            mem[_182] = uint255(stor4[address(arg1)][idx].field_1)
                            if bool(stor4[address(arg1)][idx].field_0):
                                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                                    revert with 'NH{q', 34
                                else:
                                    if not uint255(stor4[address(arg1)][idx].field_1):
                                        mem[_163] = _182
                                        mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                        mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                        mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                        mem[s] = _163
                                        s = s + 32
                                        idx = idx + 1
                                        continue 
                                    else:
                                        if 31 < uint255(stor4[address(arg1)][idx].field_1):
                                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                            mem[_182 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                            t = _182 + 32
                                            u = sha3(mem[0])
                                            while _182 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                                mem[t + 32] = stor1[u]
                                                t = t + 32
                                                u = u + 1
                                                continue 
                                            mem[_163] = _182
                                            mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                            mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                            mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                            mem[s] = _163
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        else:
                                            mem[_182 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                            mem[_163] = _182
                                            mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                            mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                            mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                            mem[s] = _163
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                            else:
                                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                                    revert with 'NH{q', 34
                                else:
                                    if not stor4[address(arg1)][idx].field_1 % 128:
                                        mem[_163] = _182
                                        mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                        mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                        mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                        mem[s] = _163
                                        s = s + 32
                                        idx = idx + 1
                                        continue 
                                    else:
                                        if 31 < stor4[address(arg1)][idx].field_1 % 128:
                                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                            mem[_182 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                            t = _182 + 32
                                            u = sha3(mem[0])
                                            while _182 + stor4[address(arg1)][u].field_1 % 128 > t:
                                                mem[t + 32] = stor1[u]
                                                t = t + 32
                                                u = u + 1
                                                continue 
                                            mem[_163] = _182
                                            mem[_163 + 32] = uint256(stor4[address(arg1)][u].field_256)
                                            mem[_163 + 64] = uint256(stor4[address(arg1)][u].field_512)
                                            mem[_163 + 96] = uint256(stor4[address(arg1)][u].field_768)
                                            mem[t] = _163
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                        else:
                                            mem[_182 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                            mem[_163] = _182
                                            mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                            mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                            mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                            mem[s] = _163
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                    else:
                        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        else:
                            _189 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
                            mem[_189] = stor4[address(arg1)][idx].field_1 % 128
                            if bool(stor4[address(arg1)][idx].field_0):
                                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                                    revert with 'NH{q', 34
                                else:
                                    if not uint255(stor4[address(arg1)][idx].field_1):
                                        mem[_163] = _189
                                        mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                        mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                        mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                        mem[s] = _163
                                        s = s + 32
                                        idx = idx + 1
                                        continue 
                                    else:
                                        if 31 < uint255(stor4[address(arg1)][idx].field_1):
                                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                            mem[_189 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                            t = _189 + 32
                                            u = sha3(mem[0])
                                            while _189 + uint255(stor4[address(arg1)][u].field_1) > t:
                                                mem[t + 32] = stor1[u]
                                                t = t + 32
                                                u = u + 1
                                                continue 
                                            mem[_163] = _189
                                            mem[_163 + 32] = uint256(stor4[address(arg1)][u].field_256)
                                            mem[_163 + 64] = uint256(stor4[address(arg1)][u].field_512)
                                            mem[_163 + 96] = uint256(stor4[address(arg1)][u].field_768)
                                            mem[t] = _163
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                        else:
                                            mem[_189 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                            mem[_163] = _189
                                            mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                            mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                            mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                            mem[s] = _163
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                            else:
                                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                                    revert with 'NH{q', 34
                                else:
                                    if not stor4[address(arg1)][idx].field_1 % 128:
                                        mem[_163] = _189
                                        mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                        mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                        mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                        mem[s] = _163
                                        s = s + 32
                                        idx = idx + 1
                                        continue 
                                    else:
                                        if 31 < stor4[address(arg1)][idx].field_1 % 128:
                                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                            mem[_189 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                            t = _189 + 32
                                            u = sha3(mem[0])
                                            while _189 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                                mem[t + 32] = stor1[u]
                                                t = t + 32
                                                u = u + 1
                                                continue 
                                            mem[_163] = _189
                                            mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                            mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                            mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                            mem[s] = _163
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        else:
                                            mem[_189 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                            mem[_163] = _189
                                            mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                            mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                            mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                            mem[s] = _163
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                idx = 0
                while idx < mem[ceil32(ceil32(arg2.length)) + 97]:
                    if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                        revert with 'NH{q', 50
                    else:
                        if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
                            revert with 0, 'CREATE NODE: Name not available'
                        else:
                            if idx == -1:
                                revert with 'NH{q', 17
                            else:
                                idx = idx + 1
                                continue 
                mem[0] = arg1
                mem[32] = 4
                _333 = mem[64]
                mem[64] = mem[64] + 128
                mem[_333] = 96
                mem[_333 + 32] = block.timestamp
                mem[_333 + 64] = 0
                mem[_333 + 96] = 0
                uint256(stor4[address(arg1)].field_0)++
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) < 32:
                        revert with 'NH{q', 34
                    else:
                        if mem[96]:
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = block.timestamp
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = 0
                            require ext_code.size(0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1)
                            delegate 0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1.0xbc2b405c with:
                                 gas gas_remaining wei
                                args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if totalNodesCreated == -1:
                                    revert with 'NH{q', 17
                                else:
                                    totalNodesCreated++
                                    if not uint8(stor9.field_160):
                                    else:
                                        if uint8(stor9.field_168):
                                        else:
                        else:
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                            idx = 0
                            while uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) + 31 / 32 > idx:
                                uint256(stor4[address(arg1)][(4 * uint256(stor4[address(arg1)].field_0)) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = block.timestamp
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = 0
                            require ext_code.size(0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1)
                            delegate 0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1.0xbc2b405c with:
                                 gas gas_remaining wei
                                args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if totalNodesCreated == -1:
                                    revert with 'NH{q', 17
                                else:
                                    totalNodesCreated++
                                    if not uint8(stor9.field_160):
                                    else:
                                        if uint8(stor9.field_168):
                                        else:
                else:
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    else:
                        if mem[96]:
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = block.timestamp
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = 0
                            require ext_code.size(0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1)
                            delegate 0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1.0xbc2b405c with:
                                 gas gas_remaining wei
                                args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if totalNodesCreated == -1:
                                    revert with 'NH{q', 17
                                else:
                                    totalNodesCreated++
                                    if not uint8(stor9.field_160):
                                    else:
                                        if uint8(stor9.field_168):
                                        else:
                        else:
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                            idx = 0
                            while stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32 > idx:
                                uint256(stor4[address(arg1)][(4 * uint256(stor4[address(arg1)].field_0)) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = block.timestamp
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = 0
                            require ext_code.size(0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1)
                            delegate 0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1.0xbc2b405c with:
                                 gas gas_remaining wei
                                args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if totalNodesCreated == -1:
                                    revert with 'NH{q', 17
                                else:
                                    totalNodesCreated++
                                    if not uint8(stor9.field_160):
                                    else:
                                        if uint8(stor9.field_168):
                                        else:
            else:
                if gateKeeperAddress != msg.sender:
                    revert with 0, 'Fuck off'
                else:
                    mem[0] = arg1
                    mem[32] = 4
                    mem[64] = ceil32(ceil32(arg2.length)) + (32 * uint256(stor4[address(arg1)].field_0)) + 129
                    mem[ceil32(ceil32(arg2.length)) + 97] = uint256(stor4[address(arg1)].field_0)
                    s = ceil32(ceil32(arg2.length)) + 129
                    idx = 0
                    while idx < uint256(stor4[address(arg1)].field_0):
                        mem[0] = sha3(address(arg1), 4)
                        _165 = mem[64]
                        mem[64] = mem[64] + 128
                        if bool(stor4[address(arg1)][idx].field_0):
                            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                                revert with 'NH{q', 34
                            else:
                                _183 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
                                mem[_183] = uint255(stor4[address(arg1)][idx].field_1)
                                if bool(stor4[address(arg1)][idx].field_0):
                                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                                        revert with 'NH{q', 34
                                    else:
                                        if not uint255(stor4[address(arg1)][idx].field_1):
                                            mem[_165] = _183
                                            mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                            mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                            mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                            mem[s] = _165
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if 31 < uint255(stor4[address(arg1)][idx].field_1):
                                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                                mem[_183 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                                t = _183 + 32
                                                u = sha3(mem[0])
                                                while _183 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                                    mem[t + 32] = stor1[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                mem[_165] = _183
                                                mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                                mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                                mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                                mem[s] = _165
                                                s = s + 32
                                                idx = idx + 1
                                                continue 
                                            else:
                                                mem[_183 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                                mem[_165] = _183
                                                mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                                mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                                mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                                mem[s] = _165
                                                s = s + 32
                                                idx = idx + 1
                                                continue 
                                else:
                                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    else:
                                        if not stor4[address(arg1)][idx].field_1 % 128:
                                            mem[_165] = _183
                                            mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                            mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                            mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                            mem[s] = _165
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if 31 < stor4[address(arg1)][idx].field_1 % 128:
                                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                                mem[_183 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                                t = _183 + 32
                                                u = sha3(mem[0])
                                                while _183 + stor4[address(arg1)][u].field_1 % 128 > t:
                                                    mem[t + 32] = stor1[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                mem[_165] = _183
                                                mem[_165 + 32] = uint256(stor4[address(arg1)][u].field_256)
                                                mem[_165 + 64] = uint256(stor4[address(arg1)][u].field_512)
                                                mem[_165 + 96] = uint256(stor4[address(arg1)][u].field_768)
                                                mem[t] = _165
                                                t = t + 32
                                                u = u + 1
                                                continue 
                                            else:
                                                mem[_183 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                                mem[_165] = _183
                                                mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                                mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                                mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                                mem[s] = _165
                                                s = s + 32
                                                idx = idx + 1
                                                continue 
                        else:
                            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            else:
                                _195 = mem[64]
                                mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
                                mem[_195] = stor4[address(arg1)][idx].field_1 % 128
                                if bool(stor4[address(arg1)][idx].field_0):
                                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                                        revert with 'NH{q', 34
                                    else:
                                        if not uint255(stor4[address(arg1)][idx].field_1):
                                            mem[_165] = _195
                                            mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                            mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                            mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                            mem[s] = _165
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if 31 < uint255(stor4[address(arg1)][idx].field_1):
                                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                                mem[_195 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                                t = _195 + 32
                                                u = sha3(mem[0])
                                                while _195 + uint255(stor4[address(arg1)][u].field_1) > t:
                                                    mem[t + 32] = stor1[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                mem[_165] = _195
                                                mem[_165 + 32] = uint256(stor4[address(arg1)][u].field_256)
                                                mem[_165 + 64] = uint256(stor4[address(arg1)][u].field_512)
                                                mem[_165 + 96] = uint256(stor4[address(arg1)][u].field_768)
                                                mem[t] = _165
                                                t = t + 32
                                                u = u + 1
                                                continue 
                                            else:
                                                mem[_195 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                                mem[_165] = _195
                                                mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                                mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                                mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                                mem[s] = _165
                                                s = s + 32
                                                idx = idx + 1
                                                continue 
                                else:
                                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    else:
                                        if not stor4[address(arg1)][idx].field_1 % 128:
                                            mem[_165] = _195
                                            mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                            mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                            mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                            mem[s] = _165
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if 31 < stor4[address(arg1)][idx].field_1 % 128:
                                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                                mem[_195 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                                t = _195 + 32
                                                u = sha3(mem[0])
                                                while _195 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                                    mem[t + 32] = stor1[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                mem[_165] = _195
                                                mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                                mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                                mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                                mem[s] = _165
                                                s = s + 32
                                                idx = idx + 1
                                                continue 
                                            else:
                                                mem[_195 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                                mem[_165] = _195
                                                mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                                mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                                mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                                mem[s] = _165
                                                s = s + 32
                                                idx = idx + 1
                                                continue 
                    idx = 0
                    while idx < mem[ceil32(ceil32(arg2.length)) + 97]:
                        if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                            revert with 'NH{q', 50
                        else:
                            if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
                                revert with 0, 'CREATE NODE: Name not available'
                            else:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                else:
                                    idx = idx + 1
                                    continue 
                    mem[0] = arg1
                    mem[32] = 4
                    _338 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_338] = 96
                    mem[_338 + 32] = block.timestamp
                    mem[_338 + 64] = 0
                    mem[_338 + 96] = 0
                    uint256(stor4[address(arg1)].field_0)++
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) < 32:
                            revert with 'NH{q', 34
                        else:
                            if mem[96]:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = block.timestamp
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = 0
                                require ext_code.size(0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1)
                                delegate 0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1.0xbc2b405c with:
                                     gas gas_remaining wei
                                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if totalNodesCreated == -1:
                                        revert with 'NH{q', 17
                                    else:
                                        totalNodesCreated++
                                        if not uint8(stor9.field_160):
                                        else:
                                            if uint8(stor9.field_168):
                                            else:
                            else:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                                idx = 0
                                while uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) + 31 / 32 > idx:
                                    uint256(stor4[address(arg1)][(4 * uint256(stor4[address(arg1)].field_0)) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = block.timestamp
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = 0
                                require ext_code.size(0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1)
                                delegate 0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1.0xbc2b405c with:
                                     gas gas_remaining wei
                                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if totalNodesCreated == -1:
                                        revert with 'NH{q', 17
                                    else:
                                        totalNodesCreated++
                                        if not uint8(stor9.field_160):
                                        else:
                                            if uint8(stor9.field_168):
                                            else:
                    else:
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        else:
                            if mem[96]:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = block.timestamp
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = 0
                                require ext_code.size(0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1)
                                delegate 0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1.0xbc2b405c with:
                                     gas gas_remaining wei
                                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if totalNodesCreated == -1:
                                        revert with 'NH{q', 17
                                    else:
                                        totalNodesCreated++
                                        if not uint8(stor9.field_160):
                                        else:
                                            if uint8(stor9.field_168):
                                            else:
                            else:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                                idx = 0
                                while stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor4[address(arg1)][(4 * uint256(stor4[address(arg1)].field_0)) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = block.timestamp
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = 0
                                require ext_code.size(0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1)
                                delegate 0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1.0xbc2b405c with:
                                     gas gas_remaining wei
                                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if totalNodesCreated == -1:
                                        revert with 'NH{q', 17
                                    else:
                                        totalNodesCreated++
                                        if not uint8(stor9.field_160):
                                        else:
                                            if uint8(stor9.field_168):
                                            else:
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1)
    delegate 0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1.0x732a2ccf with:
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
    mem[64] = ceil32(return_data.size) + (32 * uint256(stor4[address(arg1)].field_0)) + 128
    mem[ceil32(return_data.size) + 96] = uint256(stor4[address(arg1)].field_0)
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 4)
        _58 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                revert with 'NH{q', 34
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
            mem[_63] = uint255(stor4[address(arg1)][idx].field_1)
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor4[address(arg1)][idx].field_1):
                    if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                        mem[_63 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_63 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _63 + 32
                        u = sha3(mem[0])
                        while _63 + uint255(stor4[address(arg1)][idx].field_1) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_58] = _63
                mem[_58 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_58 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_58 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor4[address(arg1)][idx].field_1 % 128:
                mem[_58] = _63
                mem[_58 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_58 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_58 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_63 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_58] = _63
                mem[_58 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_58 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_58 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_63 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _63 + 32
            u = sha3(mem[0])
            while _63 + stor4[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_58] = _63
            mem[_58 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_58 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_58 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
        mem[_65] = stor4[address(arg1)][idx].field_1 % 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor4[address(arg1)][idx].field_1):
                mem[_58] = _65
                mem[_58 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_58 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_58 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                mem[_65 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_58] = _65
                mem[_58 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_58 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_58 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_65 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _65 + 32
            u = sha3(mem[0])
            while _65 + uint255(stor4[address(arg1)][u].field_1) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_58] = _65
            mem[_58 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_58 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_58 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor4[address(arg1)][idx].field_1 % 128:
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_65 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_65 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _65 + 32
                u = sha3(mem[0])
                while _65 + stor4[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_58] = _65
        mem[_58 + 32] = uint256(stor4[address(arg1)][idx].field_256)
        mem[_58 + 64] = uint256(stor4[address(arg1)][idx].field_512)
        mem[_58 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
    require ext_code.size(0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1)
    delegate 0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1.0x732a2ccf with:
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
    mem[64] = ceil32(return_data.size) + (32 * uint256(stor4[address(arg1)].field_0)) + 128
    mem[ceil32(return_data.size) + 96] = uint256(stor4[address(arg1)].field_0)
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 4)
        _58 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                revert with 'NH{q', 34
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
            mem[_63] = uint255(stor4[address(arg1)][idx].field_1)
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor4[address(arg1)][idx].field_1):
                    if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                        mem[_63 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_63 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _63 + 32
                        u = sha3(mem[0])
                        while _63 + uint255(stor4[address(arg1)][idx].field_1) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_58] = _63
                mem[_58 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_58 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_58 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor4[address(arg1)][idx].field_1 % 128:
                mem[_58] = _63
                mem[_58 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_58 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_58 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_63 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_58] = _63
                mem[_58 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_58 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_58 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_63 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _63 + 32
            u = sha3(mem[0])
            while _63 + stor4[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_58] = _63
            mem[_58 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_58 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_58 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
        mem[_65] = stor4[address(arg1)][idx].field_1 % 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor4[address(arg1)][idx].field_1):
                mem[_58] = _65
                mem[_58 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_58 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_58 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                mem[_65 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_58] = _65
                mem[_58 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_58 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_58 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_65 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _65 + 32
            u = sha3(mem[0])
            while _65 + uint255(stor4[address(arg1)][u].field_1) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_58] = _65
            mem[_58 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_58 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_58 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor4[address(arg1)][idx].field_1 % 128:
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_65 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_65 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _65 + 32
                u = sha3(mem[0])
                while _65 + stor4[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_58] = _65
        mem[_58 + 32] = uint256(stor4[address(arg1)][idx].field_256)
        mem[_58 + 64] = uint256(stor4[address(arg1)][idx].field_512)
        mem[_58 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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

function _getRewardAmountOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1)
    delegate 0xb0c7df3596dce61bc0f7fa1bdbda9cd9d224d0c1.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 4
    idx = 0
    s = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 4)
        _526 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                revert with 'NH{q', 34
            _527 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
            mem[_527] = uint255(stor4[address(arg1)][idx].field_1)
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor4[address(arg1)][idx].field_1):
                    mem[_526] = _527
                    mem[_526 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_526 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_526 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    if uint256(stor4[address(arg1)][idx].field_512):
                        _536 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_536] = 30
                        mem[_536 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                            _544 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_544 + idx + 68] = mem[_536 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_544 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _544 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                            revert with 'NH{q', 17
                        _589 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_589] = 26
                        mem[_589 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _605 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_605 + idx + 68] = mem[_589 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_605 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _605 + -mem[64] + 100
                        if not claimTime:
                            revert with 'NH{q', 18
                        if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                            revert with 'NH{q', 17
                        if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                            revert with 'NH{q', 17
                        if not rewardPerNode:
                            revert with 'NH{q', 18
                        if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                            revert with 'NH{q', 17
                        if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                        continue 
                    _585 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_585] = 30
                    mem[_585 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                        _596 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_596 + idx + 68] = mem[_585 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_596 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _596 + -mem[64] + 100
                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                        revert with 'NH{q', 17
                    _699 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_699] = 26
                    mem[_699 + 32] = 'SafeMath: division by zero'
                    if claimTime <= 0:
                        _713 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_713 + idx + 68] = mem[_699 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_713 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _713 + -mem[64] + 100
                else:
                    if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                        mem[_527 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_526] = _527
                        mem[_526 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_526 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_526 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _546 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_546] = 30
                            mem[_546 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _556 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_556 + idx + 68] = mem[_546 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_556 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _556 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _606 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_606] = 26
                            mem[_606 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _629 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_629 + idx + 68] = mem[_606 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_629 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _629 + -mem[64] + 100
                            if not claimTime:
                                revert with 'NH{q', 18
                            if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 'NH{q', 17
                            if not rewardPerNode:
                                revert with 'NH{q', 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _599 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_599] = 30
                        mem[_599 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _618 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_618 + idx + 68] = mem[_599 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_618 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _618 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _715 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_715] = 26
                        mem[_715 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _730 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_730 + idx + 68] = mem[_715 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_730 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _730 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_527 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _527 + 32
                        u = sha3(mem[0])
                        while _527 + uint255(stor4[address(arg1)][idx].field_1) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_526] = _527
                        mem[_526 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_526 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_526 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1074 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1074] = 30
                            mem[_1074 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1082 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1082 + idx + 68] = mem[_1074 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1082 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1082 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _1162 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1162] = 26
                            mem[_1162 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1170 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1170 + idx + 68] = mem[_1162 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1170 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1170 + -mem[64] + 100
                            if not claimTime:
                                revert with 'NH{q', 18
                            if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 'NH{q', 17
                            if not rewardPerNode:
                                revert with 'NH{q', 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1155 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1155] = 30
                        mem[_1155 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1166 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1166 + idx + 68] = mem[_1155 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1166 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1166 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _1195 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1195] = 26
                        mem[_1195 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _1202 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1202 + idx + 68] = mem[_1195 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1202 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1202 + -mem[64] + 100
            else:
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_526] = _527
                    mem[_526 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_526 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_526 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    if uint256(stor4[address(arg1)][idx].field_512):
                        _540 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_540] = 30
                        mem[_540 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                            _549 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_549 + idx + 68] = mem[_540 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_549 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _549 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                            revert with 'NH{q', 17
                        _600 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_600] = 26
                        mem[_600 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _619 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_619 + idx + 68] = mem[_600 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_619 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _619 + -mem[64] + 100
                        if not claimTime:
                            revert with 'NH{q', 18
                        if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                            revert with 'NH{q', 17
                        if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                            revert with 'NH{q', 17
                        if not rewardPerNode:
                            revert with 'NH{q', 18
                        if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                            revert with 'NH{q', 17
                        if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                        continue 
                    _591 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_591] = 30
                    mem[_591 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                        _607 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_607 + idx + 68] = mem[_591 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_607 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _607 + -mem[64] + 100
                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                        revert with 'NH{q', 17
                    _708 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_708] = 26
                    mem[_708 + 32] = 'SafeMath: division by zero'
                    if claimTime <= 0:
                        _721 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_721 + idx + 68] = mem[_708 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_721 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _721 + -mem[64] + 100
                else:
                    if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                        mem[_527 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_526] = _527
                        mem[_526 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_526 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_526 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _551 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_551] = 30
                            mem[_551 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _562 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_562 + idx + 68] = mem[_551 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_562 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _562 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _620 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_620] = 26
                            mem[_620 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _643 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_643 + idx + 68] = mem[_620 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_643 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _643 + -mem[64] + 100
                            if not claimTime:
                                revert with 'NH{q', 18
                            if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 'NH{q', 17
                            if not rewardPerNode:
                                revert with 'NH{q', 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _610 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_610] = 30
                        mem[_610 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _632 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_632 + idx + 68] = mem[_610 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_632 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _632 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _723 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_723] = 26
                        mem[_723 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _740 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_740 + idx + 68] = mem[_723 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_740 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _740 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_527 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _527 + 32
                        u = sha3(mem[0])
                        while _527 + stor4[address(arg1)][idx].field_1 % 128 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_526] = _527
                        mem[_526 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_526 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_526 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1075 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1075] = 30
                            mem[_1075 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1091 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1091 + idx + 68] = mem[_1075 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1091 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1091 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _1163 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1163] = 26
                            mem[_1163 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1171 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1171 + idx + 68] = mem[_1163 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1171 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1171 + -mem[64] + 100
                            if not claimTime:
                                revert with 'NH{q', 18
                            if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 'NH{q', 17
                            if not rewardPerNode:
                                revert with 'NH{q', 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1157 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1157] = 30
                        mem[_1157 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1167 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1167 + idx + 68] = mem[_1157 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1167 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1167 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _1197 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1197] = 26
                        mem[_1197 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _1203 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1203 + idx + 68] = mem[_1197 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1203 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1203 + -mem[64] + 100
        else:
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            _529 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_529] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor4[address(arg1)][idx].field_1):
                    mem[_526] = _529
                    mem[_526 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_526 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_526 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    if uint256(stor4[address(arg1)][idx].field_512):
                        _542 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_542] = 30
                        mem[_542 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                            _552 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_552 + idx + 68] = mem[_542 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_552 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _552 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                            revert with 'NH{q', 17
                        _601 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_601] = 26
                        mem[_601 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _621 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_621 + idx + 68] = mem[_601 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_621 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _621 + -mem[64] + 100
                        if not claimTime:
                            revert with 'NH{q', 18
                        if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                            revert with 'NH{q', 17
                        if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                            revert with 'NH{q', 17
                        if not rewardPerNode:
                            revert with 'NH{q', 18
                        if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                            revert with 'NH{q', 17
                        if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                        continue 
                    _594 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_594] = 30
                    mem[_594 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                        _611 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_611 + idx + 68] = mem[_594 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_611 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _611 + -mem[64] + 100
                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                        revert with 'NH{q', 17
                    _710 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_710] = 26
                    mem[_710 + 32] = 'SafeMath: division by zero'
                    if claimTime <= 0:
                        _724 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_724 + idx + 68] = mem[_710 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_724 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _724 + -mem[64] + 100
                else:
                    if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                        mem[_529 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_526] = _529
                        mem[_526 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_526 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_526 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _554 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_554] = 30
                            mem[_554 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _564 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_564 + idx + 68] = mem[_554 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_564 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _564 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _622 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_622] = 26
                            mem[_622 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _646 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_646 + idx + 68] = mem[_622 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_646 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _646 + -mem[64] + 100
                            if not claimTime:
                                revert with 'NH{q', 18
                            if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 'NH{q', 17
                            if not rewardPerNode:
                                revert with 'NH{q', 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _614 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_614] = 30
                        mem[_614 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _635 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_635 + idx + 68] = mem[_614 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_635 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _635 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _726 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_726] = 26
                        mem[_726 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _743 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_743 + idx + 68] = mem[_726 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_743 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _743 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_529 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _529 + 32
                        u = sha3(mem[0])
                        while _529 + uint255(stor4[address(arg1)][idx].field_1) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_526] = _529
                        mem[_526 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_526 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_526 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1076 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1076] = 30
                            mem[_1076 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1100 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1100 + idx + 68] = mem[_1076 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1100 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1100 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _1164 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1164] = 26
                            mem[_1164 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1172 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1172 + idx + 68] = mem[_1164 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1172 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1172 + -mem[64] + 100
                            if not claimTime:
                                revert with 'NH{q', 18
                            if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 'NH{q', 17
                            if not rewardPerNode:
                                revert with 'NH{q', 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1159 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1159] = 30
                        mem[_1159 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1168 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1168 + idx + 68] = mem[_1159 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1168 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1168 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _1199 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1199] = 26
                        mem[_1199 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _1204 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1204 + idx + 68] = mem[_1199 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1204 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1204 + -mem[64] + 100
            else:
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_526] = _529
                    mem[_526 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_526 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_526 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    if uint256(stor4[address(arg1)][idx].field_512):
                        _547 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_547] = 30
                        mem[_547 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                            _557 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_557 + idx + 68] = mem[_547 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_557 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _557 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                            revert with 'NH{q', 17
                        _615 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_615] = 26
                        mem[_615 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _636 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_636 + idx + 68] = mem[_615 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_636 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _636 + -mem[64] + 100
                        if not claimTime:
                            revert with 'NH{q', 18
                        if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                            revert with 'NH{q', 17
                        if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                            revert with 'NH{q', 17
                        if not rewardPerNode:
                            revert with 'NH{q', 18
                        if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                            revert with 'NH{q', 17
                        if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                        continue 
                    _603 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_603] = 30
                    mem[_603 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                        _623 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_623 + idx + 68] = mem[_603 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_623 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _623 + -mem[64] + 100
                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                        revert with 'NH{q', 17
                    _719 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_719] = 26
                    mem[_719 + 32] = 'SafeMath: division by zero'
                    if claimTime <= 0:
                        _733 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_733 + idx + 68] = mem[_719 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_733 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _733 + -mem[64] + 100
                else:
                    if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                        mem[_529 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_526] = _529
                        mem[_526 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_526 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_526 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _559 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_559] = 30
                            mem[_559 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _569 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_569 + idx + 68] = mem[_559 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_569 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _569 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _637 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_637] = 26
                            mem[_637 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _661 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_661 + idx + 68] = mem[_637 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_661 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _661 + -mem[64] + 100
                            if not claimTime:
                                revert with 'NH{q', 18
                            if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 'NH{q', 17
                            if not rewardPerNode:
                                revert with 'NH{q', 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _626 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_626] = 30
                        mem[_626 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _649 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_649 + idx + 68] = mem[_626 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_649 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _649 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _735 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_735] = 26
                        mem[_735 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _754 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_754 + idx + 68] = mem[_735 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_754 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _754 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_529 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _529 + 32
                        u = sha3(mem[0])
                        while _529 + stor4[address(arg1)][idx].field_1 % 128 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_526] = _529
                        mem[_526 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_526 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_526 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1077 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1077] = 30
                            mem[_1077 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1109 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1109 + idx + 68] = mem[_1077 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1109 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1109 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _1165 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1165] = 26
                            mem[_1165 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1173 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1173 + idx + 68] = mem[_1165 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1173 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1173 + -mem[64] + 100
                            if not claimTime:
                                revert with 'NH{q', 18
                            if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 'NH{q', 17
                            if not rewardPerNode:
                                revert with 'NH{q', 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1161 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1161] = 30
                        mem[_1161 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1169 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1169 + idx + 68] = mem[_1161 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1169 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1169 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _1201 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1201] = 26
                        mem[_1201 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _1205 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1205 + idx + 68] = mem[_1201 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1205 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1205 + -mem[64] + 100
        ('gt', ('stor', ('name', 'claimTime', 7)), 0)
        if not claimTime:
            revert with 'NH{q', 18
        if 1 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) - 1:
            revert with 'NH{q', 17
        if (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1 < 1:
            revert with 0, 'SafeMath: addition overflow'
        if not rewardPerNode:
            if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                revert with 'NH{q', 17
            if uint256(stor4[address(arg1)][idx].field_768) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + uint256(stor4[address(arg1)][idx].field_768)
            continue 
        if rewardPerNode and (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1 > -1 / rewardPerNode:
            revert with 'NH{q', 17
        if not rewardPerNode:
            revert with 'NH{q', 18
        if rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) / rewardPerNode != (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) > -uint256(stor4[address(arg1)][idx].field_768) - 1:
            revert with 'NH{q', 17
        if uint256(stor4[address(arg1)][idx].field_768) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if s > -rewardPerNode + (-1 * block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) + uint256(stor4[address(arg1)][idx].field_768)
        continue 
    return s
}

function _cashoutAllNodesReward(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == tokenAddress:
        mem[0] = arg1
        mem[32] = 4
        if uint256(stor4[address(arg1)].field_0) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
        idx = 0
        s = 0
        while idx < uint256(stor4[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 4)
            _1236 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                _1239 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
                mem[_1239] = uint255(stor4[address(arg1)][idx].field_1)
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor4[address(arg1)][idx].field_1):
                        mem[_1236] = _1239
                        mem[_1236 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1236 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1236 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1257 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1257] = 30
                            mem[_1257 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1273 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1273 + idx + 68] = mem[_1257 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1273 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1273 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _1363 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1363] = 26
                            mem[_1363 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1395 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1395 + idx + 68] = mem[_1363 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1395 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1395 + -mem[64] + 100
                            if not claimTime:
                                revert with 'NH{q', 18
                            if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 'NH{q', 17
                            if not rewardPerNode:
                                revert with 'NH{q', 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx >= uint256(stor4[address(arg1)].field_0):
                                revert with 'NH{q', 50
                            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            uint256(stor4[address(arg1)][idx].field_768) = 0
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1354 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1354] = 30
                        mem[_1354 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1377 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1377 + idx + 68] = mem[_1354 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1377 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1377 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _1582 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1582] = 26
                        mem[_1582 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _1611 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1611 + idx + 68] = mem[_1582 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1611 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1611 + -mem[64] + 100
                    else:
                        if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                            mem[_1239 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1236] = _1239
                            mem[_1236 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1236 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1236 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1275 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1275] = 30
                                mem[_1275 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1296 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1296 + idx + 68] = mem[_1275 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1296 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1296 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _1396 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1396] = 26
                                mem[_1396 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _1441 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1441 + idx + 68] = mem[_1396 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1441 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1441 + -mem[64] + 100
                                if not claimTime:
                                    revert with 'NH{q', 18
                                if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 'NH{q', 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 'NH{q', 17
                                if not rewardPerNode:
                                    revert with 'NH{q', 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _1380 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1380] = 30
                            mem[_1380 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _1419 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1419 + idx + 68] = mem[_1380 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1419 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1419 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _1613 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1613] = 26
                            mem[_1613 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1643 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1643 + idx + 68] = mem[_1613 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1643 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1643 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1239 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1239 + 32
                            u = sha3(mem[0])
                            while _1239 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1236] = _1239
                            mem[_1236 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1236 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1236 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _2525 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2525] = 30
                                mem[_2525 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _2537 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2537 + idx + 68] = mem[_2525 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2537 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2537 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2701 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2701] = 26
                                mem[_2701 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2717 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2717 + idx + 68] = mem[_2701 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2717 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2717 + -mem[64] + 100
                                if not claimTime:
                                    revert with 'NH{q', 18
                                if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 'NH{q', 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 'NH{q', 17
                                if not rewardPerNode:
                                    revert with 'NH{q', 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _2686 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2686] = 30
                            mem[_2686 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2709 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2709 + idx + 68] = mem[_2686 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2709 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2709 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2766 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2766] = 26
                            mem[_2766 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2781 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2781 + idx + 68] = mem[_2766 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2781 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2781 + -mem[64] + 100
                else:
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor4[address(arg1)][idx].field_1 % 128:
                        mem[_1236] = _1239
                        mem[_1236 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1236 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1236 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1265 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1265] = 30
                            mem[_1265 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1283 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1283 + idx + 68] = mem[_1265 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1283 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1283 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _1381 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1381] = 26
                            mem[_1381 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1420 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1420 + idx + 68] = mem[_1381 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1420 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1420 + -mem[64] + 100
                            if not claimTime:
                                revert with 'NH{q', 18
                            if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 'NH{q', 17
                            if not rewardPerNode:
                                revert with 'NH{q', 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx >= uint256(stor4[address(arg1)].field_0):
                                revert with 'NH{q', 50
                            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            uint256(stor4[address(arg1)][idx].field_768) = 0
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1365 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1365] = 30
                        mem[_1365 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1397 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1397 + idx + 68] = mem[_1365 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1397 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1397 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _1599 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1599] = 26
                        mem[_1599 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _1626 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1626 + idx + 68] = mem[_1599 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1626 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1626 + -mem[64] + 100
                    else:
                        if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1239 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1236] = _1239
                            mem[_1236 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1236 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1236 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1285 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1285] = 30
                                mem[_1285 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1307 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1307 + idx + 68] = mem[_1285 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1307 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1307 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _1421 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1421] = 26
                                mem[_1421 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _1466 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1466 + idx + 68] = mem[_1421 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1466 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1466 + -mem[64] + 100
                                if not claimTime:
                                    revert with 'NH{q', 18
                                if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 'NH{q', 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 'NH{q', 17
                                if not rewardPerNode:
                                    revert with 'NH{q', 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _1400 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1400] = 30
                            mem[_1400 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _1444 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1444 + idx + 68] = mem[_1400 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1444 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1444 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _1628 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1628] = 26
                            mem[_1628 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1661 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1661 + idx + 68] = mem[_1628 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1661 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1661 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1239 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1239 + 32
                            u = sha3(mem[0])
                            while _1239 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1236] = _1239
                            mem[_1236 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1236 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1236 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _2526 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2526] = 30
                                mem[_2526 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _2546 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2546 + idx + 68] = mem[_2526 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2546 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2546 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2702 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2702] = 26
                                mem[_2702 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2718 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2718 + idx + 68] = mem[_2702 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2718 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2718 + -mem[64] + 100
                                if not claimTime:
                                    revert with 'NH{q', 18
                                if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 'NH{q', 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 'NH{q', 17
                                if not rewardPerNode:
                                    revert with 'NH{q', 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _2688 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2688] = 30
                            mem[_2688 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2710 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2710 + idx + 68] = mem[_2688 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2710 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2710 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2768 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2768] = 26
                            mem[_2768 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2782 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2782 + idx + 68] = mem[_2768 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2782 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2782 + -mem[64] + 100
            else:
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                _1242 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
                mem[_1242] = stor4[address(arg1)][idx].field_1 % 128
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor4[address(arg1)][idx].field_1):
                        mem[_1236] = _1242
                        mem[_1236 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1236 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1236 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1267 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1267] = 30
                            mem[_1267 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1286 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1286 + idx + 68] = mem[_1267 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1286 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1286 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _1382 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1382] = 26
                            mem[_1382 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1422 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1422 + idx + 68] = mem[_1382 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1422 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1422 + -mem[64] + 100
                            if not claimTime:
                                revert with 'NH{q', 18
                            if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 'NH{q', 17
                            if not rewardPerNode:
                                revert with 'NH{q', 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx >= uint256(stor4[address(arg1)].field_0):
                                revert with 'NH{q', 50
                            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            uint256(stor4[address(arg1)][idx].field_768) = 0
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1368 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1368] = 30
                        mem[_1368 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1401 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1401 + idx + 68] = mem[_1368 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1401 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1401 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _1601 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1601] = 26
                        mem[_1601 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _1629 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1629 + idx + 68] = mem[_1601 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1629 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1629 + -mem[64] + 100
                    else:
                        if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                            mem[_1242 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1236] = _1242
                            mem[_1236 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1236 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1236 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1288 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1288] = 30
                                mem[_1288 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1309 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1309 + idx + 68] = mem[_1288 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1309 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1309 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _1423 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1423] = 26
                                mem[_1423 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _1469 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1469 + idx + 68] = mem[_1423 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1469 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1469 + -mem[64] + 100
                                if not claimTime:
                                    revert with 'NH{q', 18
                                if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 'NH{q', 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 'NH{q', 17
                                if not rewardPerNode:
                                    revert with 'NH{q', 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _1404 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1404] = 30
                            mem[_1404 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _1447 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1447 + idx + 68] = mem[_1404 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1447 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1447 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _1631 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1631] = 26
                            mem[_1631 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1664 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1664 + idx + 68] = mem[_1631 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1664 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1664 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1242 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1242 + 32
                            u = sha3(mem[0])
                            while _1242 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1236] = _1242
                            mem[_1236 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1236 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1236 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _2527 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2527] = 30
                                mem[_2527 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _2555 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2555 + idx + 68] = mem[_2527 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2555 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2555 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2703 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2703] = 26
                                mem[_2703 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2719 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2719 + idx + 68] = mem[_2703 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2719 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2719 + -mem[64] + 100
                                if not claimTime:
                                    revert with 'NH{q', 18
                                if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 'NH{q', 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 'NH{q', 17
                                if not rewardPerNode:
                                    revert with 'NH{q', 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _2690 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2690] = 30
                            mem[_2690 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2711 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2711 + idx + 68] = mem[_2690 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2711 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2711 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2770 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2770] = 26
                            mem[_2770 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2783 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2783 + idx + 68] = mem[_2770 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2783 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2783 + -mem[64] + 100
                else:
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor4[address(arg1)][idx].field_1 % 128:
                        mem[_1236] = _1242
                        mem[_1236 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1236 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1236 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1276 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1276] = 30
                            mem[_1276 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1297 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1297 + idx + 68] = mem[_1276 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1297 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1297 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _1405 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1405] = 26
                            mem[_1405 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1448 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1448 + idx + 68] = mem[_1405 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1448 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1448 + -mem[64] + 100
                            if not claimTime:
                                revert with 'NH{q', 18
                            if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 'NH{q', 17
                            if not rewardPerNode:
                                revert with 'NH{q', 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx >= uint256(stor4[address(arg1)].field_0):
                                revert with 'NH{q', 50
                            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            uint256(stor4[address(arg1)][idx].field_768) = 0
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1384 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1384] = 30
                        mem[_1384 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1424 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1424 + idx + 68] = mem[_1384 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1424 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1424 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _1617 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1617] = 26
                        mem[_1617 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _1646 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1646 + idx + 68] = mem[_1617 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1646 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1646 + -mem[64] + 100
                    else:
                        if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1242 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1236] = _1242
                            mem[_1236 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1236 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1236 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1299 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1299] = 30
                                mem[_1299 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1319 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1319 + idx + 68] = mem[_1299 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1319 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1319 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _1449 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1449] = 26
                                mem[_1449 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _1496 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1496 + idx + 68] = mem[_1449 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1496 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1496 + -mem[64] + 100
                                if not claimTime:
                                    revert with 'NH{q', 18
                                if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 'NH{q', 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 'NH{q', 17
                                if not rewardPerNode:
                                    revert with 'NH{q', 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _1427 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1427] = 30
                            mem[_1427 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _1472 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1472 + idx + 68] = mem[_1427 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1472 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1472 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _1648 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1648] = 26
                            mem[_1648 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1684 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1684 + idx + 68] = mem[_1648 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1684 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1684 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1242 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1242 + 32
                            u = sha3(mem[0])
                            while _1242 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1236] = _1242
                            mem[_1236 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1236 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1236 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _2528 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2528] = 30
                                mem[_2528 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _2564 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2564 + idx + 68] = mem[_2528 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2564 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2564 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2704 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2704] = 26
                                mem[_2704 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2720 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2720 + idx + 68] = mem[_2704 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2720 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2720 + -mem[64] + 100
                                if not claimTime:
                                    revert with 'NH{q', 18
                                if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 'NH{q', 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 'NH{q', 17
                                if not rewardPerNode:
                                    revert with 'NH{q', 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _2692 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2692] = 30
                            mem[_2692 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2712 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2712 + idx + 68] = mem[_2692 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2712 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2712 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2772 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2772] = 26
                            mem[_2772 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2784 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2784 + idx + 68] = mem[_2772 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2784 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2784 + -mem[64] + 100
            ('gt', ('stor', ('name', 'claimTime', 7)), 0)
            if not claimTime:
                revert with 'NH{q', 18
            if 1 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) - 1:
                revert with 'NH{q', 17
            if (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1 < 1:
                revert with 0, 'SafeMath: addition overflow'
            if not rewardPerNode:
                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                    revert with 'NH{q', 17
                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                    revert with 'NH{q', 17
                if idx >= uint256(stor4[address(arg1)].field_0):
                    revert with 'NH{q', 50
                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                mem[0] = sha3(address(arg1), 4)
                uint256(stor4[address(arg1)][idx].field_768) = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + uint256(stor4[address(arg1)][idx].field_768)
                continue 
            if rewardPerNode and (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1 > -1 / rewardPerNode:
                revert with 'NH{q', 17
            if not rewardPerNode:
                revert with 'NH{q', 18
            if rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) / rewardPerNode != (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                revert with 'NH{q', 17
            if uint256(stor4[address(arg1)][idx].field_768) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if s > -rewardPerNode + (-1 * block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                revert with 'NH{q', 17
            if idx >= uint256(stor4[address(arg1)].field_0):
                revert with 'NH{q', 50
            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
            mem[0] = sha3(address(arg1), 4)
            uint256(stor4[address(arg1)][idx].field_768) = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) + uint256(stor4[address(arg1)][idx].field_768)
            continue 
    else:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
        mem[0] = arg1
        mem[32] = 4
        if uint256(stor4[address(arg1)].field_0) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
        idx = 0
        s = 0
        while idx < uint256(stor4[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 4)
            _1238 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                _1240 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
                mem[_1240] = uint255(stor4[address(arg1)][idx].field_1)
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor4[address(arg1)][idx].field_1):
                        mem[_1238] = _1240
                        mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1261 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1261] = 30
                            mem[_1261 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1278 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1278 + idx + 68] = mem[_1261 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1278 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1278 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _1370 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1370] = 26
                            mem[_1370 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1406 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1406 + idx + 68] = mem[_1370 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1406 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1406 + -mem[64] + 100
                            if not claimTime:
                                revert with 'NH{q', 18
                            if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 'NH{q', 17
                            if not rewardPerNode:
                                revert with 'NH{q', 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx >= uint256(stor4[address(arg1)].field_0):
                                revert with 'NH{q', 50
                            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            uint256(stor4[address(arg1)][idx].field_768) = 0
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1359 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1359] = 30
                        mem[_1359 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1386 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1386 + idx + 68] = mem[_1359 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1386 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1386 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _1590 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1590] = 26
                        mem[_1590 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _1618 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1618 + idx + 68] = mem[_1590 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1618 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1618 + -mem[64] + 100
                    else:
                        if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                            mem[_1240 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1238] = _1240
                            mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1280 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1280] = 30
                                mem[_1280 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1301 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1301 + idx + 68] = mem[_1280 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1301 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1301 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _1407 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1407] = 26
                                mem[_1407 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _1452 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1452 + idx + 68] = mem[_1407 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1452 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1452 + -mem[64] + 100
                                if not claimTime:
                                    revert with 'NH{q', 18
                                if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 'NH{q', 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 'NH{q', 17
                                if not rewardPerNode:
                                    revert with 'NH{q', 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _1389 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1389] = 30
                            mem[_1389 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _1430 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1430 + idx + 68] = mem[_1389 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1430 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1430 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _1620 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1620] = 26
                            mem[_1620 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1651 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1651 + idx + 68] = mem[_1620 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1651 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1651 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1240 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1240 + 32
                            u = sha3(mem[0])
                            while _1240 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1238] = _1240
                            mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _2529 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2529] = 30
                                mem[_2529 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _2573 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2573 + idx + 68] = mem[_2529 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2573 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2573 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2705 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2705] = 26
                                mem[_2705 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2721 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2721 + idx + 68] = mem[_2705 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2721 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2721 + -mem[64] + 100
                                if not claimTime:
                                    revert with 'NH{q', 18
                                if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 'NH{q', 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 'NH{q', 17
                                if not rewardPerNode:
                                    revert with 'NH{q', 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _2694 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2694] = 30
                            mem[_2694 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2713 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2713 + idx + 68] = mem[_2694 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2713 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2713 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2774 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2774] = 26
                            mem[_2774 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2785 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2785 + idx + 68] = mem[_2774 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2785 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2785 + -mem[64] + 100
                else:
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor4[address(arg1)][idx].field_1 % 128:
                        mem[_1238] = _1240
                        mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1269 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1269] = 30
                            mem[_1269 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1289 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1289 + idx + 68] = mem[_1269 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1289 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1289 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _1390 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1390] = 26
                            mem[_1390 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1431 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1431 + idx + 68] = mem[_1390 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1431 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1431 + -mem[64] + 100
                            if not claimTime:
                                revert with 'NH{q', 18
                            if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 'NH{q', 17
                            if not rewardPerNode:
                                revert with 'NH{q', 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx >= uint256(stor4[address(arg1)].field_0):
                                revert with 'NH{q', 50
                            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            uint256(stor4[address(arg1)][idx].field_768) = 0
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1372 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1372] = 30
                        mem[_1372 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1408 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1408 + idx + 68] = mem[_1372 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1408 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1408 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _1606 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1606] = 26
                        mem[_1606 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _1634 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1634 + idx + 68] = mem[_1606 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1634 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1634 + -mem[64] + 100
                    else:
                        if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1240 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1238] = _1240
                            mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1291 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1291] = 30
                                mem[_1291 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1312 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1312 + idx + 68] = mem[_1291 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1312 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1312 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _1432 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1432] = 26
                                mem[_1432 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _1478 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1478 + idx + 68] = mem[_1432 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1478 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1478 + -mem[64] + 100
                                if not claimTime:
                                    revert with 'NH{q', 18
                                if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 'NH{q', 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 'NH{q', 17
                                if not rewardPerNode:
                                    revert with 'NH{q', 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _1411 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1411] = 30
                            mem[_1411 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _1455 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1455 + idx + 68] = mem[_1411 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1455 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1455 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _1636 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1636] = 26
                            mem[_1636 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1670 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1670 + idx + 68] = mem[_1636 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1670 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1670 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1240 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1240 + 32
                            u = sha3(mem[0])
                            while _1240 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1238] = _1240
                            mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _2530 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2530] = 30
                                mem[_2530 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _2582 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2582 + idx + 68] = mem[_2530 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2582 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2582 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2706 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2706] = 26
                                mem[_2706 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2722 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2722 + idx + 68] = mem[_2706 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2722 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2722 + -mem[64] + 100
                                if not claimTime:
                                    revert with 'NH{q', 18
                                if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 'NH{q', 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 'NH{q', 17
                                if not rewardPerNode:
                                    revert with 'NH{q', 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _2696 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2696] = 30
                            mem[_2696 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2714 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2714 + idx + 68] = mem[_2696 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2714 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2714 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2776 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2776] = 26
                            mem[_2776 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2786 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2786 + idx + 68] = mem[_2776 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2786 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2786 + -mem[64] + 100
            else:
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                _1244 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
                mem[_1244] = stor4[address(arg1)][idx].field_1 % 128
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor4[address(arg1)][idx].field_1):
                        mem[_1238] = _1244
                        mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1271 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1271] = 30
                            mem[_1271 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1292 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1292 + idx + 68] = mem[_1271 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1292 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1292 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _1391 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1391] = 26
                            mem[_1391 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1433 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1433 + idx + 68] = mem[_1391 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1433 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1433 + -mem[64] + 100
                            if not claimTime:
                                revert with 'NH{q', 18
                            if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 'NH{q', 17
                            if not rewardPerNode:
                                revert with 'NH{q', 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx >= uint256(stor4[address(arg1)].field_0):
                                revert with 'NH{q', 50
                            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            uint256(stor4[address(arg1)][idx].field_768) = 0
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1375 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1375] = 30
                        mem[_1375 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1412 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1412 + idx + 68] = mem[_1375 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1412 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1412 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _1608 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1608] = 26
                        mem[_1608 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _1637 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1637 + idx + 68] = mem[_1608 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1637 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1637 + -mem[64] + 100
                    else:
                        if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                            mem[_1244 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1238] = _1244
                            mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1294 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1294] = 30
                                mem[_1294 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1314 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1314 + idx + 68] = mem[_1294 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1314 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1314 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _1434 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1434] = 26
                                mem[_1434 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _1481 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1481 + idx + 68] = mem[_1434 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1481 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1481 + -mem[64] + 100
                                if not claimTime:
                                    revert with 'NH{q', 18
                                if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 'NH{q', 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 'NH{q', 17
                                if not rewardPerNode:
                                    revert with 'NH{q', 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _1415 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1415] = 30
                            mem[_1415 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _1458 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1458 + idx + 68] = mem[_1415 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1458 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1458 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _1639 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1639] = 26
                            mem[_1639 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1673 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1673 + idx + 68] = mem[_1639 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1673 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1673 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1244 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1244 + 32
                            u = sha3(mem[0])
                            while _1244 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1238] = _1244
                            mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _2531 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2531] = 30
                                mem[_2531 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _2591 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2591 + idx + 68] = mem[_2531 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2591 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2591 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2707 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2707] = 26
                                mem[_2707 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2723 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2723 + idx + 68] = mem[_2707 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2723 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2723 + -mem[64] + 100
                                if not claimTime:
                                    revert with 'NH{q', 18
                                if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 'NH{q', 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 'NH{q', 17
                                if not rewardPerNode:
                                    revert with 'NH{q', 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _2698 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2698] = 30
                            mem[_2698 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2715 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2715 + idx + 68] = mem[_2698 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2715 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2715 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2778 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2778] = 26
                            mem[_2778 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2787 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2787 + idx + 68] = mem[_2778 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2787 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2787 + -mem[64] + 100
                else:
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor4[address(arg1)][idx].field_1 % 128:
                        mem[_1238] = _1244
                        mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1281 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1281] = 30
                            mem[_1281 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1302 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1302 + idx + 68] = mem[_1281 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1302 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1302 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _1416 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1416] = 26
                            mem[_1416 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1459 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1459 + idx + 68] = mem[_1416 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1459 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1459 + -mem[64] + 100
                            if not claimTime:
                                revert with 'NH{q', 18
                            if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 'NH{q', 17
                            if not rewardPerNode:
                                revert with 'NH{q', 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                revert with 'NH{q', 17
                            if idx >= uint256(stor4[address(arg1)].field_0):
                                revert with 'NH{q', 50
                            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            uint256(stor4[address(arg1)][idx].field_768) = 0
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1393 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1393] = 30
                        mem[_1393 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1435 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1435 + idx + 68] = mem[_1393 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1435 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1435 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _1624 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1624] = 26
                        mem[_1624 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _1654 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1654 + idx + 68] = mem[_1624 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1654 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1654 + -mem[64] + 100
                    else:
                        if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1244 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1238] = _1244
                            mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1304 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1304] = 30
                                mem[_1304 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1324 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1324 + idx + 68] = mem[_1304 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1324 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1324 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _1460 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1460] = 26
                                mem[_1460 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _1508 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1508 + idx + 68] = mem[_1460 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1508 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1508 + -mem[64] + 100
                                if not claimTime:
                                    revert with 'NH{q', 18
                                if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 'NH{q', 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 'NH{q', 17
                                if not rewardPerNode:
                                    revert with 'NH{q', 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _1438 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1438] = 30
                            mem[_1438 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _1484 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1484 + idx + 68] = mem[_1438 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1484 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1484 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _1656 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1656] = 26
                            mem[_1656 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1694 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1694 + idx + 68] = mem[_1656 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1694 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1694 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1244 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1244 + 32
                            u = sha3(mem[0])
                            while _1244 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1238] = _1244
                            mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _2532 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2532] = 30
                                mem[_2532 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _2600 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2600 + idx + 68] = mem[_2532 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2600 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2600 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2708 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2708] = 26
                                mem[_2708 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2724 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2724 + idx + 68] = mem[_2708 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2724 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2724 + -mem[64] + 100
                                if not claimTime:
                                    revert with 'NH{q', 18
                                if 0 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                        revert with 'NH{q', 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 'NH{q', 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 'NH{q', 17
                                if not rewardPerNode:
                                    revert with 'NH{q', 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > (-1 * rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                                    revert with 'NH{q', 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 'NH{q', 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _2700 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2700] = 30
                            mem[_2700 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2716 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2716 + idx + 68] = mem[_2700 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2716 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2716 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2780 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2780] = 26
                            mem[_2780 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2788 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2788 + idx + 68] = mem[_2780 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2788 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2788 + -mem[64] + 100
            ('gt', ('stor', ('name', 'claimTime', 7)), 0)
            if not claimTime:
                revert with 'NH{q', 18
            if 1 > -(block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) - 1:
                revert with 'NH{q', 17
            if (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1 < 1:
                revert with 0, 'SafeMath: addition overflow'
            if not rewardPerNode:
                if 0 > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                    revert with 'NH{q', 17
                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if s > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                    revert with 'NH{q', 17
                if idx >= uint256(stor4[address(arg1)].field_0):
                    revert with 'NH{q', 50
                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                mem[0] = sha3(address(arg1), 4)
                uint256(stor4[address(arg1)][idx].field_768) = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + uint256(stor4[address(arg1)][idx].field_768)
                continue 
            if rewardPerNode and (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1 > -1 / rewardPerNode:
                revert with 'NH{q', 17
            if not rewardPerNode:
                revert with 'NH{q', 18
            if rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) / rewardPerNode != (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) > -uint256(stor4[address(arg1)][idx].field_768) - 1:
                revert with 'NH{q', 17
            if uint256(stor4[address(arg1)][idx].field_768) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if s > -rewardPerNode + (-1 * block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) + -uint256(stor4[address(arg1)][idx].field_768) - 1:
                revert with 'NH{q', 17
            if idx >= uint256(stor4[address(arg1)].field_0):
                revert with 'NH{q', 50
            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
            mem[0] = sha3(address(arg1), 4)
            uint256(stor4[address(arg1)][idx].field_768) = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) + uint256(stor4[address(arg1)][idx].field_768)
            continue 
    return s
}



}
