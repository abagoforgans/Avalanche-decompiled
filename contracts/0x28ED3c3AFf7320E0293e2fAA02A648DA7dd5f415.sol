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
    require ext_code.size(0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b)
    delegate 0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b.0x732a2ccf with:
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
    require ext_code.size(0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b)
    delegate 0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] > 0)
}

function _nodesOfUser(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < uint256(stor4[arg1].field_0)
    if bool(stor4[arg1][arg2].field_0):
        if bool(stor4[arg1][arg2].field_0) == uint255(uint256(stor4[arg1][arg2].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4[arg1][arg2].field_0):
            if bool(stor4[arg1][arg2].field_0) == uint255(uint256(stor4[arg1][arg2].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor4[arg1][arg2].field_0)):
                if 31 >= uint255(uint256(stor4[arg1][arg2].field_0)) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor4[arg1][arg2].field_8)
                else:
                    mem[128] = uint256(stor4[arg1][arg2].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor4[arg1][arg2].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor4[arg1][(4 * arg2) + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor4[arg1][arg2].field_0) == stor4[arg1][arg2].field_1 % 128 < 32:
                revert with 0, 34
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
        return Array(len=2 * Mask(256, -1, uint256(stor4[arg1][arg2].field_0)), data=mem[128 len ceil32(uint255(uint256(stor4[arg1][arg2].field_0)) * 0.5)]), 
               uint256(stor4[arg1][arg2].field_256),
               uint256(stor4[arg1][arg2].field_512),
               uint256(stor4[arg1][arg2].field_768)
    if bool(stor4[arg1][arg2].field_0) == stor4[arg1][arg2].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor4[arg1][arg2].field_0):
        if bool(stor4[arg1][arg2].field_0) == uint255(uint256(stor4[arg1][arg2].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor4[arg1][arg2].field_0)):
            if 31 >= uint255(uint256(stor4[arg1][arg2].field_0)) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor4[arg1][arg2].field_8)
            else:
                mem[128] = uint256(stor4[arg1][arg2].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor4[arg1][arg2].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor4[arg1][(4 * arg2) + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor4[arg1][arg2].field_0) == stor4[arg1][arg2].field_1 % 128 < 32:
            revert with 0, 34
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
    require ext_code.size(0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b)
    delegate 0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b.0x732a2ccf with:
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
    mem[64] = ceil32(return_data.size) + (32 * uint256(stor4[address(arg1)].field_0)) + 128
    mem[ceil32(return_data.size) + 96] = uint256(stor4[address(arg1)].field_0)
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 4)
        _57 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
            mem[_63] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                        mem[_63 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_63 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _63 + 32
                        u = sha3(mem[0])
                        while _63 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_57] = _63
                mem[_57 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_57 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_57 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor4[address(arg1)][idx].field_1 % 128:
                mem[_57] = _63
                mem[_57 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_57 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_57 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_63 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_57] = _63
                mem[_57 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_57 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_57 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _57
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
            mem[_57] = _63
            mem[_57 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_57 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_57 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _57
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        _68 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
        mem[_68] = stor4[address(arg1)][idx].field_1 % 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                mem[_57] = _68
                mem[_57 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_57 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_57 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                mem[_68 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_57] = _68
                mem[_57 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_57 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_57 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_68 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _68 + 32
            u = sha3(mem[0])
            while _68 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_57] = _68
            mem[_57 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_57 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_57 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _57
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        if stor4[address(arg1)][idx].field_1 % 128:
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_68 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_68 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _68 + 32
                u = sha3(mem[0])
                while _68 + stor4[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_57] = _68
        mem[_57 + 32] = uint256(stor4[address(arg1)][idx].field_256)
        mem[_57 + 64] = uint256(stor4[address(arg1)][idx].field_512)
        mem[_57 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
        _104 = mem[s]
        t = 0
        while t < _104:
            mem[t + _103 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_104) <= _104:
            _132 = mem[_61]
            s = 0
            while s < _132:
                mem[s + _103 + _104 + 32] = mem[s + _61 + 32]
                s = s + 32
                continue 
            if ceil32(_132) <= _132:
                _156 = mem[_102]
                s = 0
                while s < _156:
                    mem[s + _103 + _104 + _132 + 32] = mem[s + _102 + 32]
                    s = s + 32
                    continue 
                if ceil32(_156) <= _156:
                    _176 = mem[64]
                    mem[mem[64]] = _156 + _103 + _104 + _132 - mem[64]
                    mem[64] = _156 + _103 + _104 + _132 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _176
                    t = _101
                    continue 
                mem[_103 + _104 + _132 + _156 + 32] = 0
                _180 = mem[64]
                mem[mem[64]] = _156 + _103 + _104 + _132 - mem[64]
                mem[64] = _156 + _103 + _104 + _132 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _180
                t = _101
                continue 
            mem[_103 + _104 + _132 + 32] = 0
            _158 = mem[_102]
            s = 0
            while s < _158:
                mem[s + _103 + _104 + _132 + 32] = mem[s + _102 + 32]
                s = s + 32
                continue 
            if ceil32(_158) <= _158:
                _177 = mem[64]
                mem[mem[64]] = _158 + _103 + _104 + _132 - mem[64]
                mem[64] = _158 + _103 + _104 + _132 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _177
                t = _101
                continue 
            mem[_103 + _104 + _132 + _158 + 32] = 0
            _181 = mem[64]
            mem[mem[64]] = _158 + _103 + _104 + _132 - mem[64]
            mem[64] = _158 + _103 + _104 + _132 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _181
            t = _101
            continue 
        mem[_103 + _104 + 32] = 0
        _133 = mem[_61]
        s = 0
        while s < _133:
            mem[s + _103 + _104 + 32] = mem[s + _61 + 32]
            s = s + 32
            continue 
        if ceil32(_133) <= _133:
            _157 = mem[_102]
            s = 0
            while s < _157:
                mem[s + _103 + _104 + _133 + 32] = mem[s + _102 + 32]
                s = s + 32
                continue 
            if ceil32(_157) <= _157:
                _178 = mem[64]
                mem[mem[64]] = _157 + _103 + _104 + _133 - mem[64]
                mem[64] = _157 + _103 + _104 + _133 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _178
                t = _101
                continue 
            mem[_103 + _104 + _133 + _157 + 32] = 0
            _182 = mem[64]
            mem[mem[64]] = _157 + _103 + _104 + _133 - mem[64]
            mem[64] = _157 + _103 + _104 + _133 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _182
            t = _101
            continue 
        mem[_103 + _104 + _133 + 32] = 0
        _159 = mem[_102]
        s = 0
        while s < _159:
            mem[s + _103 + _104 + _133 + 32] = mem[s + _102 + 32]
            s = s + 32
            continue 
        if ceil32(_159) <= _159:
            _179 = mem[64]
            mem[mem[64]] = _159 + _103 + _104 + _133 - mem[64]
            mem[64] = _159 + _103 + _104 + _133 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _179
            t = _101
            continue 
        mem[_103 + _104 + _133 + _159 + 32] = 0
        _183 = mem[64]
        mem[mem[64]] = _159 + _103 + _104 + _133 - mem[64]
        mem[64] = _159 + _103 + _104 + _133 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _183
        t = _101
        continue 
    _100 = mem[64]
    mem[mem[64]] = 32
    _105 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_105)] = mem[s + 32 len ceil32(_105)]
    if ceil32(_105) <= _105:
        return 32, mem[mem[64] + 32 len ceil32(_105) + 32]
    mem[mem[64] + _105 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_105) + _100 + -mem[64] + 64
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
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _187 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                mem[_187] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_187 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_187 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _187 + 32
                            u = sha3(mem[0])
                            while _187 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_163] = _187
                    mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _163
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_163] = _187
                    mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _163
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_187 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_163] = _187
                    mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _163
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_187 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _187 + 32
                u = sha3(mem[0])
                while _187 + stor4[address(arg1)][u].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_163] = _187
                mem[_163 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_163 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_163 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _163
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            _194 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_194] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_163] = _194
                    mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _163
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                    mem[_194 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_163] = _194
                    mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _163
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_194 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _194 + 32
                u = sha3(mem[0])
                while _194 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_163] = _194
                mem[_163 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_163 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_163 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _163
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[address(arg1)][idx].field_1 % 128:
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_194 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_194 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _194 + 32
                    u = sha3(mem[0])
                    while _194 + stor4[address(arg1)][idx].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_163] = _194
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
                revert with 0, 50
            if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
                revert with 0, 'CREATE NODE: Name not available'
            if idx == -1:
                revert with 0, 17
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
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _193 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                mem[_193] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_193 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_193 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _193 + 32
                            u = sha3(mem[0])
                            while _193 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_165] = _193
                    mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _165
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_165] = _193
                    mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _165
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_193 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_165] = _193
                    mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _165
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_193 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _193 + 32
                u = sha3(mem[0])
                while _193 + stor4[address(arg1)][u].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_165] = _193
                mem[_165 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_165 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_165 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _165
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            _195 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_195] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_165] = _195
                    mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _165
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                    mem[_195 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_165] = _195
                    mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _165
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_195 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _195 + 32
                u = sha3(mem[0])
                while _195 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
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
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[address(arg1)][idx].field_1 % 128:
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_195 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                else:
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
        mem[32] = 4
        _338 = mem[64]
        mem[64] = mem[64] + 128
        mem[_338] = 96
        mem[_338 + 32] = block.timestamp
        mem[_338 + 64] = 0
        mem[_338 + 96] = 0
    uint256(stor4[address(arg1)].field_0)++
    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5 < 32:
            revert with 0, 34
        if mem[96]:
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
            idx = 0
            while (uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor4[address(arg1)][(4 * uint256(stor4[address(arg1)].field_0)) + idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
            revert with 0, 34
        if mem[96]:
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
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
    require ext_code.size(0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b)
    delegate 0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b.0xbc2b405c with:
         gas gas_remaining wei
        args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if totalNodesCreated == -1:
        revert with 0, 17
    totalNodesCreated++
}

function createNodeForAddress(address arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
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
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _184 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                mem[_184] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_184 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_184 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _184 + 32
                            u = sha3(mem[0])
                            while _184 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_163] = _184
                    mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _163
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_163] = _184
                    mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _163
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_184 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_163] = _184
                    mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _163
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_184 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _184 + 32
                u = sha3(mem[0])
                while _184 + stor4[address(arg1)][u].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_163] = _184
                mem[_163 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_163 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_163 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _163
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            _188 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_188] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_163] = _188
                    mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _163
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                    mem[_188 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_163] = _188
                    mem[_163 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_163 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_163 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _163
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_188 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _188 + 32
                u = sha3(mem[0])
                while _188 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_163] = _188
                mem[_163 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_163 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_163 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _163
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[address(arg1)][idx].field_1 % 128:
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_188 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_188 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _188 + 32
                    u = sha3(mem[0])
                    while _188 + stor4[address(arg1)][idx].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_163] = _188
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
                revert with 0, 50
            if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
                revert with 0, 'CREATE NODE: Name not available'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 4
        _333 = mem[64]
        mem[64] = mem[64] + 128
        mem[_333] = 96
        mem[_333 + 32] = arg3
        mem[_333 + 64] = arg4
        if arg5 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
            revert with 0, 17
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
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _187 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                mem[_187] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_187 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_187 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _187 + 32
                            u = sha3(mem[0])
                            while _187 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_165] = _187
                    mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _165
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_165] = _187
                    mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _165
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_187 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_165] = _187
                    mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _165
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_187 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _187 + 32
                u = sha3(mem[0])
                while _187 + stor4[address(arg1)][u].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_165] = _187
                mem[_165 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_165 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_165 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _165
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            _189 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_189] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_165] = _189
                    mem[_165 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_165 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_165 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _165
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
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
                while _189 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
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
                revert with 0, 34
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
                revert with 0, 50
            if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
                revert with 0, 'CREATE NODE: Name not available'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 4
        _335 = mem[64]
        mem[64] = mem[64] + 128
        mem[_335] = 96
        mem[_335 + 32] = arg3
        mem[_335 + 64] = arg4
        if arg5 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
            revert with 0, 17
        mem[_335 + 96] = 10^9 * arg5
    uint256(stor4[address(arg1)].field_0)++
    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5 < 32:
            revert with 0, 34
        if mem[96]:
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
            idx = 0
            while (uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor4[address(arg1)][(4 * uint256(stor4[address(arg1)].field_0)) + idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
            revert with 0, 34
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
        revert with 0, 17
    totalNodesCreated++
    require ext_code.size(0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b)
    delegate 0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b.0xbc2b405c with:
         gas gas_remaining wei
        args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function _migrateNodes(address arg1, string[] arg2, uint256[] arg3, uint256[] arg4, uint256[] arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg2.length) + 97
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] <= test266151307()
        require arg2 + cd[s] + 67 < calldata.size
        if cd[(arg2 + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _232 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1
        mem[_232] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_232 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_232 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _232
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    _233 = mem[64]
    if mem[64] + ceil32(32 * arg3.length) + 1 < mem[64] or mem[64] + ceil32(32 * arg3.length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * arg3.length) + 1
    mem[_233] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = _233 + 32
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    _462 = mem[64]
    if mem[64] + ceil32(32 * arg4.length) + 1 < mem[64] or mem[64] + ceil32(32 * arg4.length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * arg4.length) + 1
    mem[_462] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = _462 + 32
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    _690 = mem[64]
    if mem[64] + ceil32(32 * arg5.length) + 1 < mem[64] or mem[64] + ceil32(32 * arg5.length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * arg5.length) + 1
    mem[_690] = arg5.length
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    idx = 0
    s = arg5 + 36
    t = _690 + 32
    while idx < arg5.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == tokenAddress:
        _917 = mem[96]
        require mem[96] == mem[_233]
        require mem[_462] == mem[96]
        require arg5.length == mem[96]
        if not uint256(stor4[address(arg1)].field_0):
            mem[32] = 4
            uint256(stor4[address(arg1)].field_0) = 0
            mem[0] = sha3(address(arg1), 4)
            idx = 0
            while sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)) > idx + sha3(mem[0]):
                if bool(stor[idx + sha3(mem[0])].field_0):
                    if bool(stor[idx + sha3(mem[0])].field_0) == uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + ((uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 0, 34
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
            while idx < _917:
                mem[0] = arg1
                mem[32] = 4
                _1345 = mem[64]
                mem[64] = mem[64] + 128
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_1345] = mem[(32 * idx) + 128]
                if idx >= mem[_233]:
                    revert with 0, 50
                mem[_1345 + 32] = mem[(32 * idx) + _233 + 32]
                if idx >= mem[_462]:
                    revert with 0, 50
                mem[_1345 + 64] = mem[(32 * idx) + _462 + 32]
                if idx >= mem[_690]:
                    revert with 0, 50
                if mem[(32 * idx) + _690 + 32] > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                mem[_1345 + 96] = 10^9 * mem[(32 * idx) + _690 + 32]
                uint256(stor4[address(arg1)].field_0)++
                mem[0] = sha3(address(arg1), 4)
                _1394 = mem[_1345]
                _1395 = mem[mem[_1345]]
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))
                    if not _1395:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1395) + 1
                        t = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        s = _1394 + 32
                        while _1394 + _1395 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (Mask(251, 0, _1395 + 31) >> 5)
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))
                    if not _1395:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1395) + 1
                        t = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        s = _1394 + 32
                        while _1394 + _1395 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (Mask(251, 0, _1395 + 31) >> 5)
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = mem[_1345 + 32]
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = mem[_1345 + 64]
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = mem[_1345 + 96]
                if totalNodesCreated == -1:
                    revert with 0, 17
                totalNodesCreated++
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            mem[0] = arg1
            mem[32] = 4
            _932 = mem[64]
            mem[64] = mem[64] + 64
            mem[_932] = 30
            mem[_932 + 32] = 'SafeMath: subtraction overflow'
            if uint256(stor4[address(arg1)].field_0) > totalNodesCreated:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if totalNodesCreated < uint256(stor4[address(arg1)].field_0):
                revert with 0, 17
            totalNodesCreated -= uint256(stor4[address(arg1)].field_0)
            mem[32] = 4
            uint256(stor4[address(arg1)].field_0) = 0
            mem[0] = sha3(address(arg1), 4)
            idx = 0
            while sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)) > idx + sha3(mem[0]):
                if bool(stor[idx + sha3(mem[0])].field_0):
                    if bool(stor[idx + sha3(mem[0])].field_0) == uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + ((uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 0, 34
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
            while idx < _917:
                mem[0] = arg1
                mem[32] = 4
                _1351 = mem[64]
                mem[64] = mem[64] + 128
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_1351] = mem[(32 * idx) + 128]
                if idx >= mem[_233]:
                    revert with 0, 50
                mem[_1351 + 32] = mem[(32 * idx) + _233 + 32]
                if idx >= mem[_462]:
                    revert with 0, 50
                mem[_1351 + 64] = mem[(32 * idx) + _462 + 32]
                if idx >= mem[_690]:
                    revert with 0, 50
                if mem[(32 * idx) + _690 + 32] > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                mem[_1351 + 96] = 10^9 * mem[(32 * idx) + _690 + 32]
                uint256(stor4[address(arg1)].field_0)++
                mem[0] = sha3(address(arg1), 4)
                _1397 = mem[_1351]
                _1398 = mem[mem[_1351]]
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))
                    if not _1398:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1398) + 1
                        t = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        s = _1397 + 32
                        while _1397 + _1398 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (Mask(251, 0, _1398 + 31) >> 5)
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))
                    if not _1398:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1398) + 1
                        t = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        s = _1397 + 32
                        while _1397 + _1398 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (Mask(251, 0, _1398 + 31) >> 5)
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = mem[_1351 + 32]
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = mem[_1351 + 64]
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = mem[_1351 + 96]
                if totalNodesCreated == -1:
                    revert with 0, 17
                totalNodesCreated++
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
        _920 = mem[96]
        require mem[96] == mem[_233]
        require mem[_462] == mem[96]
        require arg5.length == mem[96]
        if not uint256(stor4[address(arg1)].field_0):
            mem[32] = 4
            uint256(stor4[address(arg1)].field_0) = 0
            mem[0] = sha3(address(arg1), 4)
            idx = 0
            while sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)) > idx + sha3(mem[0]):
                if bool(stor[idx + sha3(mem[0])].field_0):
                    if bool(stor[idx + sha3(mem[0])].field_0) == uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + ((uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 0, 34
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
            while idx < _920:
                mem[0] = arg1
                mem[32] = 4
                _1357 = mem[64]
                mem[64] = mem[64] + 128
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_1357] = mem[(32 * idx) + 128]
                if idx >= mem[_233]:
                    revert with 0, 50
                mem[_1357 + 32] = mem[(32 * idx) + _233 + 32]
                if idx >= mem[_462]:
                    revert with 0, 50
                mem[_1357 + 64] = mem[(32 * idx) + _462 + 32]
                if idx >= mem[_690]:
                    revert with 0, 50
                if mem[(32 * idx) + _690 + 32] > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                mem[_1357 + 96] = 10^9 * mem[(32 * idx) + _690 + 32]
                uint256(stor4[address(arg1)].field_0)++
                mem[0] = sha3(address(arg1), 4)
                _1400 = mem[_1357]
                _1401 = mem[mem[_1357]]
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))
                    if not _1401:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1401) + 1
                        t = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        s = _1400 + 32
                        while _1400 + _1401 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (Mask(251, 0, _1401 + 31) >> 5)
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))
                    if not _1401:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1401) + 1
                        t = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        s = _1400 + 32
                        while _1400 + _1401 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (Mask(251, 0, _1401 + 31) >> 5)
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = mem[_1357 + 32]
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = mem[_1357 + 64]
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = mem[_1357 + 96]
                if totalNodesCreated == -1:
                    revert with 0, 17
                totalNodesCreated++
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            mem[0] = arg1
            mem[32] = 4
            _936 = mem[64]
            mem[64] = mem[64] + 64
            mem[_936] = 30
            mem[_936 + 32] = 'SafeMath: subtraction overflow'
            if uint256(stor4[address(arg1)].field_0) > totalNodesCreated:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if totalNodesCreated < uint256(stor4[address(arg1)].field_0):
                revert with 0, 17
            totalNodesCreated -= uint256(stor4[address(arg1)].field_0)
            mem[32] = 4
            uint256(stor4[address(arg1)].field_0) = 0
            mem[0] = sha3(address(arg1), 4)
            idx = 0
            while sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)) > idx + sha3(mem[0]):
                if bool(stor[idx + sha3(mem[0])].field_0):
                    if bool(stor[idx + sha3(mem[0])].field_0) == uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + ((uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 0, 34
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
            while idx < _920:
                mem[0] = arg1
                mem[32] = 4
                _1363 = mem[64]
                mem[64] = mem[64] + 128
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_1363] = mem[(32 * idx) + 128]
                if idx >= mem[_233]:
                    revert with 0, 50
                mem[_1363 + 32] = mem[(32 * idx) + _233 + 32]
                if idx >= mem[_462]:
                    revert with 0, 50
                mem[_1363 + 64] = mem[(32 * idx) + _462 + 32]
                if idx >= mem[_690]:
                    revert with 0, 50
                if mem[(32 * idx) + _690 + 32] > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                mem[_1363 + 96] = 10^9 * mem[(32 * idx) + _690 + 32]
                uint256(stor4[address(arg1)].field_0)++
                mem[0] = sha3(address(arg1), 4)
                _1403 = mem[_1363]
                _1404 = mem[mem[_1363]]
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))
                    if not _1404:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1404) + 1
                        t = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        s = _1403 + 32
                        while _1403 + _1404 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (Mask(251, 0, _1404 + 31) >> 5)
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))
                    if not _1404:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1404) + 1
                        t = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        s = _1403 + 32
                        while _1403 + _1404 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (Mask(251, 0, _1404 + 31) >> 5)
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = mem[_1363 + 32]
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = mem[_1363 + 64]
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = mem[_1363 + 96]
                if totalNodesCreated == -1:
                    revert with 0, 17
                totalNodesCreated++
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    require ext_code.size(0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b)
    delegate 0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b.0xbc2b405c with:
         gas gas_remaining wei
        args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b)
    delegate 0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b.0x732a2ccf with:
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
    mem[64] = ceil32(return_data.size) + (32 * uint256(stor4[address(arg1)].field_0)) + 128
    mem[ceil32(return_data.size) + 96] = uint256(stor4[address(arg1)].field_0)
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 4)
        _59 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
            mem[_64] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                        mem[_64 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_64 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _64 + 32
                        u = sha3(mem[0])
                        while _64 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_59] = _64
                mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_59 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_59 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor4[address(arg1)][idx].field_1 % 128:
                mem[_59] = _64
                mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_59 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_59 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_64 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_59] = _64
                mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_59 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_59 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_64 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _64 + 32
            u = sha3(mem[0])
            while _64 + stor4[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_59] = _64
            mem[_59 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_59 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_59 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _59
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
        mem[_66] = stor4[address(arg1)][idx].field_1 % 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                mem[_59] = _66
                mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_59 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_59 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                mem[_66 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_59] = _66
                mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_59 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_59 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_66 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _66 + 32
            u = sha3(mem[0])
            while _66 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_59] = _66
            mem[_59 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_59 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_59 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _59
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        if stor4[address(arg1)][idx].field_1 % 128:
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_66 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_66 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _66 + 32
                u = sha3(mem[0])
                while _66 + stor4[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_59] = _66
        mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_256)
        mem[_59 + 64] = uint256(stor4[address(arg1)][idx].field_512)
        mem[_59 + 96] = uint256(stor4[address(arg1)][idx].field_768)
        mem[s] = _59
        s = s + 32
        idx = idx + 1
        continue 
    _56 = mem[ceil32(return_data.size) + 96]
    _57 = mem[64]
    mem[64] = mem[64] + 128
    mem[_57] = 96
    mem[_57 + 32] = 0
    mem[_57 + 64] = 0
    mem[_57 + 96] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    _62 = mem[mem[ceil32(return_data.size) + 128] + 32]
    if not mem[mem[ceil32(return_data.size) + 128] + 32]:
        _63 = mem[64]
        mem[64] = mem[64] + 64
        mem[_63] = 1
        mem[_63 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _65 = mem[64]
        mem[64] = mem[64] + 64
        mem[_65] = 1
        mem[_65 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _63
        t = _57
        while idx < _56:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _106 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _107 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                _109 = mem[64]
                mem[64] = mem[64] + 64
                mem[_109] = 1
                mem[_109 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _110 = mem[64]
                _112 = mem[s]
                t = 0
                while t < _112:
                    mem[t + _110 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_112) <= _112:
                    _209 = mem[_65]
                    s = 0
                    while s < _209:
                        mem[s + _110 + _112 + 32] = mem[s + _65 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_209) <= _209:
                        _359 = mem[_109]
                        s = 0
                        while s < _359:
                            mem[s + _110 + _112 + _209 + 32] = mem[s + _109 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_359) <= _359:
                            _495 = mem[64]
                            mem[mem[64]] = _359 + _110 + _112 + _209 - mem[64]
                            mem[64] = _359 + _110 + _112 + _209 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _495
                            t = _106
                            continue 
                        mem[_110 + _112 + _209 + _359 + 32] = 0
                        _501 = mem[64]
                        mem[mem[64]] = _359 + _110 + _112 + _209 - mem[64]
                        mem[64] = _359 + _110 + _112 + _209 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _501
                        t = _106
                        continue 
                    mem[_110 + _112 + _209 + 32] = 0
                    _365 = mem[_109]
                    s = 0
                    while s < _365:
                        mem[s + _110 + _112 + _209 + 32] = mem[s + _109 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_365) <= _365:
                        _496 = mem[64]
                        mem[mem[64]] = _365 + _110 + _112 + _209 - mem[64]
                        mem[64] = _365 + _110 + _112 + _209 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _496
                        t = _106
                        continue 
                    mem[_110 + _112 + _209 + _365 + 32] = 0
                    _502 = mem[64]
                    mem[mem[64]] = _365 + _110 + _112 + _209 - mem[64]
                    mem[64] = _365 + _110 + _112 + _209 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _502
                    t = _106
                    continue 
                mem[_110 + _112 + 32] = 0
                _212 = mem[_65]
                s = 0
                while s < _212:
                    mem[s + _110 + _112 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_212) <= _212:
                    _360 = mem[_109]
                    s = 0
                    while s < _360:
                        mem[s + _110 + _112 + _212 + 32] = mem[s + _109 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_360) <= _360:
                        _497 = mem[64]
                        mem[mem[64]] = _360 + _110 + _112 + _212 - mem[64]
                        mem[64] = _360 + _110 + _112 + _212 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _497
                        t = _106
                        continue 
                    mem[_110 + _112 + _212 + _360 + 32] = 0
                    _503 = mem[64]
                    mem[mem[64]] = _360 + _110 + _112 + _212 - mem[64]
                    mem[64] = _360 + _110 + _112 + _212 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _503
                    t = _106
                    continue 
                mem[_110 + _112 + _212 + 32] = 0
                _366 = mem[_109]
                s = 0
                while s < _366:
                    mem[s + _110 + _112 + _212 + 32] = mem[s + _109 + 32]
                    s = s + 32
                    continue 
                if ceil32(_366) <= _366:
                    _498 = mem[64]
                    mem[mem[64]] = _366 + _110 + _112 + _212 - mem[64]
                    mem[64] = _366 + _110 + _112 + _212 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _498
                    t = _106
                    continue 
                mem[_110 + _112 + _212 + _366 + 32] = 0
                _504 = mem[64]
                mem[mem[64]] = _366 + _110 + _112 + _212 - mem[64]
                mem[64] = _366 + _110 + _112 + _212 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _504
                t = _106
                continue 
            u = 0
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _208 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _107
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_208]:
                        revert with 0, 50
                    mem[v + _208 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _355 = mem[64]
                _357 = mem[s]
                t = 0
                while t < _357:
                    mem[t + _355 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_357) <= _357:
                    _489 = mem[_65]
                    s = 0
                    while s < _489:
                        mem[s + _355 + _357 + 32] = mem[s + _65 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_489) <= _489:
                        _695 = mem[_208]
                        s = 0
                        while s < _695:
                            mem[s + _355 + _357 + _489 + 32] = mem[s + _208 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_695) <= _695:
                            _879 = mem[64]
                            mem[mem[64]] = _695 + _355 + _357 + _489 - mem[64]
                            mem[64] = _695 + _355 + _357 + _489 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _879
                            t = _106
                            continue 
                        mem[_355 + _357 + _489 + _695 + 32] = 0
                        _895 = mem[64]
                        mem[mem[64]] = _695 + _355 + _357 + _489 - mem[64]
                        mem[64] = _695 + _355 + _357 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _895
                        t = _106
                        continue 
                    mem[_355 + _357 + _489 + 32] = 0
                    _703 = mem[_208]
                    s = 0
                    while s < _703:
                        mem[s + _355 + _357 + _489 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_703) <= _703:
                        _880 = mem[64]
                        mem[mem[64]] = _703 + _355 + _357 + _489 - mem[64]
                        mem[64] = _703 + _355 + _357 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _880
                        t = _106
                        continue 
                    mem[_355 + _357 + _489 + _703 + 32] = 0
                    _896 = mem[64]
                    mem[mem[64]] = _703 + _355 + _357 + _489 - mem[64]
                    mem[64] = _703 + _355 + _357 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _896
                    t = _106
                    continue 
                mem[_355 + _357 + 32] = 0
                _493 = mem[_65]
                s = 0
                while s < _493:
                    mem[s + _355 + _357 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_493) <= _493:
                    _696 = mem[_208]
                    s = 0
                    while s < _696:
                        mem[s + _355 + _357 + _493 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_696) <= _696:
                        _881 = mem[64]
                        mem[mem[64]] = _696 + _355 + _357 + _493 - mem[64]
                        mem[64] = _696 + _355 + _357 + _493 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _881
                        t = _106
                        continue 
                    mem[_355 + _357 + _493 + _696 + 32] = 0
                    _897 = mem[64]
                    mem[mem[64]] = _696 + _355 + _357 + _493 - mem[64]
                    mem[64] = _696 + _355 + _357 + _493 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _897
                    t = _106
                    continue 
                mem[_355 + _357 + _493 + 32] = 0
                _704 = mem[_208]
                s = 0
                while s < _704:
                    mem[s + _355 + _357 + _493 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_704) <= _704:
                    _882 = mem[64]
                    mem[mem[64]] = _704 + _355 + _357 + _493 - mem[64]
                    mem[64] = _704 + _355 + _357 + _493 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _882
                    t = _106
                    continue 
                mem[_355 + _357 + _493 + _704 + 32] = 0
                _898 = mem[64]
                mem[mem[64]] = _704 + _355 + _357 + _493 - mem[64]
                mem[64] = _704 + _355 + _357 + _493 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _898
                t = _106
                continue 
            mem[_208 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _107
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_208]:
                    revert with 0, 50
                mem[v + _208 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _356 = mem[64]
            _358 = mem[s]
            t = 0
            while t < _358:
                mem[t + _356 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_358) <= _358:
                _490 = mem[_65]
                s = 0
                while s < _490:
                    mem[s + _356 + _358 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_490) <= _490:
                    _697 = mem[_208]
                    s = 0
                    while s < _697:
                        mem[s + _356 + _358 + _490 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _883 = mem[64]
                        mem[mem[64]] = _697 + _356 + _358 + _490 - mem[64]
                        mem[64] = _697 + _356 + _358 + _490 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _883
                        t = _106
                        continue 
                    mem[_356 + _358 + _490 + _697 + 32] = 0
                    _899 = mem[64]
                    mem[mem[64]] = _697 + _356 + _358 + _490 - mem[64]
                    mem[64] = _697 + _356 + _358 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _899
                    t = _106
                    continue 
                mem[_356 + _358 + _490 + 32] = 0
                _705 = mem[_208]
                s = 0
                while s < _705:
                    mem[s + _356 + _358 + _490 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_705) <= _705:
                    _884 = mem[64]
                    mem[mem[64]] = _705 + _356 + _358 + _490 - mem[64]
                    mem[64] = _705 + _356 + _358 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _884
                    t = _106
                    continue 
                mem[_356 + _358 + _490 + _705 + 32] = 0
                _900 = mem[64]
                mem[mem[64]] = _705 + _356 + _358 + _490 - mem[64]
                mem[64] = _705 + _356 + _358 + _490 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _900
                t = _106
                continue 
            mem[_356 + _358 + 32] = 0
            _494 = mem[_65]
            s = 0
            while s < _494:
                mem[s + _356 + _358 + 32] = mem[s + _65 + 32]
                s = s + 32
                continue 
            if ceil32(_494) <= _494:
                _698 = mem[_208]
                s = 0
                while s < _698:
                    mem[s + _356 + _358 + _494 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _885 = mem[64]
                    mem[mem[64]] = _698 + _356 + _358 + _494 - mem[64]
                    mem[64] = _698 + _356 + _358 + _494 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _885
                    t = _106
                    continue 
                mem[_356 + _358 + _494 + _698 + 32] = 0
                _901 = mem[64]
                mem[mem[64]] = _698 + _356 + _358 + _494 - mem[64]
                mem[64] = _698 + _356 + _358 + _494 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _901
                t = _106
                continue 
            mem[_356 + _358 + _494 + 32] = 0
            _706 = mem[_208]
            s = 0
            while s < _706:
                mem[s + _356 + _358 + _494 + 32] = mem[s + _208 + 32]
                s = s + 32
                continue 
            if ceil32(_706) <= _706:
                _886 = mem[64]
                mem[mem[64]] = _706 + _356 + _358 + _494 - mem[64]
                mem[64] = _706 + _356 + _358 + _494 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _886
                t = _106
                continue 
            mem[_356 + _358 + _494 + _706 + 32] = 0
            _902 = mem[64]
            mem[mem[64]] = _706 + _356 + _358 + _494 - mem[64]
            mem[64] = _706 + _356 + _358 + _494 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _902
            t = _106
            continue 
        _105 = mem[64]
        mem[mem[64]] = 32
        _108 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_108)] = mem[s + 32 len ceil32(_108)]
        if ceil32(_108) <= _108:
            return 32, mem[mem[64] + 32 len ceil32(_108) + 32]
        mem[mem[64] + _108 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_108) + _105 + -mem[64] + 64
    u = 0
    t = mem[mem[ceil32(return_data.size) + 128] + 32]
    while t:
        if u == -1:
            revert with 0, 17
        u = u + 1
        t = t / 10
        continue 
    if u > test266151307():
        revert with 0, 65
    _104 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _62
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_104]:
                revert with 0, 50
            mem[s + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        _206 = mem[64]
        mem[64] = mem[64] + 64
        mem[_206] = 1
        mem[_206 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        t = _104
        u = _57
        while idx < _56:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _350 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _351 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                _362 = mem[64]
                mem[64] = mem[64] + 64
                mem[_362] = 1
                mem[_362 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _367 = mem[64]
                _369 = mem[t]
                u = 0
                while u < _369:
                    mem[u + _367 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_369) <= _369:
                    _487 = mem[_206]
                    t = 0
                    while t < _487:
                        mem[t + _367 + _369 + 32] = mem[t + _206 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_487) <= _487:
                        _689 = mem[_362]
                        s = 0
                        while s < _689:
                            mem[s + _367 + _369 + _487 + 32] = mem[s + _362 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_689) <= _689:
                            _869 = mem[64]
                            mem[mem[64]] = _689 + _367 + _369 + _487 - mem[64]
                            mem[64] = _689 + _367 + _369 + _487 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _869
                            u = _350
                            continue 
                        mem[_367 + _369 + _487 + _689 + 32] = 0
                        _887 = mem[64]
                        mem[mem[64]] = _689 + _367 + _369 + _487 - mem[64]
                        mem[64] = _689 + _367 + _369 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _887
                        u = _350
                        continue 
                    mem[_367 + _369 + _487 + 32] = 0
                    _699 = mem[_362]
                    s = 0
                    while s < _699:
                        mem[s + _367 + _369 + _487 + 32] = mem[s + _362 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_699) <= _699:
                        _870 = mem[64]
                        mem[mem[64]] = _699 + _367 + _369 + _487 - mem[64]
                        mem[64] = _699 + _367 + _369 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _870
                        u = _350
                        continue 
                    mem[_367 + _369 + _487 + _699 + 32] = 0
                    _888 = mem[64]
                    mem[mem[64]] = _699 + _367 + _369 + _487 - mem[64]
                    mem[64] = _699 + _367 + _369 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _888
                    u = _350
                    continue 
                mem[_367 + _369 + 32] = 0
                _491 = mem[_206]
                s = 0
                while s < _491:
                    mem[s + _367 + _369 + 32] = mem[s + _206 + 32]
                    s = s + 32
                    continue 
                if ceil32(_491) <= _491:
                    _690 = mem[_362]
                    s = 0
                    while s < _690:
                        mem[s + _367 + _369 + _491 + 32] = mem[s + _362 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _871 = mem[64]
                        mem[mem[64]] = _690 + _367 + _369 + _491 - mem[64]
                        mem[64] = _690 + _367 + _369 + _491 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _871
                        u = _350
                        continue 
                    mem[_367 + _369 + _491 + _690 + 32] = 0
                    _889 = mem[64]
                    mem[mem[64]] = _690 + _367 + _369 + _491 - mem[64]
                    mem[64] = _690 + _367 + _369 + _491 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _889
                    u = _350
                    continue 
                mem[_367 + _369 + _491 + 32] = 0
                _700 = mem[_362]
                s = 0
                while s < _700:
                    mem[s + _367 + _369 + _491 + 32] = mem[s + _362 + 32]
                    s = s + 32
                    continue 
                if ceil32(_700) <= _700:
                    _872 = mem[64]
                    mem[mem[64]] = _700 + _367 + _369 + _491 - mem[64]
                    mem[64] = _700 + _367 + _369 + _491 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _872
                    u = _350
                    continue 
                mem[_367 + _369 + _491 + _700 + 32] = 0
                _890 = mem[64]
                mem[mem[64]] = _700 + _367 + _369 + _491 - mem[64]
                mem[64] = _700 + _367 + _369 + _491 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _890
                u = _350
                continue 
            u = 0
            s = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            while s:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                s = s / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _485 = mem[64]
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
                    if v - 1 >= mem[_485]:
                        revert with 0, 50
                    mem[v + _485 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _683 = mem[64]
                _687 = mem[t]
                s = 0
                while s < _687:
                    mem[s + _683 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_687) <= _687:
                    _863 = mem[_206]
                    s = 0
                    while s < _863:
                        mem[s + _683 + _687 + 32] = mem[s + _206 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_863) <= _863:
                        _983 = mem[_485]
                        s = 0
                        while s < _983:
                            mem[s + _683 + _687 + _863 + 32] = mem[s + _485 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_983) <= _983:
                            _1063 = mem[64]
                            mem[mem[64]] = _983 + _683 + _687 + _863 - mem[64]
                            mem[64] = _983 + _683 + _687 + _863 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1063
                            u = _350
                            continue 
                        mem[_683 + _687 + _863 + _983 + 32] = 0
                        _1079 = mem[64]
                        mem[mem[64]] = _983 + _683 + _687 + _863 - mem[64]
                        mem[64] = _983 + _683 + _687 + _863 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1079
                        u = _350
                        continue 
                    mem[_683 + _687 + _863 + 32] = 0
                    _991 = mem[_485]
                    s = 0
                    while s < _991:
                        mem[s + _683 + _687 + _863 + 32] = mem[s + _485 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_991) <= _991:
                        _1064 = mem[64]
                        mem[mem[64]] = _991 + _683 + _687 + _863 - mem[64]
                        mem[64] = _991 + _683 + _687 + _863 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1064
                        u = _350
                        continue 
                    mem[_683 + _687 + _863 + _991 + 32] = 0
                    _1080 = mem[64]
                    mem[mem[64]] = _991 + _683 + _687 + _863 - mem[64]
                    mem[64] = _991 + _683 + _687 + _863 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1080
                    u = _350
                    continue 
                mem[_683 + _687 + 32] = 0
                _867 = mem[_206]
                s = 0
                while s < _867:
                    mem[s + _683 + _687 + 32] = mem[s + _206 + 32]
                    s = s + 32
                    continue 
                if ceil32(_867) <= _867:
                    _984 = mem[_485]
                    s = 0
                    while s < _984:
                        mem[s + _683 + _687 + _867 + 32] = mem[s + _485 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_984) <= _984:
                        _1065 = mem[64]
                        mem[mem[64]] = _984 + _683 + _687 + _867 - mem[64]
                        mem[64] = _984 + _683 + _687 + _867 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1065
                        u = _350
                        continue 
                    mem[_683 + _687 + _867 + _984 + 32] = 0
                    _1081 = mem[64]
                    mem[mem[64]] = _984 + _683 + _687 + _867 - mem[64]
                    mem[64] = _984 + _683 + _687 + _867 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1081
                    u = _350
                    continue 
                mem[_683 + _687 + _867 + 32] = 0
                _992 = mem[_485]
                s = 0
                while s < _992:
                    mem[s + _683 + _687 + _867 + 32] = mem[s + _485 + 32]
                    s = s + 32
                    continue 
                if ceil32(_992) <= _992:
                    _1066 = mem[64]
                    mem[mem[64]] = _992 + _683 + _687 + _867 - mem[64]
                    mem[64] = _992 + _683 + _687 + _867 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1066
                    u = _350
                    continue 
                mem[_683 + _687 + _867 + _992 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _992 + _683 + _687 + _867 - mem[64]
                mem[64] = _992 + _683 + _687 + _867 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1082
                u = _350
                continue 
            mem[_485 + 32 len u] = call.data[calldata.size len u]
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
                if v - 1 >= mem[_485]:
                    revert with 0, 50
                mem[v + _485 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _684 = mem[64]
            _688 = mem[t]
            s = 0
            while s < _688:
                mem[s + _684 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_688) <= _688:
                _864 = mem[_206]
                s = 0
                while s < _864:
                    mem[s + _684 + _688 + 32] = mem[s + _206 + 32]
                    s = s + 32
                    continue 
                if ceil32(_864) <= _864:
                    _985 = mem[_485]
                    s = 0
                    while s < _985:
                        mem[s + _684 + _688 + _864 + 32] = mem[s + _485 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_985) <= _985:
                        _1067 = mem[64]
                        mem[mem[64]] = _985 + _684 + _688 + _864 - mem[64]
                        mem[64] = _985 + _684 + _688 + _864 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1067
                        u = _350
                        continue 
                    mem[_684 + _688 + _864 + _985 + 32] = 0
                    _1083 = mem[64]
                    mem[mem[64]] = _985 + _684 + _688 + _864 - mem[64]
                    mem[64] = _985 + _684 + _688 + _864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1083
                    u = _350
                    continue 
                mem[_684 + _688 + _864 + 32] = 0
                _993 = mem[_485]
                s = 0
                while s < _993:
                    mem[s + _684 + _688 + _864 + 32] = mem[s + _485 + 32]
                    s = s + 32
                    continue 
                if ceil32(_993) <= _993:
                    _1068 = mem[64]
                    mem[mem[64]] = _993 + _684 + _688 + _864 - mem[64]
                    mem[64] = _993 + _684 + _688 + _864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1068
                    u = _350
                    continue 
                mem[_684 + _688 + _864 + _993 + 32] = 0
                _1084 = mem[64]
                mem[mem[64]] = _993 + _684 + _688 + _864 - mem[64]
                mem[64] = _993 + _684 + _688 + _864 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1084
                u = _350
                continue 
            mem[_684 + _688 + 32] = 0
            _868 = mem[_206]
            s = 0
            while s < _868:
                mem[s + _684 + _688 + 32] = mem[s + _206 + 32]
                s = s + 32
                continue 
            if ceil32(_868) <= _868:
                _986 = mem[_485]
                s = 0
                while s < _986:
                    mem[s + _684 + _688 + _868 + 32] = mem[s + _485 + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1069 = mem[64]
                    mem[mem[64]] = _986 + _684 + _688 + _868 - mem[64]
                    mem[64] = _986 + _684 + _688 + _868 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1069
                    u = _350
                    continue 
                mem[_684 + _688 + _868 + _986 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _986 + _684 + _688 + _868 - mem[64]
                mem[64] = _986 + _684 + _688 + _868 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1085
                u = _350
                continue 
            mem[_684 + _688 + _868 + 32] = 0
            _994 = mem[_485]
            s = 0
            while s < _994:
                mem[s + _684 + _688 + _868 + 32] = mem[s + _485 + 32]
                s = s + 32
                continue 
            if ceil32(_994) <= _994:
                _1070 = mem[64]
                mem[mem[64]] = _994 + _684 + _688 + _868 - mem[64]
                mem[64] = _994 + _684 + _688 + _868 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1070
                u = _350
                continue 
            mem[_684 + _688 + _868 + _994 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _994 + _684 + _688 + _868 - mem[64]
            mem[64] = _994 + _684 + _688 + _868 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1086
            u = _350
            continue 
        _349 = mem[64]
        mem[mem[64]] = 32
        _361 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_361)] = mem[t + 32 len ceil32(_361)]
        if ceil32(_361) <= _361:
            return 32, mem[mem[64] + 32 len ceil32(_361) + 32]
        mem[mem[64] + _361 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_361) + _349 + -mem[64] + 64
    mem[_104 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _62
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_104]:
            revert with 0, 50
        mem[s + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    _207 = mem[64]
    mem[64] = mem[64] + 64
    mem[_207] = 1
    mem[_207 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    t = _104
    u = _57
    while idx < _56:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _353 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _354 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
        if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
            _364 = mem[64]
            mem[64] = mem[64] + 64
            mem[_364] = 1
            mem[_364 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _368 = mem[64]
            _370 = mem[t]
            u = 0
            while u < _370:
                mem[u + _368 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_370) <= _370:
                _488 = mem[_207]
                t = 0
                while t < _488:
                    mem[t + _368 + _370 + 32] = mem[t + _207 + 32]
                    t = t + 32
                    continue 
                if ceil32(_488) <= _488:
                    _693 = mem[_364]
                    s = 0
                    while s < _693:
                        mem[s + _368 + _370 + _488 + 32] = mem[s + _364 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _875 = mem[64]
                        mem[mem[64]] = _693 + _368 + _370 + _488 - mem[64]
                        mem[64] = _693 + _368 + _370 + _488 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _875
                        u = _353
                        continue 
                    mem[_368 + _370 + _488 + _693 + 32] = 0
                    _891 = mem[64]
                    mem[mem[64]] = _693 + _368 + _370 + _488 - mem[64]
                    mem[64] = _693 + _368 + _370 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _891
                    u = _353
                    continue 
                mem[_368 + _370 + _488 + 32] = 0
                _701 = mem[_364]
                s = 0
                while s < _701:
                    mem[s + _368 + _370 + _488 + 32] = mem[s + _364 + 32]
                    s = s + 32
                    continue 
                if ceil32(_701) <= _701:
                    _876 = mem[64]
                    mem[mem[64]] = _701 + _368 + _370 + _488 - mem[64]
                    mem[64] = _701 + _368 + _370 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _876
                    u = _353
                    continue 
                mem[_368 + _370 + _488 + _701 + 32] = 0
                _892 = mem[64]
                mem[mem[64]] = _701 + _368 + _370 + _488 - mem[64]
                mem[64] = _701 + _368 + _370 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _892
                u = _353
                continue 
            mem[_368 + _370 + 32] = 0
            _492 = mem[_207]
            s = 0
            while s < _492:
                mem[s + _368 + _370 + 32] = mem[s + _207 + 32]
                s = s + 32
                continue 
            if ceil32(_492) <= _492:
                _694 = mem[_364]
                s = 0
                while s < _694:
                    mem[s + _368 + _370 + _492 + 32] = mem[s + _364 + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _877 = mem[64]
                    mem[mem[64]] = _694 + _368 + _370 + _492 - mem[64]
                    mem[64] = _694 + _368 + _370 + _492 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _877
                    u = _353
                    continue 
                mem[_368 + _370 + _492 + _694 + 32] = 0
                _893 = mem[64]
                mem[mem[64]] = _694 + _368 + _370 + _492 - mem[64]
                mem[64] = _694 + _368 + _370 + _492 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _893
                u = _353
                continue 
            mem[_368 + _370 + _492 + 32] = 0
            _702 = mem[_364]
            s = 0
            while s < _702:
                mem[s + _368 + _370 + _492 + 32] = mem[s + _364 + 32]
                s = s + 32
                continue 
            if ceil32(_702) <= _702:
                _878 = mem[64]
                mem[mem[64]] = _702 + _368 + _370 + _492 - mem[64]
                mem[64] = _702 + _368 + _370 + _492 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _878
                u = _353
                continue 
            mem[_368 + _370 + _492 + _702 + 32] = 0
            _894 = mem[64]
            mem[mem[64]] = _702 + _368 + _370 + _492 - mem[64]
            mem[64] = _702 + _368 + _370 + _492 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _894
            u = _353
            continue 
        u = 0
        s = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
        while s:
            if u == -1:
                revert with 0, 17
            u = u + 1
            s = s / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _486 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            s = _354
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_486]:
                    revert with 0, 50
                mem[v + _486 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _685 = mem[64]
            _691 = mem[t]
            s = 0
            while s < _691:
                mem[s + _685 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_691) <= _691:
                _865 = mem[_207]
                s = 0
                while s < _865:
                    mem[s + _685 + _691 + 32] = mem[s + _207 + 32]
                    s = s + 32
                    continue 
                if ceil32(_865) <= _865:
                    _987 = mem[_486]
                    s = 0
                    while s < _987:
                        mem[s + _685 + _691 + _865 + 32] = mem[s + _486 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_987) <= _987:
                        _1071 = mem[64]
                        mem[mem[64]] = _987 + _685 + _691 + _865 - mem[64]
                        mem[64] = _987 + _685 + _691 + _865 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1071
                        u = _353
                        continue 
                    mem[_685 + _691 + _865 + _987 + 32] = 0
                    _1087 = mem[64]
                    mem[mem[64]] = _987 + _685 + _691 + _865 - mem[64]
                    mem[64] = _987 + _685 + _691 + _865 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1087
                    u = _353
                    continue 
                mem[_685 + _691 + _865 + 32] = 0
                _995 = mem[_486]
                s = 0
                while s < _995:
                    mem[s + _685 + _691 + _865 + 32] = mem[s + _486 + 32]
                    s = s + 32
                    continue 
                if ceil32(_995) <= _995:
                    _1072 = mem[64]
                    mem[mem[64]] = _995 + _685 + _691 + _865 - mem[64]
                    mem[64] = _995 + _685 + _691 + _865 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1072
                    u = _353
                    continue 
                mem[_685 + _691 + _865 + _995 + 32] = 0
                _1088 = mem[64]
                mem[mem[64]] = _995 + _685 + _691 + _865 - mem[64]
                mem[64] = _995 + _685 + _691 + _865 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1088
                u = _353
                continue 
            mem[_685 + _691 + 32] = 0
            _873 = mem[_207]
            s = 0
            while s < _873:
                mem[s + _685 + _691 + 32] = mem[s + _207 + 32]
                s = s + 32
                continue 
            if ceil32(_873) <= _873:
                _988 = mem[_486]
                s = 0
                while s < _988:
                    mem[s + _685 + _691 + _873 + 32] = mem[s + _486 + 32]
                    s = s + 32
                    continue 
                if ceil32(_988) <= _988:
                    _1073 = mem[64]
                    mem[mem[64]] = _988 + _685 + _691 + _873 - mem[64]
                    mem[64] = _988 + _685 + _691 + _873 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1073
                    u = _353
                    continue 
                mem[_685 + _691 + _873 + _988 + 32] = 0
                _1089 = mem[64]
                mem[mem[64]] = _988 + _685 + _691 + _873 - mem[64]
                mem[64] = _988 + _685 + _691 + _873 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1089
                u = _353
                continue 
            mem[_685 + _691 + _873 + 32] = 0
            _996 = mem[_486]
            s = 0
            while s < _996:
                mem[s + _685 + _691 + _873 + 32] = mem[s + _486 + 32]
                s = s + 32
                continue 
            if ceil32(_996) <= _996:
                _1074 = mem[64]
                mem[mem[64]] = _996 + _685 + _691 + _873 - mem[64]
                mem[64] = _996 + _685 + _691 + _873 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1074
                u = _353
                continue 
            mem[_685 + _691 + _873 + _996 + 32] = 0
            _1090 = mem[64]
            mem[mem[64]] = _996 + _685 + _691 + _873 - mem[64]
            mem[64] = _996 + _685 + _691 + _873 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1090
            u = _353
            continue 
        mem[_486 + 32 len u] = call.data[calldata.size len u]
        v = u
        s = _354
        while s:
            if v < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_486]:
                revert with 0, 50
            mem[v + _486 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _686 = mem[64]
        _692 = mem[t]
        s = 0
        while s < _692:
            mem[s + _686 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_692) <= _692:
            _866 = mem[_207]
            s = 0
            while s < _866:
                mem[s + _686 + _692 + 32] = mem[s + _207 + 32]
                s = s + 32
                continue 
            if ceil32(_866) <= _866:
                _989 = mem[_486]
                s = 0
                while s < _989:
                    mem[s + _686 + _692 + _866 + 32] = mem[s + _486 + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1075 = mem[64]
                    mem[mem[64]] = _989 + _686 + _692 + _866 - mem[64]
                    mem[64] = _989 + _686 + _692 + _866 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1075
                    u = _353
                    continue 
                mem[_686 + _692 + _866 + _989 + 32] = 0
                _1091 = mem[64]
                mem[mem[64]] = _989 + _686 + _692 + _866 - mem[64]
                mem[64] = _989 + _686 + _692 + _866 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1091
                u = _353
                continue 
            mem[_686 + _692 + _866 + 32] = 0
            _997 = mem[_486]
            s = 0
            while s < _997:
                mem[s + _686 + _692 + _866 + 32] = mem[s + _486 + 32]
                s = s + 32
                continue 
            if ceil32(_997) <= _997:
                _1076 = mem[64]
                mem[mem[64]] = _997 + _686 + _692 + _866 - mem[64]
                mem[64] = _997 + _686 + _692 + _866 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1076
                u = _353
                continue 
            mem[_686 + _692 + _866 + _997 + 32] = 0
            _1092 = mem[64]
            mem[mem[64]] = _997 + _686 + _692 + _866 - mem[64]
            mem[64] = _997 + _686 + _692 + _866 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1092
            u = _353
            continue 
        mem[_686 + _692 + 32] = 0
        _874 = mem[_207]
        s = 0
        while s < _874:
            mem[s + _686 + _692 + 32] = mem[s + _207 + 32]
            s = s + 32
            continue 
        if ceil32(_874) <= _874:
            _990 = mem[_486]
            s = 0
            while s < _990:
                mem[s + _686 + _692 + _874 + 32] = mem[s + _486 + 32]
                s = s + 32
                continue 
            if ceil32(_990) <= _990:
                _1077 = mem[64]
                mem[mem[64]] = _990 + _686 + _692 + _874 - mem[64]
                mem[64] = _990 + _686 + _692 + _874 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1077
                u = _353
                continue 
            mem[_686 + _692 + _874 + _990 + 32] = 0
            _1093 = mem[64]
            mem[mem[64]] = _990 + _686 + _692 + _874 - mem[64]
            mem[64] = _990 + _686 + _692 + _874 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1093
            u = _353
            continue 
        mem[_686 + _692 + _874 + 32] = 0
        _998 = mem[_486]
        s = 0
        while s < _998:
            mem[s + _686 + _692 + _874 + 32] = mem[s + _486 + 32]
            s = s + 32
            continue 
        if ceil32(_998) <= _998:
            _1078 = mem[64]
            mem[mem[64]] = _998 + _686 + _692 + _874 - mem[64]
            mem[64] = _998 + _686 + _692 + _874 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1078
            u = _353
            continue 
        mem[_686 + _692 + _874 + _998 + 32] = 0
        _1094 = mem[64]
        mem[mem[64]] = _998 + _686 + _692 + _874 - mem[64]
        mem[64] = _998 + _686 + _692 + _874 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = _1094
        u = _353
        continue 
    _352 = mem[64]
    mem[mem[64]] = 32
    _363 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_363)] = mem[t + 32 len ceil32(_363)]
    if ceil32(_363) <= _363:
        return 32, mem[mem[64] + 32 len ceil32(_363) + 32]
    mem[mem[64] + _363 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_363) + _352 + -mem[64] + 64
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b)
    delegate 0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b.0x732a2ccf with:
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
    mem[64] = ceil32(return_data.size) + (32 * uint256(stor4[address(arg1)].field_0)) + 128
    mem[ceil32(return_data.size) + 96] = uint256(stor4[address(arg1)].field_0)
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 4)
        _59 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
            mem[_64] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                        mem[_64 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_64 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _64 + 32
                        u = sha3(mem[0])
                        while _64 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_59] = _64
                mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_59 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_59 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor4[address(arg1)][idx].field_1 % 128:
                mem[_59] = _64
                mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_59 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_59 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_64 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_59] = _64
                mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_59 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_59 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_64 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _64 + 32
            u = sha3(mem[0])
            while _64 + stor4[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_59] = _64
            mem[_59 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_59 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_59 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _59
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
        mem[_66] = stor4[address(arg1)][idx].field_1 % 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                mem[_59] = _66
                mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_59 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_59 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                mem[_66 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_59] = _66
                mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_59 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_59 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_66 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _66 + 32
            u = sha3(mem[0])
            while _66 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_59] = _66
            mem[_59 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_59 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_59 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _59
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        if stor4[address(arg1)][idx].field_1 % 128:
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_66 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_66 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _66 + 32
                u = sha3(mem[0])
                while _66 + stor4[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_59] = _66
        mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_256)
        mem[_59 + 64] = uint256(stor4[address(arg1)][idx].field_512)
        mem[_59 + 96] = uint256(stor4[address(arg1)][idx].field_768)
        mem[s] = _59
        s = s + 32
        idx = idx + 1
        continue 
    _56 = mem[ceil32(return_data.size) + 96]
    _57 = mem[64]
    mem[64] = mem[64] + 128
    mem[_57] = 96
    mem[_57 + 32] = 0
    mem[_57 + 64] = 0
    mem[_57 + 96] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    _62 = mem[mem[ceil32(return_data.size) + 128] + 64]
    if not mem[mem[ceil32(return_data.size) + 128] + 64]:
        _63 = mem[64]
        mem[64] = mem[64] + 64
        mem[_63] = 1
        mem[_63 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _65 = mem[64]
        mem[64] = mem[64] + 64
        mem[_65] = 1
        mem[_65 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _63
        t = _57
        while idx < _56:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _106 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _107 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                _109 = mem[64]
                mem[64] = mem[64] + 64
                mem[_109] = 1
                mem[_109 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _110 = mem[64]
                _112 = mem[s]
                t = 0
                while t < _112:
                    mem[t + _110 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_112) <= _112:
                    _209 = mem[_65]
                    s = 0
                    while s < _209:
                        mem[s + _110 + _112 + 32] = mem[s + _65 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_209) <= _209:
                        _359 = mem[_109]
                        s = 0
                        while s < _359:
                            mem[s + _110 + _112 + _209 + 32] = mem[s + _109 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_359) <= _359:
                            _495 = mem[64]
                            mem[mem[64]] = _359 + _110 + _112 + _209 - mem[64]
                            mem[64] = _359 + _110 + _112 + _209 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _495
                            t = _106
                            continue 
                        mem[_110 + _112 + _209 + _359 + 32] = 0
                        _501 = mem[64]
                        mem[mem[64]] = _359 + _110 + _112 + _209 - mem[64]
                        mem[64] = _359 + _110 + _112 + _209 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _501
                        t = _106
                        continue 
                    mem[_110 + _112 + _209 + 32] = 0
                    _365 = mem[_109]
                    s = 0
                    while s < _365:
                        mem[s + _110 + _112 + _209 + 32] = mem[s + _109 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_365) <= _365:
                        _496 = mem[64]
                        mem[mem[64]] = _365 + _110 + _112 + _209 - mem[64]
                        mem[64] = _365 + _110 + _112 + _209 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _496
                        t = _106
                        continue 
                    mem[_110 + _112 + _209 + _365 + 32] = 0
                    _502 = mem[64]
                    mem[mem[64]] = _365 + _110 + _112 + _209 - mem[64]
                    mem[64] = _365 + _110 + _112 + _209 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _502
                    t = _106
                    continue 
                mem[_110 + _112 + 32] = 0
                _212 = mem[_65]
                s = 0
                while s < _212:
                    mem[s + _110 + _112 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_212) <= _212:
                    _360 = mem[_109]
                    s = 0
                    while s < _360:
                        mem[s + _110 + _112 + _212 + 32] = mem[s + _109 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_360) <= _360:
                        _497 = mem[64]
                        mem[mem[64]] = _360 + _110 + _112 + _212 - mem[64]
                        mem[64] = _360 + _110 + _112 + _212 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _497
                        t = _106
                        continue 
                    mem[_110 + _112 + _212 + _360 + 32] = 0
                    _503 = mem[64]
                    mem[mem[64]] = _360 + _110 + _112 + _212 - mem[64]
                    mem[64] = _360 + _110 + _112 + _212 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _503
                    t = _106
                    continue 
                mem[_110 + _112 + _212 + 32] = 0
                _366 = mem[_109]
                s = 0
                while s < _366:
                    mem[s + _110 + _112 + _212 + 32] = mem[s + _109 + 32]
                    s = s + 32
                    continue 
                if ceil32(_366) <= _366:
                    _498 = mem[64]
                    mem[mem[64]] = _366 + _110 + _112 + _212 - mem[64]
                    mem[64] = _366 + _110 + _112 + _212 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _498
                    t = _106
                    continue 
                mem[_110 + _112 + _212 + _366 + 32] = 0
                _504 = mem[64]
                mem[mem[64]] = _366 + _110 + _112 + _212 - mem[64]
                mem[64] = _366 + _110 + _112 + _212 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _504
                t = _106
                continue 
            u = 0
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _208 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _107
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_208]:
                        revert with 0, 50
                    mem[v + _208 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _355 = mem[64]
                _357 = mem[s]
                t = 0
                while t < _357:
                    mem[t + _355 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_357) <= _357:
                    _489 = mem[_65]
                    s = 0
                    while s < _489:
                        mem[s + _355 + _357 + 32] = mem[s + _65 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_489) <= _489:
                        _695 = mem[_208]
                        s = 0
                        while s < _695:
                            mem[s + _355 + _357 + _489 + 32] = mem[s + _208 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_695) <= _695:
                            _879 = mem[64]
                            mem[mem[64]] = _695 + _355 + _357 + _489 - mem[64]
                            mem[64] = _695 + _355 + _357 + _489 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _879
                            t = _106
                            continue 
                        mem[_355 + _357 + _489 + _695 + 32] = 0
                        _895 = mem[64]
                        mem[mem[64]] = _695 + _355 + _357 + _489 - mem[64]
                        mem[64] = _695 + _355 + _357 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _895
                        t = _106
                        continue 
                    mem[_355 + _357 + _489 + 32] = 0
                    _703 = mem[_208]
                    s = 0
                    while s < _703:
                        mem[s + _355 + _357 + _489 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_703) <= _703:
                        _880 = mem[64]
                        mem[mem[64]] = _703 + _355 + _357 + _489 - mem[64]
                        mem[64] = _703 + _355 + _357 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _880
                        t = _106
                        continue 
                    mem[_355 + _357 + _489 + _703 + 32] = 0
                    _896 = mem[64]
                    mem[mem[64]] = _703 + _355 + _357 + _489 - mem[64]
                    mem[64] = _703 + _355 + _357 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _896
                    t = _106
                    continue 
                mem[_355 + _357 + 32] = 0
                _493 = mem[_65]
                s = 0
                while s < _493:
                    mem[s + _355 + _357 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_493) <= _493:
                    _696 = mem[_208]
                    s = 0
                    while s < _696:
                        mem[s + _355 + _357 + _493 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_696) <= _696:
                        _881 = mem[64]
                        mem[mem[64]] = _696 + _355 + _357 + _493 - mem[64]
                        mem[64] = _696 + _355 + _357 + _493 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _881
                        t = _106
                        continue 
                    mem[_355 + _357 + _493 + _696 + 32] = 0
                    _897 = mem[64]
                    mem[mem[64]] = _696 + _355 + _357 + _493 - mem[64]
                    mem[64] = _696 + _355 + _357 + _493 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _897
                    t = _106
                    continue 
                mem[_355 + _357 + _493 + 32] = 0
                _704 = mem[_208]
                s = 0
                while s < _704:
                    mem[s + _355 + _357 + _493 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_704) <= _704:
                    _882 = mem[64]
                    mem[mem[64]] = _704 + _355 + _357 + _493 - mem[64]
                    mem[64] = _704 + _355 + _357 + _493 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _882
                    t = _106
                    continue 
                mem[_355 + _357 + _493 + _704 + 32] = 0
                _898 = mem[64]
                mem[mem[64]] = _704 + _355 + _357 + _493 - mem[64]
                mem[64] = _704 + _355 + _357 + _493 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _898
                t = _106
                continue 
            mem[_208 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _107
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_208]:
                    revert with 0, 50
                mem[v + _208 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _356 = mem[64]
            _358 = mem[s]
            t = 0
            while t < _358:
                mem[t + _356 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_358) <= _358:
                _490 = mem[_65]
                s = 0
                while s < _490:
                    mem[s + _356 + _358 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_490) <= _490:
                    _697 = mem[_208]
                    s = 0
                    while s < _697:
                        mem[s + _356 + _358 + _490 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _883 = mem[64]
                        mem[mem[64]] = _697 + _356 + _358 + _490 - mem[64]
                        mem[64] = _697 + _356 + _358 + _490 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _883
                        t = _106
                        continue 
                    mem[_356 + _358 + _490 + _697 + 32] = 0
                    _899 = mem[64]
                    mem[mem[64]] = _697 + _356 + _358 + _490 - mem[64]
                    mem[64] = _697 + _356 + _358 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _899
                    t = _106
                    continue 
                mem[_356 + _358 + _490 + 32] = 0
                _705 = mem[_208]
                s = 0
                while s < _705:
                    mem[s + _356 + _358 + _490 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_705) <= _705:
                    _884 = mem[64]
                    mem[mem[64]] = _705 + _356 + _358 + _490 - mem[64]
                    mem[64] = _705 + _356 + _358 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _884
                    t = _106
                    continue 
                mem[_356 + _358 + _490 + _705 + 32] = 0
                _900 = mem[64]
                mem[mem[64]] = _705 + _356 + _358 + _490 - mem[64]
                mem[64] = _705 + _356 + _358 + _490 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _900
                t = _106
                continue 
            mem[_356 + _358 + 32] = 0
            _494 = mem[_65]
            s = 0
            while s < _494:
                mem[s + _356 + _358 + 32] = mem[s + _65 + 32]
                s = s + 32
                continue 
            if ceil32(_494) <= _494:
                _698 = mem[_208]
                s = 0
                while s < _698:
                    mem[s + _356 + _358 + _494 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _885 = mem[64]
                    mem[mem[64]] = _698 + _356 + _358 + _494 - mem[64]
                    mem[64] = _698 + _356 + _358 + _494 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _885
                    t = _106
                    continue 
                mem[_356 + _358 + _494 + _698 + 32] = 0
                _901 = mem[64]
                mem[mem[64]] = _698 + _356 + _358 + _494 - mem[64]
                mem[64] = _698 + _356 + _358 + _494 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _901
                t = _106
                continue 
            mem[_356 + _358 + _494 + 32] = 0
            _706 = mem[_208]
            s = 0
            while s < _706:
                mem[s + _356 + _358 + _494 + 32] = mem[s + _208 + 32]
                s = s + 32
                continue 
            if ceil32(_706) <= _706:
                _886 = mem[64]
                mem[mem[64]] = _706 + _356 + _358 + _494 - mem[64]
                mem[64] = _706 + _356 + _358 + _494 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _886
                t = _106
                continue 
            mem[_356 + _358 + _494 + _706 + 32] = 0
            _902 = mem[64]
            mem[mem[64]] = _706 + _356 + _358 + _494 - mem[64]
            mem[64] = _706 + _356 + _358 + _494 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _902
            t = _106
            continue 
        _105 = mem[64]
        mem[mem[64]] = 32
        _108 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_108)] = mem[s + 32 len ceil32(_108)]
        if ceil32(_108) <= _108:
            return 32, mem[mem[64] + 32 len ceil32(_108) + 32]
        mem[mem[64] + _108 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_108) + _105 + -mem[64] + 64
    u = 0
    t = mem[mem[ceil32(return_data.size) + 128] + 64]
    while t:
        if u == -1:
            revert with 0, 17
        u = u + 1
        t = t / 10
        continue 
    if u > test266151307():
        revert with 0, 65
    _104 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _62
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_104]:
                revert with 0, 50
            mem[s + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        _206 = mem[64]
        mem[64] = mem[64] + 64
        mem[_206] = 1
        mem[_206 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        t = _104
        u = _57
        while idx < _56:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _350 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _351 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                _362 = mem[64]
                mem[64] = mem[64] + 64
                mem[_362] = 1
                mem[_362 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _367 = mem[64]
                _369 = mem[t]
                u = 0
                while u < _369:
                    mem[u + _367 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_369) <= _369:
                    _487 = mem[_206]
                    t = 0
                    while t < _487:
                        mem[t + _367 + _369 + 32] = mem[t + _206 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_487) <= _487:
                        _689 = mem[_362]
                        s = 0
                        while s < _689:
                            mem[s + _367 + _369 + _487 + 32] = mem[s + _362 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_689) <= _689:
                            _869 = mem[64]
                            mem[mem[64]] = _689 + _367 + _369 + _487 - mem[64]
                            mem[64] = _689 + _367 + _369 + _487 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _869
                            u = _350
                            continue 
                        mem[_367 + _369 + _487 + _689 + 32] = 0
                        _887 = mem[64]
                        mem[mem[64]] = _689 + _367 + _369 + _487 - mem[64]
                        mem[64] = _689 + _367 + _369 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _887
                        u = _350
                        continue 
                    mem[_367 + _369 + _487 + 32] = 0
                    _699 = mem[_362]
                    s = 0
                    while s < _699:
                        mem[s + _367 + _369 + _487 + 32] = mem[s + _362 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_699) <= _699:
                        _870 = mem[64]
                        mem[mem[64]] = _699 + _367 + _369 + _487 - mem[64]
                        mem[64] = _699 + _367 + _369 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _870
                        u = _350
                        continue 
                    mem[_367 + _369 + _487 + _699 + 32] = 0
                    _888 = mem[64]
                    mem[mem[64]] = _699 + _367 + _369 + _487 - mem[64]
                    mem[64] = _699 + _367 + _369 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _888
                    u = _350
                    continue 
                mem[_367 + _369 + 32] = 0
                _491 = mem[_206]
                s = 0
                while s < _491:
                    mem[s + _367 + _369 + 32] = mem[s + _206 + 32]
                    s = s + 32
                    continue 
                if ceil32(_491) <= _491:
                    _690 = mem[_362]
                    s = 0
                    while s < _690:
                        mem[s + _367 + _369 + _491 + 32] = mem[s + _362 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _871 = mem[64]
                        mem[mem[64]] = _690 + _367 + _369 + _491 - mem[64]
                        mem[64] = _690 + _367 + _369 + _491 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _871
                        u = _350
                        continue 
                    mem[_367 + _369 + _491 + _690 + 32] = 0
                    _889 = mem[64]
                    mem[mem[64]] = _690 + _367 + _369 + _491 - mem[64]
                    mem[64] = _690 + _367 + _369 + _491 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _889
                    u = _350
                    continue 
                mem[_367 + _369 + _491 + 32] = 0
                _700 = mem[_362]
                s = 0
                while s < _700:
                    mem[s + _367 + _369 + _491 + 32] = mem[s + _362 + 32]
                    s = s + 32
                    continue 
                if ceil32(_700) <= _700:
                    _872 = mem[64]
                    mem[mem[64]] = _700 + _367 + _369 + _491 - mem[64]
                    mem[64] = _700 + _367 + _369 + _491 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _872
                    u = _350
                    continue 
                mem[_367 + _369 + _491 + _700 + 32] = 0
                _890 = mem[64]
                mem[mem[64]] = _700 + _367 + _369 + _491 - mem[64]
                mem[64] = _700 + _367 + _369 + _491 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _890
                u = _350
                continue 
            u = 0
            s = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            while s:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                s = s / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _485 = mem[64]
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
                    if v - 1 >= mem[_485]:
                        revert with 0, 50
                    mem[v + _485 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _683 = mem[64]
                _687 = mem[t]
                s = 0
                while s < _687:
                    mem[s + _683 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_687) <= _687:
                    _863 = mem[_206]
                    s = 0
                    while s < _863:
                        mem[s + _683 + _687 + 32] = mem[s + _206 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_863) <= _863:
                        _983 = mem[_485]
                        s = 0
                        while s < _983:
                            mem[s + _683 + _687 + _863 + 32] = mem[s + _485 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_983) <= _983:
                            _1063 = mem[64]
                            mem[mem[64]] = _983 + _683 + _687 + _863 - mem[64]
                            mem[64] = _983 + _683 + _687 + _863 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1063
                            u = _350
                            continue 
                        mem[_683 + _687 + _863 + _983 + 32] = 0
                        _1079 = mem[64]
                        mem[mem[64]] = _983 + _683 + _687 + _863 - mem[64]
                        mem[64] = _983 + _683 + _687 + _863 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1079
                        u = _350
                        continue 
                    mem[_683 + _687 + _863 + 32] = 0
                    _991 = mem[_485]
                    s = 0
                    while s < _991:
                        mem[s + _683 + _687 + _863 + 32] = mem[s + _485 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_991) <= _991:
                        _1064 = mem[64]
                        mem[mem[64]] = _991 + _683 + _687 + _863 - mem[64]
                        mem[64] = _991 + _683 + _687 + _863 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1064
                        u = _350
                        continue 
                    mem[_683 + _687 + _863 + _991 + 32] = 0
                    _1080 = mem[64]
                    mem[mem[64]] = _991 + _683 + _687 + _863 - mem[64]
                    mem[64] = _991 + _683 + _687 + _863 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1080
                    u = _350
                    continue 
                mem[_683 + _687 + 32] = 0
                _867 = mem[_206]
                s = 0
                while s < _867:
                    mem[s + _683 + _687 + 32] = mem[s + _206 + 32]
                    s = s + 32
                    continue 
                if ceil32(_867) <= _867:
                    _984 = mem[_485]
                    s = 0
                    while s < _984:
                        mem[s + _683 + _687 + _867 + 32] = mem[s + _485 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_984) <= _984:
                        _1065 = mem[64]
                        mem[mem[64]] = _984 + _683 + _687 + _867 - mem[64]
                        mem[64] = _984 + _683 + _687 + _867 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1065
                        u = _350
                        continue 
                    mem[_683 + _687 + _867 + _984 + 32] = 0
                    _1081 = mem[64]
                    mem[mem[64]] = _984 + _683 + _687 + _867 - mem[64]
                    mem[64] = _984 + _683 + _687 + _867 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1081
                    u = _350
                    continue 
                mem[_683 + _687 + _867 + 32] = 0
                _992 = mem[_485]
                s = 0
                while s < _992:
                    mem[s + _683 + _687 + _867 + 32] = mem[s + _485 + 32]
                    s = s + 32
                    continue 
                if ceil32(_992) <= _992:
                    _1066 = mem[64]
                    mem[mem[64]] = _992 + _683 + _687 + _867 - mem[64]
                    mem[64] = _992 + _683 + _687 + _867 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1066
                    u = _350
                    continue 
                mem[_683 + _687 + _867 + _992 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _992 + _683 + _687 + _867 - mem[64]
                mem[64] = _992 + _683 + _687 + _867 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1082
                u = _350
                continue 
            mem[_485 + 32 len u] = call.data[calldata.size len u]
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
                if v - 1 >= mem[_485]:
                    revert with 0, 50
                mem[v + _485 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _684 = mem[64]
            _688 = mem[t]
            s = 0
            while s < _688:
                mem[s + _684 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_688) <= _688:
                _864 = mem[_206]
                s = 0
                while s < _864:
                    mem[s + _684 + _688 + 32] = mem[s + _206 + 32]
                    s = s + 32
                    continue 
                if ceil32(_864) <= _864:
                    _985 = mem[_485]
                    s = 0
                    while s < _985:
                        mem[s + _684 + _688 + _864 + 32] = mem[s + _485 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_985) <= _985:
                        _1067 = mem[64]
                        mem[mem[64]] = _985 + _684 + _688 + _864 - mem[64]
                        mem[64] = _985 + _684 + _688 + _864 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1067
                        u = _350
                        continue 
                    mem[_684 + _688 + _864 + _985 + 32] = 0
                    _1083 = mem[64]
                    mem[mem[64]] = _985 + _684 + _688 + _864 - mem[64]
                    mem[64] = _985 + _684 + _688 + _864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1083
                    u = _350
                    continue 
                mem[_684 + _688 + _864 + 32] = 0
                _993 = mem[_485]
                s = 0
                while s < _993:
                    mem[s + _684 + _688 + _864 + 32] = mem[s + _485 + 32]
                    s = s + 32
                    continue 
                if ceil32(_993) <= _993:
                    _1068 = mem[64]
                    mem[mem[64]] = _993 + _684 + _688 + _864 - mem[64]
                    mem[64] = _993 + _684 + _688 + _864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1068
                    u = _350
                    continue 
                mem[_684 + _688 + _864 + _993 + 32] = 0
                _1084 = mem[64]
                mem[mem[64]] = _993 + _684 + _688 + _864 - mem[64]
                mem[64] = _993 + _684 + _688 + _864 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1084
                u = _350
                continue 
            mem[_684 + _688 + 32] = 0
            _868 = mem[_206]
            s = 0
            while s < _868:
                mem[s + _684 + _688 + 32] = mem[s + _206 + 32]
                s = s + 32
                continue 
            if ceil32(_868) <= _868:
                _986 = mem[_485]
                s = 0
                while s < _986:
                    mem[s + _684 + _688 + _868 + 32] = mem[s + _485 + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1069 = mem[64]
                    mem[mem[64]] = _986 + _684 + _688 + _868 - mem[64]
                    mem[64] = _986 + _684 + _688 + _868 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1069
                    u = _350
                    continue 
                mem[_684 + _688 + _868 + _986 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _986 + _684 + _688 + _868 - mem[64]
                mem[64] = _986 + _684 + _688 + _868 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1085
                u = _350
                continue 
            mem[_684 + _688 + _868 + 32] = 0
            _994 = mem[_485]
            s = 0
            while s < _994:
                mem[s + _684 + _688 + _868 + 32] = mem[s + _485 + 32]
                s = s + 32
                continue 
            if ceil32(_994) <= _994:
                _1070 = mem[64]
                mem[mem[64]] = _994 + _684 + _688 + _868 - mem[64]
                mem[64] = _994 + _684 + _688 + _868 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1070
                u = _350
                continue 
            mem[_684 + _688 + _868 + _994 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _994 + _684 + _688 + _868 - mem[64]
            mem[64] = _994 + _684 + _688 + _868 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1086
            u = _350
            continue 
        _349 = mem[64]
        mem[mem[64]] = 32
        _361 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_361)] = mem[t + 32 len ceil32(_361)]
        if ceil32(_361) <= _361:
            return 32, mem[mem[64] + 32 len ceil32(_361) + 32]
        mem[mem[64] + _361 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_361) + _349 + -mem[64] + 64
    mem[_104 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _62
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_104]:
            revert with 0, 50
        mem[s + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    _207 = mem[64]
    mem[64] = mem[64] + 64
    mem[_207] = 1
    mem[_207 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    t = _104
    u = _57
    while idx < _56:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _353 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _354 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
        if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
            _364 = mem[64]
            mem[64] = mem[64] + 64
            mem[_364] = 1
            mem[_364 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _368 = mem[64]
            _370 = mem[t]
            u = 0
            while u < _370:
                mem[u + _368 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_370) <= _370:
                _488 = mem[_207]
                t = 0
                while t < _488:
                    mem[t + _368 + _370 + 32] = mem[t + _207 + 32]
                    t = t + 32
                    continue 
                if ceil32(_488) <= _488:
                    _693 = mem[_364]
                    s = 0
                    while s < _693:
                        mem[s + _368 + _370 + _488 + 32] = mem[s + _364 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _875 = mem[64]
                        mem[mem[64]] = _693 + _368 + _370 + _488 - mem[64]
                        mem[64] = _693 + _368 + _370 + _488 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _875
                        u = _353
                        continue 
                    mem[_368 + _370 + _488 + _693 + 32] = 0
                    _891 = mem[64]
                    mem[mem[64]] = _693 + _368 + _370 + _488 - mem[64]
                    mem[64] = _693 + _368 + _370 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _891
                    u = _353
                    continue 
                mem[_368 + _370 + _488 + 32] = 0
                _701 = mem[_364]
                s = 0
                while s < _701:
                    mem[s + _368 + _370 + _488 + 32] = mem[s + _364 + 32]
                    s = s + 32
                    continue 
                if ceil32(_701) <= _701:
                    _876 = mem[64]
                    mem[mem[64]] = _701 + _368 + _370 + _488 - mem[64]
                    mem[64] = _701 + _368 + _370 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _876
                    u = _353
                    continue 
                mem[_368 + _370 + _488 + _701 + 32] = 0
                _892 = mem[64]
                mem[mem[64]] = _701 + _368 + _370 + _488 - mem[64]
                mem[64] = _701 + _368 + _370 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _892
                u = _353
                continue 
            mem[_368 + _370 + 32] = 0
            _492 = mem[_207]
            s = 0
            while s < _492:
                mem[s + _368 + _370 + 32] = mem[s + _207 + 32]
                s = s + 32
                continue 
            if ceil32(_492) <= _492:
                _694 = mem[_364]
                s = 0
                while s < _694:
                    mem[s + _368 + _370 + _492 + 32] = mem[s + _364 + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _877 = mem[64]
                    mem[mem[64]] = _694 + _368 + _370 + _492 - mem[64]
                    mem[64] = _694 + _368 + _370 + _492 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _877
                    u = _353
                    continue 
                mem[_368 + _370 + _492 + _694 + 32] = 0
                _893 = mem[64]
                mem[mem[64]] = _694 + _368 + _370 + _492 - mem[64]
                mem[64] = _694 + _368 + _370 + _492 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _893
                u = _353
                continue 
            mem[_368 + _370 + _492 + 32] = 0
            _702 = mem[_364]
            s = 0
            while s < _702:
                mem[s + _368 + _370 + _492 + 32] = mem[s + _364 + 32]
                s = s + 32
                continue 
            if ceil32(_702) <= _702:
                _878 = mem[64]
                mem[mem[64]] = _702 + _368 + _370 + _492 - mem[64]
                mem[64] = _702 + _368 + _370 + _492 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _878
                u = _353
                continue 
            mem[_368 + _370 + _492 + _702 + 32] = 0
            _894 = mem[64]
            mem[mem[64]] = _702 + _368 + _370 + _492 - mem[64]
            mem[64] = _702 + _368 + _370 + _492 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _894
            u = _353
            continue 
        u = 0
        s = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
        while s:
            if u == -1:
                revert with 0, 17
            u = u + 1
            s = s / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _486 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            s = _354
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_486]:
                    revert with 0, 50
                mem[v + _486 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _685 = mem[64]
            _691 = mem[t]
            s = 0
            while s < _691:
                mem[s + _685 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_691) <= _691:
                _865 = mem[_207]
                s = 0
                while s < _865:
                    mem[s + _685 + _691 + 32] = mem[s + _207 + 32]
                    s = s + 32
                    continue 
                if ceil32(_865) <= _865:
                    _987 = mem[_486]
                    s = 0
                    while s < _987:
                        mem[s + _685 + _691 + _865 + 32] = mem[s + _486 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_987) <= _987:
                        _1071 = mem[64]
                        mem[mem[64]] = _987 + _685 + _691 + _865 - mem[64]
                        mem[64] = _987 + _685 + _691 + _865 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1071
                        u = _353
                        continue 
                    mem[_685 + _691 + _865 + _987 + 32] = 0
                    _1087 = mem[64]
                    mem[mem[64]] = _987 + _685 + _691 + _865 - mem[64]
                    mem[64] = _987 + _685 + _691 + _865 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1087
                    u = _353
                    continue 
                mem[_685 + _691 + _865 + 32] = 0
                _995 = mem[_486]
                s = 0
                while s < _995:
                    mem[s + _685 + _691 + _865 + 32] = mem[s + _486 + 32]
                    s = s + 32
                    continue 
                if ceil32(_995) <= _995:
                    _1072 = mem[64]
                    mem[mem[64]] = _995 + _685 + _691 + _865 - mem[64]
                    mem[64] = _995 + _685 + _691 + _865 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1072
                    u = _353
                    continue 
                mem[_685 + _691 + _865 + _995 + 32] = 0
                _1088 = mem[64]
                mem[mem[64]] = _995 + _685 + _691 + _865 - mem[64]
                mem[64] = _995 + _685 + _691 + _865 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1088
                u = _353
                continue 
            mem[_685 + _691 + 32] = 0
            _873 = mem[_207]
            s = 0
            while s < _873:
                mem[s + _685 + _691 + 32] = mem[s + _207 + 32]
                s = s + 32
                continue 
            if ceil32(_873) <= _873:
                _988 = mem[_486]
                s = 0
                while s < _988:
                    mem[s + _685 + _691 + _873 + 32] = mem[s + _486 + 32]
                    s = s + 32
                    continue 
                if ceil32(_988) <= _988:
                    _1073 = mem[64]
                    mem[mem[64]] = _988 + _685 + _691 + _873 - mem[64]
                    mem[64] = _988 + _685 + _691 + _873 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1073
                    u = _353
                    continue 
                mem[_685 + _691 + _873 + _988 + 32] = 0
                _1089 = mem[64]
                mem[mem[64]] = _988 + _685 + _691 + _873 - mem[64]
                mem[64] = _988 + _685 + _691 + _873 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1089
                u = _353
                continue 
            mem[_685 + _691 + _873 + 32] = 0
            _996 = mem[_486]
            s = 0
            while s < _996:
                mem[s + _685 + _691 + _873 + 32] = mem[s + _486 + 32]
                s = s + 32
                continue 
            if ceil32(_996) <= _996:
                _1074 = mem[64]
                mem[mem[64]] = _996 + _685 + _691 + _873 - mem[64]
                mem[64] = _996 + _685 + _691 + _873 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1074
                u = _353
                continue 
            mem[_685 + _691 + _873 + _996 + 32] = 0
            _1090 = mem[64]
            mem[mem[64]] = _996 + _685 + _691 + _873 - mem[64]
            mem[64] = _996 + _685 + _691 + _873 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1090
            u = _353
            continue 
        mem[_486 + 32 len u] = call.data[calldata.size len u]
        v = u
        s = _354
        while s:
            if v < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_486]:
                revert with 0, 50
            mem[v + _486 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _686 = mem[64]
        _692 = mem[t]
        s = 0
        while s < _692:
            mem[s + _686 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_692) <= _692:
            _866 = mem[_207]
            s = 0
            while s < _866:
                mem[s + _686 + _692 + 32] = mem[s + _207 + 32]
                s = s + 32
                continue 
            if ceil32(_866) <= _866:
                _989 = mem[_486]
                s = 0
                while s < _989:
                    mem[s + _686 + _692 + _866 + 32] = mem[s + _486 + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1075 = mem[64]
                    mem[mem[64]] = _989 + _686 + _692 + _866 - mem[64]
                    mem[64] = _989 + _686 + _692 + _866 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1075
                    u = _353
                    continue 
                mem[_686 + _692 + _866 + _989 + 32] = 0
                _1091 = mem[64]
                mem[mem[64]] = _989 + _686 + _692 + _866 - mem[64]
                mem[64] = _989 + _686 + _692 + _866 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1091
                u = _353
                continue 
            mem[_686 + _692 + _866 + 32] = 0
            _997 = mem[_486]
            s = 0
            while s < _997:
                mem[s + _686 + _692 + _866 + 32] = mem[s + _486 + 32]
                s = s + 32
                continue 
            if ceil32(_997) <= _997:
                _1076 = mem[64]
                mem[mem[64]] = _997 + _686 + _692 + _866 - mem[64]
                mem[64] = _997 + _686 + _692 + _866 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1076
                u = _353
                continue 
            mem[_686 + _692 + _866 + _997 + 32] = 0
            _1092 = mem[64]
            mem[mem[64]] = _997 + _686 + _692 + _866 - mem[64]
            mem[64] = _997 + _686 + _692 + _866 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1092
            u = _353
            continue 
        mem[_686 + _692 + 32] = 0
        _874 = mem[_207]
        s = 0
        while s < _874:
            mem[s + _686 + _692 + 32] = mem[s + _207 + 32]
            s = s + 32
            continue 
        if ceil32(_874) <= _874:
            _990 = mem[_486]
            s = 0
            while s < _990:
                mem[s + _686 + _692 + _874 + 32] = mem[s + _486 + 32]
                s = s + 32
                continue 
            if ceil32(_990) <= _990:
                _1077 = mem[64]
                mem[mem[64]] = _990 + _686 + _692 + _874 - mem[64]
                mem[64] = _990 + _686 + _692 + _874 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1077
                u = _353
                continue 
            mem[_686 + _692 + _874 + _990 + 32] = 0
            _1093 = mem[64]
            mem[mem[64]] = _990 + _686 + _692 + _874 - mem[64]
            mem[64] = _990 + _686 + _692 + _874 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1093
            u = _353
            continue 
        mem[_686 + _692 + _874 + 32] = 0
        _998 = mem[_486]
        s = 0
        while s < _998:
            mem[s + _686 + _692 + _874 + 32] = mem[s + _486 + 32]
            s = s + 32
            continue 
        if ceil32(_998) <= _998:
            _1078 = mem[64]
            mem[mem[64]] = _998 + _686 + _692 + _874 - mem[64]
            mem[64] = _998 + _686 + _692 + _874 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1078
            u = _353
            continue 
        mem[_686 + _692 + _874 + _998 + 32] = 0
        _1094 = mem[64]
        mem[mem[64]] = _998 + _686 + _692 + _874 - mem[64]
        mem[64] = _998 + _686 + _692 + _874 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = _1094
        u = _353
        continue 
    _352 = mem[64]
    mem[mem[64]] = 32
    _363 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_363)] = mem[t + 32 len ceil32(_363)]
    if ceil32(_363) <= _363:
        return 32, mem[mem[64] + 32 len ceil32(_363) + 32]
    mem[mem[64] + _363 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_363) + _352 + -mem[64] + 64
}

function _getRewardAmountOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b)
    delegate 0xe1cd9e3499bf2c069ef95cfd8562d9cedbabee1b.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 4
    idx = 0
    s = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 4)
        _527 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            _528 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
            mem[_528] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_527] = _528
                    mem[_527 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_527 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_527 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
                                mem[idx + _544 + 68] = mem[idx + _536 + 32]
                                idx = idx + 32
                                continue 
                            mem[_544 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _544 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                            revert with 0, 17
                        _583 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_583] = 26
                        mem[_583 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _604 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _604 + 68] = mem[idx + _583 + 32]
                                idx = idx + 32
                                continue 
                            mem[_604 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _604 + -mem[64] + 100
                        if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                            revert with 0, 17
                        if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                            revert with 0, 17
                        if not rewardPerNode:
                            revert with 0, 18
                        if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                            revert with 0, 17
                        if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                        continue 
                    _576 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_576] = 30
                    mem[_576 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                        _593 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _593 + 68] = mem[idx + _576 + 32]
                            idx = idx + 32
                            continue 
                        mem[_593 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _593 + -mem[64] + 100
                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                        revert with 0, 17
                    _676 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_676] = 26
                    mem[_676 + 32] = 'SafeMath: division by zero'
                    if not claimTime:
                        _705 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _705 + 68] = mem[idx + _676 + 32]
                            idx = idx + 32
                            continue 
                        mem[_705 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _705 + -mem[64] + 100
                else:
                    if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                        mem[_528 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_527] = _528
                        mem[_527 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_527 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_527 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _546 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_546] = 30
                            mem[_546 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _557 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _557 + 68] = mem[idx + _546 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_557 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _557 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _605 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_605] = 26
                            mem[_605 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _632 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _632 + 68] = mem[idx + _605 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_632 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _632 + -mem[64] + 100
                            if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                revert with 0, 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _596 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_596] = 30
                        mem[_596 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _620 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _620 + 68] = mem[idx + _596 + 32]
                                idx = idx + 32
                                continue 
                            mem[_620 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _620 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _707 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_707] = 26
                        mem[_707 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _734 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _734 + 68] = mem[idx + _707 + 32]
                                idx = idx + 32
                                continue 
                            mem[_734 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _734 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_528 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _528 + 32
                        u = sha3(mem[0])
                        while _528 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_527] = _528
                        mem[_527 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_527 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_527 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1078 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1078] = 30
                            mem[_1078 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1142 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1142 + 68] = mem[idx + _1078 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1142 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1142 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _1162 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1162] = 26
                            mem[_1162 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1170 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1170 + 68] = mem[idx + _1162 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1170 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1170 + -mem[64] + 100
                            if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                revert with 0, 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
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
                                mem[idx + _1166 + 68] = mem[idx + _1155 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1166 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1166 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _1195 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1195] = 26
                        mem[_1195 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1202 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1202 + 68] = mem[idx + _1195 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1202 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1202 + -mem[64] + 100
            else:
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_527] = _528
                    mem[_527 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_527 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_527 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
                                mem[idx + _549 + 68] = mem[idx + _540 + 32]
                                idx = idx + 32
                                continue 
                            mem[_549 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _549 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                            revert with 0, 17
                        _597 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_597] = 26
                        mem[_597 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _621 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _621 + 68] = mem[idx + _597 + 32]
                                idx = idx + 32
                                continue 
                            mem[_621 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _621 + -mem[64] + 100
                        if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                            revert with 0, 17
                        if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                            revert with 0, 17
                        if not rewardPerNode:
                            revert with 0, 18
                        if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                            revert with 0, 17
                        if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                        continue 
                    _586 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_586] = 30
                    mem[_586 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                        _606 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _606 + 68] = mem[idx + _586 + 32]
                            idx = idx + 32
                            continue 
                        mem[_606 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _606 + -mem[64] + 100
                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                        revert with 0, 17
                    _694 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_694] = 26
                    mem[_694 + 32] = 'SafeMath: division by zero'
                    if not claimTime:
                        _720 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _720 + 68] = mem[idx + _694 + 32]
                            idx = idx + 32
                            continue 
                        mem[_720 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _720 + -mem[64] + 100
                else:
                    if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                        mem[_528 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_527] = _528
                        mem[_527 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_527 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_527 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _551 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_551] = 30
                            mem[_551 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _564 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _564 + 68] = mem[idx + _551 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_564 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _564 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _622 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_622] = 26
                            mem[_622 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _651 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _651 + 68] = mem[idx + _622 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_651 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _651 + -mem[64] + 100
                            if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                revert with 0, 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _609 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_609] = 30
                        mem[_609 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _637 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _637 + 68] = mem[idx + _609 + 32]
                                idx = idx + 32
                                continue 
                            mem[_637 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _637 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _722 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_722] = 26
                        mem[_722 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _750 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _750 + 68] = mem[idx + _722 + 32]
                                idx = idx + 32
                                continue 
                            mem[_750 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _750 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_528 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _528 + 32
                        u = sha3(mem[0])
                        while _528 + stor4[address(arg1)][idx].field_1 % 128 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_527] = _528
                        mem[_527 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_527 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_527 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1087 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1087] = 30
                            mem[_1087 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1143 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1143 + 68] = mem[idx + _1087 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1143 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1143 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _1163 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1163] = 26
                            mem[_1163 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1171 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1171 + 68] = mem[idx + _1163 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1171 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1171 + -mem[64] + 100
                            if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                revert with 0, 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
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
                                mem[idx + _1167 + 68] = mem[idx + _1157 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1167 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1167 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _1197 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1197] = 26
                        mem[_1197 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1203 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1203 + 68] = mem[idx + _1197 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1203 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1203 + -mem[64] + 100
        else:
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            _529 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_529] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_527] = _529
                    mem[_527 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_527 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_527 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
                                mem[idx + _552 + 68] = mem[idx + _542 + 32]
                                idx = idx + 32
                                continue 
                            mem[_552 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _552 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                            revert with 0, 17
                        _599 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_599] = 26
                        mem[_599 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _623 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _623 + 68] = mem[idx + _599 + 32]
                                idx = idx + 32
                                continue 
                            mem[_623 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _623 + -mem[64] + 100
                        if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                            revert with 0, 17
                        if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                            revert with 0, 17
                        if not rewardPerNode:
                            revert with 0, 18
                        if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                            revert with 0, 17
                        if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                        continue 
                    _589 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_589] = 30
                    mem[_589 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                        _610 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _610 + 68] = mem[idx + _589 + 32]
                            idx = idx + 32
                            continue 
                        mem[_610 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _610 + -mem[64] + 100
                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                        revert with 0, 17
                    _698 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_698] = 26
                    mem[_698 + 32] = 'SafeMath: division by zero'
                    if not claimTime:
                        _723 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _723 + 68] = mem[idx + _698 + 32]
                            idx = idx + 32
                            continue 
                        mem[_723 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _723 + -mem[64] + 100
                else:
                    if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                        mem[_529 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_527] = _529
                        mem[_527 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_527 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_527 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _554 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_554] = 30
                            mem[_554 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _567 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _567 + 68] = mem[idx + _554 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_567 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _567 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _624 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_624] = 26
                            mem[_624 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _655 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _655 + 68] = mem[idx + _624 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_655 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _655 + -mem[64] + 100
                            if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                revert with 0, 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _613 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_613] = 30
                        mem[_613 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _642 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _642 + 68] = mem[idx + _613 + 32]
                                idx = idx + 32
                                continue 
                            mem[_642 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _642 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _725 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_725] = 26
                        mem[_725 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _756 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _756 + 68] = mem[idx + _725 + 32]
                                idx = idx + 32
                                continue 
                            mem[_756 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _756 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_529 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _529 + 32
                        u = sha3(mem[0])
                        while _529 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_527] = _529
                        mem[_527 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_527 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_527 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1096 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1096] = 30
                            mem[_1096 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1144 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1144 + 68] = mem[idx + _1096 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1144 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1144 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _1164 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1164] = 26
                            mem[_1164 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1172 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1172 + 68] = mem[idx + _1164 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1172 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1172 + -mem[64] + 100
                            if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                revert with 0, 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
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
                                mem[idx + _1168 + 68] = mem[idx + _1159 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1168 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1168 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _1199 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1199] = 26
                        mem[_1199 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1204 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1204 + 68] = mem[idx + _1199 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1204 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1204 + -mem[64] + 100
            else:
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_527] = _529
                    mem[_527 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_527 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_527 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    if uint256(stor4[address(arg1)][idx].field_512):
                        _547 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_547] = 30
                        mem[_547 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                            _558 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _558 + 68] = mem[idx + _547 + 32]
                                idx = idx + 32
                                continue 
                            mem[_558 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _558 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                            revert with 0, 17
                        _614 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_614] = 26
                        mem[_614 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _643 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _643 + 68] = mem[idx + _614 + 32]
                                idx = idx + 32
                                continue 
                            mem[_643 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _643 + -mem[64] + 100
                        if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                            revert with 0, 17
                        if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                            revert with 0, 17
                        if not rewardPerNode:
                            revert with 0, 18
                        if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                            revert with 0, 17
                        if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                        continue 
                    _602 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_602] = 30
                    mem[_602 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                        _625 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _625 + 68] = mem[idx + _602 + 32]
                            idx = idx + 32
                            continue 
                        mem[_625 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _625 + -mem[64] + 100
                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                        revert with 0, 17
                    _715 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_715] = 26
                    mem[_715 + 32] = 'SafeMath: division by zero'
                    if not claimTime:
                        _739 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _739 + 68] = mem[idx + _715 + 32]
                            idx = idx + 32
                            continue 
                        mem[_739 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _739 + -mem[64] + 100
                else:
                    if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                        mem[_529 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_527] = _529
                        mem[_527 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_527 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_527 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _560 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_560] = 30
                            mem[_560 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _574 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _574 + 68] = mem[idx + _560 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_574 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _574 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _644 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_644] = 26
                            mem[_644 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _674 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _674 + 68] = mem[idx + _644 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_674 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _674 + -mem[64] + 100
                            if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                revert with 0, 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _628 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_628] = 30
                        mem[_628 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _660 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _660 + 68] = mem[idx + _628 + 32]
                                idx = idx + 32
                                continue 
                            mem[_660 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _660 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _741 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_741] = 26
                        mem[_741 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _775 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _775 + 68] = mem[idx + _741 + 32]
                                idx = idx + 32
                                continue 
                            mem[_775 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _775 + -mem[64] + 100
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
                        mem[_527] = _529
                        mem[_527 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_527 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_527 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1105 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1105] = 30
                            mem[_1105 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1145 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1145 + 68] = mem[idx + _1105 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1145 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1145 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _1165 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1165] = 26
                            mem[_1165 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1173 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1173 + 68] = mem[idx + _1165 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1173 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1173 + -mem[64] + 100
                            if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                revert with 0, 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
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
                                mem[idx + _1169 + 68] = mem[idx + _1161 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1169 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1169 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _1201 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1201] = 26
                        mem[_1201 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1205 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1205 + 68] = mem[idx + _1201 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1205 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1205 + -mem[64] + 100
        ('stor', ('name', 'claimTime', 7))
        if 1 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime):
            revert with 0, 17
        if (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1 < 1:
            revert with 0, 'SafeMath: addition overflow'
        if not rewardPerNode:
            if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                revert with 0, 17
            if uint256(stor4[address(arg1)][idx].field_768) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if s > !uint256(stor4[address(arg1)][idx].field_768):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + uint256(stor4[address(arg1)][idx].field_768)
            continue 
        if rewardPerNode and (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1 > -1 / rewardPerNode:
            revert with 0, 17
        if not rewardPerNode:
            revert with 0, 18
        if rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) / rewardPerNode != (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) > !uint256(stor4[address(arg1)][idx].field_768):
            revert with 0, 17
        if uint256(stor4[address(arg1)][idx].field_768) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if s > !(rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) + uint256(stor4[address(arg1)][idx].field_768)):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
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
        if not uint256(stor4[address(arg1)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
        idx = 0
        s = 0
        while idx < uint256(stor4[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 4)
            _1235 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _1241 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                mem[_1241] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        mem[_1235] = _1241
                        mem[_1235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
                                    mem[idx + _1273 + 68] = mem[idx + _1257 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1273 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1273 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _1351 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1351] = 26
                            mem[_1351 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1393 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1393 + 68] = mem[idx + _1351 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1393 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1393 + -mem[64] + 100
                            if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                revert with 0, 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                revert with 0, 17
                            if idx >= uint256(stor4[address(arg1)].field_0):
                                revert with 0, 50
                            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            uint256(stor4[address(arg1)][idx].field_768) = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1336 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1336] = 30
                        mem[_1336 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1371 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1371 + 68] = mem[idx + _1336 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1371 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1371 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _1536 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1536] = 26
                        mem[_1536 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1595 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1595 + 68] = mem[idx + _1536 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1595 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1595 + -mem[64] + 100
                    else:
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_1241 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1235] = _1241
                            mem[_1235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1275 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1275] = 30
                                mem[_1275 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1297 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1297 + 68] = mem[idx + _1275 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1297 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1297 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _1394 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1394] = 26
                                mem[_1394 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _1446 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1446 + 68] = mem[idx + _1394 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1446 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1446 + -mem[64] + 100
                                if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                    revert with 0, 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 0, 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _1374 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1374] = 30
                            mem[_1374 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _1421 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1421 + 68] = mem[idx + _1374 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1421 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1421 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _1597 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1597] = 26
                            mem[_1597 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1648 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1648 + 68] = mem[idx + _1597 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1648 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1648 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1241 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1241 + 32
                            u = sha3(mem[0])
                            while _1241 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1235] = _1241
                            mem[_1235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _2529 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2529] = 30
                                mem[_2529 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _2661 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2661 + 68] = mem[idx + _2529 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2661 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2661 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2701 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2701] = 26
                                mem[_2701 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2717 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2717 + 68] = mem[idx + _2701 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2717 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2717 + -mem[64] + 100
                                if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                    revert with 0, 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 0, 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
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
                                    mem[idx + _2709 + 68] = mem[idx + _2686 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2709 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2709 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2766 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2766] = 26
                            mem[_2766 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2781 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2781 + 68] = mem[idx + _2766 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2781 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2781 + -mem[64] + 100
                else:
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[address(arg1)][idx].field_1 % 128:
                        mem[_1235] = _1241
                        mem[_1235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
                                    mem[idx + _1283 + 68] = mem[idx + _1265 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1283 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1283 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _1375 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1375] = 26
                            mem[_1375 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1422 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1422 + 68] = mem[idx + _1375 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1422 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1422 + -mem[64] + 100
                            if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                revert with 0, 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                revert with 0, 17
                            if idx >= uint256(stor4[address(arg1)].field_0):
                                revert with 0, 50
                            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            uint256(stor4[address(arg1)][idx].field_768) = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1354 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1354] = 30
                        mem[_1354 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1395 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1395 + 68] = mem[idx + _1354 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1395 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1395 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _1569 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1569] = 26
                        mem[_1569 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1623 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1623 + 68] = mem[idx + _1569 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1623 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1623 + -mem[64] + 100
                    else:
                        if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1241 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1235] = _1241
                            mem[_1235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1285 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1285] = 30
                                mem[_1285 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1310 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1310 + 68] = mem[idx + _1285 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1310 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1310 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _1423 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1423] = 26
                                mem[_1423 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _1481 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1481 + 68] = mem[idx + _1423 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1481 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1481 + -mem[64] + 100
                                if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                    revert with 0, 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 0, 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _1398 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1398] = 30
                            mem[_1398 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _1451 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1451 + 68] = mem[idx + _1398 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1451 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1451 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _1625 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1625] = 26
                            mem[_1625 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1677 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1677 + 68] = mem[idx + _1625 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1677 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1677 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1241 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1241 + 32
                            u = sha3(mem[0])
                            while _1241 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1235] = _1241
                            mem[_1235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _2538 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2538] = 30
                                mem[_2538 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _2662 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2662 + 68] = mem[idx + _2538 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2662 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2662 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2702 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2702] = 26
                                mem[_2702 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2718 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2718 + 68] = mem[idx + _2702 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2718 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2718 + -mem[64] + 100
                                if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                    revert with 0, 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 0, 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
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
                                    mem[idx + _2710 + 68] = mem[idx + _2688 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2710 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2710 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2768 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2768] = 26
                            mem[_2768 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2782 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2782 + 68] = mem[idx + _2768 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2782 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2782 + -mem[64] + 100
            else:
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                _1243 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
                mem[_1243] = stor4[address(arg1)][idx].field_1 % 128
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        mem[_1235] = _1243
                        mem[_1235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
                                    mem[idx + _1286 + 68] = mem[idx + _1267 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1286 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1286 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _1377 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1377] = 26
                            mem[_1377 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1424 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1424 + 68] = mem[idx + _1377 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1424 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1424 + -mem[64] + 100
                            if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                revert with 0, 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                revert with 0, 17
                            if idx >= uint256(stor4[address(arg1)].field_0):
                                revert with 0, 50
                            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            uint256(stor4[address(arg1)][idx].field_768) = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1357 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1357] = 30
                        mem[_1357 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1399 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1399 + 68] = mem[idx + _1357 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1399 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1399 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _1573 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1573] = 26
                        mem[_1573 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1626 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1626 + 68] = mem[idx + _1573 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1626 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1626 + -mem[64] + 100
                    else:
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_1243 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1235] = _1243
                            mem[_1235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1288 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1288] = 30
                                mem[_1288 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1313 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1313 + 68] = mem[idx + _1288 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1313 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1313 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _1425 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1425] = 26
                                mem[_1425 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _1485 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1485 + 68] = mem[idx + _1425 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1485 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1485 + -mem[64] + 100
                                if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                    revert with 0, 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 0, 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _1402 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1402] = 30
                            mem[_1402 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _1456 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1456 + 68] = mem[idx + _1402 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1456 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1456 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _1628 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1628] = 26
                            mem[_1628 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1683 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1683 + 68] = mem[idx + _1628 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1683 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1683 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1243 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1243 + 32
                            u = sha3(mem[0])
                            while _1243 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1235] = _1243
                            mem[_1235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _2547 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2547] = 30
                                mem[_2547 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _2663 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2663 + 68] = mem[idx + _2547 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2663 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2663 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2703 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2703] = 26
                                mem[_2703 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2719 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2719 + 68] = mem[idx + _2703 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2719 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2719 + -mem[64] + 100
                                if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                    revert with 0, 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 0, 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
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
                                    mem[idx + _2711 + 68] = mem[idx + _2690 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2711 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2711 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2770 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2770] = 26
                            mem[_2770 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2783 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2783 + 68] = mem[idx + _2770 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2783 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2783 + -mem[64] + 100
                else:
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[address(arg1)][idx].field_1 % 128:
                        mem[_1235] = _1243
                        mem[_1235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1276 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1276] = 30
                            mem[_1276 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1298 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1298 + 68] = mem[idx + _1276 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1298 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1298 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _1403 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1403] = 26
                            mem[_1403 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1457 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1457 + 68] = mem[idx + _1403 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1457 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1457 + -mem[64] + 100
                            if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                revert with 0, 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                revert with 0, 17
                            if idx >= uint256(stor4[address(arg1)].field_0):
                                revert with 0, 50
                            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            uint256(stor4[address(arg1)][idx].field_768) = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1380 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1380] = 30
                        mem[_1380 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1426 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1426 + 68] = mem[idx + _1380 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1426 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1426 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _1605 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1605] = 26
                        mem[_1605 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1653 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1653 + 68] = mem[idx + _1605 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1653 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1653 + -mem[64] + 100
                    else:
                        if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1243 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1235] = _1243
                            mem[_1235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1300 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1300] = 30
                                mem[_1300 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1327 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1327 + 68] = mem[idx + _1300 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1327 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1327 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _1458 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1458] = 26
                                mem[_1458 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _1520 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1520 + 68] = mem[idx + _1458 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1520 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1520 + -mem[64] + 100
                                if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                    revert with 0, 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 0, 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _1429 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1429] = 30
                            mem[_1429 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _1490 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1490 + 68] = mem[idx + _1429 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1490 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1490 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _1655 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1655] = 26
                            mem[_1655 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1719 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1719 + 68] = mem[idx + _1655 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1719 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1719 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1243 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1243 + 32
                            u = sha3(mem[0])
                            while _1243 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1235] = _1243
                            mem[_1235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _2556 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2556] = 30
                                mem[_2556 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _2664 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2664 + 68] = mem[idx + _2556 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2664 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2664 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2704 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2704] = 26
                                mem[_2704 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2720 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2720 + 68] = mem[idx + _2704 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2720 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2720 + -mem[64] + 100
                                if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                    revert with 0, 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 0, 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
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
                                    mem[idx + _2712 + 68] = mem[idx + _2692 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2712 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2712 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2772 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2772] = 26
                            mem[_2772 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2784 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2784 + 68] = mem[idx + _2772 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2784 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2784 + -mem[64] + 100
            ('stor', ('name', 'claimTime', 7))
            if 1 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime):
                revert with 0, 17
            if (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1 < 1:
                revert with 0, 'SafeMath: addition overflow'
            if not rewardPerNode:
                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                    revert with 0, 17
                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if s > !uint256(stor4[address(arg1)][idx].field_768):
                    revert with 0, 17
                if idx >= uint256(stor4[address(arg1)].field_0):
                    revert with 0, 50
                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                mem[0] = sha3(address(arg1), 4)
                uint256(stor4[address(arg1)][idx].field_768) = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + uint256(stor4[address(arg1)][idx].field_768)
                continue 
            if rewardPerNode and (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1 > -1 / rewardPerNode:
                revert with 0, 17
            if not rewardPerNode:
                revert with 0, 18
            if rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) / rewardPerNode != (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) > !uint256(stor4[address(arg1)][idx].field_768):
                revert with 0, 17
            if uint256(stor4[address(arg1)][idx].field_768) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if s > !(rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) + uint256(stor4[address(arg1)][idx].field_768)):
                revert with 0, 17
            if idx >= uint256(stor4[address(arg1)].field_0):
                revert with 0, 50
            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
            mem[0] = sha3(address(arg1), 4)
            uint256(stor4[address(arg1)][idx].field_768) = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) + uint256(stor4[address(arg1)][idx].field_768)
            continue 
    else:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
        mem[0] = arg1
        mem[32] = 4
        if not uint256(stor4[address(arg1)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
        idx = 0
        s = 0
        while idx < uint256(stor4[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 4)
            _1238 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _1242 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                mem[_1242] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        mem[_1238] = _1242
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
                                    mem[idx + _1278 + 68] = mem[idx + _1261 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1278 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1278 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _1361 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1361] = 26
                            mem[_1361 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1405 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1405 + 68] = mem[idx + _1361 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1405 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1405 + -mem[64] + 100
                            if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                revert with 0, 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                revert with 0, 17
                            if idx >= uint256(stor4[address(arg1)].field_0):
                                revert with 0, 50
                            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            uint256(stor4[address(arg1)][idx].field_768) = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1344 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1344] = 30
                        mem[_1344 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1382 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1382 + 68] = mem[idx + _1344 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1382 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1382 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _1551 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1551] = 26
                        mem[_1551 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1608 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1608 + 68] = mem[idx + _1551 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1608 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1608 + -mem[64] + 100
                    else:
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_1242 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1238] = _1242
                            mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1280 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1280] = 30
                                mem[_1280 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1303 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1303 + 68] = mem[idx + _1280 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1303 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1303 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _1406 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1406] = 26
                                mem[_1406 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _1462 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1462 + 68] = mem[idx + _1406 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1462 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1462 + -mem[64] + 100
                                if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                    revert with 0, 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 0, 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _1385 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1385] = 30
                            mem[_1385 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _1434 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1434 + 68] = mem[idx + _1385 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1434 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1434 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _1610 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1610] = 26
                            mem[_1610 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1661 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1661 + 68] = mem[idx + _1610 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1661 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1661 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1242 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1242 + 32
                            u = sha3(mem[0])
                            while _1242 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1238] = _1242
                            mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _2565 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2565] = 30
                                mem[_2565 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _2665 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2665 + 68] = mem[idx + _2565 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2665 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2665 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2705 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2705] = 26
                                mem[_2705 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2721 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2721 + 68] = mem[idx + _2705 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2721 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2721 + -mem[64] + 100
                                if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                    revert with 0, 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 0, 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
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
                                    mem[idx + _2713 + 68] = mem[idx + _2694 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2713 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2713 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2774 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2774] = 26
                            mem[_2774 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2785 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2785 + 68] = mem[idx + _2774 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2785 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2785 + -mem[64] + 100
                else:
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[address(arg1)][idx].field_1 % 128:
                        mem[_1238] = _1242
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
                                    mem[idx + _1289 + 68] = mem[idx + _1269 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1289 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1289 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _1386 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1386] = 26
                            mem[_1386 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1435 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1435 + 68] = mem[idx + _1386 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1435 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1435 + -mem[64] + 100
                            if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                revert with 0, 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                revert with 0, 17
                            if idx >= uint256(stor4[address(arg1)].field_0):
                                revert with 0, 50
                            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            uint256(stor4[address(arg1)][idx].field_768) = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1364 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1364] = 30
                        mem[_1364 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1407 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1407 + 68] = mem[idx + _1364 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1407 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1407 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _1584 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1584] = 26
                        mem[_1584 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1634 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1634 + 68] = mem[idx + _1584 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1634 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1634 + -mem[64] + 100
                    else:
                        if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1242 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1238] = _1242
                            mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1291 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1291] = 30
                                mem[_1291 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1317 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1317 + 68] = mem[idx + _1291 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1317 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1317 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _1436 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1436] = 26
                                mem[_1436 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _1497 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1497 + 68] = mem[idx + _1436 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1497 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1497 + -mem[64] + 100
                                if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                    revert with 0, 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 0, 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _1410 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1410] = 30
                            mem[_1410 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _1467 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1467 + 68] = mem[idx + _1410 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1467 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1467 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _1636 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1636] = 26
                            mem[_1636 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1694 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1694 + 68] = mem[idx + _1636 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1694 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1694 + -mem[64] + 100
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
                            mem[_1238] = _1242
                            mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _2574 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2574] = 30
                                mem[_2574 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _2666 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2666 + 68] = mem[idx + _2574 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2666 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2666 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2706 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2706] = 26
                                mem[_2706 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2722 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2722 + 68] = mem[idx + _2706 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2722 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2722 + -mem[64] + 100
                                if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                    revert with 0, 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 0, 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
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
                                    mem[idx + _2714 + 68] = mem[idx + _2696 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2714 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2714 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2776 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2776] = 26
                            mem[_2776 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2786 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2786 + 68] = mem[idx + _2776 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2786 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2786 + -mem[64] + 100
            else:
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                _1244 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
                mem[_1244] = stor4[address(arg1)][idx].field_1 % 128
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
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
                                    mem[idx + _1292 + 68] = mem[idx + _1271 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1292 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1292 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _1388 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1388] = 26
                            mem[_1388 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1437 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1437 + 68] = mem[idx + _1388 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1437 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1437 + -mem[64] + 100
                            if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                revert with 0, 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                revert with 0, 17
                            if idx >= uint256(stor4[address(arg1)].field_0):
                                revert with 0, 50
                            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            uint256(stor4[address(arg1)][idx].field_768) = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1367 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1367] = 30
                        mem[_1367 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1411 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1411 + 68] = mem[idx + _1367 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1411 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1411 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _1588 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1588] = 26
                        mem[_1588 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1637 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1637 + 68] = mem[idx + _1588 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1637 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1637 + -mem[64] + 100
                    else:
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
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
                                    _1320 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1320 + 68] = mem[idx + _1294 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1320 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1320 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _1438 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1438] = 26
                                mem[_1438 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _1501 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1501 + 68] = mem[idx + _1438 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1501 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1501 + -mem[64] + 100
                                if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                    revert with 0, 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 0, 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _1414 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1414] = 30
                            mem[_1414 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _1472 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1472 + 68] = mem[idx + _1414 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1472 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1472 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _1639 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1639] = 26
                            mem[_1639 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1700 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1700 + 68] = mem[idx + _1639 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1700 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1700 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1244 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1244 + 32
                            u = sha3(mem[0])
                            while _1244 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1238] = _1244
                            mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _2583 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2583] = 30
                                mem[_2583 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _2667 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2667 + 68] = mem[idx + _2583 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2667 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2667 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2707 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2707] = 26
                                mem[_2707 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2723 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2723 + 68] = mem[idx + _2707 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2723 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2723 + -mem[64] + 100
                                if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                    revert with 0, 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 0, 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
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
                                    mem[idx + _2715 + 68] = mem[idx + _2698 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2715 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2715 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2778 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2778] = 26
                            mem[_2778 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2787 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2787 + 68] = mem[idx + _2778 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2787 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2787 + -mem[64] + 100
                else:
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
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
                                _1304 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1304 + 68] = mem[idx + _1281 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1304 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1304 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _1415 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1415] = 26
                            mem[_1415 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1473 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1473 + 68] = mem[idx + _1415 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1473 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1473 + -mem[64] + 100
                            if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                revert with 0, 17
                            if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                revert with 0, 17
                            if idx >= uint256(stor4[address(arg1)].field_0):
                                revert with 0, 50
                            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            uint256(stor4[address(arg1)][idx].field_768) = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                            continue 
                        _1391 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1391] = 30
                        mem[_1391 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1439 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1439 + 68] = mem[idx + _1391 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1439 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1439 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _1618 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1618] = 26
                        mem[_1618 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1666 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1666 + 68] = mem[idx + _1618 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1666 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1666 + -mem[64] + 100
                    else:
                        if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1244 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1238] = _1244
                            mem[_1238 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1238 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1238 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1306 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1306] = 30
                                mem[_1306 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1334 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1334 + 68] = mem[idx + _1306 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1334 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1334 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _1474 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1474] = 26
                                mem[_1474 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _1534 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1534 + 68] = mem[idx + _1474 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1534 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1534 + -mem[64] + 100
                                if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                    revert with 0, 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 0, 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)
                                continue 
                            _1442 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1442] = 30
                            mem[_1442 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _1506 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1506 + 68] = mem[idx + _1442 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1506 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1506 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _1668 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1668] = 26
                            mem[_1668 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1736 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1736 + 68] = mem[idx + _1668 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1736 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1736 + -mem[64] + 100
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
                                _2592 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2592] = 30
                                mem[_2592 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _2668 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2668 + 68] = mem[idx + _2592 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2668 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2668 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2708 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2708] = 26
                                mem[_2708 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2724 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2724 + 68] = mem[idx + _2708 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2724 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2724 + -mem[64] + 100
                                if 0 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime):
                                    revert with 0, 17
                                if block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if uint256(stor4[address(arg1)][idx].field_768) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !uint256(stor4[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= uint256(stor4[address(arg1)].field_0):
                                        revert with 0, 50
                                    uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    uint256(stor4[address(arg1)][idx].field_768) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + uint256(stor4[address(arg1)][idx].field_768)
                                    continue 
                                if rewardPerNode and block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime / rewardPerNode != block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime > !uint256(stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768) < rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - uint256(stor4[address(arg1)][idx].field_512) / claimTime) + uint256(stor4[address(arg1)][idx].field_768)):
                                    revert with 0, 17
                                if idx >= uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 50
                                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                uint256(stor4[address(arg1)][idx].field_768) = 0
                                if idx == -1:
                                    revert with 0, 17
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
                                    mem[idx + _2716 + 68] = mem[idx + _2700 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2716 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2716 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2780 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2780] = 26
                            mem[_2780 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2788 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2788 + 68] = mem[idx + _2780 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2788 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2788 + -mem[64] + 100
            ('stor', ('name', 'claimTime', 7))
            if 1 > !(block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime):
                revert with 0, 17
            if (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1 < 1:
                revert with 0, 'SafeMath: addition overflow'
            if not rewardPerNode:
                if 0 > !uint256(stor4[address(arg1)][idx].field_768):
                    revert with 0, 17
                if uint256(stor4[address(arg1)][idx].field_768) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if s > !uint256(stor4[address(arg1)][idx].field_768):
                    revert with 0, 17
                if idx >= uint256(stor4[address(arg1)].field_0):
                    revert with 0, 50
                uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
                mem[0] = sha3(address(arg1), 4)
                uint256(stor4[address(arg1)][idx].field_768) = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + uint256(stor4[address(arg1)][idx].field_768)
                continue 
            if rewardPerNode and (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1 > -1 / rewardPerNode:
                revert with 0, 17
            if not rewardPerNode:
                revert with 0, 18
            if rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) / rewardPerNode != (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime) + 1:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) > !uint256(stor4[address(arg1)][idx].field_768):
                revert with 0, 17
            if uint256(stor4[address(arg1)][idx].field_768) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if s > !(rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) + uint256(stor4[address(arg1)][idx].field_768)):
                revert with 0, 17
            if idx >= uint256(stor4[address(arg1)].field_0):
                revert with 0, 50
            uint256(stor4[address(arg1)][idx].field_512) = block.timestamp
            mem[0] = sha3(address(arg1), 4)
            uint256(stor4[address(arg1)][idx].field_768) = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + rewardPerNode + (block.timestamp - uint256(stor4[address(arg1)][idx].field_256) / claimTime * rewardPerNode) + uint256(stor4[address(arg1)][idx].field_768)
            continue 
    return s
}



}
