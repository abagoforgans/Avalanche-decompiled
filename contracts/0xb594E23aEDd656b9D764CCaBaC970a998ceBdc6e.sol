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
    stor9 = Mask(96, 0, arg1)
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegate 0x213160473462a01aaa842ee7681144262b7b50e3.0x732a2ccf with:
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
    delegate 0x213160473462a01aaa842ee7681144262b7b50e3.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] > 0)
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
    require arg2 + arg2.length + 36 <= calldata.size
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    stor4[address(arg1)].field_0++
    if stor4[address(arg1)][stor4[address(arg1)].field_0].field_0:
        if stor4[address(arg1)][stor4[address(arg1)].field_0].field_0 == uint255(stor4[address(arg1)][stor4[address(arg1)].field_0].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor4[address(arg1)][stor4[address(arg1)].field_0][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[address(arg1)][stor4[address(arg1)].field_0].field_0 = 0
            idx = 0
            while (uint255(stor4[address(arg1)][stor4[address(arg1)].field_0].field_0) * 0.5) + 31 / 32 > idx:
                stor4[address(arg1)][(4 * stor4[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor4[address(arg1)][stor4[address(arg1)].field_0].field_0 == stor4[address(arg1)][stor4[address(arg1)].field_0].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor4[address(arg1)][stor4[address(arg1)].field_0][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[address(arg1)][stor4[address(arg1)].field_0].field_0 = 0
            idx = 0
            while stor4[address(arg1)][stor4[address(arg1)].field_0].field_1 + 31 / 32 > idx:
                stor4[address(arg1)][(4 * stor4[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    stor4[address(arg1)][stor4[address(arg1)].field_0].field_256 = block.timestamp
    stor4[address(arg1)][stor4[address(arg1)].field_0].field_512 = block.timestamp
    stor4[address(arg1)][stor4[address(arg1)].field_0].field_768 = 0
    require ext_code.size(0x213160473462a01aaa842ee7681144262b7b50e3)
    delegate 0x213160473462a01aaa842ee7681144262b7b50e3.0xbc2b405c with:
         gas gas_remaining wei
        args 0, address(arg1), stor4[address(arg1)].field_0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if totalNodesCreated == -1:
        revert with 0, 17
    totalNodesCreated++
}

function _nodesOfUser(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < stor4[arg1].field_0
    if stor4[arg1][arg2].field_0:
        if stor4[arg1][arg2].field_0 == uint255(stor4[arg1][arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_0:
            if stor4[arg1][arg2].field_0 == uint255(stor4[arg1][arg2].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4[arg1][arg2].field_0):
                if 31 >= uint255(stor4[arg1][arg2].field_0) * 0.5:
                    mem[128] = 256 * stor4[arg1][arg2].field_8
                else:
                    mem[128] = stor4[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor4[arg1][arg2].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[arg1][(4 * arg2) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg1][arg2].field_0 == stor4[arg1][arg2].field_1 < 32:
                revert with 0, 34
            if stor4[arg1][arg2].field_1:
                if 31 >= stor4[arg1][arg2].field_1:
                    mem[128] = 256 * stor4[arg1][arg2].field_8
                else:
                    mem[128] = stor4[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1][arg2].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][(4 * arg2) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor4[arg1][arg2].field_0), data=mem[128 len ceil32(uint255(stor4[arg1][arg2].field_0) * 0.5)]), 
               stor4[arg1][arg2].field_256,
               stor4[arg1][arg2].field_512,
               stor4[arg1][arg2].field_768
    if stor4[arg1][arg2].field_0 == stor4[arg1][arg2].field_1 < 32:
        revert with 0, 34
    if stor4[arg1][arg2].field_0:
        if stor4[arg1][arg2].field_0 == uint255(stor4[arg1][arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4[arg1][arg2].field_0):
            if 31 >= uint255(stor4[arg1][arg2].field_0) * 0.5:
                mem[128] = 256 * stor4[arg1][arg2].field_8
            else:
                mem[128] = stor4[arg1][arg2].field_0
                idx = 128
                s = 0
                while (uint255(stor4[arg1][arg2].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[arg1][(4 * arg2) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor4[arg1][arg2].field_0 == stor4[arg1][arg2].field_1 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_1:
            if 31 >= stor4[arg1][arg2].field_1:
                mem[128] = 256 * stor4[arg1][arg2].field_8
            else:
                mem[128] = stor4[arg1][arg2].field_0
                idx = 128
                s = 0
                while stor4[arg1][arg2].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][(4 * arg2) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor4[arg1][arg2].field_0, data=mem[128 len ceil32(stor4[arg1][arg2].field_1)]), 
           stor4[arg1][arg2].field_256,
           stor4[arg1][arg2].field_512,
           stor4[arg1][arg2].field_768
}

function _getNodesNames(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 4
    mem[64] = (32 * stor4[address(arg1)].field_0) + 128
    mem[96] = stor4[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        _51 = mem[64]
        mem[64] = mem[64] + 128
        if stor4[address(arg1)][idx].field_0:
            if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_57] = uint255(stor4[address(arg1)][idx].field_0) * 0.5
            if stor4[address(arg1)][idx].field_0:
                if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor4[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                        mem[_57 + 32] = 256 * stor4[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_57 + 32] = stor4[address(arg1)][idx].field_0
                        t = _57 + 32
                        u = sha3(mem[0])
                        while _57 + (uint255(stor4[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_51] = _57
                mem[_51 + 32] = stor4[address(arg1)][idx].field_256
                mem[_51 + 64] = stor4[address(arg1)][idx].field_512
                mem[_51 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _51
                s = s + 32
                idx = idx + 1
                continue 
            if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor4[address(arg1)][idx].field_1:
                mem[_51] = _57
                mem[_51 + 32] = stor4[address(arg1)][idx].field_256
                mem[_51 + 64] = stor4[address(arg1)][idx].field_512
                mem[_51 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _51
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_57 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_51] = _57
                mem[_51 + 32] = stor4[address(arg1)][idx].field_256
                mem[_51 + 64] = stor4[address(arg1)][idx].field_512
                mem[_51 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _51
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_57 + 32] = stor4[address(arg1)][idx].field_0
            t = _57 + 32
            u = sha3(mem[0])
            while _57 + stor4[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_51] = _57
            mem[_51 + 32] = stor4[address(arg1)][u].field_256
            mem[_51 + 64] = stor4[address(arg1)][u].field_512
            mem[_51 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _51
            t = t + 32
            u = u + 1
            continue 
        if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _62 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
        mem[_62] = stor4[address(arg1)][idx].field_1
        if stor4[address(arg1)][idx].field_0:
            if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor4[address(arg1)][idx].field_0):
                mem[_51] = _62
                mem[_51 + 32] = stor4[address(arg1)][idx].field_256
                mem[_51 + 64] = stor4[address(arg1)][idx].field_512
                mem[_51 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _51
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                mem[_62 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_51] = _62
                mem[_51 + 32] = stor4[address(arg1)][idx].field_256
                mem[_51 + 64] = stor4[address(arg1)][idx].field_512
                mem[_51 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _51
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_62 + 32] = stor4[address(arg1)][idx].field_0
            t = _62 + 32
            u = sha3(mem[0])
            while _62 + (uint255(stor4[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_51] = _62
            mem[_51 + 32] = stor4[address(arg1)][u].field_256
            mem[_51 + 64] = stor4[address(arg1)][u].field_512
            mem[_51 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _51
            t = t + 32
            u = u + 1
            continue 
        if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
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
        mem[_51] = _62
        mem[_51 + 32] = stor4[address(arg1)][idx].field_256
        mem[_51 + 64] = stor4[address(arg1)][idx].field_512
        mem[_51 + 96] = stor4[address(arg1)][idx].field_768
        mem[s] = _51
        s = s + 32
        idx = idx + 1
        continue 
    _48 = mem[96]
    _49 = mem[64]
    mem[64] = mem[64] + 128
    mem[_49] = 96
    mem[_49 + 32] = 0
    mem[_49 + 64] = 0
    mem[_49 + 96] = 0
    if 0 >= mem[96]:
        revert with 0, 50
    _54 = mem[mem[128]]
    _55 = mem[64]
    mem[64] = mem[64] + 64
    mem[_55] = 1
    mem[_55 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = _54
    t = _49
    while idx < _48:
        if idx >= mem[96]:
            revert with 0, 50
        _95 = mem[(32 * idx) + 128]
        _96 = mem[mem[(32 * idx) + 128]]
        _97 = mem[64]
        _98 = mem[s]
        t = 0
        while t < _98:
            mem[t + _97 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_98) <= _98:
            _126 = mem[_55]
            s = 0
            while s < _126:
                mem[s + _97 + _98 + 32] = mem[s + _55 + 32]
                s = s + 32
                continue 
            if ceil32(_126) <= _126:
                _150 = mem[_96]
                s = 0
                while s < _150:
                    mem[s + _97 + _98 + _126 + 32] = mem[s + _96 + 32]
                    s = s + 32
                    continue 
                if ceil32(_150) <= _150:
                    _170 = mem[64]
                    mem[mem[64]] = _150 + _97 + _98 + _126 - mem[64]
                    mem[64] = _150 + _97 + _98 + _126 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _170
                    t = _95
                    continue 
                mem[_97 + _98 + _126 + _150 + 32] = 0
                _174 = mem[64]
                mem[mem[64]] = _150 + _97 + _98 + _126 - mem[64]
                mem[64] = _150 + _97 + _98 + _126 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _174
                t = _95
                continue 
            mem[_97 + _98 + _126 + 32] = 0
            _152 = mem[_96]
            s = 0
            while s < _152:
                mem[s + _97 + _98 + _126 + 32] = mem[s + _96 + 32]
                s = s + 32
                continue 
            if ceil32(_152) <= _152:
                _171 = mem[64]
                mem[mem[64]] = _152 + _97 + _98 + _126 - mem[64]
                mem[64] = _152 + _97 + _98 + _126 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _171
                t = _95
                continue 
            mem[_97 + _98 + _126 + _152 + 32] = 0
            _175 = mem[64]
            mem[mem[64]] = _152 + _97 + _98 + _126 - mem[64]
            mem[64] = _152 + _97 + _98 + _126 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _175
            t = _95
            continue 
        mem[_97 + _98 + 32] = 0
        _127 = mem[_55]
        s = 0
        while s < _127:
            mem[s + _97 + _98 + 32] = mem[s + _55 + 32]
            s = s + 32
            continue 
        if ceil32(_127) <= _127:
            _151 = mem[_96]
            s = 0
            while s < _151:
                mem[s + _97 + _98 + _127 + 32] = mem[s + _96 + 32]
                s = s + 32
                continue 
            if ceil32(_151) <= _151:
                _172 = mem[64]
                mem[mem[64]] = _151 + _97 + _98 + _127 - mem[64]
                mem[64] = _151 + _97 + _98 + _127 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _172
                t = _95
                continue 
            mem[_97 + _98 + _127 + _151 + 32] = 0
            _176 = mem[64]
            mem[mem[64]] = _151 + _97 + _98 + _127 - mem[64]
            mem[64] = _151 + _97 + _98 + _127 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _176
            t = _95
            continue 
        mem[_97 + _98 + _127 + 32] = 0
        _153 = mem[_96]
        s = 0
        while s < _153:
            mem[s + _97 + _98 + _127 + 32] = mem[s + _96 + 32]
            s = s + 32
            continue 
        if ceil32(_153) <= _153:
            _173 = mem[64]
            mem[mem[64]] = _153 + _97 + _98 + _127 - mem[64]
            mem[64] = _153 + _97 + _98 + _127 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _173
            t = _95
            continue 
        mem[_97 + _98 + _127 + _153 + 32] = 0
        _177 = mem[64]
        mem[mem[64]] = _153 + _97 + _98 + _127 - mem[64]
        mem[64] = _153 + _97 + _98 + _127 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _177
        t = _95
        continue 
    mem[mem[64]] = 32
    _99 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_99)] = mem[s + 32 len ceil32(_99)]
    if ceil32(_99) > _99:
        mem[mem[64] + _99 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_99) + 32]
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 4
    mem[64] = (32 * stor4[address(arg1)].field_0) + 128
    mem[96] = stor4[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        _53 = mem[64]
        mem[64] = mem[64] + 128
        if stor4[address(arg1)][idx].field_0:
            if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_58] = uint255(stor4[address(arg1)][idx].field_0) * 0.5
            if stor4[address(arg1)][idx].field_0:
                if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor4[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                        mem[_58 + 32] = 256 * stor4[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_58 + 32] = stor4[address(arg1)][idx].field_0
                        t = _58 + 32
                        u = sha3(mem[0])
                        while _58 + (uint255(stor4[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_53] = _58
                mem[_53 + 32] = stor4[address(arg1)][idx].field_256
                mem[_53 + 64] = stor4[address(arg1)][idx].field_512
                mem[_53 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor4[address(arg1)][idx].field_1:
                mem[_53] = _58
                mem[_53 + 32] = stor4[address(arg1)][idx].field_256
                mem[_53 + 64] = stor4[address(arg1)][idx].field_512
                mem[_53 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_58 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_53] = _58
                mem[_53 + 32] = stor4[address(arg1)][idx].field_256
                mem[_53 + 64] = stor4[address(arg1)][idx].field_512
                mem[_53 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_58 + 32] = stor4[address(arg1)][idx].field_0
            t = _58 + 32
            u = sha3(mem[0])
            while _58 + stor4[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_53] = _58
            mem[_53 + 32] = stor4[address(arg1)][u].field_256
            mem[_53 + 64] = stor4[address(arg1)][u].field_512
            mem[_53 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _53
            t = t + 32
            u = u + 1
            continue 
        if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
        mem[_60] = stor4[address(arg1)][idx].field_1
        if stor4[address(arg1)][idx].field_0:
            if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor4[address(arg1)][idx].field_0):
                mem[_53] = _60
                mem[_53 + 32] = stor4[address(arg1)][idx].field_256
                mem[_53 + 64] = stor4[address(arg1)][idx].field_512
                mem[_53 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                mem[_60 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_53] = _60
                mem[_53 + 32] = stor4[address(arg1)][idx].field_256
                mem[_53 + 64] = stor4[address(arg1)][idx].field_512
                mem[_53 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_60 + 32] = stor4[address(arg1)][idx].field_0
            t = _60 + 32
            u = sha3(mem[0])
            while _60 + (uint255(stor4[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_53] = _60
            mem[_53 + 32] = stor4[address(arg1)][u].field_256
            mem[_53 + 64] = stor4[address(arg1)][u].field_512
            mem[_53 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _53
            t = t + 32
            u = u + 1
            continue 
        if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor4[address(arg1)][idx].field_1:
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_60 + 32] = 256 * stor4[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_60 + 32] = stor4[address(arg1)][idx].field_0
                t = _60 + 32
                u = sha3(mem[0])
                while _60 + stor4[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_53] = _60
        mem[_53 + 32] = stor4[address(arg1)][idx].field_256
        mem[_53 + 64] = stor4[address(arg1)][idx].field_512
        mem[_53 + 96] = stor4[address(arg1)][idx].field_768
        mem[s] = _53
        s = s + 32
        idx = idx + 1
        continue 
    _50 = mem[96]
    _51 = mem[64]
    mem[64] = mem[64] + 128
    mem[_51] = 96
    mem[_51 + 32] = 0
    mem[_51 + 64] = 0
    mem[_51 + 96] = 0
    if 0 >= mem[96]:
        revert with 0, 50
    _56 = mem[mem[128] + 32]
    if not mem[mem[128] + 32]:
        _57 = mem[64]
        mem[64] = mem[64] + 64
        mem[_57] = 1
        mem[_57 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _59 = mem[64]
        mem[64] = mem[64] + 64
        mem[_59] = 1
        mem[_59 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _57
        t = _51
        while idx < _50:
            if idx >= mem[96]:
                revert with 0, 50
            _100 = mem[(32 * idx) + 128]
            _101 = mem[mem[(32 * idx) + 128] + 32]
            if not mem[mem[(32 * idx) + 128] + 32]:
                _103 = mem[64]
                mem[64] = mem[64] + 64
                mem[_103] = 1
                mem[_103 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _104 = mem[64]
                _106 = mem[s]
                t = 0
                while t < _106:
                    mem[t + _104 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_106) <= _106:
                    _203 = mem[_59]
                    s = 0
                    while s < _203:
                        mem[s + _104 + _106 + 32] = mem[s + _59 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_203) <= _203:
                        _353 = mem[_103]
                        s = 0
                        while s < _353:
                            mem[s + _104 + _106 + _203 + 32] = mem[s + _103 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_353) <= _353:
                            _489 = mem[64]
                            mem[mem[64]] = _353 + _104 + _106 + _203 - mem[64]
                            mem[64] = _353 + _104 + _106 + _203 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _489
                            t = _100
                            continue 
                        mem[_104 + _106 + _203 + _353 + 32] = 0
                        _495 = mem[64]
                        mem[mem[64]] = _353 + _104 + _106 + _203 - mem[64]
                        mem[64] = _353 + _104 + _106 + _203 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _495
                        t = _100
                        continue 
                    mem[_104 + _106 + _203 + 32] = 0
                    _359 = mem[_103]
                    s = 0
                    while s < _359:
                        mem[s + _104 + _106 + _203 + 32] = mem[s + _103 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_359) <= _359:
                        _490 = mem[64]
                        mem[mem[64]] = _359 + _104 + _106 + _203 - mem[64]
                        mem[64] = _359 + _104 + _106 + _203 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _490
                        t = _100
                        continue 
                    mem[_104 + _106 + _203 + _359 + 32] = 0
                    _496 = mem[64]
                    mem[mem[64]] = _359 + _104 + _106 + _203 - mem[64]
                    mem[64] = _359 + _104 + _106 + _203 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _496
                    t = _100
                    continue 
                mem[_104 + _106 + 32] = 0
                _206 = mem[_59]
                s = 0
                while s < _206:
                    mem[s + _104 + _106 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_206) <= _206:
                    _354 = mem[_103]
                    s = 0
                    while s < _354:
                        mem[s + _104 + _106 + _206 + 32] = mem[s + _103 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_354) <= _354:
                        _491 = mem[64]
                        mem[mem[64]] = _354 + _104 + _106 + _206 - mem[64]
                        mem[64] = _354 + _104 + _106 + _206 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _491
                        t = _100
                        continue 
                    mem[_104 + _106 + _206 + _354 + 32] = 0
                    _497 = mem[64]
                    mem[mem[64]] = _354 + _104 + _106 + _206 - mem[64]
                    mem[64] = _354 + _104 + _106 + _206 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _497
                    t = _100
                    continue 
                mem[_104 + _106 + _206 + 32] = 0
                _360 = mem[_103]
                s = 0
                while s < _360:
                    mem[s + _104 + _106 + _206 + 32] = mem[s + _103 + 32]
                    s = s + 32
                    continue 
                if ceil32(_360) <= _360:
                    _492 = mem[64]
                    mem[mem[64]] = _360 + _104 + _106 + _206 - mem[64]
                    mem[64] = _360 + _104 + _106 + _206 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _492
                    t = _100
                    continue 
                mem[_104 + _106 + _206 + _360 + 32] = 0
                _498 = mem[64]
                mem[mem[64]] = _360 + _104 + _106 + _206 - mem[64]
                mem[64] = _360 + _104 + _106 + _206 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _498
                t = _100
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
            _202 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _101
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_202]:
                        revert with 0, 50
                    mem[v + _202 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _349 = mem[64]
                _351 = mem[s]
                t = 0
                while t < _351:
                    mem[t + _349 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_351) <= _351:
                    _483 = mem[_59]
                    s = 0
                    while s < _483:
                        mem[s + _349 + _351 + 32] = mem[s + _59 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_483) <= _483:
                        _689 = mem[_202]
                        s = 0
                        while s < _689:
                            mem[s + _349 + _351 + _483 + 32] = mem[s + _202 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_689) <= _689:
                            _873 = mem[64]
                            mem[mem[64]] = _689 + _349 + _351 + _483 - mem[64]
                            mem[64] = _689 + _349 + _351 + _483 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _873
                            t = _100
                            continue 
                        mem[_349 + _351 + _483 + _689 + 32] = 0
                        _889 = mem[64]
                        mem[mem[64]] = _689 + _349 + _351 + _483 - mem[64]
                        mem[64] = _689 + _349 + _351 + _483 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _889
                        t = _100
                        continue 
                    mem[_349 + _351 + _483 + 32] = 0
                    _697 = mem[_202]
                    s = 0
                    while s < _697:
                        mem[s + _349 + _351 + _483 + 32] = mem[s + _202 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _874 = mem[64]
                        mem[mem[64]] = _697 + _349 + _351 + _483 - mem[64]
                        mem[64] = _697 + _349 + _351 + _483 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _874
                        t = _100
                        continue 
                    mem[_349 + _351 + _483 + _697 + 32] = 0
                    _890 = mem[64]
                    mem[mem[64]] = _697 + _349 + _351 + _483 - mem[64]
                    mem[64] = _697 + _349 + _351 + _483 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _890
                    t = _100
                    continue 
                mem[_349 + _351 + 32] = 0
                _487 = mem[_59]
                s = 0
                while s < _487:
                    mem[s + _349 + _351 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_487) <= _487:
                    _690 = mem[_202]
                    s = 0
                    while s < _690:
                        mem[s + _349 + _351 + _487 + 32] = mem[s + _202 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _875 = mem[64]
                        mem[mem[64]] = _690 + _349 + _351 + _487 - mem[64]
                        mem[64] = _690 + _349 + _351 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _875
                        t = _100
                        continue 
                    mem[_349 + _351 + _487 + _690 + 32] = 0
                    _891 = mem[64]
                    mem[mem[64]] = _690 + _349 + _351 + _487 - mem[64]
                    mem[64] = _690 + _349 + _351 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _891
                    t = _100
                    continue 
                mem[_349 + _351 + _487 + 32] = 0
                _698 = mem[_202]
                s = 0
                while s < _698:
                    mem[s + _349 + _351 + _487 + 32] = mem[s + _202 + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _876 = mem[64]
                    mem[mem[64]] = _698 + _349 + _351 + _487 - mem[64]
                    mem[64] = _698 + _349 + _351 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _876
                    t = _100
                    continue 
                mem[_349 + _351 + _487 + _698 + 32] = 0
                _892 = mem[64]
                mem[mem[64]] = _698 + _349 + _351 + _487 - mem[64]
                mem[64] = _698 + _349 + _351 + _487 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _892
                t = _100
                continue 
            mem[_202 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _101
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_202]:
                    revert with 0, 50
                mem[v + _202 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _350 = mem[64]
            _352 = mem[s]
            t = 0
            while t < _352:
                mem[t + _350 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_352) <= _352:
                _484 = mem[_59]
                s = 0
                while s < _484:
                    mem[s + _350 + _352 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_484) <= _484:
                    _691 = mem[_202]
                    s = 0
                    while s < _691:
                        mem[s + _350 + _352 + _484 + 32] = mem[s + _202 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_691) <= _691:
                        _877 = mem[64]
                        mem[mem[64]] = _691 + _350 + _352 + _484 - mem[64]
                        mem[64] = _691 + _350 + _352 + _484 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _877
                        t = _100
                        continue 
                    mem[_350 + _352 + _484 + _691 + 32] = 0
                    _893 = mem[64]
                    mem[mem[64]] = _691 + _350 + _352 + _484 - mem[64]
                    mem[64] = _691 + _350 + _352 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _893
                    t = _100
                    continue 
                mem[_350 + _352 + _484 + 32] = 0
                _699 = mem[_202]
                s = 0
                while s < _699:
                    mem[s + _350 + _352 + _484 + 32] = mem[s + _202 + 32]
                    s = s + 32
                    continue 
                if ceil32(_699) <= _699:
                    _878 = mem[64]
                    mem[mem[64]] = _699 + _350 + _352 + _484 - mem[64]
                    mem[64] = _699 + _350 + _352 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _878
                    t = _100
                    continue 
                mem[_350 + _352 + _484 + _699 + 32] = 0
                _894 = mem[64]
                mem[mem[64]] = _699 + _350 + _352 + _484 - mem[64]
                mem[64] = _699 + _350 + _352 + _484 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _894
                t = _100
                continue 
            mem[_350 + _352 + 32] = 0
            _488 = mem[_59]
            s = 0
            while s < _488:
                mem[s + _350 + _352 + 32] = mem[s + _59 + 32]
                s = s + 32
                continue 
            if ceil32(_488) <= _488:
                _692 = mem[_202]
                s = 0
                while s < _692:
                    mem[s + _350 + _352 + _488 + 32] = mem[s + _202 + 32]
                    s = s + 32
                    continue 
                if ceil32(_692) <= _692:
                    _879 = mem[64]
                    mem[mem[64]] = _692 + _350 + _352 + _488 - mem[64]
                    mem[64] = _692 + _350 + _352 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _879
                    t = _100
                    continue 
                mem[_350 + _352 + _488 + _692 + 32] = 0
                _895 = mem[64]
                mem[mem[64]] = _692 + _350 + _352 + _488 - mem[64]
                mem[64] = _692 + _350 + _352 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _895
                t = _100
                continue 
            mem[_350 + _352 + _488 + 32] = 0
            _700 = mem[_202]
            s = 0
            while s < _700:
                mem[s + _350 + _352 + _488 + 32] = mem[s + _202 + 32]
                s = s + 32
                continue 
            if ceil32(_700) <= _700:
                _880 = mem[64]
                mem[mem[64]] = _700 + _350 + _352 + _488 - mem[64]
                mem[64] = _700 + _350 + _352 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _880
                t = _100
                continue 
            mem[_350 + _352 + _488 + _700 + 32] = 0
            _896 = mem[64]
            mem[mem[64]] = _700 + _350 + _352 + _488 - mem[64]
            mem[64] = _700 + _350 + _352 + _488 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _896
            t = _100
            continue 
        mem[mem[64]] = 32
        _102 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_102)] = mem[s + 32 len ceil32(_102)]
        if ceil32(_102) > _102:
            mem[mem[64] + _102 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_102) + 32]
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
    _98 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _56
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_98]:
                revert with 0, 50
            mem[s + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        _200 = mem[64]
        mem[64] = mem[64] + 64
        mem[_200] = 1
        mem[_200 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        t = _98
        u = _51
        while idx < _50:
            if idx >= mem[96]:
                revert with 0, 50
            _344 = mem[(32 * idx) + 128]
            _345 = mem[mem[(32 * idx) + 128] + 32]
            if not mem[mem[(32 * idx) + 128] + 32]:
                _356 = mem[64]
                mem[64] = mem[64] + 64
                mem[_356] = 1
                mem[_356 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _361 = mem[64]
                _363 = mem[t]
                u = 0
                while u < _363:
                    mem[u + _361 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_363) <= _363:
                    _481 = mem[_200]
                    t = 0
                    while t < _481:
                        mem[t + _361 + _363 + 32] = mem[t + _200 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_481) <= _481:
                        _683 = mem[_356]
                        s = 0
                        while s < _683:
                            mem[s + _361 + _363 + _481 + 32] = mem[s + _356 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_683) <= _683:
                            _863 = mem[64]
                            mem[mem[64]] = _683 + _361 + _363 + _481 - mem[64]
                            mem[64] = _683 + _361 + _363 + _481 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _863
                            u = _344
                            continue 
                        mem[_361 + _363 + _481 + _683 + 32] = 0
                        _881 = mem[64]
                        mem[mem[64]] = _683 + _361 + _363 + _481 - mem[64]
                        mem[64] = _683 + _361 + _363 + _481 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _881
                        u = _344
                        continue 
                    mem[_361 + _363 + _481 + 32] = 0
                    _693 = mem[_356]
                    s = 0
                    while s < _693:
                        mem[s + _361 + _363 + _481 + 32] = mem[s + _356 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _864 = mem[64]
                        mem[mem[64]] = _693 + _361 + _363 + _481 - mem[64]
                        mem[64] = _693 + _361 + _363 + _481 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _864
                        u = _344
                        continue 
                    mem[_361 + _363 + _481 + _693 + 32] = 0
                    _882 = mem[64]
                    mem[mem[64]] = _693 + _361 + _363 + _481 - mem[64]
                    mem[64] = _693 + _361 + _363 + _481 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _882
                    u = _344
                    continue 
                mem[_361 + _363 + 32] = 0
                _485 = mem[_200]
                s = 0
                while s < _485:
                    mem[s + _361 + _363 + 32] = mem[s + _200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_485) <= _485:
                    _684 = mem[_356]
                    s = 0
                    while s < _684:
                        mem[s + _361 + _363 + _485 + 32] = mem[s + _356 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_684) <= _684:
                        _865 = mem[64]
                        mem[mem[64]] = _684 + _361 + _363 + _485 - mem[64]
                        mem[64] = _684 + _361 + _363 + _485 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _865
                        u = _344
                        continue 
                    mem[_361 + _363 + _485 + _684 + 32] = 0
                    _883 = mem[64]
                    mem[mem[64]] = _684 + _361 + _363 + _485 - mem[64]
                    mem[64] = _684 + _361 + _363 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _883
                    u = _344
                    continue 
                mem[_361 + _363 + _485 + 32] = 0
                _694 = mem[_356]
                s = 0
                while s < _694:
                    mem[s + _361 + _363 + _485 + 32] = mem[s + _356 + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _866 = mem[64]
                    mem[mem[64]] = _694 + _361 + _363 + _485 - mem[64]
                    mem[64] = _694 + _361 + _363 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _866
                    u = _344
                    continue 
                mem[_361 + _363 + _485 + _694 + 32] = 0
                _884 = mem[64]
                mem[mem[64]] = _694 + _361 + _363 + _485 - mem[64]
                mem[64] = _694 + _361 + _363 + _485 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _884
                u = _344
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
            _479 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                s = _345
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_479]:
                        revert with 0, 50
                    mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _677 = mem[64]
                _681 = mem[t]
                s = 0
                while s < _681:
                    mem[s + _677 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_681) <= _681:
                    _857 = mem[_200]
                    s = 0
                    while s < _857:
                        mem[s + _677 + _681 + 32] = mem[s + _200 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_857) <= _857:
                        _977 = mem[_479]
                        s = 0
                        while s < _977:
                            mem[s + _677 + _681 + _857 + 32] = mem[s + _479 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_977) <= _977:
                            _1057 = mem[64]
                            mem[mem[64]] = _977 + _677 + _681 + _857 - mem[64]
                            mem[64] = _977 + _677 + _681 + _857 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1057
                            u = _344
                            continue 
                        mem[_677 + _681 + _857 + _977 + 32] = 0
                        _1073 = mem[64]
                        mem[mem[64]] = _977 + _677 + _681 + _857 - mem[64]
                        mem[64] = _977 + _677 + _681 + _857 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1073
                        u = _344
                        continue 
                    mem[_677 + _681 + _857 + 32] = 0
                    _985 = mem[_479]
                    s = 0
                    while s < _985:
                        mem[s + _677 + _681 + _857 + 32] = mem[s + _479 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_985) <= _985:
                        _1058 = mem[64]
                        mem[mem[64]] = _985 + _677 + _681 + _857 - mem[64]
                        mem[64] = _985 + _677 + _681 + _857 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1058
                        u = _344
                        continue 
                    mem[_677 + _681 + _857 + _985 + 32] = 0
                    _1074 = mem[64]
                    mem[mem[64]] = _985 + _677 + _681 + _857 - mem[64]
                    mem[64] = _985 + _677 + _681 + _857 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1074
                    u = _344
                    continue 
                mem[_677 + _681 + 32] = 0
                _861 = mem[_200]
                s = 0
                while s < _861:
                    mem[s + _677 + _681 + 32] = mem[s + _200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_861) <= _861:
                    _978 = mem[_479]
                    s = 0
                    while s < _978:
                        mem[s + _677 + _681 + _861 + 32] = mem[s + _479 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_978) <= _978:
                        _1059 = mem[64]
                        mem[mem[64]] = _978 + _677 + _681 + _861 - mem[64]
                        mem[64] = _978 + _677 + _681 + _861 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1059
                        u = _344
                        continue 
                    mem[_677 + _681 + _861 + _978 + 32] = 0
                    _1075 = mem[64]
                    mem[mem[64]] = _978 + _677 + _681 + _861 - mem[64]
                    mem[64] = _978 + _677 + _681 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1075
                    u = _344
                    continue 
                mem[_677 + _681 + _861 + 32] = 0
                _986 = mem[_479]
                s = 0
                while s < _986:
                    mem[s + _677 + _681 + _861 + 32] = mem[s + _479 + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1060 = mem[64]
                    mem[mem[64]] = _986 + _677 + _681 + _861 - mem[64]
                    mem[64] = _986 + _677 + _681 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1060
                    u = _344
                    continue 
                mem[_677 + _681 + _861 + _986 + 32] = 0
                _1076 = mem[64]
                mem[mem[64]] = _986 + _677 + _681 + _861 - mem[64]
                mem[64] = _986 + _677 + _681 + _861 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1076
                u = _344
                continue 
            mem[_479 + 32 len u] = call.data[calldata.size len u]
            v = u
            s = _345
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_479]:
                    revert with 0, 50
                mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _678 = mem[64]
            _682 = mem[t]
            s = 0
            while s < _682:
                mem[s + _678 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_682) <= _682:
                _858 = mem[_200]
                s = 0
                while s < _858:
                    mem[s + _678 + _682 + 32] = mem[s + _200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_858) <= _858:
                    _979 = mem[_479]
                    s = 0
                    while s < _979:
                        mem[s + _678 + _682 + _858 + 32] = mem[s + _479 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_979) <= _979:
                        _1061 = mem[64]
                        mem[mem[64]] = _979 + _678 + _682 + _858 - mem[64]
                        mem[64] = _979 + _678 + _682 + _858 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1061
                        u = _344
                        continue 
                    mem[_678 + _682 + _858 + _979 + 32] = 0
                    _1077 = mem[64]
                    mem[mem[64]] = _979 + _678 + _682 + _858 - mem[64]
                    mem[64] = _979 + _678 + _682 + _858 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1077
                    u = _344
                    continue 
                mem[_678 + _682 + _858 + 32] = 0
                _987 = mem[_479]
                s = 0
                while s < _987:
                    mem[s + _678 + _682 + _858 + 32] = mem[s + _479 + 32]
                    s = s + 32
                    continue 
                if ceil32(_987) <= _987:
                    _1062 = mem[64]
                    mem[mem[64]] = _987 + _678 + _682 + _858 - mem[64]
                    mem[64] = _987 + _678 + _682 + _858 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1062
                    u = _344
                    continue 
                mem[_678 + _682 + _858 + _987 + 32] = 0
                _1078 = mem[64]
                mem[mem[64]] = _987 + _678 + _682 + _858 - mem[64]
                mem[64] = _987 + _678 + _682 + _858 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1078
                u = _344
                continue 
            mem[_678 + _682 + 32] = 0
            _862 = mem[_200]
            s = 0
            while s < _862:
                mem[s + _678 + _682 + 32] = mem[s + _200 + 32]
                s = s + 32
                continue 
            if ceil32(_862) <= _862:
                _980 = mem[_479]
                s = 0
                while s < _980:
                    mem[s + _678 + _682 + _862 + 32] = mem[s + _479 + 32]
                    s = s + 32
                    continue 
                if ceil32(_980) <= _980:
                    _1063 = mem[64]
                    mem[mem[64]] = _980 + _678 + _682 + _862 - mem[64]
                    mem[64] = _980 + _678 + _682 + _862 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1063
                    u = _344
                    continue 
                mem[_678 + _682 + _862 + _980 + 32] = 0
                _1079 = mem[64]
                mem[mem[64]] = _980 + _678 + _682 + _862 - mem[64]
                mem[64] = _980 + _678 + _682 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1079
                u = _344
                continue 
            mem[_678 + _682 + _862 + 32] = 0
            _988 = mem[_479]
            s = 0
            while s < _988:
                mem[s + _678 + _682 + _862 + 32] = mem[s + _479 + 32]
                s = s + 32
                continue 
            if ceil32(_988) <= _988:
                _1064 = mem[64]
                mem[mem[64]] = _988 + _678 + _682 + _862 - mem[64]
                mem[64] = _988 + _678 + _682 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1064
                u = _344
                continue 
            mem[_678 + _682 + _862 + _988 + 32] = 0
            _1080 = mem[64]
            mem[mem[64]] = _988 + _678 + _682 + _862 - mem[64]
            mem[64] = _988 + _678 + _682 + _862 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1080
            u = _344
            continue 
        mem[mem[64]] = 32
        _355 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_355)] = mem[t + 32 len ceil32(_355)]
        if ceil32(_355) > _355:
            mem[mem[64] + _355 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_355) + 32]
    mem[_98 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _56
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_98]:
            revert with 0, 50
        mem[s + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    _201 = mem[64]
    mem[64] = mem[64] + 64
    mem[_201] = 1
    mem[_201 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    t = _98
    u = _51
    while idx < _50:
        if idx >= mem[96]:
            revert with 0, 50
        _347 = mem[(32 * idx) + 128]
        _348 = mem[mem[(32 * idx) + 128] + 32]
        if not mem[mem[(32 * idx) + 128] + 32]:
            _358 = mem[64]
            mem[64] = mem[64] + 64
            mem[_358] = 1
            mem[_358 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _362 = mem[64]
            _364 = mem[t]
            u = 0
            while u < _364:
                mem[u + _362 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_364) <= _364:
                _482 = mem[_201]
                t = 0
                while t < _482:
                    mem[t + _362 + _364 + 32] = mem[t + _201 + 32]
                    t = t + 32
                    continue 
                if ceil32(_482) <= _482:
                    _687 = mem[_358]
                    s = 0
                    while s < _687:
                        mem[s + _362 + _364 + _482 + 32] = mem[s + _358 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_687) <= _687:
                        _869 = mem[64]
                        mem[mem[64]] = _687 + _362 + _364 + _482 - mem[64]
                        mem[64] = _687 + _362 + _364 + _482 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _869
                        u = _347
                        continue 
                    mem[_362 + _364 + _482 + _687 + 32] = 0
                    _885 = mem[64]
                    mem[mem[64]] = _687 + _362 + _364 + _482 - mem[64]
                    mem[64] = _687 + _362 + _364 + _482 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _885
                    u = _347
                    continue 
                mem[_362 + _364 + _482 + 32] = 0
                _695 = mem[_358]
                s = 0
                while s < _695:
                    mem[s + _362 + _364 + _482 + 32] = mem[s + _358 + 32]
                    s = s + 32
                    continue 
                if ceil32(_695) <= _695:
                    _870 = mem[64]
                    mem[mem[64]] = _695 + _362 + _364 + _482 - mem[64]
                    mem[64] = _695 + _362 + _364 + _482 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _870
                    u = _347
                    continue 
                mem[_362 + _364 + _482 + _695 + 32] = 0
                _886 = mem[64]
                mem[mem[64]] = _695 + _362 + _364 + _482 - mem[64]
                mem[64] = _695 + _362 + _364 + _482 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _886
                u = _347
                continue 
            mem[_362 + _364 + 32] = 0
            _486 = mem[_201]
            s = 0
            while s < _486:
                mem[s + _362 + _364 + 32] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_486) <= _486:
                _688 = mem[_358]
                s = 0
                while s < _688:
                    mem[s + _362 + _364 + _486 + 32] = mem[s + _358 + 32]
                    s = s + 32
                    continue 
                if ceil32(_688) <= _688:
                    _871 = mem[64]
                    mem[mem[64]] = _688 + _362 + _364 + _486 - mem[64]
                    mem[64] = _688 + _362 + _364 + _486 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _871
                    u = _347
                    continue 
                mem[_362 + _364 + _486 + _688 + 32] = 0
                _887 = mem[64]
                mem[mem[64]] = _688 + _362 + _364 + _486 - mem[64]
                mem[64] = _688 + _362 + _364 + _486 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _887
                u = _347
                continue 
            mem[_362 + _364 + _486 + 32] = 0
            _696 = mem[_358]
            s = 0
            while s < _696:
                mem[s + _362 + _364 + _486 + 32] = mem[s + _358 + 32]
                s = s + 32
                continue 
            if ceil32(_696) <= _696:
                _872 = mem[64]
                mem[mem[64]] = _696 + _362 + _364 + _486 - mem[64]
                mem[64] = _696 + _362 + _364 + _486 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _872
                u = _347
                continue 
            mem[_362 + _364 + _486 + _696 + 32] = 0
            _888 = mem[64]
            mem[mem[64]] = _696 + _362 + _364 + _486 - mem[64]
            mem[64] = _696 + _362 + _364 + _486 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _888
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
        _480 = mem[64]
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
                if v - 1 >= mem[_480]:
                    revert with 0, 50
                mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _679 = mem[64]
            _685 = mem[t]
            s = 0
            while s < _685:
                mem[s + _679 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_685) <= _685:
                _859 = mem[_201]
                s = 0
                while s < _859:
                    mem[s + _679 + _685 + 32] = mem[s + _201 + 32]
                    s = s + 32
                    continue 
                if ceil32(_859) <= _859:
                    _981 = mem[_480]
                    s = 0
                    while s < _981:
                        mem[s + _679 + _685 + _859 + 32] = mem[s + _480 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_981) <= _981:
                        _1065 = mem[64]
                        mem[mem[64]] = _981 + _679 + _685 + _859 - mem[64]
                        mem[64] = _981 + _679 + _685 + _859 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1065
                        u = _347
                        continue 
                    mem[_679 + _685 + _859 + _981 + 32] = 0
                    _1081 = mem[64]
                    mem[mem[64]] = _981 + _679 + _685 + _859 - mem[64]
                    mem[64] = _981 + _679 + _685 + _859 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1081
                    u = _347
                    continue 
                mem[_679 + _685 + _859 + 32] = 0
                _989 = mem[_480]
                s = 0
                while s < _989:
                    mem[s + _679 + _685 + _859 + 32] = mem[s + _480 + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1066 = mem[64]
                    mem[mem[64]] = _989 + _679 + _685 + _859 - mem[64]
                    mem[64] = _989 + _679 + _685 + _859 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1066
                    u = _347
                    continue 
                mem[_679 + _685 + _859 + _989 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _989 + _679 + _685 + _859 - mem[64]
                mem[64] = _989 + _679 + _685 + _859 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1082
                u = _347
                continue 
            mem[_679 + _685 + 32] = 0
            _867 = mem[_201]
            s = 0
            while s < _867:
                mem[s + _679 + _685 + 32] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_867) <= _867:
                _982 = mem[_480]
                s = 0
                while s < _982:
                    mem[s + _679 + _685 + _867 + 32] = mem[s + _480 + 32]
                    s = s + 32
                    continue 
                if ceil32(_982) <= _982:
                    _1067 = mem[64]
                    mem[mem[64]] = _982 + _679 + _685 + _867 - mem[64]
                    mem[64] = _982 + _679 + _685 + _867 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1067
                    u = _347
                    continue 
                mem[_679 + _685 + _867 + _982 + 32] = 0
                _1083 = mem[64]
                mem[mem[64]] = _982 + _679 + _685 + _867 - mem[64]
                mem[64] = _982 + _679 + _685 + _867 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1083
                u = _347
                continue 
            mem[_679 + _685 + _867 + 32] = 0
            _990 = mem[_480]
            s = 0
            while s < _990:
                mem[s + _679 + _685 + _867 + 32] = mem[s + _480 + 32]
                s = s + 32
                continue 
            if ceil32(_990) <= _990:
                _1068 = mem[64]
                mem[mem[64]] = _990 + _679 + _685 + _867 - mem[64]
                mem[64] = _990 + _679 + _685 + _867 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1068
                u = _347
                continue 
            mem[_679 + _685 + _867 + _990 + 32] = 0
            _1084 = mem[64]
            mem[mem[64]] = _990 + _679 + _685 + _867 - mem[64]
            mem[64] = _990 + _679 + _685 + _867 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1084
            u = _347
            continue 
        mem[_480 + 32 len u] = call.data[calldata.size len u]
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
            if v - 1 >= mem[_480]:
                revert with 0, 50
            mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _680 = mem[64]
        _686 = mem[t]
        s = 0
        while s < _686:
            mem[s + _680 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_686) <= _686:
            _860 = mem[_201]
            s = 0
            while s < _860:
                mem[s + _680 + _686 + 32] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_860) <= _860:
                _983 = mem[_480]
                s = 0
                while s < _983:
                    mem[s + _680 + _686 + _860 + 32] = mem[s + _480 + 32]
                    s = s + 32
                    continue 
                if ceil32(_983) <= _983:
                    _1069 = mem[64]
                    mem[mem[64]] = _983 + _680 + _686 + _860 - mem[64]
                    mem[64] = _983 + _680 + _686 + _860 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1069
                    u = _347
                    continue 
                mem[_680 + _686 + _860 + _983 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _983 + _680 + _686 + _860 - mem[64]
                mem[64] = _983 + _680 + _686 + _860 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1085
                u = _347
                continue 
            mem[_680 + _686 + _860 + 32] = 0
            _991 = mem[_480]
            s = 0
            while s < _991:
                mem[s + _680 + _686 + _860 + 32] = mem[s + _480 + 32]
                s = s + 32
                continue 
            if ceil32(_991) <= _991:
                _1070 = mem[64]
                mem[mem[64]] = _991 + _680 + _686 + _860 - mem[64]
                mem[64] = _991 + _680 + _686 + _860 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1070
                u = _347
                continue 
            mem[_680 + _686 + _860 + _991 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _991 + _680 + _686 + _860 - mem[64]
            mem[64] = _991 + _680 + _686 + _860 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1086
            u = _347
            continue 
        mem[_680 + _686 + 32] = 0
        _868 = mem[_201]
        s = 0
        while s < _868:
            mem[s + _680 + _686 + 32] = mem[s + _201 + 32]
            s = s + 32
            continue 
        if ceil32(_868) <= _868:
            _984 = mem[_480]
            s = 0
            while s < _984:
                mem[s + _680 + _686 + _868 + 32] = mem[s + _480 + 32]
                s = s + 32
                continue 
            if ceil32(_984) <= _984:
                _1071 = mem[64]
                mem[mem[64]] = _984 + _680 + _686 + _868 - mem[64]
                mem[64] = _984 + _680 + _686 + _868 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1071
                u = _347
                continue 
            mem[_680 + _686 + _868 + _984 + 32] = 0
            _1087 = mem[64]
            mem[mem[64]] = _984 + _680 + _686 + _868 - mem[64]
            mem[64] = _984 + _680 + _686 + _868 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1087
            u = _347
            continue 
        mem[_680 + _686 + _868 + 32] = 0
        _992 = mem[_480]
        s = 0
        while s < _992:
            mem[s + _680 + _686 + _868 + 32] = mem[s + _480 + 32]
            s = s + 32
            continue 
        if ceil32(_992) <= _992:
            _1072 = mem[64]
            mem[mem[64]] = _992 + _680 + _686 + _868 - mem[64]
            mem[64] = _992 + _680 + _686 + _868 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1072
            u = _347
            continue 
        mem[_680 + _686 + _868 + _992 + 32] = 0
        _1088 = mem[64]
        mem[mem[64]] = _992 + _680 + _686 + _868 - mem[64]
        mem[64] = _992 + _680 + _686 + _868 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = _1088
        u = _347
        continue 
    mem[mem[64]] = 32
    _357 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_357)] = mem[t + 32 len ceil32(_357)]
    if ceil32(_357) > _357:
        mem[mem[64] + _357 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_357) + 32]
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 4
    mem[64] = (32 * stor4[address(arg1)].field_0) + 128
    mem[96] = stor4[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        _53 = mem[64]
        mem[64] = mem[64] + 128
        if stor4[address(arg1)][idx].field_0:
            if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_58] = uint255(stor4[address(arg1)][idx].field_0) * 0.5
            if stor4[address(arg1)][idx].field_0:
                if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor4[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                        mem[_58 + 32] = 256 * stor4[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_58 + 32] = stor4[address(arg1)][idx].field_0
                        t = _58 + 32
                        u = sha3(mem[0])
                        while _58 + (uint255(stor4[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_53] = _58
                mem[_53 + 32] = stor4[address(arg1)][idx].field_256
                mem[_53 + 64] = stor4[address(arg1)][idx].field_512
                mem[_53 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor4[address(arg1)][idx].field_1:
                mem[_53] = _58
                mem[_53 + 32] = stor4[address(arg1)][idx].field_256
                mem[_53 + 64] = stor4[address(arg1)][idx].field_512
                mem[_53 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_58 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_53] = _58
                mem[_53 + 32] = stor4[address(arg1)][idx].field_256
                mem[_53 + 64] = stor4[address(arg1)][idx].field_512
                mem[_53 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_58 + 32] = stor4[address(arg1)][idx].field_0
            t = _58 + 32
            u = sha3(mem[0])
            while _58 + stor4[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_53] = _58
            mem[_53 + 32] = stor4[address(arg1)][u].field_256
            mem[_53 + 64] = stor4[address(arg1)][u].field_512
            mem[_53 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _53
            t = t + 32
            u = u + 1
            continue 
        if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
        mem[_60] = stor4[address(arg1)][idx].field_1
        if stor4[address(arg1)][idx].field_0:
            if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor4[address(arg1)][idx].field_0):
                mem[_53] = _60
                mem[_53 + 32] = stor4[address(arg1)][idx].field_256
                mem[_53 + 64] = stor4[address(arg1)][idx].field_512
                mem[_53 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                mem[_60 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_53] = _60
                mem[_53 + 32] = stor4[address(arg1)][idx].field_256
                mem[_53 + 64] = stor4[address(arg1)][idx].field_512
                mem[_53 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_60 + 32] = stor4[address(arg1)][idx].field_0
            t = _60 + 32
            u = sha3(mem[0])
            while _60 + (uint255(stor4[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_53] = _60
            mem[_53 + 32] = stor4[address(arg1)][u].field_256
            mem[_53 + 64] = stor4[address(arg1)][u].field_512
            mem[_53 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _53
            t = t + 32
            u = u + 1
            continue 
        if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor4[address(arg1)][idx].field_1:
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_60 + 32] = 256 * stor4[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_60 + 32] = stor4[address(arg1)][idx].field_0
                t = _60 + 32
                u = sha3(mem[0])
                while _60 + stor4[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_53] = _60
        mem[_53 + 32] = stor4[address(arg1)][idx].field_256
        mem[_53 + 64] = stor4[address(arg1)][idx].field_512
        mem[_53 + 96] = stor4[address(arg1)][idx].field_768
        mem[s] = _53
        s = s + 32
        idx = idx + 1
        continue 
    _50 = mem[96]
    _51 = mem[64]
    mem[64] = mem[64] + 128
    mem[_51] = 96
    mem[_51 + 32] = 0
    mem[_51 + 64] = 0
    mem[_51 + 96] = 0
    if 0 >= mem[96]:
        revert with 0, 50
    _56 = mem[mem[128] + 64]
    if not mem[mem[128] + 64]:
        _57 = mem[64]
        mem[64] = mem[64] + 64
        mem[_57] = 1
        mem[_57 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _59 = mem[64]
        mem[64] = mem[64] + 64
        mem[_59] = 1
        mem[_59 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _57
        t = _51
        while idx < _50:
            if idx >= mem[96]:
                revert with 0, 50
            _100 = mem[(32 * idx) + 128]
            _101 = mem[mem[(32 * idx) + 128] + 64]
            if not mem[mem[(32 * idx) + 128] + 64]:
                _103 = mem[64]
                mem[64] = mem[64] + 64
                mem[_103] = 1
                mem[_103 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _104 = mem[64]
                _106 = mem[s]
                t = 0
                while t < _106:
                    mem[t + _104 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_106) <= _106:
                    _203 = mem[_59]
                    s = 0
                    while s < _203:
                        mem[s + _104 + _106 + 32] = mem[s + _59 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_203) <= _203:
                        _353 = mem[_103]
                        s = 0
                        while s < _353:
                            mem[s + _104 + _106 + _203 + 32] = mem[s + _103 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_353) <= _353:
                            _489 = mem[64]
                            mem[mem[64]] = _353 + _104 + _106 + _203 - mem[64]
                            mem[64] = _353 + _104 + _106 + _203 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _489
                            t = _100
                            continue 
                        mem[_104 + _106 + _203 + _353 + 32] = 0
                        _495 = mem[64]
                        mem[mem[64]] = _353 + _104 + _106 + _203 - mem[64]
                        mem[64] = _353 + _104 + _106 + _203 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _495
                        t = _100
                        continue 
                    mem[_104 + _106 + _203 + 32] = 0
                    _359 = mem[_103]
                    s = 0
                    while s < _359:
                        mem[s + _104 + _106 + _203 + 32] = mem[s + _103 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_359) <= _359:
                        _490 = mem[64]
                        mem[mem[64]] = _359 + _104 + _106 + _203 - mem[64]
                        mem[64] = _359 + _104 + _106 + _203 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _490
                        t = _100
                        continue 
                    mem[_104 + _106 + _203 + _359 + 32] = 0
                    _496 = mem[64]
                    mem[mem[64]] = _359 + _104 + _106 + _203 - mem[64]
                    mem[64] = _359 + _104 + _106 + _203 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _496
                    t = _100
                    continue 
                mem[_104 + _106 + 32] = 0
                _206 = mem[_59]
                s = 0
                while s < _206:
                    mem[s + _104 + _106 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_206) <= _206:
                    _354 = mem[_103]
                    s = 0
                    while s < _354:
                        mem[s + _104 + _106 + _206 + 32] = mem[s + _103 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_354) <= _354:
                        _491 = mem[64]
                        mem[mem[64]] = _354 + _104 + _106 + _206 - mem[64]
                        mem[64] = _354 + _104 + _106 + _206 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _491
                        t = _100
                        continue 
                    mem[_104 + _106 + _206 + _354 + 32] = 0
                    _497 = mem[64]
                    mem[mem[64]] = _354 + _104 + _106 + _206 - mem[64]
                    mem[64] = _354 + _104 + _106 + _206 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _497
                    t = _100
                    continue 
                mem[_104 + _106 + _206 + 32] = 0
                _360 = mem[_103]
                s = 0
                while s < _360:
                    mem[s + _104 + _106 + _206 + 32] = mem[s + _103 + 32]
                    s = s + 32
                    continue 
                if ceil32(_360) <= _360:
                    _492 = mem[64]
                    mem[mem[64]] = _360 + _104 + _106 + _206 - mem[64]
                    mem[64] = _360 + _104 + _106 + _206 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _492
                    t = _100
                    continue 
                mem[_104 + _106 + _206 + _360 + 32] = 0
                _498 = mem[64]
                mem[mem[64]] = _360 + _104 + _106 + _206 - mem[64]
                mem[64] = _360 + _104 + _106 + _206 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _498
                t = _100
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
            _202 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _101
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_202]:
                        revert with 0, 50
                    mem[v + _202 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _349 = mem[64]
                _351 = mem[s]
                t = 0
                while t < _351:
                    mem[t + _349 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_351) <= _351:
                    _483 = mem[_59]
                    s = 0
                    while s < _483:
                        mem[s + _349 + _351 + 32] = mem[s + _59 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_483) <= _483:
                        _689 = mem[_202]
                        s = 0
                        while s < _689:
                            mem[s + _349 + _351 + _483 + 32] = mem[s + _202 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_689) <= _689:
                            _873 = mem[64]
                            mem[mem[64]] = _689 + _349 + _351 + _483 - mem[64]
                            mem[64] = _689 + _349 + _351 + _483 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _873
                            t = _100
                            continue 
                        mem[_349 + _351 + _483 + _689 + 32] = 0
                        _889 = mem[64]
                        mem[mem[64]] = _689 + _349 + _351 + _483 - mem[64]
                        mem[64] = _689 + _349 + _351 + _483 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _889
                        t = _100
                        continue 
                    mem[_349 + _351 + _483 + 32] = 0
                    _697 = mem[_202]
                    s = 0
                    while s < _697:
                        mem[s + _349 + _351 + _483 + 32] = mem[s + _202 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _874 = mem[64]
                        mem[mem[64]] = _697 + _349 + _351 + _483 - mem[64]
                        mem[64] = _697 + _349 + _351 + _483 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _874
                        t = _100
                        continue 
                    mem[_349 + _351 + _483 + _697 + 32] = 0
                    _890 = mem[64]
                    mem[mem[64]] = _697 + _349 + _351 + _483 - mem[64]
                    mem[64] = _697 + _349 + _351 + _483 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _890
                    t = _100
                    continue 
                mem[_349 + _351 + 32] = 0
                _487 = mem[_59]
                s = 0
                while s < _487:
                    mem[s + _349 + _351 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_487) <= _487:
                    _690 = mem[_202]
                    s = 0
                    while s < _690:
                        mem[s + _349 + _351 + _487 + 32] = mem[s + _202 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _875 = mem[64]
                        mem[mem[64]] = _690 + _349 + _351 + _487 - mem[64]
                        mem[64] = _690 + _349 + _351 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _875
                        t = _100
                        continue 
                    mem[_349 + _351 + _487 + _690 + 32] = 0
                    _891 = mem[64]
                    mem[mem[64]] = _690 + _349 + _351 + _487 - mem[64]
                    mem[64] = _690 + _349 + _351 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _891
                    t = _100
                    continue 
                mem[_349 + _351 + _487 + 32] = 0
                _698 = mem[_202]
                s = 0
                while s < _698:
                    mem[s + _349 + _351 + _487 + 32] = mem[s + _202 + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _876 = mem[64]
                    mem[mem[64]] = _698 + _349 + _351 + _487 - mem[64]
                    mem[64] = _698 + _349 + _351 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _876
                    t = _100
                    continue 
                mem[_349 + _351 + _487 + _698 + 32] = 0
                _892 = mem[64]
                mem[mem[64]] = _698 + _349 + _351 + _487 - mem[64]
                mem[64] = _698 + _349 + _351 + _487 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _892
                t = _100
                continue 
            mem[_202 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _101
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_202]:
                    revert with 0, 50
                mem[v + _202 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _350 = mem[64]
            _352 = mem[s]
            t = 0
            while t < _352:
                mem[t + _350 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_352) <= _352:
                _484 = mem[_59]
                s = 0
                while s < _484:
                    mem[s + _350 + _352 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_484) <= _484:
                    _691 = mem[_202]
                    s = 0
                    while s < _691:
                        mem[s + _350 + _352 + _484 + 32] = mem[s + _202 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_691) <= _691:
                        _877 = mem[64]
                        mem[mem[64]] = _691 + _350 + _352 + _484 - mem[64]
                        mem[64] = _691 + _350 + _352 + _484 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _877
                        t = _100
                        continue 
                    mem[_350 + _352 + _484 + _691 + 32] = 0
                    _893 = mem[64]
                    mem[mem[64]] = _691 + _350 + _352 + _484 - mem[64]
                    mem[64] = _691 + _350 + _352 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _893
                    t = _100
                    continue 
                mem[_350 + _352 + _484 + 32] = 0
                _699 = mem[_202]
                s = 0
                while s < _699:
                    mem[s + _350 + _352 + _484 + 32] = mem[s + _202 + 32]
                    s = s + 32
                    continue 
                if ceil32(_699) <= _699:
                    _878 = mem[64]
                    mem[mem[64]] = _699 + _350 + _352 + _484 - mem[64]
                    mem[64] = _699 + _350 + _352 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _878
                    t = _100
                    continue 
                mem[_350 + _352 + _484 + _699 + 32] = 0
                _894 = mem[64]
                mem[mem[64]] = _699 + _350 + _352 + _484 - mem[64]
                mem[64] = _699 + _350 + _352 + _484 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _894
                t = _100
                continue 
            mem[_350 + _352 + 32] = 0
            _488 = mem[_59]
            s = 0
            while s < _488:
                mem[s + _350 + _352 + 32] = mem[s + _59 + 32]
                s = s + 32
                continue 
            if ceil32(_488) <= _488:
                _692 = mem[_202]
                s = 0
                while s < _692:
                    mem[s + _350 + _352 + _488 + 32] = mem[s + _202 + 32]
                    s = s + 32
                    continue 
                if ceil32(_692) <= _692:
                    _879 = mem[64]
                    mem[mem[64]] = _692 + _350 + _352 + _488 - mem[64]
                    mem[64] = _692 + _350 + _352 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _879
                    t = _100
                    continue 
                mem[_350 + _352 + _488 + _692 + 32] = 0
                _895 = mem[64]
                mem[mem[64]] = _692 + _350 + _352 + _488 - mem[64]
                mem[64] = _692 + _350 + _352 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _895
                t = _100
                continue 
            mem[_350 + _352 + _488 + 32] = 0
            _700 = mem[_202]
            s = 0
            while s < _700:
                mem[s + _350 + _352 + _488 + 32] = mem[s + _202 + 32]
                s = s + 32
                continue 
            if ceil32(_700) <= _700:
                _880 = mem[64]
                mem[mem[64]] = _700 + _350 + _352 + _488 - mem[64]
                mem[64] = _700 + _350 + _352 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _880
                t = _100
                continue 
            mem[_350 + _352 + _488 + _700 + 32] = 0
            _896 = mem[64]
            mem[mem[64]] = _700 + _350 + _352 + _488 - mem[64]
            mem[64] = _700 + _350 + _352 + _488 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _896
            t = _100
            continue 
        mem[mem[64]] = 32
        _102 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_102)] = mem[s + 32 len ceil32(_102)]
        if ceil32(_102) > _102:
            mem[mem[64] + _102 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_102) + 32]
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
    _98 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _56
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_98]:
                revert with 0, 50
            mem[s + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        _200 = mem[64]
        mem[64] = mem[64] + 64
        mem[_200] = 1
        mem[_200 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        t = _98
        u = _51
        while idx < _50:
            if idx >= mem[96]:
                revert with 0, 50
            _344 = mem[(32 * idx) + 128]
            _345 = mem[mem[(32 * idx) + 128] + 64]
            if not mem[mem[(32 * idx) + 128] + 64]:
                _356 = mem[64]
                mem[64] = mem[64] + 64
                mem[_356] = 1
                mem[_356 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _361 = mem[64]
                _363 = mem[t]
                u = 0
                while u < _363:
                    mem[u + _361 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_363) <= _363:
                    _481 = mem[_200]
                    t = 0
                    while t < _481:
                        mem[t + _361 + _363 + 32] = mem[t + _200 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_481) <= _481:
                        _683 = mem[_356]
                        s = 0
                        while s < _683:
                            mem[s + _361 + _363 + _481 + 32] = mem[s + _356 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_683) <= _683:
                            _863 = mem[64]
                            mem[mem[64]] = _683 + _361 + _363 + _481 - mem[64]
                            mem[64] = _683 + _361 + _363 + _481 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _863
                            u = _344
                            continue 
                        mem[_361 + _363 + _481 + _683 + 32] = 0
                        _881 = mem[64]
                        mem[mem[64]] = _683 + _361 + _363 + _481 - mem[64]
                        mem[64] = _683 + _361 + _363 + _481 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _881
                        u = _344
                        continue 
                    mem[_361 + _363 + _481 + 32] = 0
                    _693 = mem[_356]
                    s = 0
                    while s < _693:
                        mem[s + _361 + _363 + _481 + 32] = mem[s + _356 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _864 = mem[64]
                        mem[mem[64]] = _693 + _361 + _363 + _481 - mem[64]
                        mem[64] = _693 + _361 + _363 + _481 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _864
                        u = _344
                        continue 
                    mem[_361 + _363 + _481 + _693 + 32] = 0
                    _882 = mem[64]
                    mem[mem[64]] = _693 + _361 + _363 + _481 - mem[64]
                    mem[64] = _693 + _361 + _363 + _481 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _882
                    u = _344
                    continue 
                mem[_361 + _363 + 32] = 0
                _485 = mem[_200]
                s = 0
                while s < _485:
                    mem[s + _361 + _363 + 32] = mem[s + _200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_485) <= _485:
                    _684 = mem[_356]
                    s = 0
                    while s < _684:
                        mem[s + _361 + _363 + _485 + 32] = mem[s + _356 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_684) <= _684:
                        _865 = mem[64]
                        mem[mem[64]] = _684 + _361 + _363 + _485 - mem[64]
                        mem[64] = _684 + _361 + _363 + _485 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _865
                        u = _344
                        continue 
                    mem[_361 + _363 + _485 + _684 + 32] = 0
                    _883 = mem[64]
                    mem[mem[64]] = _684 + _361 + _363 + _485 - mem[64]
                    mem[64] = _684 + _361 + _363 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _883
                    u = _344
                    continue 
                mem[_361 + _363 + _485 + 32] = 0
                _694 = mem[_356]
                s = 0
                while s < _694:
                    mem[s + _361 + _363 + _485 + 32] = mem[s + _356 + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _866 = mem[64]
                    mem[mem[64]] = _694 + _361 + _363 + _485 - mem[64]
                    mem[64] = _694 + _361 + _363 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _866
                    u = _344
                    continue 
                mem[_361 + _363 + _485 + _694 + 32] = 0
                _884 = mem[64]
                mem[mem[64]] = _694 + _361 + _363 + _485 - mem[64]
                mem[64] = _694 + _361 + _363 + _485 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _884
                u = _344
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
            _479 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                s = _345
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_479]:
                        revert with 0, 50
                    mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _677 = mem[64]
                _681 = mem[t]
                s = 0
                while s < _681:
                    mem[s + _677 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_681) <= _681:
                    _857 = mem[_200]
                    s = 0
                    while s < _857:
                        mem[s + _677 + _681 + 32] = mem[s + _200 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_857) <= _857:
                        _977 = mem[_479]
                        s = 0
                        while s < _977:
                            mem[s + _677 + _681 + _857 + 32] = mem[s + _479 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_977) <= _977:
                            _1057 = mem[64]
                            mem[mem[64]] = _977 + _677 + _681 + _857 - mem[64]
                            mem[64] = _977 + _677 + _681 + _857 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1057
                            u = _344
                            continue 
                        mem[_677 + _681 + _857 + _977 + 32] = 0
                        _1073 = mem[64]
                        mem[mem[64]] = _977 + _677 + _681 + _857 - mem[64]
                        mem[64] = _977 + _677 + _681 + _857 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1073
                        u = _344
                        continue 
                    mem[_677 + _681 + _857 + 32] = 0
                    _985 = mem[_479]
                    s = 0
                    while s < _985:
                        mem[s + _677 + _681 + _857 + 32] = mem[s + _479 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_985) <= _985:
                        _1058 = mem[64]
                        mem[mem[64]] = _985 + _677 + _681 + _857 - mem[64]
                        mem[64] = _985 + _677 + _681 + _857 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1058
                        u = _344
                        continue 
                    mem[_677 + _681 + _857 + _985 + 32] = 0
                    _1074 = mem[64]
                    mem[mem[64]] = _985 + _677 + _681 + _857 - mem[64]
                    mem[64] = _985 + _677 + _681 + _857 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1074
                    u = _344
                    continue 
                mem[_677 + _681 + 32] = 0
                _861 = mem[_200]
                s = 0
                while s < _861:
                    mem[s + _677 + _681 + 32] = mem[s + _200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_861) <= _861:
                    _978 = mem[_479]
                    s = 0
                    while s < _978:
                        mem[s + _677 + _681 + _861 + 32] = mem[s + _479 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_978) <= _978:
                        _1059 = mem[64]
                        mem[mem[64]] = _978 + _677 + _681 + _861 - mem[64]
                        mem[64] = _978 + _677 + _681 + _861 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1059
                        u = _344
                        continue 
                    mem[_677 + _681 + _861 + _978 + 32] = 0
                    _1075 = mem[64]
                    mem[mem[64]] = _978 + _677 + _681 + _861 - mem[64]
                    mem[64] = _978 + _677 + _681 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1075
                    u = _344
                    continue 
                mem[_677 + _681 + _861 + 32] = 0
                _986 = mem[_479]
                s = 0
                while s < _986:
                    mem[s + _677 + _681 + _861 + 32] = mem[s + _479 + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1060 = mem[64]
                    mem[mem[64]] = _986 + _677 + _681 + _861 - mem[64]
                    mem[64] = _986 + _677 + _681 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1060
                    u = _344
                    continue 
                mem[_677 + _681 + _861 + _986 + 32] = 0
                _1076 = mem[64]
                mem[mem[64]] = _986 + _677 + _681 + _861 - mem[64]
                mem[64] = _986 + _677 + _681 + _861 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1076
                u = _344
                continue 
            mem[_479 + 32 len u] = call.data[calldata.size len u]
            v = u
            s = _345
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_479]:
                    revert with 0, 50
                mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _678 = mem[64]
            _682 = mem[t]
            s = 0
            while s < _682:
                mem[s + _678 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_682) <= _682:
                _858 = mem[_200]
                s = 0
                while s < _858:
                    mem[s + _678 + _682 + 32] = mem[s + _200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_858) <= _858:
                    _979 = mem[_479]
                    s = 0
                    while s < _979:
                        mem[s + _678 + _682 + _858 + 32] = mem[s + _479 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_979) <= _979:
                        _1061 = mem[64]
                        mem[mem[64]] = _979 + _678 + _682 + _858 - mem[64]
                        mem[64] = _979 + _678 + _682 + _858 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1061
                        u = _344
                        continue 
                    mem[_678 + _682 + _858 + _979 + 32] = 0
                    _1077 = mem[64]
                    mem[mem[64]] = _979 + _678 + _682 + _858 - mem[64]
                    mem[64] = _979 + _678 + _682 + _858 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1077
                    u = _344
                    continue 
                mem[_678 + _682 + _858 + 32] = 0
                _987 = mem[_479]
                s = 0
                while s < _987:
                    mem[s + _678 + _682 + _858 + 32] = mem[s + _479 + 32]
                    s = s + 32
                    continue 
                if ceil32(_987) <= _987:
                    _1062 = mem[64]
                    mem[mem[64]] = _987 + _678 + _682 + _858 - mem[64]
                    mem[64] = _987 + _678 + _682 + _858 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1062
                    u = _344
                    continue 
                mem[_678 + _682 + _858 + _987 + 32] = 0
                _1078 = mem[64]
                mem[mem[64]] = _987 + _678 + _682 + _858 - mem[64]
                mem[64] = _987 + _678 + _682 + _858 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1078
                u = _344
                continue 
            mem[_678 + _682 + 32] = 0
            _862 = mem[_200]
            s = 0
            while s < _862:
                mem[s + _678 + _682 + 32] = mem[s + _200 + 32]
                s = s + 32
                continue 
            if ceil32(_862) <= _862:
                _980 = mem[_479]
                s = 0
                while s < _980:
                    mem[s + _678 + _682 + _862 + 32] = mem[s + _479 + 32]
                    s = s + 32
                    continue 
                if ceil32(_980) <= _980:
                    _1063 = mem[64]
                    mem[mem[64]] = _980 + _678 + _682 + _862 - mem[64]
                    mem[64] = _980 + _678 + _682 + _862 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1063
                    u = _344
                    continue 
                mem[_678 + _682 + _862 + _980 + 32] = 0
                _1079 = mem[64]
                mem[mem[64]] = _980 + _678 + _682 + _862 - mem[64]
                mem[64] = _980 + _678 + _682 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1079
                u = _344
                continue 
            mem[_678 + _682 + _862 + 32] = 0
            _988 = mem[_479]
            s = 0
            while s < _988:
                mem[s + _678 + _682 + _862 + 32] = mem[s + _479 + 32]
                s = s + 32
                continue 
            if ceil32(_988) <= _988:
                _1064 = mem[64]
                mem[mem[64]] = _988 + _678 + _682 + _862 - mem[64]
                mem[64] = _988 + _678 + _682 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1064
                u = _344
                continue 
            mem[_678 + _682 + _862 + _988 + 32] = 0
            _1080 = mem[64]
            mem[mem[64]] = _988 + _678 + _682 + _862 - mem[64]
            mem[64] = _988 + _678 + _682 + _862 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1080
            u = _344
            continue 
        mem[mem[64]] = 32
        _355 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_355)] = mem[t + 32 len ceil32(_355)]
        if ceil32(_355) > _355:
            mem[mem[64] + _355 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_355) + 32]
    mem[_98 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _56
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_98]:
            revert with 0, 50
        mem[s + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    _201 = mem[64]
    mem[64] = mem[64] + 64
    mem[_201] = 1
    mem[_201 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    t = _98
    u = _51
    while idx < _50:
        if idx >= mem[96]:
            revert with 0, 50
        _347 = mem[(32 * idx) + 128]
        _348 = mem[mem[(32 * idx) + 128] + 64]
        if not mem[mem[(32 * idx) + 128] + 64]:
            _358 = mem[64]
            mem[64] = mem[64] + 64
            mem[_358] = 1
            mem[_358 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _362 = mem[64]
            _364 = mem[t]
            u = 0
            while u < _364:
                mem[u + _362 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_364) <= _364:
                _482 = mem[_201]
                t = 0
                while t < _482:
                    mem[t + _362 + _364 + 32] = mem[t + _201 + 32]
                    t = t + 32
                    continue 
                if ceil32(_482) <= _482:
                    _687 = mem[_358]
                    s = 0
                    while s < _687:
                        mem[s + _362 + _364 + _482 + 32] = mem[s + _358 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_687) <= _687:
                        _869 = mem[64]
                        mem[mem[64]] = _687 + _362 + _364 + _482 - mem[64]
                        mem[64] = _687 + _362 + _364 + _482 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _869
                        u = _347
                        continue 
                    mem[_362 + _364 + _482 + _687 + 32] = 0
                    _885 = mem[64]
                    mem[mem[64]] = _687 + _362 + _364 + _482 - mem[64]
                    mem[64] = _687 + _362 + _364 + _482 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _885
                    u = _347
                    continue 
                mem[_362 + _364 + _482 + 32] = 0
                _695 = mem[_358]
                s = 0
                while s < _695:
                    mem[s + _362 + _364 + _482 + 32] = mem[s + _358 + 32]
                    s = s + 32
                    continue 
                if ceil32(_695) <= _695:
                    _870 = mem[64]
                    mem[mem[64]] = _695 + _362 + _364 + _482 - mem[64]
                    mem[64] = _695 + _362 + _364 + _482 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _870
                    u = _347
                    continue 
                mem[_362 + _364 + _482 + _695 + 32] = 0
                _886 = mem[64]
                mem[mem[64]] = _695 + _362 + _364 + _482 - mem[64]
                mem[64] = _695 + _362 + _364 + _482 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _886
                u = _347
                continue 
            mem[_362 + _364 + 32] = 0
            _486 = mem[_201]
            s = 0
            while s < _486:
                mem[s + _362 + _364 + 32] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_486) <= _486:
                _688 = mem[_358]
                s = 0
                while s < _688:
                    mem[s + _362 + _364 + _486 + 32] = mem[s + _358 + 32]
                    s = s + 32
                    continue 
                if ceil32(_688) <= _688:
                    _871 = mem[64]
                    mem[mem[64]] = _688 + _362 + _364 + _486 - mem[64]
                    mem[64] = _688 + _362 + _364 + _486 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _871
                    u = _347
                    continue 
                mem[_362 + _364 + _486 + _688 + 32] = 0
                _887 = mem[64]
                mem[mem[64]] = _688 + _362 + _364 + _486 - mem[64]
                mem[64] = _688 + _362 + _364 + _486 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _887
                u = _347
                continue 
            mem[_362 + _364 + _486 + 32] = 0
            _696 = mem[_358]
            s = 0
            while s < _696:
                mem[s + _362 + _364 + _486 + 32] = mem[s + _358 + 32]
                s = s + 32
                continue 
            if ceil32(_696) <= _696:
                _872 = mem[64]
                mem[mem[64]] = _696 + _362 + _364 + _486 - mem[64]
                mem[64] = _696 + _362 + _364 + _486 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _872
                u = _347
                continue 
            mem[_362 + _364 + _486 + _696 + 32] = 0
            _888 = mem[64]
            mem[mem[64]] = _696 + _362 + _364 + _486 - mem[64]
            mem[64] = _696 + _362 + _364 + _486 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _888
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
        _480 = mem[64]
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
                if v - 1 >= mem[_480]:
                    revert with 0, 50
                mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _679 = mem[64]
            _685 = mem[t]
            s = 0
            while s < _685:
                mem[s + _679 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_685) <= _685:
                _859 = mem[_201]
                s = 0
                while s < _859:
                    mem[s + _679 + _685 + 32] = mem[s + _201 + 32]
                    s = s + 32
                    continue 
                if ceil32(_859) <= _859:
                    _981 = mem[_480]
                    s = 0
                    while s < _981:
                        mem[s + _679 + _685 + _859 + 32] = mem[s + _480 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_981) <= _981:
                        _1065 = mem[64]
                        mem[mem[64]] = _981 + _679 + _685 + _859 - mem[64]
                        mem[64] = _981 + _679 + _685 + _859 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1065
                        u = _347
                        continue 
                    mem[_679 + _685 + _859 + _981 + 32] = 0
                    _1081 = mem[64]
                    mem[mem[64]] = _981 + _679 + _685 + _859 - mem[64]
                    mem[64] = _981 + _679 + _685 + _859 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1081
                    u = _347
                    continue 
                mem[_679 + _685 + _859 + 32] = 0
                _989 = mem[_480]
                s = 0
                while s < _989:
                    mem[s + _679 + _685 + _859 + 32] = mem[s + _480 + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1066 = mem[64]
                    mem[mem[64]] = _989 + _679 + _685 + _859 - mem[64]
                    mem[64] = _989 + _679 + _685 + _859 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1066
                    u = _347
                    continue 
                mem[_679 + _685 + _859 + _989 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _989 + _679 + _685 + _859 - mem[64]
                mem[64] = _989 + _679 + _685 + _859 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1082
                u = _347
                continue 
            mem[_679 + _685 + 32] = 0
            _867 = mem[_201]
            s = 0
            while s < _867:
                mem[s + _679 + _685 + 32] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_867) <= _867:
                _982 = mem[_480]
                s = 0
                while s < _982:
                    mem[s + _679 + _685 + _867 + 32] = mem[s + _480 + 32]
                    s = s + 32
                    continue 
                if ceil32(_982) <= _982:
                    _1067 = mem[64]
                    mem[mem[64]] = _982 + _679 + _685 + _867 - mem[64]
                    mem[64] = _982 + _679 + _685 + _867 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1067
                    u = _347
                    continue 
                mem[_679 + _685 + _867 + _982 + 32] = 0
                _1083 = mem[64]
                mem[mem[64]] = _982 + _679 + _685 + _867 - mem[64]
                mem[64] = _982 + _679 + _685 + _867 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1083
                u = _347
                continue 
            mem[_679 + _685 + _867 + 32] = 0
            _990 = mem[_480]
            s = 0
            while s < _990:
                mem[s + _679 + _685 + _867 + 32] = mem[s + _480 + 32]
                s = s + 32
                continue 
            if ceil32(_990) <= _990:
                _1068 = mem[64]
                mem[mem[64]] = _990 + _679 + _685 + _867 - mem[64]
                mem[64] = _990 + _679 + _685 + _867 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1068
                u = _347
                continue 
            mem[_679 + _685 + _867 + _990 + 32] = 0
            _1084 = mem[64]
            mem[mem[64]] = _990 + _679 + _685 + _867 - mem[64]
            mem[64] = _990 + _679 + _685 + _867 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1084
            u = _347
            continue 
        mem[_480 + 32 len u] = call.data[calldata.size len u]
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
            if v - 1 >= mem[_480]:
                revert with 0, 50
            mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _680 = mem[64]
        _686 = mem[t]
        s = 0
        while s < _686:
            mem[s + _680 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_686) <= _686:
            _860 = mem[_201]
            s = 0
            while s < _860:
                mem[s + _680 + _686 + 32] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_860) <= _860:
                _983 = mem[_480]
                s = 0
                while s < _983:
                    mem[s + _680 + _686 + _860 + 32] = mem[s + _480 + 32]
                    s = s + 32
                    continue 
                if ceil32(_983) <= _983:
                    _1069 = mem[64]
                    mem[mem[64]] = _983 + _680 + _686 + _860 - mem[64]
                    mem[64] = _983 + _680 + _686 + _860 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1069
                    u = _347
                    continue 
                mem[_680 + _686 + _860 + _983 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _983 + _680 + _686 + _860 - mem[64]
                mem[64] = _983 + _680 + _686 + _860 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1085
                u = _347
                continue 
            mem[_680 + _686 + _860 + 32] = 0
            _991 = mem[_480]
            s = 0
            while s < _991:
                mem[s + _680 + _686 + _860 + 32] = mem[s + _480 + 32]
                s = s + 32
                continue 
            if ceil32(_991) <= _991:
                _1070 = mem[64]
                mem[mem[64]] = _991 + _680 + _686 + _860 - mem[64]
                mem[64] = _991 + _680 + _686 + _860 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1070
                u = _347
                continue 
            mem[_680 + _686 + _860 + _991 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _991 + _680 + _686 + _860 - mem[64]
            mem[64] = _991 + _680 + _686 + _860 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1086
            u = _347
            continue 
        mem[_680 + _686 + 32] = 0
        _868 = mem[_201]
        s = 0
        while s < _868:
            mem[s + _680 + _686 + 32] = mem[s + _201 + 32]
            s = s + 32
            continue 
        if ceil32(_868) <= _868:
            _984 = mem[_480]
            s = 0
            while s < _984:
                mem[s + _680 + _686 + _868 + 32] = mem[s + _480 + 32]
                s = s + 32
                continue 
            if ceil32(_984) <= _984:
                _1071 = mem[64]
                mem[mem[64]] = _984 + _680 + _686 + _868 - mem[64]
                mem[64] = _984 + _680 + _686 + _868 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1071
                u = _347
                continue 
            mem[_680 + _686 + _868 + _984 + 32] = 0
            _1087 = mem[64]
            mem[mem[64]] = _984 + _680 + _686 + _868 - mem[64]
            mem[64] = _984 + _680 + _686 + _868 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1087
            u = _347
            continue 
        mem[_680 + _686 + _868 + 32] = 0
        _992 = mem[_480]
        s = 0
        while s < _992:
            mem[s + _680 + _686 + _868 + 32] = mem[s + _480 + 32]
            s = s + 32
            continue 
        if ceil32(_992) <= _992:
            _1072 = mem[64]
            mem[mem[64]] = _992 + _680 + _686 + _868 - mem[64]
            mem[64] = _992 + _680 + _686 + _868 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1072
            u = _347
            continue 
        mem[_680 + _686 + _868 + _992 + 32] = 0
        _1088 = mem[64]
        mem[mem[64]] = _992 + _680 + _686 + _868 - mem[64]
        mem[64] = _992 + _680 + _686 + _868 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = _1088
        u = _347
        continue 
    mem[mem[64]] = 32
    _357 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_357)] = mem[t + 32 len ceil32(_357)]
    if ceil32(_357) > _357:
        mem[mem[64] + _357 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_357) + 32]
}

function _getRewardAmountOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 4
    idx = 0
    s = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        _521 = mem[64]
        mem[64] = mem[64] + 128
        if stor4[address(arg1)][idx].field_0:
            if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _522 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_522] = uint255(stor4[address(arg1)][idx].field_0) * 0.5
            if stor4[address(arg1)][idx].field_0:
                if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor4[address(arg1)][idx].field_0):
                    mem[_521] = _522
                    mem[_521 + 32] = stor4[address(arg1)][idx].field_256
                    mem[_521 + 64] = stor4[address(arg1)][idx].field_512
                    mem[_521 + 96] = stor4[address(arg1)][idx].field_768
                    if stor4[address(arg1)][idx].field_512:
                        _530 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_530] = 30
                        mem[_530 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_512 > block.timestamp:
                            _538 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _538 + 68] = mem[idx + _530 + 32]
                                idx = idx + 32
                                continue 
                            mem[_538 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _538 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_512:
                            revert with 0, 17
                        _577 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_577] = 26
                        mem[_577 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _598 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _598 + 68] = mem[idx + _577 + 32]
                                idx = idx + 32
                                continue 
                            mem[_598 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _598 + -mem[64] + 100
                        if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                            revert with 0, 17
                        if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if stor4[address(arg1)][idx].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + stor4[address(arg1)][idx].field_768
                            continue 
                        if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                            revert with 0, 17
                        if not rewardPerNode:
                            revert with 0, 18
                        if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                        continue 
                    _570 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_570] = 30
                    mem[_570 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[address(arg1)][idx].field_256 > block.timestamp:
                        _587 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _587 + 68] = mem[idx + _570 + 32]
                            idx = idx + 32
                            continue 
                        mem[_587 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _587 + -mem[64] + 100
                    if block.timestamp < stor4[address(arg1)][idx].field_256:
                        revert with 0, 17
                    _670 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_670] = 26
                    mem[_670 + 32] = 'SafeMath: division by zero'
                    if not claimTime:
                        _699 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _699 + 68] = mem[idx + _670 + 32]
                            idx = idx + 32
                            continue 
                        mem[_699 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _699 + -mem[64] + 100
                else:
                    if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                        mem[_522 + 32] = 256 * stor4[address(arg1)][idx].field_8
                        mem[_521] = _522
                        mem[_521 + 32] = stor4[address(arg1)][idx].field_256
                        mem[_521 + 64] = stor4[address(arg1)][idx].field_512
                        mem[_521 + 96] = stor4[address(arg1)][idx].field_768
                        if stor4[address(arg1)][idx].field_512:
                            _540 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_540] = 30
                            mem[_540 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                _551 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _551 + 68] = mem[idx + _540 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_551 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _551 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _599 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_599] = 26
                            mem[_599 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _626 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _626 + 68] = mem[idx + _599 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_626 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _626 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor4[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor4[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                            continue 
                        _590 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_590] = 30
                        mem[_590 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_256 > block.timestamp:
                            _614 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _614 + 68] = mem[idx + _590 + 32]
                                idx = idx + 32
                                continue 
                            mem[_614 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _614 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _701 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_701] = 26
                        mem[_701 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _728 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _728 + 68] = mem[idx + _701 + 32]
                                idx = idx + 32
                                continue 
                            mem[_728 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _728 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_522 + 32] = stor4[address(arg1)][idx].field_0
                        t = _522 + 32
                        u = sha3(mem[0])
                        while _522 + (uint255(stor4[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_521] = _522
                        mem[_521 + 32] = stor4[address(arg1)][idx].field_256
                        mem[_521 + 64] = stor4[address(arg1)][idx].field_512
                        mem[_521 + 96] = stor4[address(arg1)][idx].field_768
                        if stor4[address(arg1)][idx].field_512:
                            _1072 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1072] = 30
                            mem[_1072 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                _1136 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1136 + 68] = mem[idx + _1072 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1136 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1136 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1156 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1156] = 26
                            mem[_1156 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1164 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1164 + 68] = mem[idx + _1156 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1164 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1164 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor4[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor4[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                            continue 
                        _1149 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1149] = 30
                        mem[_1149 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_256 > block.timestamp:
                            _1160 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1160 + 68] = mem[idx + _1149 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1160 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1160 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1189 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1189] = 26
                        mem[_1189 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1196 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1196 + 68] = mem[idx + _1189 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1196 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1196 + -mem[64] + 100
            else:
                if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1:
                    mem[_521] = _522
                    mem[_521 + 32] = stor4[address(arg1)][idx].field_256
                    mem[_521 + 64] = stor4[address(arg1)][idx].field_512
                    mem[_521 + 96] = stor4[address(arg1)][idx].field_768
                    if stor4[address(arg1)][idx].field_512:
                        _534 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_534] = 30
                        mem[_534 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_512 > block.timestamp:
                            _543 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _543 + 68] = mem[idx + _534 + 32]
                                idx = idx + 32
                                continue 
                            mem[_543 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _543 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_512:
                            revert with 0, 17
                        _591 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_591] = 26
                        mem[_591 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _615 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _615 + 68] = mem[idx + _591 + 32]
                                idx = idx + 32
                                continue 
                            mem[_615 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _615 + -mem[64] + 100
                        if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                            revert with 0, 17
                        if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if stor4[address(arg1)][idx].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + stor4[address(arg1)][idx].field_768
                            continue 
                        if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                            revert with 0, 17
                        if not rewardPerNode:
                            revert with 0, 18
                        if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                        continue 
                    _580 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_580] = 30
                    mem[_580 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[address(arg1)][idx].field_256 > block.timestamp:
                        _600 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _600 + 68] = mem[idx + _580 + 32]
                            idx = idx + 32
                            continue 
                        mem[_600 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _600 + -mem[64] + 100
                    if block.timestamp < stor4[address(arg1)][idx].field_256:
                        revert with 0, 17
                    _688 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_688] = 26
                    mem[_688 + 32] = 'SafeMath: division by zero'
                    if not claimTime:
                        _714 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _714 + 68] = mem[idx + _688 + 32]
                            idx = idx + 32
                            continue 
                        mem[_714 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _714 + -mem[64] + 100
                else:
                    if 31 >= stor4[address(arg1)][idx].field_1:
                        mem[_522 + 32] = 256 * stor4[address(arg1)][idx].field_8
                        mem[_521] = _522
                        mem[_521 + 32] = stor4[address(arg1)][idx].field_256
                        mem[_521 + 64] = stor4[address(arg1)][idx].field_512
                        mem[_521 + 96] = stor4[address(arg1)][idx].field_768
                        if stor4[address(arg1)][idx].field_512:
                            _545 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_545] = 30
                            mem[_545 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                _558 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _558 + 68] = mem[idx + _545 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_558 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _558 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _616 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_616] = 26
                            mem[_616 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _645 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _645 + 68] = mem[idx + _616 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_645 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _645 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor4[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor4[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                            continue 
                        _603 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_603] = 30
                        mem[_603 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_256 > block.timestamp:
                            _631 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _631 + 68] = mem[idx + _603 + 32]
                                idx = idx + 32
                                continue 
                            mem[_631 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _631 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _716 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_716] = 26
                        mem[_716 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _744 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _744 + 68] = mem[idx + _716 + 32]
                                idx = idx + 32
                                continue 
                            mem[_744 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _744 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_522 + 32] = stor4[address(arg1)][idx].field_0
                        t = _522 + 32
                        u = sha3(mem[0])
                        while _522 + stor4[address(arg1)][idx].field_1 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_521] = _522
                        mem[_521 + 32] = stor4[address(arg1)][idx].field_256
                        mem[_521 + 64] = stor4[address(arg1)][idx].field_512
                        mem[_521 + 96] = stor4[address(arg1)][idx].field_768
                        if stor4[address(arg1)][idx].field_512:
                            _1081 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1081] = 30
                            mem[_1081 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                _1137 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1137 + 68] = mem[idx + _1081 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1137 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1137 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1157 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1157] = 26
                            mem[_1157 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1165 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1165 + 68] = mem[idx + _1157 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1165 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1165 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor4[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor4[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                            continue 
                        _1151 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1151] = 30
                        mem[_1151 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_256 > block.timestamp:
                            _1161 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1161 + 68] = mem[idx + _1151 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1161 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1161 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1191 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1191] = 26
                        mem[_1191 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1197 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1197 + 68] = mem[idx + _1191 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1197 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1197 + -mem[64] + 100
        else:
            if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            _523 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
            mem[_523] = stor4[address(arg1)][idx].field_1
            if stor4[address(arg1)][idx].field_0:
                if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor4[address(arg1)][idx].field_0):
                    mem[_521] = _523
                    mem[_521 + 32] = stor4[address(arg1)][idx].field_256
                    mem[_521 + 64] = stor4[address(arg1)][idx].field_512
                    mem[_521 + 96] = stor4[address(arg1)][idx].field_768
                    if stor4[address(arg1)][idx].field_512:
                        _536 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_536] = 30
                        mem[_536 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_512 > block.timestamp:
                            _546 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _546 + 68] = mem[idx + _536 + 32]
                                idx = idx + 32
                                continue 
                            mem[_546 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _546 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_512:
                            revert with 0, 17
                        _593 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_593] = 26
                        mem[_593 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _617 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _617 + 68] = mem[idx + _593 + 32]
                                idx = idx + 32
                                continue 
                            mem[_617 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _617 + -mem[64] + 100
                        if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                            revert with 0, 17
                        if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if stor4[address(arg1)][idx].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + stor4[address(arg1)][idx].field_768
                            continue 
                        if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                            revert with 0, 17
                        if not rewardPerNode:
                            revert with 0, 18
                        if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                        continue 
                    _583 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_583] = 30
                    mem[_583 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[address(arg1)][idx].field_256 > block.timestamp:
                        _604 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _604 + 68] = mem[idx + _583 + 32]
                            idx = idx + 32
                            continue 
                        mem[_604 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _604 + -mem[64] + 100
                    if block.timestamp < stor4[address(arg1)][idx].field_256:
                        revert with 0, 17
                    _692 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_692] = 26
                    mem[_692 + 32] = 'SafeMath: division by zero'
                    if not claimTime:
                        _717 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _717 + 68] = mem[idx + _692 + 32]
                            idx = idx + 32
                            continue 
                        mem[_717 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _717 + -mem[64] + 100
                else:
                    if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                        mem[_523 + 32] = 256 * stor4[address(arg1)][idx].field_8
                        mem[_521] = _523
                        mem[_521 + 32] = stor4[address(arg1)][idx].field_256
                        mem[_521 + 64] = stor4[address(arg1)][idx].field_512
                        mem[_521 + 96] = stor4[address(arg1)][idx].field_768
                        if stor4[address(arg1)][idx].field_512:
                            _548 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_548] = 30
                            mem[_548 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                _561 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _561 + 68] = mem[idx + _548 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_561 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _561 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _618 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_618] = 26
                            mem[_618 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _649 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _649 + 68] = mem[idx + _618 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_649 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _649 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor4[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor4[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                            continue 
                        _607 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_607] = 30
                        mem[_607 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_256 > block.timestamp:
                            _636 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _636 + 68] = mem[idx + _607 + 32]
                                idx = idx + 32
                                continue 
                            mem[_636 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _636 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _719 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_719] = 26
                        mem[_719 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _750 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _750 + 68] = mem[idx + _719 + 32]
                                idx = idx + 32
                                continue 
                            mem[_750 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _750 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_523 + 32] = stor4[address(arg1)][idx].field_0
                        t = _523 + 32
                        u = sha3(mem[0])
                        while _523 + (uint255(stor4[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_521] = _523
                        mem[_521 + 32] = stor4[address(arg1)][idx].field_256
                        mem[_521 + 64] = stor4[address(arg1)][idx].field_512
                        mem[_521 + 96] = stor4[address(arg1)][idx].field_768
                        if stor4[address(arg1)][idx].field_512:
                            _1090 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1090] = 30
                            mem[_1090 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                _1138 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1138 + 68] = mem[idx + _1090 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1138 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1138 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1158 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1158] = 26
                            mem[_1158 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1166 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1166 + 68] = mem[idx + _1158 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1166 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1166 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor4[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor4[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                            continue 
                        _1153 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1153] = 30
                        mem[_1153 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_256 > block.timestamp:
                            _1162 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1162 + 68] = mem[idx + _1153 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1162 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1162 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1193 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1193] = 26
                        mem[_1193 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1198 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1198 + 68] = mem[idx + _1193 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1198 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1198 + -mem[64] + 100
            else:
                if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1:
                    mem[_521] = _523
                    mem[_521 + 32] = stor4[address(arg1)][idx].field_256
                    mem[_521 + 64] = stor4[address(arg1)][idx].field_512
                    mem[_521 + 96] = stor4[address(arg1)][idx].field_768
                    if stor4[address(arg1)][idx].field_512:
                        _541 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_541] = 30
                        mem[_541 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_512 > block.timestamp:
                            _552 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _552 + 68] = mem[idx + _541 + 32]
                                idx = idx + 32
                                continue 
                            mem[_552 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _552 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_512:
                            revert with 0, 17
                        _608 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_608] = 26
                        mem[_608 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _637 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _637 + 68] = mem[idx + _608 + 32]
                                idx = idx + 32
                                continue 
                            mem[_637 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _637 + -mem[64] + 100
                        if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                            revert with 0, 17
                        if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if stor4[address(arg1)][idx].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + stor4[address(arg1)][idx].field_768
                            continue 
                        if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                            revert with 0, 17
                        if not rewardPerNode:
                            revert with 0, 18
                        if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                        continue 
                    _596 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_596] = 30
                    mem[_596 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[address(arg1)][idx].field_256 > block.timestamp:
                        _619 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _619 + 68] = mem[idx + _596 + 32]
                            idx = idx + 32
                            continue 
                        mem[_619 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _619 + -mem[64] + 100
                    if block.timestamp < stor4[address(arg1)][idx].field_256:
                        revert with 0, 17
                    _709 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_709] = 26
                    mem[_709 + 32] = 'SafeMath: division by zero'
                    if not claimTime:
                        _733 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _733 + 68] = mem[idx + _709 + 32]
                            idx = idx + 32
                            continue 
                        mem[_733 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _733 + -mem[64] + 100
                else:
                    if 31 >= stor4[address(arg1)][idx].field_1:
                        mem[_523 + 32] = 256 * stor4[address(arg1)][idx].field_8
                        mem[_521] = _523
                        mem[_521 + 32] = stor4[address(arg1)][idx].field_256
                        mem[_521 + 64] = stor4[address(arg1)][idx].field_512
                        mem[_521 + 96] = stor4[address(arg1)][idx].field_768
                        if stor4[address(arg1)][idx].field_512:
                            _554 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_554] = 30
                            mem[_554 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                _568 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _568 + 68] = mem[idx + _554 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_568 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _568 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _638 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_638] = 26
                            mem[_638 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _668 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _668 + 68] = mem[idx + _638 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_668 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _668 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor4[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor4[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                            continue 
                        _622 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_622] = 30
                        mem[_622 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_256 > block.timestamp:
                            _654 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _654 + 68] = mem[idx + _622 + 32]
                                idx = idx + 32
                                continue 
                            mem[_654 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _654 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _735 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_735] = 26
                        mem[_735 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _769 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _769 + 68] = mem[idx + _735 + 32]
                                idx = idx + 32
                                continue 
                            mem[_769 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _769 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_523 + 32] = stor4[address(arg1)][idx].field_0
                        t = _523 + 32
                        u = sha3(mem[0])
                        while _523 + stor4[address(arg1)][idx].field_1 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_521] = _523
                        mem[_521 + 32] = stor4[address(arg1)][idx].field_256
                        mem[_521 + 64] = stor4[address(arg1)][idx].field_512
                        mem[_521 + 96] = stor4[address(arg1)][idx].field_768
                        if stor4[address(arg1)][idx].field_512:
                            _1099 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1099] = 30
                            mem[_1099 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                _1139 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1139 + 68] = mem[idx + _1099 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1139 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1139 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1159 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1159] = 26
                            mem[_1159 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1167 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1167 + 68] = mem[idx + _1159 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1167 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1167 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor4[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor4[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                            continue 
                        _1155 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1155] = 30
                        mem[_1155 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_256 > block.timestamp:
                            _1163 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1163 + 68] = mem[idx + _1155 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1163 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1163 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1195 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1195] = 26
                        mem[_1195 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1199 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1199 + 68] = mem[idx + _1195 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1199 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1199 + -mem[64] + 100
        ('stor', ('name', 'claimTime', 7))
        if 1 > !(block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime):
            revert with 0, 17
        if (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime) + 1 < 1:
            revert with 0, 'SafeMath: addition overflow'
        if not rewardPerNode:
            if 0 > !stor4[address(arg1)][idx].field_768:
                revert with 0, 17
            if stor4[address(arg1)][idx].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if s > !stor4[address(arg1)][idx].field_768:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + stor4[address(arg1)][idx].field_768
            continue 
        if rewardPerNode and (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime) + 1 > -1 / rewardPerNode:
            revert with 0, 17
        if not rewardPerNode:
            revert with 0, 18
        if rewardPerNode + (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime * rewardPerNode) / rewardPerNode != (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime) + 1:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewardPerNode + (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime * rewardPerNode) > !stor4[address(arg1)][idx].field_768:
            revert with 0, 17
        if stor4[address(arg1)][idx].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if s > !(rewardPerNode + (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime * rewardPerNode) + stor4[address(arg1)][idx].field_768):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + rewardPerNode + (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime * rewardPerNode) + stor4[address(arg1)][idx].field_768
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
        idx = 0
        s = 0
        while idx < stor4[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 4)
            _1231 = mem[64]
            mem[64] = mem[64] + 128
            if stor4[address(arg1)][idx].field_0:
                if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                _1237 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_0) * 0.5) + 32
                mem[_1237] = uint255(stor4[address(arg1)][idx].field_0) * 0.5
                if stor4[address(arg1)][idx].field_0:
                    if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor4[address(arg1)][idx].field_0):
                        mem[_1231] = _1237
                        mem[_1231 + 32] = stor4[address(arg1)][idx].field_256
                        mem[_1231 + 64] = stor4[address(arg1)][idx].field_512
                        mem[_1231 + 96] = stor4[address(arg1)][idx].field_768
                        if stor4[address(arg1)][idx].field_512:
                            _1253 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1253] = 30
                            mem[_1253 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                _1269 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1269 + 68] = mem[idx + _1253 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1269 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1269 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1347 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1347] = 26
                            mem[_1347 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1389 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1389 + 68] = mem[idx + _1347 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1389 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1389 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor4[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor4[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx >= stor4[address(arg1)].field_0:
                                revert with 0, 50
                            stor4[address(arg1)][idx].field_512 = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            stor4[address(arg1)][idx].field_768 = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                            continue 
                        _1332 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1332] = 30
                        mem[_1332 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_256 > block.timestamp:
                            _1367 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1367 + 68] = mem[idx + _1332 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1367 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1367 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1532 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1532] = 26
                        mem[_1532 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1591 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1591 + 68] = mem[idx + _1532 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1591 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1591 + -mem[64] + 100
                    else:
                        if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                            mem[_1237 + 32] = 256 * stor4[address(arg1)][idx].field_8
                            mem[_1231] = _1237
                            mem[_1231 + 32] = stor4[address(arg1)][idx].field_256
                            mem[_1231 + 64] = stor4[address(arg1)][idx].field_512
                            mem[_1231 + 96] = stor4[address(arg1)][idx].field_768
                            if stor4[address(arg1)][idx].field_512:
                                _1271 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1271] = 30
                                mem[_1271 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                    _1293 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1293 + 68] = mem[idx + _1271 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1293 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1293 + -mem[64] + 100
                                if block.timestamp < stor4[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _1390 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1390] = 26
                                mem[_1390 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _1442 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1442 + 68] = mem[idx + _1390 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1442 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1442 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor4[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor4[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor4[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    stor4[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor4[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                                continue 
                            _1370 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1370] = 30
                            mem[_1370 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_256 > block.timestamp:
                                _1417 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1417 + 68] = mem[idx + _1370 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1417 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1417 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _1593 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1593] = 26
                            mem[_1593 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1644 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1644 + 68] = mem[idx + _1593 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1644 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1644 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1237 + 32] = stor4[address(arg1)][idx].field_0
                            t = _1237 + 32
                            u = sha3(mem[0])
                            while _1237 + (uint255(stor4[address(arg1)][idx].field_0) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1231] = _1237
                            mem[_1231 + 32] = stor4[address(arg1)][idx].field_256
                            mem[_1231 + 64] = stor4[address(arg1)][idx].field_512
                            mem[_1231 + 96] = stor4[address(arg1)][idx].field_768
                            if stor4[address(arg1)][idx].field_512:
                                _2525 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2525] = 30
                                mem[_2525 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                    _2657 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2657 + 68] = mem[idx + _2525 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2657 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2657 + -mem[64] + 100
                                if block.timestamp < stor4[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _2697 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2697] = 26
                                mem[_2697 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2713 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2713 + 68] = mem[idx + _2697 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2713 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2713 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor4[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor4[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor4[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    stor4[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor4[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                                continue 
                            _2682 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2682] = 30
                            mem[_2682 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_256 > block.timestamp:
                                _2705 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2705 + 68] = mem[idx + _2682 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2705 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2705 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2762 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2762] = 26
                            mem[_2762 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2777 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2777 + 68] = mem[idx + _2762 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2777 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2777 + -mem[64] + 100
                else:
                    if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                        revert with 0, 34
                    if not stor4[address(arg1)][idx].field_1:
                        mem[_1231] = _1237
                        mem[_1231 + 32] = stor4[address(arg1)][idx].field_256
                        mem[_1231 + 64] = stor4[address(arg1)][idx].field_512
                        mem[_1231 + 96] = stor4[address(arg1)][idx].field_768
                        if stor4[address(arg1)][idx].field_512:
                            _1261 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1261] = 30
                            mem[_1261 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                _1279 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1279 + 68] = mem[idx + _1261 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1279 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1279 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1371 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1371] = 26
                            mem[_1371 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1418 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1418 + 68] = mem[idx + _1371 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1418 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1418 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor4[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor4[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx >= stor4[address(arg1)].field_0:
                                revert with 0, 50
                            stor4[address(arg1)][idx].field_512 = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            stor4[address(arg1)][idx].field_768 = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                            continue 
                        _1350 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1350] = 30
                        mem[_1350 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_256 > block.timestamp:
                            _1391 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1391 + 68] = mem[idx + _1350 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1391 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1391 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1565 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1565] = 26
                        mem[_1565 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1619 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1619 + 68] = mem[idx + _1565 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1619 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1619 + -mem[64] + 100
                    else:
                        if 31 >= stor4[address(arg1)][idx].field_1:
                            mem[_1237 + 32] = 256 * stor4[address(arg1)][idx].field_8
                            mem[_1231] = _1237
                            mem[_1231 + 32] = stor4[address(arg1)][idx].field_256
                            mem[_1231 + 64] = stor4[address(arg1)][idx].field_512
                            mem[_1231 + 96] = stor4[address(arg1)][idx].field_768
                            if stor4[address(arg1)][idx].field_512:
                                _1281 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1281] = 30
                                mem[_1281 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                    _1306 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1306 + 68] = mem[idx + _1281 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1306 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1306 + -mem[64] + 100
                                if block.timestamp < stor4[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _1419 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1419] = 26
                                mem[_1419 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _1477 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1477 + 68] = mem[idx + _1419 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1477 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1477 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor4[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor4[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor4[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    stor4[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor4[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                                continue 
                            _1394 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1394] = 30
                            mem[_1394 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_256 > block.timestamp:
                                _1447 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1447 + 68] = mem[idx + _1394 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1447 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1447 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _1621 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1621] = 26
                            mem[_1621 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1673 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1673 + 68] = mem[idx + _1621 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1673 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1673 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1237 + 32] = stor4[address(arg1)][idx].field_0
                            t = _1237 + 32
                            u = sha3(mem[0])
                            while _1237 + stor4[address(arg1)][idx].field_1 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1231] = _1237
                            mem[_1231 + 32] = stor4[address(arg1)][idx].field_256
                            mem[_1231 + 64] = stor4[address(arg1)][idx].field_512
                            mem[_1231 + 96] = stor4[address(arg1)][idx].field_768
                            if stor4[address(arg1)][idx].field_512:
                                _2534 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2534] = 30
                                mem[_2534 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                    _2658 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2658 + 68] = mem[idx + _2534 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2658 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2658 + -mem[64] + 100
                                if block.timestamp < stor4[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _2698 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2698] = 26
                                mem[_2698 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2714 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2714 + 68] = mem[idx + _2698 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2714 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2714 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor4[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor4[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor4[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    stor4[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor4[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                                continue 
                            _2684 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2684] = 30
                            mem[_2684 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_256 > block.timestamp:
                                _2706 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2706 + 68] = mem[idx + _2684 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2706 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2706 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2764 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2764] = 26
                            mem[_2764 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2778 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2778 + 68] = mem[idx + _2764 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2778 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2778 + -mem[64] + 100
            else:
                if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                    revert with 0, 34
                _1239 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
                mem[_1239] = stor4[address(arg1)][idx].field_1
                if stor4[address(arg1)][idx].field_0:
                    if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor4[address(arg1)][idx].field_0):
                        mem[_1231] = _1239
                        mem[_1231 + 32] = stor4[address(arg1)][idx].field_256
                        mem[_1231 + 64] = stor4[address(arg1)][idx].field_512
                        mem[_1231 + 96] = stor4[address(arg1)][idx].field_768
                        if stor4[address(arg1)][idx].field_512:
                            _1263 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1263] = 30
                            mem[_1263 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                _1282 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1282 + 68] = mem[idx + _1263 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1282 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1282 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1373 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1373] = 26
                            mem[_1373 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1420 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1420 + 68] = mem[idx + _1373 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1420 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1420 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor4[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor4[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx >= stor4[address(arg1)].field_0:
                                revert with 0, 50
                            stor4[address(arg1)][idx].field_512 = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            stor4[address(arg1)][idx].field_768 = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                            continue 
                        _1353 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1353] = 30
                        mem[_1353 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_256 > block.timestamp:
                            _1395 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1395 + 68] = mem[idx + _1353 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1395 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1395 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1569 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1569] = 26
                        mem[_1569 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1622 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1622 + 68] = mem[idx + _1569 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1622 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1622 + -mem[64] + 100
                    else:
                        if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                            mem[_1239 + 32] = 256 * stor4[address(arg1)][idx].field_8
                            mem[_1231] = _1239
                            mem[_1231 + 32] = stor4[address(arg1)][idx].field_256
                            mem[_1231 + 64] = stor4[address(arg1)][idx].field_512
                            mem[_1231 + 96] = stor4[address(arg1)][idx].field_768
                            if stor4[address(arg1)][idx].field_512:
                                _1284 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1284] = 30
                                mem[_1284 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                    _1309 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1309 + 68] = mem[idx + _1284 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1309 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1309 + -mem[64] + 100
                                if block.timestamp < stor4[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _1421 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1421] = 26
                                mem[_1421 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _1481 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1481 + 68] = mem[idx + _1421 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1481 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1481 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor4[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor4[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor4[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    stor4[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor4[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                                continue 
                            _1398 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1398] = 30
                            mem[_1398 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_256 > block.timestamp:
                                _1452 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1452 + 68] = mem[idx + _1398 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1452 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1452 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _1624 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1624] = 26
                            mem[_1624 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1679 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1679 + 68] = mem[idx + _1624 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1679 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1679 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1239 + 32] = stor4[address(arg1)][idx].field_0
                            t = _1239 + 32
                            u = sha3(mem[0])
                            while _1239 + (uint255(stor4[address(arg1)][idx].field_0) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1231] = _1239
                            mem[_1231 + 32] = stor4[address(arg1)][idx].field_256
                            mem[_1231 + 64] = stor4[address(arg1)][idx].field_512
                            mem[_1231 + 96] = stor4[address(arg1)][idx].field_768
                            if stor4[address(arg1)][idx].field_512:
                                _2543 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2543] = 30
                                mem[_2543 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                    _2659 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2659 + 68] = mem[idx + _2543 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2659 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2659 + -mem[64] + 100
                                if block.timestamp < stor4[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _2699 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2699] = 26
                                mem[_2699 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2715 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2715 + 68] = mem[idx + _2699 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2715 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2715 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor4[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor4[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor4[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    stor4[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor4[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                                continue 
                            _2686 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2686] = 30
                            mem[_2686 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_256 > block.timestamp:
                                _2707 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2707 + 68] = mem[idx + _2686 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2707 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2707 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2766 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2766] = 26
                            mem[_2766 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2779 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2779 + 68] = mem[idx + _2766 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2779 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2779 + -mem[64] + 100
                else:
                    if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                        revert with 0, 34
                    if not stor4[address(arg1)][idx].field_1:
                        mem[_1231] = _1239
                        mem[_1231 + 32] = stor4[address(arg1)][idx].field_256
                        mem[_1231 + 64] = stor4[address(arg1)][idx].field_512
                        mem[_1231 + 96] = stor4[address(arg1)][idx].field_768
                        if stor4[address(arg1)][idx].field_512:
                            _1272 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1272] = 30
                            mem[_1272 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                _1294 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1294 + 68] = mem[idx + _1272 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1294 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1294 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1399 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1399] = 26
                            mem[_1399 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1453 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1453 + 68] = mem[idx + _1399 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1453 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1453 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor4[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor4[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx >= stor4[address(arg1)].field_0:
                                revert with 0, 50
                            stor4[address(arg1)][idx].field_512 = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            stor4[address(arg1)][idx].field_768 = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                            continue 
                        _1376 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1376] = 30
                        mem[_1376 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_256 > block.timestamp:
                            _1422 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1422 + 68] = mem[idx + _1376 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1422 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1422 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1601 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1601] = 26
                        mem[_1601 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1649 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1649 + 68] = mem[idx + _1601 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1649 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1649 + -mem[64] + 100
                    else:
                        if 31 >= stor4[address(arg1)][idx].field_1:
                            mem[_1239 + 32] = 256 * stor4[address(arg1)][idx].field_8
                            mem[_1231] = _1239
                            mem[_1231 + 32] = stor4[address(arg1)][idx].field_256
                            mem[_1231 + 64] = stor4[address(arg1)][idx].field_512
                            mem[_1231 + 96] = stor4[address(arg1)][idx].field_768
                            if stor4[address(arg1)][idx].field_512:
                                _1296 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1296] = 30
                                mem[_1296 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                    _1323 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1323 + 68] = mem[idx + _1296 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1323 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1323 + -mem[64] + 100
                                if block.timestamp < stor4[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _1454 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1454] = 26
                                mem[_1454 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _1516 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1516 + 68] = mem[idx + _1454 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1516 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1516 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor4[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor4[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor4[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    stor4[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor4[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                                continue 
                            _1425 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1425] = 30
                            mem[_1425 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_256 > block.timestamp:
                                _1486 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1486 + 68] = mem[idx + _1425 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1486 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1486 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _1651 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1651] = 26
                            mem[_1651 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1715 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1715 + 68] = mem[idx + _1651 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1715 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1715 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1239 + 32] = stor4[address(arg1)][idx].field_0
                            t = _1239 + 32
                            u = sha3(mem[0])
                            while _1239 + stor4[address(arg1)][idx].field_1 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1231] = _1239
                            mem[_1231 + 32] = stor4[address(arg1)][idx].field_256
                            mem[_1231 + 64] = stor4[address(arg1)][idx].field_512
                            mem[_1231 + 96] = stor4[address(arg1)][idx].field_768
                            if stor4[address(arg1)][idx].field_512:
                                _2552 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2552] = 30
                                mem[_2552 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                    _2660 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2660 + 68] = mem[idx + _2552 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2660 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2660 + -mem[64] + 100
                                if block.timestamp < stor4[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _2700 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2700] = 26
                                mem[_2700 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2716 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2716 + 68] = mem[idx + _2700 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2716 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2716 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor4[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor4[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor4[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    stor4[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor4[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                                continue 
                            _2688 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2688] = 30
                            mem[_2688 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_256 > block.timestamp:
                                _2708 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2708 + 68] = mem[idx + _2688 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2708 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2708 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2768 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2768] = 26
                            mem[_2768 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2780 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2780 + 68] = mem[idx + _2768 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2780 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2780 + -mem[64] + 100
            ('stor', ('name', 'claimTime', 7))
            if 1 > !(block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime):
                revert with 0, 17
            if (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime) + 1 < 1:
                revert with 0, 'SafeMath: addition overflow'
            if not rewardPerNode:
                if 0 > !stor4[address(arg1)][idx].field_768:
                    revert with 0, 17
                if stor4[address(arg1)][idx].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if s > !stor4[address(arg1)][idx].field_768:
                    revert with 0, 17
                if idx >= stor4[address(arg1)].field_0:
                    revert with 0, 50
                stor4[address(arg1)][idx].field_512 = block.timestamp
                mem[0] = sha3(address(arg1), 4)
                stor4[address(arg1)][idx].field_768 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + stor4[address(arg1)][idx].field_768
                continue 
            if rewardPerNode and (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime) + 1 > -1 / rewardPerNode:
                revert with 0, 17
            if not rewardPerNode:
                revert with 0, 18
            if rewardPerNode + (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime * rewardPerNode) / rewardPerNode != (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime) + 1:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewardPerNode + (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime * rewardPerNode) > !stor4[address(arg1)][idx].field_768:
                revert with 0, 17
            if stor4[address(arg1)][idx].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if s > !(rewardPerNode + (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime * rewardPerNode) + stor4[address(arg1)][idx].field_768):
                revert with 0, 17
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            stor4[address(arg1)][idx].field_512 = block.timestamp
            mem[0] = sha3(address(arg1), 4)
            stor4[address(arg1)][idx].field_768 = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + rewardPerNode + (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime * rewardPerNode) + stor4[address(arg1)][idx].field_768
            continue 
    else:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
        mem[0] = arg1
        mem[32] = 4
        idx = 0
        s = 0
        while idx < stor4[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 4)
            _1234 = mem[64]
            mem[64] = mem[64] + 128
            if stor4[address(arg1)][idx].field_0:
                if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                _1238 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_0) * 0.5) + 32
                mem[_1238] = uint255(stor4[address(arg1)][idx].field_0) * 0.5
                if stor4[address(arg1)][idx].field_0:
                    if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor4[address(arg1)][idx].field_0):
                        mem[_1234] = _1238
                        mem[_1234 + 32] = stor4[address(arg1)][idx].field_256
                        mem[_1234 + 64] = stor4[address(arg1)][idx].field_512
                        mem[_1234 + 96] = stor4[address(arg1)][idx].field_768
                        if stor4[address(arg1)][idx].field_512:
                            _1257 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1257] = 30
                            mem[_1257 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                _1274 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1274 + 68] = mem[idx + _1257 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1274 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1274 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1357 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1357] = 26
                            mem[_1357 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1401 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1401 + 68] = mem[idx + _1357 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1401 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1401 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor4[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor4[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx >= stor4[address(arg1)].field_0:
                                revert with 0, 50
                            stor4[address(arg1)][idx].field_512 = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            stor4[address(arg1)][idx].field_768 = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                            continue 
                        _1340 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1340] = 30
                        mem[_1340 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_256 > block.timestamp:
                            _1378 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1378 + 68] = mem[idx + _1340 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1378 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1378 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1547 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1547] = 26
                        mem[_1547 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1604 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1604 + 68] = mem[idx + _1547 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1604 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1604 + -mem[64] + 100
                    else:
                        if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                            mem[_1238 + 32] = 256 * stor4[address(arg1)][idx].field_8
                            mem[_1234] = _1238
                            mem[_1234 + 32] = stor4[address(arg1)][idx].field_256
                            mem[_1234 + 64] = stor4[address(arg1)][idx].field_512
                            mem[_1234 + 96] = stor4[address(arg1)][idx].field_768
                            if stor4[address(arg1)][idx].field_512:
                                _1276 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1276] = 30
                                mem[_1276 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                    _1299 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1299 + 68] = mem[idx + _1276 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1299 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1299 + -mem[64] + 100
                                if block.timestamp < stor4[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _1402 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1402] = 26
                                mem[_1402 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _1458 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1458 + 68] = mem[idx + _1402 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1458 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1458 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor4[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor4[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor4[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    stor4[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor4[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                                continue 
                            _1381 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1381] = 30
                            mem[_1381 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_256 > block.timestamp:
                                _1430 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1430 + 68] = mem[idx + _1381 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1430 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1430 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _1606 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1606] = 26
                            mem[_1606 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1657 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1657 + 68] = mem[idx + _1606 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1657 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1657 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1238 + 32] = stor4[address(arg1)][idx].field_0
                            t = _1238 + 32
                            u = sha3(mem[0])
                            while _1238 + (uint255(stor4[address(arg1)][idx].field_0) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1234] = _1238
                            mem[_1234 + 32] = stor4[address(arg1)][idx].field_256
                            mem[_1234 + 64] = stor4[address(arg1)][idx].field_512
                            mem[_1234 + 96] = stor4[address(arg1)][idx].field_768
                            if stor4[address(arg1)][idx].field_512:
                                _2561 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2561] = 30
                                mem[_2561 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                    _2661 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2661 + 68] = mem[idx + _2561 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2661 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2661 + -mem[64] + 100
                                if block.timestamp < stor4[address(arg1)][idx].field_512:
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
                                if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor4[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor4[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor4[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    stor4[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor4[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                                continue 
                            _2690 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2690] = 30
                            mem[_2690 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_256 > block.timestamp:
                                _2709 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2709 + 68] = mem[idx + _2690 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2709 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2709 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2770 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2770] = 26
                            mem[_2770 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2781 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2781 + 68] = mem[idx + _2770 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2781 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2781 + -mem[64] + 100
                else:
                    if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                        revert with 0, 34
                    if not stor4[address(arg1)][idx].field_1:
                        mem[_1234] = _1238
                        mem[_1234 + 32] = stor4[address(arg1)][idx].field_256
                        mem[_1234 + 64] = stor4[address(arg1)][idx].field_512
                        mem[_1234 + 96] = stor4[address(arg1)][idx].field_768
                        if stor4[address(arg1)][idx].field_512:
                            _1265 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1265] = 30
                            mem[_1265 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                _1285 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1285 + 68] = mem[idx + _1265 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1285 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1285 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1382 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1382] = 26
                            mem[_1382 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1431 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1431 + 68] = mem[idx + _1382 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1431 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1431 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor4[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor4[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx >= stor4[address(arg1)].field_0:
                                revert with 0, 50
                            stor4[address(arg1)][idx].field_512 = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            stor4[address(arg1)][idx].field_768 = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                            continue 
                        _1360 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1360] = 30
                        mem[_1360 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_256 > block.timestamp:
                            _1403 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1403 + 68] = mem[idx + _1360 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1403 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1403 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1580 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1580] = 26
                        mem[_1580 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1630 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1630 + 68] = mem[idx + _1580 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1630 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1630 + -mem[64] + 100
                    else:
                        if 31 >= stor4[address(arg1)][idx].field_1:
                            mem[_1238 + 32] = 256 * stor4[address(arg1)][idx].field_8
                            mem[_1234] = _1238
                            mem[_1234 + 32] = stor4[address(arg1)][idx].field_256
                            mem[_1234 + 64] = stor4[address(arg1)][idx].field_512
                            mem[_1234 + 96] = stor4[address(arg1)][idx].field_768
                            if stor4[address(arg1)][idx].field_512:
                                _1287 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1287] = 30
                                mem[_1287 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                    _1313 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1313 + 68] = mem[idx + _1287 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1313 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1313 + -mem[64] + 100
                                if block.timestamp < stor4[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _1432 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1432] = 26
                                mem[_1432 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _1493 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1493 + 68] = mem[idx + _1432 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1493 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1493 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor4[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor4[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor4[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    stor4[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor4[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                                continue 
                            _1406 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1406] = 30
                            mem[_1406 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_256 > block.timestamp:
                                _1463 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1463 + 68] = mem[idx + _1406 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1463 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1463 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _1632 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1632] = 26
                            mem[_1632 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1690 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1690 + 68] = mem[idx + _1632 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1690 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1690 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1238 + 32] = stor4[address(arg1)][idx].field_0
                            t = _1238 + 32
                            u = sha3(mem[0])
                            while _1238 + stor4[address(arg1)][idx].field_1 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1234] = _1238
                            mem[_1234 + 32] = stor4[address(arg1)][idx].field_256
                            mem[_1234 + 64] = stor4[address(arg1)][idx].field_512
                            mem[_1234 + 96] = stor4[address(arg1)][idx].field_768
                            if stor4[address(arg1)][idx].field_512:
                                _2570 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2570] = 30
                                mem[_2570 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                    _2662 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2662 + 68] = mem[idx + _2570 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2662 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2662 + -mem[64] + 100
                                if block.timestamp < stor4[address(arg1)][idx].field_512:
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
                                if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor4[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor4[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor4[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    stor4[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor4[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                                continue 
                            _2692 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2692] = 30
                            mem[_2692 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_256 > block.timestamp:
                                _2710 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2710 + 68] = mem[idx + _2692 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2710 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2710 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2772 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2772] = 26
                            mem[_2772 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2782 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2782 + 68] = mem[idx + _2772 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2782 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2782 + -mem[64] + 100
            else:
                if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                    revert with 0, 34
                _1240 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
                mem[_1240] = stor4[address(arg1)][idx].field_1
                if stor4[address(arg1)][idx].field_0:
                    if stor4[address(arg1)][idx].field_0 == uint255(stor4[address(arg1)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor4[address(arg1)][idx].field_0):
                        mem[_1234] = _1240
                        mem[_1234 + 32] = stor4[address(arg1)][idx].field_256
                        mem[_1234 + 64] = stor4[address(arg1)][idx].field_512
                        mem[_1234 + 96] = stor4[address(arg1)][idx].field_768
                        if stor4[address(arg1)][idx].field_512:
                            _1267 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1267] = 30
                            mem[_1267 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                _1288 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1288 + 68] = mem[idx + _1267 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1288 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1288 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1384 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1384] = 26
                            mem[_1384 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1433 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1433 + 68] = mem[idx + _1384 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1433 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1433 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor4[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor4[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx >= stor4[address(arg1)].field_0:
                                revert with 0, 50
                            stor4[address(arg1)][idx].field_512 = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            stor4[address(arg1)][idx].field_768 = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                            continue 
                        _1363 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1363] = 30
                        mem[_1363 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_256 > block.timestamp:
                            _1407 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1407 + 68] = mem[idx + _1363 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1407 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1407 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1584 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1584] = 26
                        mem[_1584 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1633 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1633 + 68] = mem[idx + _1584 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1633 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1633 + -mem[64] + 100
                    else:
                        if 31 >= uint255(stor4[address(arg1)][idx].field_0) * 0.5:
                            mem[_1240 + 32] = 256 * stor4[address(arg1)][idx].field_8
                            mem[_1234] = _1240
                            mem[_1234 + 32] = stor4[address(arg1)][idx].field_256
                            mem[_1234 + 64] = stor4[address(arg1)][idx].field_512
                            mem[_1234 + 96] = stor4[address(arg1)][idx].field_768
                            if stor4[address(arg1)][idx].field_512:
                                _1290 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1290] = 30
                                mem[_1290 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                    _1316 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1316 + 68] = mem[idx + _1290 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1316 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1316 + -mem[64] + 100
                                if block.timestamp < stor4[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _1434 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1434] = 26
                                mem[_1434 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _1497 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1497 + 68] = mem[idx + _1434 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1497 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1497 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor4[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor4[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor4[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    stor4[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor4[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                                continue 
                            _1410 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1410] = 30
                            mem[_1410 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_256 > block.timestamp:
                                _1468 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1468 + 68] = mem[idx + _1410 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1468 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1468 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _1635 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1635] = 26
                            mem[_1635 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1696 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1696 + 68] = mem[idx + _1635 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1696 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1696 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1240 + 32] = stor4[address(arg1)][idx].field_0
                            t = _1240 + 32
                            u = sha3(mem[0])
                            while _1240 + (uint255(stor4[address(arg1)][idx].field_0) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1234] = _1240
                            mem[_1234 + 32] = stor4[address(arg1)][idx].field_256
                            mem[_1234 + 64] = stor4[address(arg1)][idx].field_512
                            mem[_1234 + 96] = stor4[address(arg1)][idx].field_768
                            if stor4[address(arg1)][idx].field_512:
                                _2579 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2579] = 30
                                mem[_2579 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                    _2663 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2663 + 68] = mem[idx + _2579 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2663 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2663 + -mem[64] + 100
                                if block.timestamp < stor4[address(arg1)][idx].field_512:
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
                                if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor4[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor4[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor4[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    stor4[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor4[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                                continue 
                            _2694 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2694] = 30
                            mem[_2694 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_256 > block.timestamp:
                                _2711 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2711 + 68] = mem[idx + _2694 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2711 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2711 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2774 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2774] = 26
                            mem[_2774 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2783 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2783 + 68] = mem[idx + _2774 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2783 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2783 + -mem[64] + 100
                else:
                    if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                        revert with 0, 34
                    if not stor4[address(arg1)][idx].field_1:
                        mem[_1234] = _1240
                        mem[_1234 + 32] = stor4[address(arg1)][idx].field_256
                        mem[_1234 + 64] = stor4[address(arg1)][idx].field_512
                        mem[_1234 + 96] = stor4[address(arg1)][idx].field_768
                        if stor4[address(arg1)][idx].field_512:
                            _1277 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1277] = 30
                            mem[_1277 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                _1300 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1300 + 68] = mem[idx + _1277 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1300 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1300 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1411 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1411] = 26
                            mem[_1411 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1469 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1469 + 68] = mem[idx + _1411 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1469 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1469 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor4[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor4[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx >= stor4[address(arg1)].field_0:
                                revert with 0, 50
                            stor4[address(arg1)][idx].field_512 = block.timestamp
                            mem[0] = sha3(address(arg1), 4)
                            stor4[address(arg1)][idx].field_768 = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                            continue 
                        _1387 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1387] = 30
                        mem[_1387 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[address(arg1)][idx].field_256 > block.timestamp:
                            _1435 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1435 + 68] = mem[idx + _1387 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1435 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1435 + -mem[64] + 100
                        if block.timestamp < stor4[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1614 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1614] = 26
                        mem[_1614 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1662 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1662 + 68] = mem[idx + _1614 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1662 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1662 + -mem[64] + 100
                    else:
                        if 31 >= stor4[address(arg1)][idx].field_1:
                            mem[_1240 + 32] = 256 * stor4[address(arg1)][idx].field_8
                            mem[_1234] = _1240
                            mem[_1234 + 32] = stor4[address(arg1)][idx].field_256
                            mem[_1234 + 64] = stor4[address(arg1)][idx].field_512
                            mem[_1234 + 96] = stor4[address(arg1)][idx].field_768
                            if stor4[address(arg1)][idx].field_512:
                                _1302 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1302] = 30
                                mem[_1302 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                    _1330 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1330 + 68] = mem[idx + _1302 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1330 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1330 + -mem[64] + 100
                                if block.timestamp < stor4[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _1470 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1470] = 26
                                mem[_1470 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _1530 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1530 + 68] = mem[idx + _1470 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1530 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1530 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor4[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor4[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor4[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    stor4[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor4[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                                continue 
                            _1438 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1438] = 30
                            mem[_1438 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_256 > block.timestamp:
                                _1502 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1502 + 68] = mem[idx + _1438 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1502 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1502 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _1664 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1664] = 26
                            mem[_1664 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1732 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1732 + 68] = mem[idx + _1664 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1732 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1732 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1240 + 32] = stor4[address(arg1)][idx].field_0
                            t = _1240 + 32
                            u = sha3(mem[0])
                            while _1240 + stor4[address(arg1)][idx].field_1 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1234] = _1240
                            mem[_1234 + 32] = stor4[address(arg1)][idx].field_256
                            mem[_1234 + 64] = stor4[address(arg1)][idx].field_512
                            mem[_1234 + 96] = stor4[address(arg1)][idx].field_768
                            if stor4[address(arg1)][idx].field_512:
                                _2588 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2588] = 30
                                mem[_2588 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                                    _2664 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2664 + 68] = mem[idx + _2588 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2664 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2664 + -mem[64] + 100
                                if block.timestamp < stor4[address(arg1)][idx].field_512:
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
                                if 0 > !(block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor4[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor4[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor4[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor4[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 4)
                                    stor4[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor4[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime > !stor4[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor4[address(arg1)].field_0:
                                    revert with 0, 50
                                stor4[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 4)
                                stor4[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor4[address(arg1)][idx].field_512 / claimTime) + stor4[address(arg1)][idx].field_768
                                continue 
                            _2696 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2696] = 30
                            mem[_2696 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(arg1)][idx].field_256 > block.timestamp:
                                _2712 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2712 + 68] = mem[idx + _2696 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2712 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2712 + -mem[64] + 100
                            if block.timestamp < stor4[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2776 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2776] = 26
                            mem[_2776 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2784 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2784 + 68] = mem[idx + _2776 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2784 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2784 + -mem[64] + 100
            ('stor', ('name', 'claimTime', 7))
            if 1 > !(block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime):
                revert with 0, 17
            if (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime) + 1 < 1:
                revert with 0, 'SafeMath: addition overflow'
            if not rewardPerNode:
                if 0 > !stor4[address(arg1)][idx].field_768:
                    revert with 0, 17
                if stor4[address(arg1)][idx].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if s > !stor4[address(arg1)][idx].field_768:
                    revert with 0, 17
                if idx >= stor4[address(arg1)].field_0:
                    revert with 0, 50
                stor4[address(arg1)][idx].field_512 = block.timestamp
                mem[0] = sha3(address(arg1), 4)
                stor4[address(arg1)][idx].field_768 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + stor4[address(arg1)][idx].field_768
                continue 
            if rewardPerNode and (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime) + 1 > -1 / rewardPerNode:
                revert with 0, 17
            if not rewardPerNode:
                revert with 0, 18
            if rewardPerNode + (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime * rewardPerNode) / rewardPerNode != (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime) + 1:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewardPerNode + (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime * rewardPerNode) > !stor4[address(arg1)][idx].field_768:
                revert with 0, 17
            if stor4[address(arg1)][idx].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if s > !(rewardPerNode + (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime * rewardPerNode) + stor4[address(arg1)][idx].field_768):
                revert with 0, 17
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            stor4[address(arg1)][idx].field_512 = block.timestamp
            mem[0] = sha3(address(arg1), 4)
            stor4[address(arg1)][idx].field_768 = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + rewardPerNode + (block.timestamp - stor4[address(arg1)][idx].field_256 / claimTime * rewardPerNode) + stor4[address(arg1)][idx].field_768
            continue 
    return s
}



}
