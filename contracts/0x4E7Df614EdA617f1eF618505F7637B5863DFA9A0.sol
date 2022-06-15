contract main {




// =====================  Runtime code  =====================


#
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
address tokenAddress;
uint8 stor10; offset 160
uint8 stor10; offset 168
uint128 stor10; offset 160
address stor10;
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
    return bool(uint8(stor10.field_168))
}

function rewardPerNode() payable {
    return rewardPerNode
}

function lastIndexProcessed() payable {
    return lastIndexProcessed
}

function autoDistri() payable {
    return bool(uint8(stor10.field_160))
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
            if address(stor10.field_0) != msg.sender:
                revert with 0, 'Fuck off'
    tokenAddress = arg1
}

function _changeNodePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if address(stor10.field_0) != msg.sender:
                revert with 0, 'Fuck off'
    nodePrice = arg1
}

function _changeClaimTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if address(stor10.field_0) != msg.sender:
                revert with 0, 'Fuck off'
    claimTime = arg1
}

function _changeRewardPerNode(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if address(stor10.field_0) != msg.sender:
                revert with 0, 'Fuck off'
    rewardPerNode = arg1
}

function _changeGasDistri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if address(stor10.field_0) != msg.sender:
                revert with 0, 'Fuck off'
    gasForDistribution = arg1
}

function sub_5f99dc85(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if address(stor10.field_0) != msg.sender:
                revert with 0, 'Fuck off'
    address(stor10.field_0) = address(arg1)
}

function _changeAutoDistri(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if address(stor10.field_0) != msg.sender:
                revert with 0, 'Fuck off'
    Mask(96, 0, stor10.field_160) = Mask(96, 0, arg1)
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x3be5c4d594067d9982378103ed80c33975a38d40)
    delegate 0x3be5c4d594067d9982378103ed80c33975a38d40.0x732a2ccf with:
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
    require ext_code.size(0x3be5c4d594067d9982378103ed80c33975a38d40)
    delegate 0x3be5c4d594067d9982378103ed80c33975a38d40.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    return (delegate.return_data[0] > 0)
}

function createNode(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if address(stor10.field_0) != msg.sender:
                revert with 0, 'Fuck off'
    uint256(stor4[address(arg1)].field_0)++
    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=arg2.length, data=arg2[all])
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
        if arg2.length:
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
            idx = 0
            while stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32 > idx:
                uint256(stor4[address(arg1)][(4 * uint256(stor4[address(arg1)].field_0)) + idx].field_0) = 0
                idx = idx + 1
                continue 
    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = block.timestamp
    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = 0
    require ext_code.size(0x3be5c4d594067d9982378103ed80c33975a38d40)
    delegate 0x3be5c4d594067d9982378103ed80c33975a38d40.0xbc2b405c with:
         gas gas_remaining wei
        args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if totalNodesCreated == -1:
        revert with 'NH{q', 17
    totalNodesCreated++
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
    mem[0] = arg1
    mem[32] = 4
    mem[64] = (32 * uint256(stor4[address(arg1)].field_0)) + 128
    mem[96] = uint256(stor4[address(arg1)].field_0)
    s = 128
    idx = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 4)
        _50 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                revert with 'NH{q', 34
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
            mem[_56] = uint255(stor4[address(arg1)][idx].field_1)
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor4[address(arg1)][idx].field_1):
                    if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                        mem[_56 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_56 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _56 + 32
                        u = sha3(mem[0])
                        while _56 + uint255(stor4[address(arg1)][idx].field_1) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_50] = _56
                mem[_50 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_50 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_50 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _50
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor4[address(arg1)][idx].field_1 % 128:
                mem[_50] = _56
                mem[_50 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_50 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_50 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _50
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_56 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_50] = _56
                mem[_50 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_50 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_50 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _50
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_56 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _56 + 32
            u = sha3(mem[0])
            while _56 + stor4[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_50] = _56
            mem[_50 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_50 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_50 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _50
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        _58 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
        mem[_58] = stor4[address(arg1)][idx].field_1 % 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor4[address(arg1)][idx].field_1):
                mem[_50] = _58
                mem[_50 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_50 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_50 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _50
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                mem[_58 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_50] = _58
                mem[_50 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_50 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_50 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _50
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_58 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _58 + 32
            u = sha3(mem[0])
            while _58 + uint255(stor4[address(arg1)][u].field_1) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_50] = _58
            mem[_50 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_50 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_50 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _50
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor4[address(arg1)][idx].field_1 % 128:
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_58 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_58 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _58 + 32
                u = sha3(mem[0])
                while _58 + stor4[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_50] = _58
        mem[_50 + 32] = uint256(stor4[address(arg1)][idx].field_256)
        mem[_50 + 64] = uint256(stor4[address(arg1)][idx].field_512)
        mem[_50 + 96] = uint256(stor4[address(arg1)][idx].field_768)
        mem[s] = _50
        s = s + 32
        idx = idx + 1
        continue 
    _48 = mem[96]
    _51 = mem[64]
    mem[64] = mem[64] + 128
    mem[_51] = 96
    mem[_51 + 32] = 0
    mem[_51 + 64] = 0
    mem[_51 + 96] = 0
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    _54 = mem[mem[128]]
    _55 = mem[64]
    mem[64] = mem[64] + 64
    mem[_55] = 1
    mem[_55 + 32] = '#'
    idx = 1
    s = _54
    t = _51
    while idx < _48:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _95 = mem[(32 * idx) + 128]
        _96 = mem[mem[(32 * idx) + 128]]
        _97 = mem[64]
        _99 = mem[s]
        t = 0
        while t < _99:
            mem[_97 + t + 32] = mem[s + t + 32]
            t = t + 32
            continue 
        if ceil32(_99) <= _99:
            _126 = mem[_55]
            s = 0
            while s < _126:
                mem[_97 + _99 + s + 32] = mem[_55 + s + 32]
                s = s + 32
                continue 
            if ceil32(_126) <= _126:
                _150 = mem[_96]
                s = 0
                while s < _150:
                    mem[_97 + _99 + _126 + s + 32] = mem[_96 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_150) <= _150:
                    _170 = mem[64]
                    mem[mem[64]] = _97 + _99 + _126 + _150 - mem[64]
                    mem[64] = _97 + _99 + _126 + _150 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _170
                    t = _95
                    continue 
                mem[_97 + _99 + _126 + _150 + 32] = 0
                _174 = mem[64]
                mem[mem[64]] = _97 + _99 + _126 + _150 - mem[64]
                mem[64] = _97 + _99 + _126 + _150 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _174
                t = _95
                continue 
            mem[_97 + _99 + _126 + 32] = 0
            _152 = mem[_96]
            s = 0
            while s < _152:
                mem[_97 + _99 + _126 + s + 32] = mem[_96 + s + 32]
                s = s + 32
                continue 
            if ceil32(_152) <= _152:
                _171 = mem[64]
                mem[mem[64]] = _97 + _99 + _126 + _152 - mem[64]
                mem[64] = _97 + _99 + _126 + _152 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _171
                t = _95
                continue 
            mem[_97 + _99 + _126 + _152 + 32] = 0
            _175 = mem[64]
            mem[mem[64]] = _97 + _99 + _126 + _152 - mem[64]
            mem[64] = _97 + _99 + _126 + _152 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _175
            t = _95
            continue 
        mem[_97 + _99 + 32] = 0
        _128 = mem[_55]
        s = 0
        while s < _128:
            mem[_97 + _99 + s + 32] = mem[_55 + s + 32]
            s = s + 32
            continue 
        if ceil32(_128) <= _128:
            _151 = mem[_96]
            s = 0
            while s < _151:
                mem[_97 + _99 + _128 + s + 32] = mem[_96 + s + 32]
                s = s + 32
                continue 
            if ceil32(_151) <= _151:
                _172 = mem[64]
                mem[mem[64]] = _97 + _99 + _128 + _151 - mem[64]
                mem[64] = _97 + _99 + _128 + _151 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _172
                t = _95
                continue 
            mem[_97 + _99 + _128 + _151 + 32] = 0
            _176 = mem[64]
            mem[mem[64]] = _97 + _99 + _128 + _151 - mem[64]
            mem[64] = _97 + _99 + _128 + _151 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _176
            t = _95
            continue 
        mem[_97 + _99 + _128 + 32] = 0
        _153 = mem[_96]
        s = 0
        while s < _153:
            mem[_97 + _99 + _128 + s + 32] = mem[_96 + s + 32]
            s = s + 32
            continue 
        if ceil32(_153) <= _153:
            _173 = mem[64]
            mem[mem[64]] = _97 + _99 + _128 + _153 - mem[64]
            mem[64] = _97 + _99 + _128 + _153 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _173
            t = _95
            continue 
        mem[_97 + _99 + _128 + _153 + 32] = 0
        _177 = mem[64]
        mem[mem[64]] = _97 + _99 + _128 + _153 - mem[64]
        mem[64] = _97 + _99 + _128 + _153 + 32
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _177
        t = _95
        continue 
    mem[mem[64]] = 32
    _98 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_98)] = mem[s + 32 len ceil32(_98)]
    if ceil32(_98) > _98:
        mem[mem[64] + _98 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_98) + 32]
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
        _171 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1
        mem[_171] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_171 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_171 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _171
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    _170 = mem[64]
    if mem[64] + floor32(arg3.length) + 1 > test266151307() or mem[64] + floor32(arg3.length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(arg3.length) + 1
    mem[_170] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = _170 + 32
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
    _338 = mem[64]
    if mem[64] + floor32(arg4.length) + 1 > test266151307() or mem[64] + floor32(arg4.length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(arg4.length) + 1
    mem[_338] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = _338 + 32
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
    _504 = mem[64]
    if mem[64] + floor32(arg5.length) + 1 > test266151307() or mem[64] + floor32(arg5.length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(arg5.length) + 1
    mem[_504] = arg5.length
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    idx = 0
    s = arg5 + 36
    t = _504 + 32
    while idx < arg5.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == tokenAddress:
        _669 = mem[96]
        require mem[_170] == mem[96]
        require mem[_338] == mem[96]
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
        while idx < _669:
            mem[0] = arg1
            mem[32] = 4
            _980 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_980] = mem[(32 * idx) + 128]
            if idx >= mem[_170]:
                revert with 'NH{q', 50
            mem[_980 + 32] = mem[(32 * idx) + _170 + 32]
            if idx >= mem[_338]:
                revert with 'NH{q', 50
            mem[_980 + 64] = mem[(32 * idx) + _338 + 32]
            if idx >= mem[_504]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + _504 + 32] and 10^9 > -1 / mem[(32 * idx) + _504 + 32]:
                revert with 'NH{q', 17
            mem[_980 + 96] = 10^9 * mem[(32 * idx) + _504 + 32]
            uint256(stor4[address(arg1)].field_0)++
            mem[0] = sha3(address(arg1), 4)
            _1014 = mem[_980]
            _1015 = mem[mem[_980]]
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) < 32:
                    revert with 'NH{q', 34
                mem[0] = (4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))
                if not _1015:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                    while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                else:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1015) + 1
                    t = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                    s = _1014 + 32
                    while _1014 + _1015 + 32 > s:
                        uint256(stor[t].field_0) = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (Mask(251, 0, _1015 + 31) >> 5)
                    while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = (4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))
                if not _1015:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                    while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                else:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1015) + 1
                    t = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                    s = _1014 + 32
                    while _1014 + _1015 + 32 > s:
                        uint256(stor[t].field_0) = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (Mask(251, 0, _1015 + 31) >> 5)
                    while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = mem[_980 + 32]
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = mem[_980 + 64]
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = mem[_980 + 96]
            if totalNodesCreated == -1:
                revert with 'NH{q', 17
            totalNodesCreated++
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if msg.sender == gateKeeperAddress:
            _672 = mem[96]
            require mem[_170] == mem[96]
            require mem[_338] == mem[96]
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
            while idx < _672:
                mem[0] = arg1
                mem[32] = 4
                _985 = mem[64]
                mem[64] = mem[64] + 128
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_985] = mem[(32 * idx) + 128]
                if idx >= mem[_170]:
                    revert with 'NH{q', 50
                mem[_985 + 32] = mem[(32 * idx) + _170 + 32]
                if idx >= mem[_338]:
                    revert with 'NH{q', 50
                mem[_985 + 64] = mem[(32 * idx) + _338 + 32]
                if idx >= mem[_504]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + _504 + 32] and 10^9 > -1 / mem[(32 * idx) + _504 + 32]:
                    revert with 'NH{q', 17
                mem[_985 + 96] = 10^9 * mem[(32 * idx) + _504 + 32]
                uint256(stor4[address(arg1)].field_0)++
                mem[0] = sha3(address(arg1), 4)
                _1017 = mem[_985]
                _1018 = mem[mem[_985]]
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = (4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))
                    if not _1018:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1018) + 1
                        t = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                        s = _1017 + 32
                        while _1017 + _1018 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (Mask(251, 0, _1018 + 31) >> 5)
                        while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))
                    if not _1018:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1018) + 1
                        t = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                        s = _1017 + 32
                        while _1017 + _1018 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (Mask(251, 0, _1018 + 31) >> 5)
                        while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = mem[_985 + 32]
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = mem[_985 + 64]
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = mem[_985 + 96]
                if totalNodesCreated == -1:
                    revert with 'NH{q', 17
                totalNodesCreated++
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if address(stor10.field_0) != msg.sender:
                revert with 0, 'Fuck off'
            _676 = mem[96]
            require mem[_170] == mem[96]
            require mem[_338] == mem[96]
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
            while idx < _676:
                mem[0] = arg1
                mem[32] = 4
                _990 = mem[64]
                mem[64] = mem[64] + 128
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_990] = mem[(32 * idx) + 128]
                if idx >= mem[_170]:
                    revert with 'NH{q', 50
                mem[_990 + 32] = mem[(32 * idx) + _170 + 32]
                if idx >= mem[_338]:
                    revert with 'NH{q', 50
                mem[_990 + 64] = mem[(32 * idx) + _338 + 32]
                if idx >= mem[_504]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + _504 + 32] and 10^9 > -1 / mem[(32 * idx) + _504 + 32]:
                    revert with 'NH{q', 17
                mem[_990 + 96] = 10^9 * mem[(32 * idx) + _504 + 32]
                uint256(stor4[address(arg1)].field_0)++
                mem[0] = sha3(address(arg1), 4)
                _1020 = mem[_990]
                _1021 = mem[mem[_990]]
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = (4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))
                    if not _1021:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1021) + 1
                        t = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                        s = _1020 + 32
                        while _1020 + _1021 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (Mask(251, 0, _1021 + 31) >> 5)
                        while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (uint255(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))
                    if not _1021:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1021) + 1
                        t = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4)))
                        s = _1020 + 32
                        while _1020 + _1021 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (Mask(251, 0, _1021 + 31) >> 5)
                        while sha3((4 * uint256(stor4[address(arg1)].field_0)) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = mem[_990 + 32]
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = mem[_990 + 64]
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = mem[_990 + 96]
                if totalNodesCreated == -1:
                    revert with 'NH{q', 17
                totalNodesCreated++
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    require ext_code.size(0x3be5c4d594067d9982378103ed80c33975a38d40)
    delegate 0x3be5c4d594067d9982378103ed80c33975a38d40.0xbc2b405c with:
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
            _242 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                _271 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
                mem[_271] = uint255(stor4[address(arg1)][idx].field_1)
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor4[address(arg1)][idx].field_1):
                        if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                            mem[_271 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_271 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _271 + 32
                            u = sha3(mem[0])
                            while _271 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_242] = _271
                    mem[_242 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_242 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_242 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _242
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_242] = _271
                    mem[_242 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_242 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_242 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _242
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_271 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_242] = _271
                    mem[_242 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_242 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_242 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _242
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_271 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _271 + 32
                u = sha3(mem[0])
                while _271 + stor4[address(arg1)][u].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_242] = _271
                mem[_242 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_242 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_242 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _242
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            _276 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_276] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor4[address(arg1)][idx].field_1):
                    mem[_242] = _276
                    mem[_242 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_242 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_242 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _242
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                    mem[_276 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_242] = _276
                    mem[_242 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_242 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_242 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _242
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_276 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _276 + 32
                u = sha3(mem[0])
                while _276 + uint255(stor4[address(arg1)][u].field_1) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_242] = _276
                mem[_242 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_242 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_242 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _242
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor4[address(arg1)][idx].field_1 % 128:
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_276 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_276 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _276 + 32
                    u = sha3(mem[0])
                    while _276 + stor4[address(arg1)][idx].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_242] = _276
            mem[_242 + 32] = uint256(stor4[address(arg1)][idx].field_256)
            mem[_242 + 64] = uint256(stor4[address(arg1)][idx].field_512)
            mem[_242 + 96] = uint256(stor4[address(arg1)][idx].field_768)
            mem[s] = _242
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
        _497 = mem[64]
        mem[64] = mem[64] + 128
        mem[_497] = 96
        mem[_497 + 32] = arg3
        mem[_497 + 64] = arg4
        if arg5 and 10^9 > -1 / arg5:
            revert with 'NH{q', 17
        mem[_497 + 96] = 10^9 * arg5
    else:
        if msg.sender == gateKeeperAddress:
            mem[0] = arg1
            mem[32] = 4
            mem[64] = ceil32(ceil32(arg2.length)) + (32 * uint256(stor4[address(arg1)].field_0)) + 129
            mem[ceil32(ceil32(arg2.length)) + 97] = uint256(stor4[address(arg1)].field_0)
            s = ceil32(ceil32(arg2.length)) + 129
            idx = 0
            while idx < uint256(stor4[address(arg1)].field_0):
                mem[0] = sha3(address(arg1), 4)
                _244 = mem[64]
                mem[64] = mem[64] + 128
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    _272 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
                    mem[_272] = uint255(stor4[address(arg1)][idx].field_1)
                    if bool(stor4[address(arg1)][idx].field_0):
                        if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if uint255(stor4[address(arg1)][idx].field_1):
                            if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                                mem[_272 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_272 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _272 + 32
                                u = sha3(mem[0])
                                while _272 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[_244] = _272
                        mem[_244 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_244 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_244 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _244
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor4[address(arg1)][idx].field_1 % 128:
                        mem[_244] = _272
                        mem[_244 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_244 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_244 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _244
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                        mem[_272 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_244] = _272
                        mem[_244 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_244 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_244 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _244
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_272 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _272 + 32
                    u = sha3(mem[0])
                    while _272 + stor4[address(arg1)][u].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_244] = _272
                    mem[_244 + 32] = uint256(stor4[address(arg1)][u].field_256)
                    mem[_244 + 64] = uint256(stor4[address(arg1)][u].field_512)
                    mem[_244 + 96] = uint256(stor4[address(arg1)][u].field_768)
                    mem[t] = _244
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                _279 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
                mem[_279] = stor4[address(arg1)][idx].field_1 % 128
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor4[address(arg1)][idx].field_1):
                        mem[_244] = _279
                        mem[_244 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_244 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_244 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _244
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                        mem[_279 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_244] = _279
                        mem[_244 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_244 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_244 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _244
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_279 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _279 + 32
                    u = sha3(mem[0])
                    while _279 + uint255(stor4[address(arg1)][u].field_1) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_244] = _279
                    mem[_244 + 32] = uint256(stor4[address(arg1)][u].field_256)
                    mem[_244 + 64] = uint256(stor4[address(arg1)][u].field_512)
                    mem[_244 + 96] = uint256(stor4[address(arg1)][u].field_768)
                    mem[t] = _244
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if stor4[address(arg1)][idx].field_1 % 128:
                    if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                        mem[_279 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_279 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _279 + 32
                        u = sha3(mem[0])
                        while _279 + stor4[address(arg1)][idx].field_1 % 128 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_244] = _279
                mem[_244 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_244 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_244 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _244
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
            _499 = mem[64]
            mem[64] = mem[64] + 128
            mem[_499] = 96
            mem[_499 + 32] = arg3
            mem[_499 + 64] = arg4
            if arg5 and 10^9 > -1 / arg5:
                revert with 'NH{q', 17
            mem[_499 + 96] = 10^9 * arg5
        else:
            if address(stor10.field_0) != msg.sender:
                revert with 0, 'Fuck off'
            mem[0] = arg1
            mem[32] = 4
            mem[64] = ceil32(ceil32(arg2.length)) + (32 * uint256(stor4[address(arg1)].field_0)) + 129
            mem[ceil32(ceil32(arg2.length)) + 97] = uint256(stor4[address(arg1)].field_0)
            s = ceil32(ceil32(arg2.length)) + 129
            idx = 0
            while idx < uint256(stor4[address(arg1)].field_0):
                mem[0] = sha3(address(arg1), 4)
                _246 = mem[64]
                mem[64] = mem[64] + 128
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    _273 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
                    mem[_273] = uint255(stor4[address(arg1)][idx].field_1)
                    if bool(stor4[address(arg1)][idx].field_0):
                        if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if uint255(stor4[address(arg1)][idx].field_1):
                            if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                                mem[_273 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_273 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _273 + 32
                                u = sha3(mem[0])
                                while _273 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[_246] = _273
                        mem[_246 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_246 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_246 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _246
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor4[address(arg1)][idx].field_1 % 128:
                        mem[_246] = _273
                        mem[_246 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_246 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_246 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _246
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                        mem[_273 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_246] = _273
                        mem[_246 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_246 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_246 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _246
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_273 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _273 + 32
                    u = sha3(mem[0])
                    while _273 + stor4[address(arg1)][u].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_246] = _273
                    mem[_246 + 32] = uint256(stor4[address(arg1)][u].field_256)
                    mem[_246 + 64] = uint256(stor4[address(arg1)][u].field_512)
                    mem[_246 + 96] = uint256(stor4[address(arg1)][u].field_768)
                    mem[t] = _246
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                _282 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
                mem[_282] = stor4[address(arg1)][idx].field_1 % 128
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor4[address(arg1)][idx].field_1):
                        mem[_246] = _282
                        mem[_246 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_246 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_246 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _246
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                        mem[_282 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_246] = _282
                        mem[_246 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_246 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_246 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _246
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_282 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _282 + 32
                    u = sha3(mem[0])
                    while _282 + uint255(stor4[address(arg1)][u].field_1) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_246] = _282
                    mem[_246 + 32] = uint256(stor4[address(arg1)][u].field_256)
                    mem[_246 + 64] = uint256(stor4[address(arg1)][u].field_512)
                    mem[_246 + 96] = uint256(stor4[address(arg1)][u].field_768)
                    mem[t] = _246
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if stor4[address(arg1)][idx].field_1 % 128:
                    if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                        mem[_282 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_282 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _282 + 32
                        u = sha3(mem[0])
                        while _282 + stor4[address(arg1)][idx].field_1 % 128 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_246] = _282
                mem[_246 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_246 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_246 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _246
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
            _501 = mem[64]
            mem[64] = mem[64] + 128
            mem[_501] = 96
            mem[_501 + 32] = arg3
            mem[_501 + 64] = arg4
            if arg5 and 10^9 > -1 / arg5:
                revert with 'NH{q', 17
            mem[_501 + 96] = 10^9 * arg5
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
    require ext_code.size(0x3be5c4d594067d9982378103ed80c33975a38d40)
    delegate 0x3be5c4d594067d9982378103ed80c33975a38d40.0xbc2b405c with:
         gas gas_remaining wei
        args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 4
    mem[64] = (32 * uint256(stor4[address(arg1)].field_0)) + 128
    mem[96] = uint256(stor4[address(arg1)].field_0)
    s = 128
    idx = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 4)
        _52 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                revert with 'NH{q', 34
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
            mem[_57] = uint255(stor4[address(arg1)][idx].field_1)
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor4[address(arg1)][idx].field_1):
                    if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                        mem[_57 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_57 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _57 + 32
                        u = sha3(mem[0])
                        while _57 + uint255(stor4[address(arg1)][idx].field_1) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_52] = _57
                mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor4[address(arg1)][idx].field_1 % 128:
                mem[_52] = _57
                mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_57 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_52] = _57
                mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_57 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _57 + 32
            u = sha3(mem[0])
            while _57 + stor4[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_52] = _57
            mem[_52 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_52 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_52 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _52
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        _59 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
        mem[_59] = stor4[address(arg1)][idx].field_1 % 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor4[address(arg1)][idx].field_1):
                mem[_52] = _59
                mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                mem[_59 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_52] = _59
                mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _59 + 32
            u = sha3(mem[0])
            while _59 + uint255(stor4[address(arg1)][u].field_1) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_52] = _59
            mem[_52 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_52 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_52 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _52
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor4[address(arg1)][idx].field_1 % 128:
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_59 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _59 + 32
                u = sha3(mem[0])
                while _59 + stor4[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_52] = _59
        mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
        mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
        mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
        mem[s] = _52
        s = s + 32
        idx = idx + 1
        continue 
    _50 = mem[96]
    _53 = mem[64]
    mem[64] = mem[64] + 128
    mem[_53] = 96
    mem[_53 + 32] = 0
    mem[_53 + 64] = 0
    mem[_53 + 96] = 0
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    _56 = mem[mem[128] + 32]
    if not mem[mem[128] + 32]:
        _58 = mem[64]
        mem[64] = mem[64] + 64
        mem[_58] = 1
        mem[_58 + 32] = '0'
        _60 = mem[64]
        mem[64] = mem[64] + 64
        mem[_60] = 1
        mem[_60 + 32] = '#'
        idx = 1
        s = _58
        t = _53
        while idx < _50:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _100 = mem[(32 * idx) + 128]
            _101 = mem[mem[(32 * idx) + 128] + 32]
            if not mem[mem[(32 * idx) + 128] + 32]:
                _102 = mem[64]
                mem[64] = mem[64] + 64
                mem[_102] = 1
                mem[_102 + 32] = '0'
                _104 = mem[64]
                _108 = mem[s]
                t = 0
                while t < _108:
                    mem[_104 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_108) <= _108:
                    _211 = mem[_60]
                    s = 0
                    while s < _211:
                        mem[_104 + _108 + s + 32] = mem[_60 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_211) <= _211:
                        _359 = mem[_102]
                        s = 0
                        while s < _359:
                            mem[_104 + _108 + _211 + s + 32] = mem[_102 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_359) <= _359:
                            _481 = mem[64]
                            mem[mem[64]] = _104 + _108 + _211 + _359 - mem[64]
                            mem[64] = _104 + _108 + _211 + _359 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _481
                            t = _100
                            continue 
                        mem[_104 + _108 + _211 + _359 + 32] = 0
                        _489 = mem[64]
                        mem[mem[64]] = _104 + _108 + _211 + _359 - mem[64]
                        mem[64] = _104 + _108 + _211 + _359 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _489
                        t = _100
                        continue 
                    mem[_104 + _108 + _211 + 32] = 0
                    _361 = mem[_102]
                    s = 0
                    while s < _361:
                        mem[_104 + _108 + _211 + s + 32] = mem[_102 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_361) <= _361:
                        _482 = mem[64]
                        mem[mem[64]] = _104 + _108 + _211 + _361 - mem[64]
                        mem[64] = _104 + _108 + _211 + _361 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _482
                        t = _100
                        continue 
                    mem[_104 + _108 + _211 + _361 + 32] = 0
                    _490 = mem[64]
                    mem[mem[64]] = _104 + _108 + _211 + _361 - mem[64]
                    mem[64] = _104 + _108 + _211 + _361 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _490
                    t = _100
                    continue 
                mem[_104 + _108 + 32] = 0
                _214 = mem[_60]
                s = 0
                while s < _214:
                    mem[_104 + _108 + s + 32] = mem[_60 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_214) <= _214:
                    _360 = mem[_102]
                    s = 0
                    while s < _360:
                        mem[_104 + _108 + _214 + s + 32] = mem[_102 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_360) <= _360:
                        _483 = mem[64]
                        mem[mem[64]] = _104 + _108 + _214 + _360 - mem[64]
                        mem[64] = _104 + _108 + _214 + _360 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _483
                        t = _100
                        continue 
                    mem[_104 + _108 + _214 + _360 + 32] = 0
                    _491 = mem[64]
                    mem[mem[64]] = _104 + _108 + _214 + _360 - mem[64]
                    mem[64] = _104 + _108 + _214 + _360 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _491
                    t = _100
                    continue 
                mem[_104 + _108 + _214 + 32] = 0
                _362 = mem[_102]
                s = 0
                while s < _362:
                    mem[_104 + _108 + _214 + s + 32] = mem[_102 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_362) <= _362:
                    _484 = mem[64]
                    mem[mem[64]] = _104 + _108 + _214 + _362 - mem[64]
                    mem[64] = _104 + _108 + _214 + _362 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _484
                    t = _100
                    continue 
                mem[_104 + _108 + _214 + _362 + 32] = 0
                _492 = mem[64]
                mem[mem[64]] = _104 + _108 + _214 + _362 - mem[64]
                mem[64] = _104 + _108 + _214 + _362 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _492
                t = _100
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 32]
            while t:
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 'NH{q', 65
            _200 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _101
                while t:
                    if v < 1:
                        revert with 'NH{q', 17
                    if t / 10 and 10 > -1 / t / 10:
                        revert with 'NH{q', 17
                    if t < 10 * t / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 'NH{q', 17
                    if v - 1 >= mem[_200]:
                        revert with 'NH{q', 50
                    mem[v + _200 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _349 = mem[64]
                _357 = mem[s]
                t = 0
                while t < _357:
                    mem[_349 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_357) <= _357:
                    _487 = mem[_60]
                    s = 0
                    while s < _487:
                        mem[_349 + _357 + s + 32] = mem[_60 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_487) <= _487:
                        _689 = mem[_200]
                        s = 0
                        while s < _689:
                            mem[_349 + _357 + _487 + s + 32] = mem[_200 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_689) <= _689:
                            _865 = mem[64]
                            mem[mem[64]] = _349 + _357 + _487 + _689 - mem[64]
                            mem[64] = _349 + _357 + _487 + _689 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _865
                            t = _100
                            continue 
                        mem[_349 + _357 + _487 + _689 + 32] = 0
                        _885 = mem[64]
                        mem[mem[64]] = _349 + _357 + _487 + _689 - mem[64]
                        mem[64] = _349 + _357 + _487 + _689 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _885
                        t = _100
                        continue 
                    mem[_349 + _357 + _487 + 32] = 0
                    _697 = mem[_200]
                    s = 0
                    while s < _697:
                        mem[_349 + _357 + _487 + s + 32] = mem[_200 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _866 = mem[64]
                        mem[mem[64]] = _349 + _357 + _487 + _697 - mem[64]
                        mem[64] = _349 + _357 + _487 + _697 + 32
                        if ceil32(_697) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_697) + 1
                        s = _866
                        t = _100
                        continue 
                    mem[_349 + _357 + _487 + _697 + 32] = 0
                    _886 = mem[64]
                    mem[mem[64]] = _349 + _357 + _487 + _697 - mem[64]
                    mem[64] = _349 + _357 + _487 + _697 + 32
                    if ceil32(_697) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_697) + 1
                    s = _886
                    t = _100
                    continue 
                mem[_349 + _357 + 32] = 0
                _499 = mem[_60]
                s = 0
                while s < _499:
                    mem[_349 + _357 + s + 32] = mem[_60 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_499) <= _499:
                    _690 = mem[_200]
                    s = 0
                    while s < _690:
                        mem[_349 + _357 + _499 + s + 32] = mem[_200 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _867 = mem[64]
                        mem[mem[64]] = _349 + _357 + _499 + _690 - mem[64]
                        mem[64] = _349 + _357 + _499 + _690 + 32
                        if ceil32(_690) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_690) + 1
                        s = _867
                        t = _100
                        continue 
                    mem[_349 + _357 + _499 + _690 + 32] = 0
                    _887 = mem[64]
                    mem[mem[64]] = _349 + _357 + _499 + _690 - mem[64]
                    mem[64] = _349 + _357 + _499 + _690 + 32
                    if ceil32(_690) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_690) + 1
                    s = _887
                    t = _100
                    continue 
                mem[_349 + _357 + _499 + 32] = 0
                _698 = mem[_200]
                s = 0
                while s < _698:
                    mem[_349 + _357 + _499 + s + 32] = mem[_200 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _868 = mem[64]
                    mem[mem[64]] = _349 + _357 + _499 + _698 - mem[64]
                    mem[64] = _349 + _357 + _499 + _698 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _868
                    t = _100
                    continue 
                mem[_349 + _357 + _499 + _698 + 32] = 0
                _888 = mem[64]
                mem[mem[64]] = _349 + _357 + _499 + _698 - mem[64]
                mem[64] = _349 + _357 + _499 + _698 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _888
                t = _100
                continue 
            mem[_200 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _101
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 and 10 > -1 / t / 10:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_200]:
                    revert with 'NH{q', 50
                mem[v + _200 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _350 = mem[64]
            _358 = mem[s]
            t = 0
            while t < _358:
                mem[_350 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_358) <= _358:
                _488 = mem[_60]
                s = 0
                while s < _488:
                    mem[_350 + _358 + s + 32] = mem[_60 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_488) <= _488:
                    _691 = mem[_200]
                    s = 0
                    while s < _691:
                        mem[_350 + _358 + _488 + s + 32] = mem[_200 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_691) <= _691:
                        _869 = mem[64]
                        mem[mem[64]] = _350 + _358 + _488 + _691 - mem[64]
                        mem[64] = _350 + _358 + _488 + _691 + 32
                        if ceil32(_691) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_691) + 1
                        s = _869
                        t = _100
                        continue 
                    mem[_350 + _358 + _488 + _691 + 32] = 0
                    _889 = mem[64]
                    mem[mem[64]] = _350 + _358 + _488 + _691 - mem[64]
                    mem[64] = _350 + _358 + _488 + _691 + 32
                    if ceil32(_691) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_691) + 1
                    s = _889
                    t = _100
                    continue 
                mem[_350 + _358 + _488 + 32] = 0
                _699 = mem[_200]
                s = 0
                while s < _699:
                    mem[_350 + _358 + _488 + s + 32] = mem[_200 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_699) <= _699:
                    _870 = mem[64]
                    mem[mem[64]] = _350 + _358 + _488 + _699 - mem[64]
                    mem[64] = _350 + _358 + _488 + _699 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _870
                    t = _100
                    continue 
                mem[_350 + _358 + _488 + _699 + 32] = 0
                _890 = mem[64]
                mem[mem[64]] = _350 + _358 + _488 + _699 - mem[64]
                mem[64] = _350 + _358 + _488 + _699 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _890
                t = _100
                continue 
            mem[_350 + _358 + 32] = 0
            _500 = mem[_60]
            s = 0
            while s < _500:
                mem[_350 + _358 + s + 32] = mem[_60 + s + 32]
                s = s + 32
                continue 
            if ceil32(_500) <= _500:
                _692 = mem[_200]
                s = 0
                while s < _692:
                    mem[_350 + _358 + _500 + s + 32] = mem[_200 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_692) <= _692:
                    _871 = mem[64]
                    mem[mem[64]] = _350 + _358 + _500 + _692 - mem[64]
                    mem[64] = _350 + _358 + _500 + _692 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _871
                    t = _100
                    continue 
                mem[_350 + _358 + _500 + _692 + 32] = 0
                _891 = mem[64]
                mem[mem[64]] = _350 + _358 + _500 + _692 - mem[64]
                mem[64] = _350 + _358 + _500 + _692 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _891
                t = _100
                continue 
            mem[_350 + _358 + _500 + 32] = 0
            _700 = mem[_200]
            s = 0
            while s < _700:
                mem[_350 + _358 + _500 + s + 32] = mem[_200 + s + 32]
                s = s + 32
                continue 
            if ceil32(_700) <= _700:
                _872 = mem[64]
                mem[mem[64]] = _350 + _358 + _500 + _700 - mem[64]
                mem[64] = _350 + _358 + _500 + _700 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _872
                t = _100
                continue 
            mem[_350 + _358 + _500 + _700 + 32] = 0
            _892 = mem[64]
            mem[mem[64]] = _350 + _358 + _500 + _700 - mem[64]
            mem[64] = _350 + _358 + _500 + _700 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _892
            t = _100
            continue 
        mem[mem[64]] = 32
        _103 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_103)] = mem[s + 32 len ceil32(_103)]
        if ceil32(_103) > _103:
            mem[mem[64] + _103 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_103) + 32]
    s = 0
    idx = mem[mem[128] + 32]
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _98 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _56
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[_98]:
                revert with 'NH{q', 50
            mem[t + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _201 = mem[64]
        mem[64] = mem[64] + 64
        mem[_201] = 1
        mem[_201 + 32] = '#'
        idx = 1
        s = _98
        t = _53
        while idx < _50:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _344 = mem[(32 * idx) + 128]
            _345 = mem[mem[(32 * idx) + 128] + 32]
            if not mem[mem[(32 * idx) + 128] + 32]:
                _351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_351] = 1
                mem[_351 + 32] = '0'
                _355 = mem[64]
                _363 = mem[s]
                t = 0
                while t < _363:
                    mem[_355 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_363) <= _363:
                    _485 = mem[_201]
                    s = 0
                    while s < _485:
                        mem[_355 + _363 + s + 32] = mem[_201 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_485) <= _485:
                        _683 = mem[_351]
                        s = 0
                        while s < _683:
                            mem[_355 + _363 + _485 + s + 32] = mem[_351 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_683) <= _683:
                            _857 = mem[64]
                            mem[mem[64]] = _355 + _363 + _485 + _683 - mem[64]
                            mem[64] = _355 + _363 + _485 + _683 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _857
                            t = _344
                            continue 
                        mem[_355 + _363 + _485 + _683 + 32] = 0
                        _875 = mem[64]
                        mem[mem[64]] = _355 + _363 + _485 + _683 - mem[64]
                        mem[64] = _355 + _363 + _485 + _683 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _875
                        t = _344
                        continue 
                    mem[_355 + _363 + _485 + 32] = 0
                    _693 = mem[_351]
                    s = 0
                    while s < _693:
                        mem[_355 + _363 + _485 + s + 32] = mem[_351 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _858 = mem[64]
                        mem[mem[64]] = _355 + _363 + _485 + _693 - mem[64]
                        mem[64] = _355 + _363 + _485 + _693 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _858
                        t = _344
                        continue 
                    mem[_355 + _363 + _485 + _693 + 32] = 0
                    _876 = mem[64]
                    mem[mem[64]] = _355 + _363 + _485 + _693 - mem[64]
                    mem[64] = _355 + _363 + _485 + _693 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _876
                    t = _344
                    continue 
                mem[_355 + _363 + 32] = 0
                _495 = mem[_201]
                s = 0
                while s < _495:
                    mem[_355 + _363 + s + 32] = mem[_201 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_495) <= _495:
                    _684 = mem[_351]
                    s = 0
                    while s < _684:
                        mem[_355 + _363 + _495 + s + 32] = mem[_351 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_684) <= _684:
                        _859 = mem[64]
                        mem[mem[64]] = _355 + _363 + _495 + _684 - mem[64]
                        mem[64] = _355 + _363 + _495 + _684 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _859
                        t = _344
                        continue 
                    mem[_355 + _363 + _495 + _684 + 32] = 0
                    _877 = mem[64]
                    mem[mem[64]] = _355 + _363 + _495 + _684 - mem[64]
                    mem[64] = _355 + _363 + _495 + _684 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _877
                    t = _344
                    continue 
                mem[_355 + _363 + _495 + 32] = 0
                _694 = mem[_351]
                s = 0
                while s < _694:
                    mem[_355 + _363 + _495 + s + 32] = mem[_351 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _860 = mem[64]
                    mem[mem[64]] = _355 + _363 + _495 + _694 - mem[64]
                    mem[64] = _355 + _363 + _495 + _694 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _860
                    t = _344
                    continue 
                mem[_355 + _363 + _495 + _694 + 32] = 0
                _878 = mem[64]
                mem[mem[64]] = _355 + _363 + _495 + _694 - mem[64]
                mem[64] = _355 + _363 + _495 + _694 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _878
                t = _344
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 32]
            while t:
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 'NH{q', 65
            _479 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _345
                while t:
                    if v < 1:
                        revert with 'NH{q', 17
                    if t / 10 and 10 > -1 / t / 10:
                        revert with 'NH{q', 17
                    if t < 10 * t / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 'NH{q', 17
                    if v - 1 >= mem[_479]:
                        revert with 'NH{q', 50
                    mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _677 = mem[64]
                _681 = mem[s]
                t = 0
                while t < _681:
                    mem[_677 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_681) <= _681:
                    _873 = mem[_201]
                    s = 0
                    while s < _873:
                        mem[_677 + _681 + s + 32] = mem[_201 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_873) <= _873:
                        _977 = mem[_479]
                        s = 0
                        while s < _977:
                            mem[_677 + _681 + _873 + s + 32] = mem[_479 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_977) <= _977:
                            _1057 = mem[64]
                            mem[mem[64]] = _677 + _681 + _873 + _977 - mem[64]
                            mem[64] = _677 + _681 + _873 + _977 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _1057
                            t = _344
                            continue 
                        mem[_677 + _681 + _873 + _977 + 32] = 0
                        _1073 = mem[64]
                        mem[mem[64]] = _677 + _681 + _873 + _977 - mem[64]
                        mem[64] = _677 + _681 + _873 + _977 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1073
                        t = _344
                        continue 
                    mem[_677 + _681 + _873 + 32] = 0
                    _985 = mem[_479]
                    s = 0
                    while s < _985:
                        mem[_677 + _681 + _873 + s + 32] = mem[_479 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_985) <= _985:
                        _1058 = mem[64]
                        mem[mem[64]] = _677 + _681 + _873 + _985 - mem[64]
                        mem[64] = _677 + _681 + _873 + _985 + 32
                        if ceil32(_985) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_985) + 1
                        s = _1058
                        t = _344
                        continue 
                    mem[_677 + _681 + _873 + _985 + 32] = 0
                    _1074 = mem[64]
                    mem[mem[64]] = _677 + _681 + _873 + _985 - mem[64]
                    mem[64] = _677 + _681 + _873 + _985 + 32
                    if ceil32(_985) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_985) + 1
                    s = _1074
                    t = _344
                    continue 
                mem[_677 + _681 + 32] = 0
                _893 = mem[_201]
                s = 0
                while s < _893:
                    mem[_677 + _681 + s + 32] = mem[_201 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_893) <= _893:
                    _978 = mem[_479]
                    s = 0
                    while s < _978:
                        mem[_677 + _681 + _893 + s + 32] = mem[_479 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_978) <= _978:
                        _1059 = mem[64]
                        mem[mem[64]] = _677 + _681 + _893 + _978 - mem[64]
                        mem[64] = _677 + _681 + _893 + _978 + 32
                        if ceil32(_978) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_978) + 1
                        s = _1059
                        t = _344
                        continue 
                    mem[_677 + _681 + _893 + _978 + 32] = 0
                    _1075 = mem[64]
                    mem[mem[64]] = _677 + _681 + _893 + _978 - mem[64]
                    mem[64] = _677 + _681 + _893 + _978 + 32
                    if ceil32(_978) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_978) + 1
                    s = _1075
                    t = _344
                    continue 
                mem[_677 + _681 + _893 + 32] = 0
                _986 = mem[_479]
                s = 0
                while s < _986:
                    mem[_677 + _681 + _893 + s + 32] = mem[_479 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1060 = mem[64]
                    mem[mem[64]] = _677 + _681 + _893 + _986 - mem[64]
                    mem[64] = _677 + _681 + _893 + _986 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1060
                    t = _344
                    continue 
                mem[_677 + _681 + _893 + _986 + 32] = 0
                _1076 = mem[64]
                mem[mem[64]] = _677 + _681 + _893 + _986 - mem[64]
                mem[64] = _677 + _681 + _893 + _986 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1076
                t = _344
                continue 
            mem[_479 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _345
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 and 10 > -1 / t / 10:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_479]:
                    revert with 'NH{q', 50
                mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _678 = mem[64]
            _682 = mem[s]
            t = 0
            while t < _682:
                mem[_678 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_682) <= _682:
                _874 = mem[_201]
                s = 0
                while s < _874:
                    mem[_678 + _682 + s + 32] = mem[_201 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_874) <= _874:
                    _979 = mem[_479]
                    s = 0
                    while s < _979:
                        mem[_678 + _682 + _874 + s + 32] = mem[_479 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_979) <= _979:
                        _1061 = mem[64]
                        mem[mem[64]] = _678 + _682 + _874 + _979 - mem[64]
                        mem[64] = _678 + _682 + _874 + _979 + 32
                        if ceil32(_979) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_979) + 1
                        s = _1061
                        t = _344
                        continue 
                    mem[_678 + _682 + _874 + _979 + 32] = 0
                    _1077 = mem[64]
                    mem[mem[64]] = _678 + _682 + _874 + _979 - mem[64]
                    mem[64] = _678 + _682 + _874 + _979 + 32
                    if ceil32(_979) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_979) + 1
                    s = _1077
                    t = _344
                    continue 
                mem[_678 + _682 + _874 + 32] = 0
                _987 = mem[_479]
                s = 0
                while s < _987:
                    mem[_678 + _682 + _874 + s + 32] = mem[_479 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_987) <= _987:
                    _1062 = mem[64]
                    mem[mem[64]] = _678 + _682 + _874 + _987 - mem[64]
                    mem[64] = _678 + _682 + _874 + _987 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1062
                    t = _344
                    continue 
                mem[_678 + _682 + _874 + _987 + 32] = 0
                _1078 = mem[64]
                mem[mem[64]] = _678 + _682 + _874 + _987 - mem[64]
                mem[64] = _678 + _682 + _874 + _987 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1078
                t = _344
                continue 
            mem[_678 + _682 + 32] = 0
            _894 = mem[_201]
            s = 0
            while s < _894:
                mem[_678 + _682 + s + 32] = mem[_201 + s + 32]
                s = s + 32
                continue 
            if ceil32(_894) <= _894:
                _980 = mem[_479]
                s = 0
                while s < _980:
                    mem[_678 + _682 + _894 + s + 32] = mem[_479 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_980) <= _980:
                    _1063 = mem[64]
                    mem[mem[64]] = _678 + _682 + _894 + _980 - mem[64]
                    mem[64] = _678 + _682 + _894 + _980 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1063
                    t = _344
                    continue 
                mem[_678 + _682 + _894 + _980 + 32] = 0
                _1079 = mem[64]
                mem[mem[64]] = _678 + _682 + _894 + _980 - mem[64]
                mem[64] = _678 + _682 + _894 + _980 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1079
                t = _344
                continue 
            mem[_678 + _682 + _894 + 32] = 0
            _988 = mem[_479]
            s = 0
            while s < _988:
                mem[_678 + _682 + _894 + s + 32] = mem[_479 + s + 32]
                s = s + 32
                continue 
            if ceil32(_988) <= _988:
                _1064 = mem[64]
                mem[mem[64]] = _678 + _682 + _894 + _988 - mem[64]
                mem[64] = _678 + _682 + _894 + _988 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1064
                t = _344
                continue 
            mem[_678 + _682 + _894 + _988 + 32] = 0
            _1080 = mem[64]
            mem[mem[64]] = _678 + _682 + _894 + _988 - mem[64]
            mem[64] = _678 + _682 + _894 + _988 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1080
            t = _344
            continue 
        mem[mem[64]] = 32
        _353 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_353)] = mem[s + 32 len ceil32(_353)]
        if ceil32(_353) > _353:
            mem[mem[64] + _353 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_353) + 32]
    mem[_98 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _56
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if idx / 10 and 10 > -1 / idx / 10:
            revert with 'NH{q', 17
        if idx < 10 * idx / 10:
            revert with 'NH{q', 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 'NH{q', 17
        if t - 1 >= mem[_98]:
            revert with 'NH{q', 50
        mem[t + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _202 = mem[64]
    mem[64] = mem[64] + 64
    mem[_202] = 1
    mem[_202 + 32] = '#'
    idx = 1
    s = _98
    t = _53
    while idx < _50:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _347 = mem[(32 * idx) + 128]
        _348 = mem[mem[(32 * idx) + 128] + 32]
        if not mem[mem[(32 * idx) + 128] + 32]:
            _352 = mem[64]
            mem[64] = mem[64] + 64
            mem[_352] = 1
            mem[_352 + 32] = '0'
            _356 = mem[64]
            _364 = mem[s]
            t = 0
            while t < _364:
                mem[_356 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_364) <= _364:
                _486 = mem[_202]
                s = 0
                while s < _486:
                    mem[_356 + _364 + s + 32] = mem[_202 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_486) <= _486:
                    _687 = mem[_352]
                    s = 0
                    while s < _687:
                        mem[_356 + _364 + _486 + s + 32] = mem[_352 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_687) <= _687:
                        _861 = mem[64]
                        mem[mem[64]] = _356 + _364 + _486 + _687 - mem[64]
                        mem[64] = _356 + _364 + _486 + _687 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _861
                        t = _347
                        continue 
                    mem[_356 + _364 + _486 + _687 + 32] = 0
                    _881 = mem[64]
                    mem[mem[64]] = _356 + _364 + _486 + _687 - mem[64]
                    mem[64] = _356 + _364 + _486 + _687 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _881
                    t = _347
                    continue 
                mem[_356 + _364 + _486 + 32] = 0
                _695 = mem[_352]
                s = 0
                while s < _695:
                    mem[_356 + _364 + _486 + s + 32] = mem[_352 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_695) <= _695:
                    _862 = mem[64]
                    mem[mem[64]] = _356 + _364 + _486 + _695 - mem[64]
                    mem[64] = _356 + _364 + _486 + _695 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _862
                    t = _347
                    continue 
                mem[_356 + _364 + _486 + _695 + 32] = 0
                _882 = mem[64]
                mem[mem[64]] = _356 + _364 + _486 + _695 - mem[64]
                mem[64] = _356 + _364 + _486 + _695 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _882
                t = _347
                continue 
            mem[_356 + _364 + 32] = 0
            _498 = mem[_202]
            s = 0
            while s < _498:
                mem[_356 + _364 + s + 32] = mem[_202 + s + 32]
                s = s + 32
                continue 
            if ceil32(_498) <= _498:
                _688 = mem[_352]
                s = 0
                while s < _688:
                    mem[_356 + _364 + _498 + s + 32] = mem[_352 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_688) <= _688:
                    _863 = mem[64]
                    mem[mem[64]] = _356 + _364 + _498 + _688 - mem[64]
                    mem[64] = _356 + _364 + _498 + _688 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _863
                    t = _347
                    continue 
                mem[_356 + _364 + _498 + _688 + 32] = 0
                _883 = mem[64]
                mem[mem[64]] = _356 + _364 + _498 + _688 - mem[64]
                mem[64] = _356 + _364 + _498 + _688 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _883
                t = _347
                continue 
            mem[_356 + _364 + _498 + 32] = 0
            _696 = mem[_352]
            s = 0
            while s < _696:
                mem[_356 + _364 + _498 + s + 32] = mem[_352 + s + 32]
                s = s + 32
                continue 
            if ceil32(_696) <= _696:
                _864 = mem[64]
                mem[mem[64]] = _356 + _364 + _498 + _696 - mem[64]
                mem[64] = _356 + _364 + _498 + _696 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _864
                t = _347
                continue 
            mem[_356 + _364 + _498 + _696 + 32] = 0
            _884 = mem[64]
            mem[mem[64]] = _356 + _364 + _498 + _696 - mem[64]
            mem[64] = _356 + _364 + _498 + _696 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _884
            t = _347
            continue 
        u = 0
        t = mem[mem[(32 * idx) + 128] + 32]
        while t:
            if u == -1:
                revert with 'NH{q', 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 'NH{q', 65
        _480 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = _348
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 and 10 > -1 / t / 10:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_480]:
                    revert with 'NH{q', 50
                mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _679 = mem[64]
            _685 = mem[s]
            t = 0
            while t < _685:
                mem[_679 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_685) <= _685:
                _879 = mem[_202]
                s = 0
                while s < _879:
                    mem[_679 + _685 + s + 32] = mem[_202 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_879) <= _879:
                    _981 = mem[_480]
                    s = 0
                    while s < _981:
                        mem[_679 + _685 + _879 + s + 32] = mem[_480 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_981) <= _981:
                        _1065 = mem[64]
                        mem[mem[64]] = _679 + _685 + _879 + _981 - mem[64]
                        mem[64] = _679 + _685 + _879 + _981 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1065
                        t = _347
                        continue 
                    mem[_679 + _685 + _879 + _981 + 32] = 0
                    _1081 = mem[64]
                    mem[mem[64]] = _679 + _685 + _879 + _981 - mem[64]
                    mem[64] = _679 + _685 + _879 + _981 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1081
                    t = _347
                    continue 
                mem[_679 + _685 + _879 + 32] = 0
                _989 = mem[_480]
                s = 0
                while s < _989:
                    mem[_679 + _685 + _879 + s + 32] = mem[_480 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1066 = mem[64]
                    mem[mem[64]] = _679 + _685 + _879 + _989 - mem[64]
                    mem[64] = _679 + _685 + _879 + _989 + 32
                    if ceil32(_989) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_989) + 1
                    s = _1066
                    t = _347
                    continue 
                mem[_679 + _685 + _879 + _989 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _679 + _685 + _879 + _989 - mem[64]
                mem[64] = _679 + _685 + _879 + _989 + 32
                if ceil32(_989) == -1:
                    revert with 'NH{q', 17
                s = ceil32(_989) + 1
                s = _1082
                t = _347
                continue 
            mem[_679 + _685 + 32] = 0
            _895 = mem[_202]
            s = 0
            while s < _895:
                mem[_679 + _685 + s + 32] = mem[_202 + s + 32]
                s = s + 32
                continue 
            if ceil32(_895) <= _895:
                _982 = mem[_480]
                s = 0
                while s < _982:
                    mem[_679 + _685 + _895 + s + 32] = mem[_480 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_982) <= _982:
                    _1067 = mem[64]
                    mem[mem[64]] = _679 + _685 + _895 + _982 - mem[64]
                    mem[64] = _679 + _685 + _895 + _982 + 32
                    if ceil32(_982) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_982) + 1
                    s = _1067
                    t = _347
                    continue 
                mem[_679 + _685 + _895 + _982 + 32] = 0
                _1083 = mem[64]
                mem[mem[64]] = _679 + _685 + _895 + _982 - mem[64]
                mem[64] = _679 + _685 + _895 + _982 + 32
                if ceil32(_982) == -1:
                    revert with 'NH{q', 17
                s = ceil32(_982) + 1
                s = _1083
                t = _347
                continue 
            mem[_679 + _685 + _895 + 32] = 0
            _990 = mem[_480]
            s = 0
            while s < _990:
                mem[_679 + _685 + _895 + s + 32] = mem[_480 + s + 32]
                s = s + 32
                continue 
            if ceil32(_990) <= _990:
                _1068 = mem[64]
                mem[mem[64]] = _679 + _685 + _895 + _990 - mem[64]
                mem[64] = _679 + _685 + _895 + _990 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1068
                t = _347
                continue 
            mem[_679 + _685 + _895 + _990 + 32] = 0
            _1084 = mem[64]
            mem[mem[64]] = _679 + _685 + _895 + _990 - mem[64]
            mem[64] = _679 + _685 + _895 + _990 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1084
            t = _347
            continue 
        mem[_480 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = _348
        while t:
            if v < 1:
                revert with 'NH{q', 17
            if t / 10 and 10 > -1 / t / 10:
                revert with 'NH{q', 17
            if t < 10 * t / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 'NH{q', 17
            if v - 1 >= mem[_480]:
                revert with 'NH{q', 50
            mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _680 = mem[64]
        _686 = mem[s]
        t = 0
        while t < _686:
            mem[_680 + t + 32] = mem[s + t + 32]
            t = t + 32
            continue 
        if ceil32(_686) <= _686:
            _880 = mem[_202]
            s = 0
            while s < _880:
                mem[_680 + _686 + s + 32] = mem[_202 + s + 32]
                s = s + 32
                continue 
            if ceil32(_880) <= _880:
                _983 = mem[_480]
                s = 0
                while s < _983:
                    mem[_680 + _686 + _880 + s + 32] = mem[_480 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_983) <= _983:
                    _1069 = mem[64]
                    mem[mem[64]] = _680 + _686 + _880 + _983 - mem[64]
                    mem[64] = _680 + _686 + _880 + _983 + 32
                    if ceil32(_983) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_983) + 1
                    s = _1069
                    t = _347
                    continue 
                mem[_680 + _686 + _880 + _983 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _680 + _686 + _880 + _983 - mem[64]
                mem[64] = _680 + _686 + _880 + _983 + 32
                if ceil32(_983) == -1:
                    revert with 'NH{q', 17
                s = ceil32(_983) + 1
                s = _1085
                t = _347
                continue 
            mem[_680 + _686 + _880 + 32] = 0
            _991 = mem[_480]
            s = 0
            while s < _991:
                mem[_680 + _686 + _880 + s + 32] = mem[_480 + s + 32]
                s = s + 32
                continue 
            if ceil32(_991) <= _991:
                _1070 = mem[64]
                mem[mem[64]] = _680 + _686 + _880 + _991 - mem[64]
                mem[64] = _680 + _686 + _880 + _991 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1070
                t = _347
                continue 
            mem[_680 + _686 + _880 + _991 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _680 + _686 + _880 + _991 - mem[64]
            mem[64] = _680 + _686 + _880 + _991 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1086
            t = _347
            continue 
        mem[_680 + _686 + 32] = 0
        _896 = mem[_202]
        s = 0
        while s < _896:
            mem[_680 + _686 + s + 32] = mem[_202 + s + 32]
            s = s + 32
            continue 
        if ceil32(_896) <= _896:
            _984 = mem[_480]
            s = 0
            while s < _984:
                mem[_680 + _686 + _896 + s + 32] = mem[_480 + s + 32]
                s = s + 32
                continue 
            if ceil32(_984) <= _984:
                _1071 = mem[64]
                mem[mem[64]] = _680 + _686 + _896 + _984 - mem[64]
                mem[64] = _680 + _686 + _896 + _984 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1071
                t = _347
                continue 
            mem[_680 + _686 + _896 + _984 + 32] = 0
            _1087 = mem[64]
            mem[mem[64]] = _680 + _686 + _896 + _984 - mem[64]
            mem[64] = _680 + _686 + _896 + _984 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1087
            t = _347
            continue 
        mem[_680 + _686 + _896 + 32] = 0
        _992 = mem[_480]
        s = 0
        while s < _992:
            mem[_680 + _686 + _896 + s + 32] = mem[_480 + s + 32]
            s = s + 32
            continue 
        if ceil32(_992) <= _992:
            _1072 = mem[64]
            mem[mem[64]] = _680 + _686 + _896 + _992 - mem[64]
            mem[64] = _680 + _686 + _896 + _992 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1072
            t = _347
            continue 
        mem[_680 + _686 + _896 + _992 + 32] = 0
        _1088 = mem[64]
        mem[mem[64]] = _680 + _686 + _896 + _992 - mem[64]
        mem[64] = _680 + _686 + _896 + _992 + 32
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _1088
        t = _347
        continue 
    mem[mem[64]] = 32
    _354 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_354)] = mem[s + 32 len ceil32(_354)]
    if ceil32(_354) > _354:
        mem[mem[64] + _354 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_354) + 32]
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 4
    mem[64] = (32 * uint256(stor4[address(arg1)].field_0)) + 128
    mem[96] = uint256(stor4[address(arg1)].field_0)
    s = 128
    idx = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 4)
        _52 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                revert with 'NH{q', 34
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
            mem[_57] = uint255(stor4[address(arg1)][idx].field_1)
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor4[address(arg1)][idx].field_1):
                    if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                        mem[_57 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_57 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _57 + 32
                        u = sha3(mem[0])
                        while _57 + uint255(stor4[address(arg1)][idx].field_1) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_52] = _57
                mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor4[address(arg1)][idx].field_1 % 128:
                mem[_52] = _57
                mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_57 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_52] = _57
                mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_57 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _57 + 32
            u = sha3(mem[0])
            while _57 + stor4[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_52] = _57
            mem[_52 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_52 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_52 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _52
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        _59 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
        mem[_59] = stor4[address(arg1)][idx].field_1 % 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor4[address(arg1)][idx].field_1):
                mem[_52] = _59
                mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                mem[_59 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_52] = _59
                mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _59 + 32
            u = sha3(mem[0])
            while _59 + uint255(stor4[address(arg1)][u].field_1) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_52] = _59
            mem[_52 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_52 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_52 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _52
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor4[address(arg1)][idx].field_1 % 128:
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_59 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _59 + 32
                u = sha3(mem[0])
                while _59 + stor4[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_52] = _59
        mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
        mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
        mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
        mem[s] = _52
        s = s + 32
        idx = idx + 1
        continue 
    _50 = mem[96]
    _53 = mem[64]
    mem[64] = mem[64] + 128
    mem[_53] = 96
    mem[_53 + 32] = 0
    mem[_53 + 64] = 0
    mem[_53 + 96] = 0
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    _56 = mem[mem[128] + 64]
    if not mem[mem[128] + 64]:
        _58 = mem[64]
        mem[64] = mem[64] + 64
        mem[_58] = 1
        mem[_58 + 32] = '0'
        _60 = mem[64]
        mem[64] = mem[64] + 64
        mem[_60] = 1
        mem[_60 + 32] = '#'
        idx = 1
        s = _58
        t = _53
        while idx < _50:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _100 = mem[(32 * idx) + 128]
            _101 = mem[mem[(32 * idx) + 128] + 64]
            if not mem[mem[(32 * idx) + 128] + 64]:
                _102 = mem[64]
                mem[64] = mem[64] + 64
                mem[_102] = 1
                mem[_102 + 32] = '0'
                _104 = mem[64]
                _108 = mem[s]
                t = 0
                while t < _108:
                    mem[_104 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_108) <= _108:
                    _211 = mem[_60]
                    s = 0
                    while s < _211:
                        mem[_104 + _108 + s + 32] = mem[_60 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_211) <= _211:
                        _359 = mem[_102]
                        s = 0
                        while s < _359:
                            mem[_104 + _108 + _211 + s + 32] = mem[_102 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_359) <= _359:
                            _481 = mem[64]
                            mem[mem[64]] = _104 + _108 + _211 + _359 - mem[64]
                            mem[64] = _104 + _108 + _211 + _359 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _481
                            t = _100
                            continue 
                        mem[_104 + _108 + _211 + _359 + 32] = 0
                        _489 = mem[64]
                        mem[mem[64]] = _104 + _108 + _211 + _359 - mem[64]
                        mem[64] = _104 + _108 + _211 + _359 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _489
                        t = _100
                        continue 
                    mem[_104 + _108 + _211 + 32] = 0
                    _361 = mem[_102]
                    s = 0
                    while s < _361:
                        mem[_104 + _108 + _211 + s + 32] = mem[_102 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_361) <= _361:
                        _482 = mem[64]
                        mem[mem[64]] = _104 + _108 + _211 + _361 - mem[64]
                        mem[64] = _104 + _108 + _211 + _361 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _482
                        t = _100
                        continue 
                    mem[_104 + _108 + _211 + _361 + 32] = 0
                    _490 = mem[64]
                    mem[mem[64]] = _104 + _108 + _211 + _361 - mem[64]
                    mem[64] = _104 + _108 + _211 + _361 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _490
                    t = _100
                    continue 
                mem[_104 + _108 + 32] = 0
                _214 = mem[_60]
                s = 0
                while s < _214:
                    mem[_104 + _108 + s + 32] = mem[_60 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_214) <= _214:
                    _360 = mem[_102]
                    s = 0
                    while s < _360:
                        mem[_104 + _108 + _214 + s + 32] = mem[_102 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_360) <= _360:
                        _483 = mem[64]
                        mem[mem[64]] = _104 + _108 + _214 + _360 - mem[64]
                        mem[64] = _104 + _108 + _214 + _360 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _483
                        t = _100
                        continue 
                    mem[_104 + _108 + _214 + _360 + 32] = 0
                    _491 = mem[64]
                    mem[mem[64]] = _104 + _108 + _214 + _360 - mem[64]
                    mem[64] = _104 + _108 + _214 + _360 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _491
                    t = _100
                    continue 
                mem[_104 + _108 + _214 + 32] = 0
                _362 = mem[_102]
                s = 0
                while s < _362:
                    mem[_104 + _108 + _214 + s + 32] = mem[_102 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_362) <= _362:
                    _484 = mem[64]
                    mem[mem[64]] = _104 + _108 + _214 + _362 - mem[64]
                    mem[64] = _104 + _108 + _214 + _362 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _484
                    t = _100
                    continue 
                mem[_104 + _108 + _214 + _362 + 32] = 0
                _492 = mem[64]
                mem[mem[64]] = _104 + _108 + _214 + _362 - mem[64]
                mem[64] = _104 + _108 + _214 + _362 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _492
                t = _100
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 64]
            while t:
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 'NH{q', 65
            _200 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _101
                while t:
                    if v < 1:
                        revert with 'NH{q', 17
                    if t / 10 and 10 > -1 / t / 10:
                        revert with 'NH{q', 17
                    if t < 10 * t / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 'NH{q', 17
                    if v - 1 >= mem[_200]:
                        revert with 'NH{q', 50
                    mem[v + _200 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _349 = mem[64]
                _357 = mem[s]
                t = 0
                while t < _357:
                    mem[_349 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_357) <= _357:
                    _487 = mem[_60]
                    s = 0
                    while s < _487:
                        mem[_349 + _357 + s + 32] = mem[_60 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_487) <= _487:
                        _689 = mem[_200]
                        s = 0
                        while s < _689:
                            mem[_349 + _357 + _487 + s + 32] = mem[_200 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_689) <= _689:
                            _865 = mem[64]
                            mem[mem[64]] = _349 + _357 + _487 + _689 - mem[64]
                            mem[64] = _349 + _357 + _487 + _689 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _865
                            t = _100
                            continue 
                        mem[_349 + _357 + _487 + _689 + 32] = 0
                        _885 = mem[64]
                        mem[mem[64]] = _349 + _357 + _487 + _689 - mem[64]
                        mem[64] = _349 + _357 + _487 + _689 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _885
                        t = _100
                        continue 
                    mem[_349 + _357 + _487 + 32] = 0
                    _697 = mem[_200]
                    s = 0
                    while s < _697:
                        mem[_349 + _357 + _487 + s + 32] = mem[_200 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _866 = mem[64]
                        mem[mem[64]] = _349 + _357 + _487 + _697 - mem[64]
                        mem[64] = _349 + _357 + _487 + _697 + 32
                        if ceil32(_697) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_697) + 1
                        s = _866
                        t = _100
                        continue 
                    mem[_349 + _357 + _487 + _697 + 32] = 0
                    _886 = mem[64]
                    mem[mem[64]] = _349 + _357 + _487 + _697 - mem[64]
                    mem[64] = _349 + _357 + _487 + _697 + 32
                    if ceil32(_697) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_697) + 1
                    s = _886
                    t = _100
                    continue 
                mem[_349 + _357 + 32] = 0
                _499 = mem[_60]
                s = 0
                while s < _499:
                    mem[_349 + _357 + s + 32] = mem[_60 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_499) <= _499:
                    _690 = mem[_200]
                    s = 0
                    while s < _690:
                        mem[_349 + _357 + _499 + s + 32] = mem[_200 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _867 = mem[64]
                        mem[mem[64]] = _349 + _357 + _499 + _690 - mem[64]
                        mem[64] = _349 + _357 + _499 + _690 + 32
                        if ceil32(_690) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_690) + 1
                        s = _867
                        t = _100
                        continue 
                    mem[_349 + _357 + _499 + _690 + 32] = 0
                    _887 = mem[64]
                    mem[mem[64]] = _349 + _357 + _499 + _690 - mem[64]
                    mem[64] = _349 + _357 + _499 + _690 + 32
                    if ceil32(_690) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_690) + 1
                    s = _887
                    t = _100
                    continue 
                mem[_349 + _357 + _499 + 32] = 0
                _698 = mem[_200]
                s = 0
                while s < _698:
                    mem[_349 + _357 + _499 + s + 32] = mem[_200 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _868 = mem[64]
                    mem[mem[64]] = _349 + _357 + _499 + _698 - mem[64]
                    mem[64] = _349 + _357 + _499 + _698 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _868
                    t = _100
                    continue 
                mem[_349 + _357 + _499 + _698 + 32] = 0
                _888 = mem[64]
                mem[mem[64]] = _349 + _357 + _499 + _698 - mem[64]
                mem[64] = _349 + _357 + _499 + _698 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _888
                t = _100
                continue 
            mem[_200 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _101
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 and 10 > -1 / t / 10:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_200]:
                    revert with 'NH{q', 50
                mem[v + _200 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _350 = mem[64]
            _358 = mem[s]
            t = 0
            while t < _358:
                mem[_350 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_358) <= _358:
                _488 = mem[_60]
                s = 0
                while s < _488:
                    mem[_350 + _358 + s + 32] = mem[_60 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_488) <= _488:
                    _691 = mem[_200]
                    s = 0
                    while s < _691:
                        mem[_350 + _358 + _488 + s + 32] = mem[_200 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_691) <= _691:
                        _869 = mem[64]
                        mem[mem[64]] = _350 + _358 + _488 + _691 - mem[64]
                        mem[64] = _350 + _358 + _488 + _691 + 32
                        if ceil32(_691) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_691) + 1
                        s = _869
                        t = _100
                        continue 
                    mem[_350 + _358 + _488 + _691 + 32] = 0
                    _889 = mem[64]
                    mem[mem[64]] = _350 + _358 + _488 + _691 - mem[64]
                    mem[64] = _350 + _358 + _488 + _691 + 32
                    if ceil32(_691) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_691) + 1
                    s = _889
                    t = _100
                    continue 
                mem[_350 + _358 + _488 + 32] = 0
                _699 = mem[_200]
                s = 0
                while s < _699:
                    mem[_350 + _358 + _488 + s + 32] = mem[_200 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_699) <= _699:
                    _870 = mem[64]
                    mem[mem[64]] = _350 + _358 + _488 + _699 - mem[64]
                    mem[64] = _350 + _358 + _488 + _699 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _870
                    t = _100
                    continue 
                mem[_350 + _358 + _488 + _699 + 32] = 0
                _890 = mem[64]
                mem[mem[64]] = _350 + _358 + _488 + _699 - mem[64]
                mem[64] = _350 + _358 + _488 + _699 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _890
                t = _100
                continue 
            mem[_350 + _358 + 32] = 0
            _500 = mem[_60]
            s = 0
            while s < _500:
                mem[_350 + _358 + s + 32] = mem[_60 + s + 32]
                s = s + 32
                continue 
            if ceil32(_500) <= _500:
                _692 = mem[_200]
                s = 0
                while s < _692:
                    mem[_350 + _358 + _500 + s + 32] = mem[_200 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_692) <= _692:
                    _871 = mem[64]
                    mem[mem[64]] = _350 + _358 + _500 + _692 - mem[64]
                    mem[64] = _350 + _358 + _500 + _692 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _871
                    t = _100
                    continue 
                mem[_350 + _358 + _500 + _692 + 32] = 0
                _891 = mem[64]
                mem[mem[64]] = _350 + _358 + _500 + _692 - mem[64]
                mem[64] = _350 + _358 + _500 + _692 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _891
                t = _100
                continue 
            mem[_350 + _358 + _500 + 32] = 0
            _700 = mem[_200]
            s = 0
            while s < _700:
                mem[_350 + _358 + _500 + s + 32] = mem[_200 + s + 32]
                s = s + 32
                continue 
            if ceil32(_700) <= _700:
                _872 = mem[64]
                mem[mem[64]] = _350 + _358 + _500 + _700 - mem[64]
                mem[64] = _350 + _358 + _500 + _700 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _872
                t = _100
                continue 
            mem[_350 + _358 + _500 + _700 + 32] = 0
            _892 = mem[64]
            mem[mem[64]] = _350 + _358 + _500 + _700 - mem[64]
            mem[64] = _350 + _358 + _500 + _700 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _892
            t = _100
            continue 
        mem[mem[64]] = 32
        _103 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_103)] = mem[s + 32 len ceil32(_103)]
        if ceil32(_103) > _103:
            mem[mem[64] + _103 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_103) + 32]
    s = 0
    idx = mem[mem[128] + 64]
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _98 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _56
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[_98]:
                revert with 'NH{q', 50
            mem[t + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _201 = mem[64]
        mem[64] = mem[64] + 64
        mem[_201] = 1
        mem[_201 + 32] = '#'
        idx = 1
        s = _98
        t = _53
        while idx < _50:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _344 = mem[(32 * idx) + 128]
            _345 = mem[mem[(32 * idx) + 128] + 64]
            if not mem[mem[(32 * idx) + 128] + 64]:
                _351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_351] = 1
                mem[_351 + 32] = '0'
                _355 = mem[64]
                _363 = mem[s]
                t = 0
                while t < _363:
                    mem[_355 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_363) <= _363:
                    _485 = mem[_201]
                    s = 0
                    while s < _485:
                        mem[_355 + _363 + s + 32] = mem[_201 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_485) <= _485:
                        _683 = mem[_351]
                        s = 0
                        while s < _683:
                            mem[_355 + _363 + _485 + s + 32] = mem[_351 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_683) <= _683:
                            _857 = mem[64]
                            mem[mem[64]] = _355 + _363 + _485 + _683 - mem[64]
                            mem[64] = _355 + _363 + _485 + _683 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _857
                            t = _344
                            continue 
                        mem[_355 + _363 + _485 + _683 + 32] = 0
                        _875 = mem[64]
                        mem[mem[64]] = _355 + _363 + _485 + _683 - mem[64]
                        mem[64] = _355 + _363 + _485 + _683 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _875
                        t = _344
                        continue 
                    mem[_355 + _363 + _485 + 32] = 0
                    _693 = mem[_351]
                    s = 0
                    while s < _693:
                        mem[_355 + _363 + _485 + s + 32] = mem[_351 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _858 = mem[64]
                        mem[mem[64]] = _355 + _363 + _485 + _693 - mem[64]
                        mem[64] = _355 + _363 + _485 + _693 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _858
                        t = _344
                        continue 
                    mem[_355 + _363 + _485 + _693 + 32] = 0
                    _876 = mem[64]
                    mem[mem[64]] = _355 + _363 + _485 + _693 - mem[64]
                    mem[64] = _355 + _363 + _485 + _693 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _876
                    t = _344
                    continue 
                mem[_355 + _363 + 32] = 0
                _495 = mem[_201]
                s = 0
                while s < _495:
                    mem[_355 + _363 + s + 32] = mem[_201 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_495) <= _495:
                    _684 = mem[_351]
                    s = 0
                    while s < _684:
                        mem[_355 + _363 + _495 + s + 32] = mem[_351 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_684) <= _684:
                        _859 = mem[64]
                        mem[mem[64]] = _355 + _363 + _495 + _684 - mem[64]
                        mem[64] = _355 + _363 + _495 + _684 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _859
                        t = _344
                        continue 
                    mem[_355 + _363 + _495 + _684 + 32] = 0
                    _877 = mem[64]
                    mem[mem[64]] = _355 + _363 + _495 + _684 - mem[64]
                    mem[64] = _355 + _363 + _495 + _684 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _877
                    t = _344
                    continue 
                mem[_355 + _363 + _495 + 32] = 0
                _694 = mem[_351]
                s = 0
                while s < _694:
                    mem[_355 + _363 + _495 + s + 32] = mem[_351 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _860 = mem[64]
                    mem[mem[64]] = _355 + _363 + _495 + _694 - mem[64]
                    mem[64] = _355 + _363 + _495 + _694 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _860
                    t = _344
                    continue 
                mem[_355 + _363 + _495 + _694 + 32] = 0
                _878 = mem[64]
                mem[mem[64]] = _355 + _363 + _495 + _694 - mem[64]
                mem[64] = _355 + _363 + _495 + _694 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _878
                t = _344
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 64]
            while t:
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 'NH{q', 65
            _479 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _345
                while t:
                    if v < 1:
                        revert with 'NH{q', 17
                    if t / 10 and 10 > -1 / t / 10:
                        revert with 'NH{q', 17
                    if t < 10 * t / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 'NH{q', 17
                    if v - 1 >= mem[_479]:
                        revert with 'NH{q', 50
                    mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _677 = mem[64]
                _681 = mem[s]
                t = 0
                while t < _681:
                    mem[_677 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_681) <= _681:
                    _873 = mem[_201]
                    s = 0
                    while s < _873:
                        mem[_677 + _681 + s + 32] = mem[_201 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_873) <= _873:
                        _977 = mem[_479]
                        s = 0
                        while s < _977:
                            mem[_677 + _681 + _873 + s + 32] = mem[_479 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_977) <= _977:
                            _1057 = mem[64]
                            mem[mem[64]] = _677 + _681 + _873 + _977 - mem[64]
                            mem[64] = _677 + _681 + _873 + _977 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _1057
                            t = _344
                            continue 
                        mem[_677 + _681 + _873 + _977 + 32] = 0
                        _1073 = mem[64]
                        mem[mem[64]] = _677 + _681 + _873 + _977 - mem[64]
                        mem[64] = _677 + _681 + _873 + _977 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1073
                        t = _344
                        continue 
                    mem[_677 + _681 + _873 + 32] = 0
                    _985 = mem[_479]
                    s = 0
                    while s < _985:
                        mem[_677 + _681 + _873 + s + 32] = mem[_479 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_985) <= _985:
                        _1058 = mem[64]
                        mem[mem[64]] = _677 + _681 + _873 + _985 - mem[64]
                        mem[64] = _677 + _681 + _873 + _985 + 32
                        if ceil32(_985) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_985) + 1
                        s = _1058
                        t = _344
                        continue 
                    mem[_677 + _681 + _873 + _985 + 32] = 0
                    _1074 = mem[64]
                    mem[mem[64]] = _677 + _681 + _873 + _985 - mem[64]
                    mem[64] = _677 + _681 + _873 + _985 + 32
                    if ceil32(_985) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_985) + 1
                    s = _1074
                    t = _344
                    continue 
                mem[_677 + _681 + 32] = 0
                _893 = mem[_201]
                s = 0
                while s < _893:
                    mem[_677 + _681 + s + 32] = mem[_201 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_893) <= _893:
                    _978 = mem[_479]
                    s = 0
                    while s < _978:
                        mem[_677 + _681 + _893 + s + 32] = mem[_479 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_978) <= _978:
                        _1059 = mem[64]
                        mem[mem[64]] = _677 + _681 + _893 + _978 - mem[64]
                        mem[64] = _677 + _681 + _893 + _978 + 32
                        if ceil32(_978) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_978) + 1
                        s = _1059
                        t = _344
                        continue 
                    mem[_677 + _681 + _893 + _978 + 32] = 0
                    _1075 = mem[64]
                    mem[mem[64]] = _677 + _681 + _893 + _978 - mem[64]
                    mem[64] = _677 + _681 + _893 + _978 + 32
                    if ceil32(_978) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_978) + 1
                    s = _1075
                    t = _344
                    continue 
                mem[_677 + _681 + _893 + 32] = 0
                _986 = mem[_479]
                s = 0
                while s < _986:
                    mem[_677 + _681 + _893 + s + 32] = mem[_479 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1060 = mem[64]
                    mem[mem[64]] = _677 + _681 + _893 + _986 - mem[64]
                    mem[64] = _677 + _681 + _893 + _986 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1060
                    t = _344
                    continue 
                mem[_677 + _681 + _893 + _986 + 32] = 0
                _1076 = mem[64]
                mem[mem[64]] = _677 + _681 + _893 + _986 - mem[64]
                mem[64] = _677 + _681 + _893 + _986 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1076
                t = _344
                continue 
            mem[_479 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _345
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 and 10 > -1 / t / 10:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_479]:
                    revert with 'NH{q', 50
                mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _678 = mem[64]
            _682 = mem[s]
            t = 0
            while t < _682:
                mem[_678 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_682) <= _682:
                _874 = mem[_201]
                s = 0
                while s < _874:
                    mem[_678 + _682 + s + 32] = mem[_201 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_874) <= _874:
                    _979 = mem[_479]
                    s = 0
                    while s < _979:
                        mem[_678 + _682 + _874 + s + 32] = mem[_479 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_979) <= _979:
                        _1061 = mem[64]
                        mem[mem[64]] = _678 + _682 + _874 + _979 - mem[64]
                        mem[64] = _678 + _682 + _874 + _979 + 32
                        if ceil32(_979) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_979) + 1
                        s = _1061
                        t = _344
                        continue 
                    mem[_678 + _682 + _874 + _979 + 32] = 0
                    _1077 = mem[64]
                    mem[mem[64]] = _678 + _682 + _874 + _979 - mem[64]
                    mem[64] = _678 + _682 + _874 + _979 + 32
                    if ceil32(_979) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_979) + 1
                    s = _1077
                    t = _344
                    continue 
                mem[_678 + _682 + _874 + 32] = 0
                _987 = mem[_479]
                s = 0
                while s < _987:
                    mem[_678 + _682 + _874 + s + 32] = mem[_479 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_987) <= _987:
                    _1062 = mem[64]
                    mem[mem[64]] = _678 + _682 + _874 + _987 - mem[64]
                    mem[64] = _678 + _682 + _874 + _987 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1062
                    t = _344
                    continue 
                mem[_678 + _682 + _874 + _987 + 32] = 0
                _1078 = mem[64]
                mem[mem[64]] = _678 + _682 + _874 + _987 - mem[64]
                mem[64] = _678 + _682 + _874 + _987 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1078
                t = _344
                continue 
            mem[_678 + _682 + 32] = 0
            _894 = mem[_201]
            s = 0
            while s < _894:
                mem[_678 + _682 + s + 32] = mem[_201 + s + 32]
                s = s + 32
                continue 
            if ceil32(_894) <= _894:
                _980 = mem[_479]
                s = 0
                while s < _980:
                    mem[_678 + _682 + _894 + s + 32] = mem[_479 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_980) <= _980:
                    _1063 = mem[64]
                    mem[mem[64]] = _678 + _682 + _894 + _980 - mem[64]
                    mem[64] = _678 + _682 + _894 + _980 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1063
                    t = _344
                    continue 
                mem[_678 + _682 + _894 + _980 + 32] = 0
                _1079 = mem[64]
                mem[mem[64]] = _678 + _682 + _894 + _980 - mem[64]
                mem[64] = _678 + _682 + _894 + _980 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1079
                t = _344
                continue 
            mem[_678 + _682 + _894 + 32] = 0
            _988 = mem[_479]
            s = 0
            while s < _988:
                mem[_678 + _682 + _894 + s + 32] = mem[_479 + s + 32]
                s = s + 32
                continue 
            if ceil32(_988) <= _988:
                _1064 = mem[64]
                mem[mem[64]] = _678 + _682 + _894 + _988 - mem[64]
                mem[64] = _678 + _682 + _894 + _988 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1064
                t = _344
                continue 
            mem[_678 + _682 + _894 + _988 + 32] = 0
            _1080 = mem[64]
            mem[mem[64]] = _678 + _682 + _894 + _988 - mem[64]
            mem[64] = _678 + _682 + _894 + _988 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1080
            t = _344
            continue 
        mem[mem[64]] = 32
        _353 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_353)] = mem[s + 32 len ceil32(_353)]
        if ceil32(_353) > _353:
            mem[mem[64] + _353 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_353) + 32]
    mem[_98 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _56
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if idx / 10 and 10 > -1 / idx / 10:
            revert with 'NH{q', 17
        if idx < 10 * idx / 10:
            revert with 'NH{q', 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 'NH{q', 17
        if t - 1 >= mem[_98]:
            revert with 'NH{q', 50
        mem[t + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _202 = mem[64]
    mem[64] = mem[64] + 64
    mem[_202] = 1
    mem[_202 + 32] = '#'
    idx = 1
    s = _98
    t = _53
    while idx < _50:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _347 = mem[(32 * idx) + 128]
        _348 = mem[mem[(32 * idx) + 128] + 64]
        if not mem[mem[(32 * idx) + 128] + 64]:
            _352 = mem[64]
            mem[64] = mem[64] + 64
            mem[_352] = 1
            mem[_352 + 32] = '0'
            _356 = mem[64]
            _364 = mem[s]
            t = 0
            while t < _364:
                mem[_356 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_364) <= _364:
                _486 = mem[_202]
                s = 0
                while s < _486:
                    mem[_356 + _364 + s + 32] = mem[_202 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_486) <= _486:
                    _687 = mem[_352]
                    s = 0
                    while s < _687:
                        mem[_356 + _364 + _486 + s + 32] = mem[_352 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_687) <= _687:
                        _861 = mem[64]
                        mem[mem[64]] = _356 + _364 + _486 + _687 - mem[64]
                        mem[64] = _356 + _364 + _486 + _687 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _861
                        t = _347
                        continue 
                    mem[_356 + _364 + _486 + _687 + 32] = 0
                    _881 = mem[64]
                    mem[mem[64]] = _356 + _364 + _486 + _687 - mem[64]
                    mem[64] = _356 + _364 + _486 + _687 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _881
                    t = _347
                    continue 
                mem[_356 + _364 + _486 + 32] = 0
                _695 = mem[_352]
                s = 0
                while s < _695:
                    mem[_356 + _364 + _486 + s + 32] = mem[_352 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_695) <= _695:
                    _862 = mem[64]
                    mem[mem[64]] = _356 + _364 + _486 + _695 - mem[64]
                    mem[64] = _356 + _364 + _486 + _695 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _862
                    t = _347
                    continue 
                mem[_356 + _364 + _486 + _695 + 32] = 0
                _882 = mem[64]
                mem[mem[64]] = _356 + _364 + _486 + _695 - mem[64]
                mem[64] = _356 + _364 + _486 + _695 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _882
                t = _347
                continue 
            mem[_356 + _364 + 32] = 0
            _498 = mem[_202]
            s = 0
            while s < _498:
                mem[_356 + _364 + s + 32] = mem[_202 + s + 32]
                s = s + 32
                continue 
            if ceil32(_498) <= _498:
                _688 = mem[_352]
                s = 0
                while s < _688:
                    mem[_356 + _364 + _498 + s + 32] = mem[_352 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_688) <= _688:
                    _863 = mem[64]
                    mem[mem[64]] = _356 + _364 + _498 + _688 - mem[64]
                    mem[64] = _356 + _364 + _498 + _688 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _863
                    t = _347
                    continue 
                mem[_356 + _364 + _498 + _688 + 32] = 0
                _883 = mem[64]
                mem[mem[64]] = _356 + _364 + _498 + _688 - mem[64]
                mem[64] = _356 + _364 + _498 + _688 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _883
                t = _347
                continue 
            mem[_356 + _364 + _498 + 32] = 0
            _696 = mem[_352]
            s = 0
            while s < _696:
                mem[_356 + _364 + _498 + s + 32] = mem[_352 + s + 32]
                s = s + 32
                continue 
            if ceil32(_696) <= _696:
                _864 = mem[64]
                mem[mem[64]] = _356 + _364 + _498 + _696 - mem[64]
                mem[64] = _356 + _364 + _498 + _696 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _864
                t = _347
                continue 
            mem[_356 + _364 + _498 + _696 + 32] = 0
            _884 = mem[64]
            mem[mem[64]] = _356 + _364 + _498 + _696 - mem[64]
            mem[64] = _356 + _364 + _498 + _696 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _884
            t = _347
            continue 
        u = 0
        t = mem[mem[(32 * idx) + 128] + 64]
        while t:
            if u == -1:
                revert with 'NH{q', 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 'NH{q', 65
        _480 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = _348
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 and 10 > -1 / t / 10:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_480]:
                    revert with 'NH{q', 50
                mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _679 = mem[64]
            _685 = mem[s]
            t = 0
            while t < _685:
                mem[_679 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_685) <= _685:
                _879 = mem[_202]
                s = 0
                while s < _879:
                    mem[_679 + _685 + s + 32] = mem[_202 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_879) <= _879:
                    _981 = mem[_480]
                    s = 0
                    while s < _981:
                        mem[_679 + _685 + _879 + s + 32] = mem[_480 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_981) <= _981:
                        _1065 = mem[64]
                        mem[mem[64]] = _679 + _685 + _879 + _981 - mem[64]
                        mem[64] = _679 + _685 + _879 + _981 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1065
                        t = _347
                        continue 
                    mem[_679 + _685 + _879 + _981 + 32] = 0
                    _1081 = mem[64]
                    mem[mem[64]] = _679 + _685 + _879 + _981 - mem[64]
                    mem[64] = _679 + _685 + _879 + _981 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1081
                    t = _347
                    continue 
                mem[_679 + _685 + _879 + 32] = 0
                _989 = mem[_480]
                s = 0
                while s < _989:
                    mem[_679 + _685 + _879 + s + 32] = mem[_480 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1066 = mem[64]
                    mem[mem[64]] = _679 + _685 + _879 + _989 - mem[64]
                    mem[64] = _679 + _685 + _879 + _989 + 32
                    if ceil32(_989) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_989) + 1
                    s = _1066
                    t = _347
                    continue 
                mem[_679 + _685 + _879 + _989 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _679 + _685 + _879 + _989 - mem[64]
                mem[64] = _679 + _685 + _879 + _989 + 32
                if ceil32(_989) == -1:
                    revert with 'NH{q', 17
                s = ceil32(_989) + 1
                s = _1082
                t = _347
                continue 
            mem[_679 + _685 + 32] = 0
            _895 = mem[_202]
            s = 0
            while s < _895:
                mem[_679 + _685 + s + 32] = mem[_202 + s + 32]
                s = s + 32
                continue 
            if ceil32(_895) <= _895:
                _982 = mem[_480]
                s = 0
                while s < _982:
                    mem[_679 + _685 + _895 + s + 32] = mem[_480 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_982) <= _982:
                    _1067 = mem[64]
                    mem[mem[64]] = _679 + _685 + _895 + _982 - mem[64]
                    mem[64] = _679 + _685 + _895 + _982 + 32
                    if ceil32(_982) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_982) + 1
                    s = _1067
                    t = _347
                    continue 
                mem[_679 + _685 + _895 + _982 + 32] = 0
                _1083 = mem[64]
                mem[mem[64]] = _679 + _685 + _895 + _982 - mem[64]
                mem[64] = _679 + _685 + _895 + _982 + 32
                if ceil32(_982) == -1:
                    revert with 'NH{q', 17
                s = ceil32(_982) + 1
                s = _1083
                t = _347
                continue 
            mem[_679 + _685 + _895 + 32] = 0
            _990 = mem[_480]
            s = 0
            while s < _990:
                mem[_679 + _685 + _895 + s + 32] = mem[_480 + s + 32]
                s = s + 32
                continue 
            if ceil32(_990) <= _990:
                _1068 = mem[64]
                mem[mem[64]] = _679 + _685 + _895 + _990 - mem[64]
                mem[64] = _679 + _685 + _895 + _990 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1068
                t = _347
                continue 
            mem[_679 + _685 + _895 + _990 + 32] = 0
            _1084 = mem[64]
            mem[mem[64]] = _679 + _685 + _895 + _990 - mem[64]
            mem[64] = _679 + _685 + _895 + _990 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1084
            t = _347
            continue 
        mem[_480 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = _348
        while t:
            if v < 1:
                revert with 'NH{q', 17
            if t / 10 and 10 > -1 / t / 10:
                revert with 'NH{q', 17
            if t < 10 * t / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 'NH{q', 17
            if v - 1 >= mem[_480]:
                revert with 'NH{q', 50
            mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _680 = mem[64]
        _686 = mem[s]
        t = 0
        while t < _686:
            mem[_680 + t + 32] = mem[s + t + 32]
            t = t + 32
            continue 
        if ceil32(_686) <= _686:
            _880 = mem[_202]
            s = 0
            while s < _880:
                mem[_680 + _686 + s + 32] = mem[_202 + s + 32]
                s = s + 32
                continue 
            if ceil32(_880) <= _880:
                _983 = mem[_480]
                s = 0
                while s < _983:
                    mem[_680 + _686 + _880 + s + 32] = mem[_480 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_983) <= _983:
                    _1069 = mem[64]
                    mem[mem[64]] = _680 + _686 + _880 + _983 - mem[64]
                    mem[64] = _680 + _686 + _880 + _983 + 32
                    if ceil32(_983) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_983) + 1
                    s = _1069
                    t = _347
                    continue 
                mem[_680 + _686 + _880 + _983 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _680 + _686 + _880 + _983 - mem[64]
                mem[64] = _680 + _686 + _880 + _983 + 32
                if ceil32(_983) == -1:
                    revert with 'NH{q', 17
                s = ceil32(_983) + 1
                s = _1085
                t = _347
                continue 
            mem[_680 + _686 + _880 + 32] = 0
            _991 = mem[_480]
            s = 0
            while s < _991:
                mem[_680 + _686 + _880 + s + 32] = mem[_480 + s + 32]
                s = s + 32
                continue 
            if ceil32(_991) <= _991:
                _1070 = mem[64]
                mem[mem[64]] = _680 + _686 + _880 + _991 - mem[64]
                mem[64] = _680 + _686 + _880 + _991 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1070
                t = _347
                continue 
            mem[_680 + _686 + _880 + _991 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _680 + _686 + _880 + _991 - mem[64]
            mem[64] = _680 + _686 + _880 + _991 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1086
            t = _347
            continue 
        mem[_680 + _686 + 32] = 0
        _896 = mem[_202]
        s = 0
        while s < _896:
            mem[_680 + _686 + s + 32] = mem[_202 + s + 32]
            s = s + 32
            continue 
        if ceil32(_896) <= _896:
            _984 = mem[_480]
            s = 0
            while s < _984:
                mem[_680 + _686 + _896 + s + 32] = mem[_480 + s + 32]
                s = s + 32
                continue 
            if ceil32(_984) <= _984:
                _1071 = mem[64]
                mem[mem[64]] = _680 + _686 + _896 + _984 - mem[64]
                mem[64] = _680 + _686 + _896 + _984 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1071
                t = _347
                continue 
            mem[_680 + _686 + _896 + _984 + 32] = 0
            _1087 = mem[64]
            mem[mem[64]] = _680 + _686 + _896 + _984 - mem[64]
            mem[64] = _680 + _686 + _896 + _984 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1087
            t = _347
            continue 
        mem[_680 + _686 + _896 + 32] = 0
        _992 = mem[_480]
        s = 0
        while s < _992:
            mem[_680 + _686 + _896 + s + 32] = mem[_480 + s + 32]
            s = s + 32
            continue 
        if ceil32(_992) <= _992:
            _1072 = mem[64]
            mem[mem[64]] = _680 + _686 + _896 + _992 - mem[64]
            mem[64] = _680 + _686 + _896 + _992 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1072
            t = _347
            continue 
        mem[_680 + _686 + _896 + _992 + 32] = 0
        _1088 = mem[64]
        mem[mem[64]] = _680 + _686 + _896 + _992 - mem[64]
        mem[64] = _680 + _686 + _896 + _992 + 32
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _1088
        t = _347
        continue 
    mem[mem[64]] = 32
    _354 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_354)] = mem[s + 32 len ceil32(_354)]
    if ceil32(_354) > _354:
        mem[mem[64] + _354 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_354) + 32]
}

function _getNodesRewardAvailable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 4
    mem[64] = (32 * uint256(stor4[address(arg1)].field_0)) + 128
    mem[96] = uint256(stor4[address(arg1)].field_0)
    s = 128
    idx = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 4)
        _52 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                revert with 'NH{q', 34
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
            mem[_57] = uint255(stor4[address(arg1)][idx].field_1)
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor4[address(arg1)][idx].field_1):
                    if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                        mem[_57 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_57 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _57 + 32
                        u = sha3(mem[0])
                        while _57 + uint255(stor4[address(arg1)][idx].field_1) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_52] = _57
                mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor4[address(arg1)][idx].field_1 % 128:
                mem[_52] = _57
                mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_57 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_52] = _57
                mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_57 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _57 + 32
            u = sha3(mem[0])
            while _57 + stor4[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_52] = _57
            mem[_52 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_52 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_52 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _52
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        _59 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
        mem[_59] = stor4[address(arg1)][idx].field_1 % 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor4[address(arg1)][idx].field_1):
                mem[_52] = _59
                mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                mem[_59 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_52] = _59
                mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _59 + 32
            u = sha3(mem[0])
            while _59 + uint255(stor4[address(arg1)][u].field_1) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_52] = _59
            mem[_52 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_52 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_52 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _52
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor4[address(arg1)][idx].field_1 % 128:
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_59 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_59 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _59 + 32
                u = sha3(mem[0])
                while _59 + stor4[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_52] = _59
        mem[_52 + 32] = uint256(stor4[address(arg1)][idx].field_256)
        mem[_52 + 64] = uint256(stor4[address(arg1)][idx].field_512)
        mem[_52 + 96] = uint256(stor4[address(arg1)][idx].field_768)
        mem[s] = _52
        s = s + 32
        idx = idx + 1
        continue 
    _50 = mem[96]
    _53 = mem[64]
    mem[64] = mem[64] + 128
    mem[_53] = 96
    mem[_53 + 32] = 0
    mem[_53 + 64] = 0
    mem[_53 + 96] = 0
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    _56 = mem[mem[128] + 96]
    if not mem[mem[128] + 96]:
        _58 = mem[64]
        mem[64] = mem[64] + 64
        mem[_58] = 1
        mem[_58 + 32] = '0'
        _60 = mem[64]
        mem[64] = mem[64] + 64
        mem[_60] = 1
        mem[_60 + 32] = '#'
        idx = 1
        s = _58
        t = _53
        while idx < _50:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _100 = mem[(32 * idx) + 128]
            _101 = mem[mem[(32 * idx) + 128] + 96]
            if not mem[mem[(32 * idx) + 128] + 96]:
                _102 = mem[64]
                mem[64] = mem[64] + 64
                mem[_102] = 1
                mem[_102 + 32] = '0'
                _104 = mem[64]
                _108 = mem[s]
                t = 0
                while t < _108:
                    mem[_104 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_108) <= _108:
                    _211 = mem[_60]
                    s = 0
                    while s < _211:
                        mem[_104 + _108 + s + 32] = mem[_60 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_211) <= _211:
                        _359 = mem[_102]
                        s = 0
                        while s < _359:
                            mem[_104 + _108 + _211 + s + 32] = mem[_102 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_359) <= _359:
                            _481 = mem[64]
                            mem[mem[64]] = _104 + _108 + _211 + _359 - mem[64]
                            mem[64] = _104 + _108 + _211 + _359 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _481
                            t = _100
                            continue 
                        mem[_104 + _108 + _211 + _359 + 32] = 0
                        _489 = mem[64]
                        mem[mem[64]] = _104 + _108 + _211 + _359 - mem[64]
                        mem[64] = _104 + _108 + _211 + _359 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _489
                        t = _100
                        continue 
                    mem[_104 + _108 + _211 + 32] = 0
                    _361 = mem[_102]
                    s = 0
                    while s < _361:
                        mem[_104 + _108 + _211 + s + 32] = mem[_102 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_361) <= _361:
                        _482 = mem[64]
                        mem[mem[64]] = _104 + _108 + _211 + _361 - mem[64]
                        mem[64] = _104 + _108 + _211 + _361 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _482
                        t = _100
                        continue 
                    mem[_104 + _108 + _211 + _361 + 32] = 0
                    _490 = mem[64]
                    mem[mem[64]] = _104 + _108 + _211 + _361 - mem[64]
                    mem[64] = _104 + _108 + _211 + _361 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _490
                    t = _100
                    continue 
                mem[_104 + _108 + 32] = 0
                _214 = mem[_60]
                s = 0
                while s < _214:
                    mem[_104 + _108 + s + 32] = mem[_60 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_214) <= _214:
                    _360 = mem[_102]
                    s = 0
                    while s < _360:
                        mem[_104 + _108 + _214 + s + 32] = mem[_102 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_360) <= _360:
                        _483 = mem[64]
                        mem[mem[64]] = _104 + _108 + _214 + _360 - mem[64]
                        mem[64] = _104 + _108 + _214 + _360 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _483
                        t = _100
                        continue 
                    mem[_104 + _108 + _214 + _360 + 32] = 0
                    _491 = mem[64]
                    mem[mem[64]] = _104 + _108 + _214 + _360 - mem[64]
                    mem[64] = _104 + _108 + _214 + _360 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _491
                    t = _100
                    continue 
                mem[_104 + _108 + _214 + 32] = 0
                _362 = mem[_102]
                s = 0
                while s < _362:
                    mem[_104 + _108 + _214 + s + 32] = mem[_102 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_362) <= _362:
                    _484 = mem[64]
                    mem[mem[64]] = _104 + _108 + _214 + _362 - mem[64]
                    mem[64] = _104 + _108 + _214 + _362 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _484
                    t = _100
                    continue 
                mem[_104 + _108 + _214 + _362 + 32] = 0
                _492 = mem[64]
                mem[mem[64]] = _104 + _108 + _214 + _362 - mem[64]
                mem[64] = _104 + _108 + _214 + _362 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _492
                t = _100
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 96]
            while t:
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 'NH{q', 65
            _200 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _101
                while t:
                    if v < 1:
                        revert with 'NH{q', 17
                    if t / 10 and 10 > -1 / t / 10:
                        revert with 'NH{q', 17
                    if t < 10 * t / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 'NH{q', 17
                    if v - 1 >= mem[_200]:
                        revert with 'NH{q', 50
                    mem[v + _200 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _349 = mem[64]
                _357 = mem[s]
                t = 0
                while t < _357:
                    mem[_349 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_357) <= _357:
                    _487 = mem[_60]
                    s = 0
                    while s < _487:
                        mem[_349 + _357 + s + 32] = mem[_60 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_487) <= _487:
                        _689 = mem[_200]
                        s = 0
                        while s < _689:
                            mem[_349 + _357 + _487 + s + 32] = mem[_200 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_689) <= _689:
                            _865 = mem[64]
                            mem[mem[64]] = _349 + _357 + _487 + _689 - mem[64]
                            mem[64] = _349 + _357 + _487 + _689 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _865
                            t = _100
                            continue 
                        mem[_349 + _357 + _487 + _689 + 32] = 0
                        _885 = mem[64]
                        mem[mem[64]] = _349 + _357 + _487 + _689 - mem[64]
                        mem[64] = _349 + _357 + _487 + _689 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _885
                        t = _100
                        continue 
                    mem[_349 + _357 + _487 + 32] = 0
                    _697 = mem[_200]
                    s = 0
                    while s < _697:
                        mem[_349 + _357 + _487 + s + 32] = mem[_200 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _866 = mem[64]
                        mem[mem[64]] = _349 + _357 + _487 + _697 - mem[64]
                        mem[64] = _349 + _357 + _487 + _697 + 32
                        if ceil32(_697) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_697) + 1
                        s = _866
                        t = _100
                        continue 
                    mem[_349 + _357 + _487 + _697 + 32] = 0
                    _886 = mem[64]
                    mem[mem[64]] = _349 + _357 + _487 + _697 - mem[64]
                    mem[64] = _349 + _357 + _487 + _697 + 32
                    if ceil32(_697) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_697) + 1
                    s = _886
                    t = _100
                    continue 
                mem[_349 + _357 + 32] = 0
                _499 = mem[_60]
                s = 0
                while s < _499:
                    mem[_349 + _357 + s + 32] = mem[_60 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_499) <= _499:
                    _690 = mem[_200]
                    s = 0
                    while s < _690:
                        mem[_349 + _357 + _499 + s + 32] = mem[_200 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _867 = mem[64]
                        mem[mem[64]] = _349 + _357 + _499 + _690 - mem[64]
                        mem[64] = _349 + _357 + _499 + _690 + 32
                        if ceil32(_690) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_690) + 1
                        s = _867
                        t = _100
                        continue 
                    mem[_349 + _357 + _499 + _690 + 32] = 0
                    _887 = mem[64]
                    mem[mem[64]] = _349 + _357 + _499 + _690 - mem[64]
                    mem[64] = _349 + _357 + _499 + _690 + 32
                    if ceil32(_690) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_690) + 1
                    s = _887
                    t = _100
                    continue 
                mem[_349 + _357 + _499 + 32] = 0
                _698 = mem[_200]
                s = 0
                while s < _698:
                    mem[_349 + _357 + _499 + s + 32] = mem[_200 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _868 = mem[64]
                    mem[mem[64]] = _349 + _357 + _499 + _698 - mem[64]
                    mem[64] = _349 + _357 + _499 + _698 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _868
                    t = _100
                    continue 
                mem[_349 + _357 + _499 + _698 + 32] = 0
                _888 = mem[64]
                mem[mem[64]] = _349 + _357 + _499 + _698 - mem[64]
                mem[64] = _349 + _357 + _499 + _698 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _888
                t = _100
                continue 
            mem[_200 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _101
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 and 10 > -1 / t / 10:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_200]:
                    revert with 'NH{q', 50
                mem[v + _200 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _350 = mem[64]
            _358 = mem[s]
            t = 0
            while t < _358:
                mem[_350 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_358) <= _358:
                _488 = mem[_60]
                s = 0
                while s < _488:
                    mem[_350 + _358 + s + 32] = mem[_60 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_488) <= _488:
                    _691 = mem[_200]
                    s = 0
                    while s < _691:
                        mem[_350 + _358 + _488 + s + 32] = mem[_200 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_691) <= _691:
                        _869 = mem[64]
                        mem[mem[64]] = _350 + _358 + _488 + _691 - mem[64]
                        mem[64] = _350 + _358 + _488 + _691 + 32
                        if ceil32(_691) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_691) + 1
                        s = _869
                        t = _100
                        continue 
                    mem[_350 + _358 + _488 + _691 + 32] = 0
                    _889 = mem[64]
                    mem[mem[64]] = _350 + _358 + _488 + _691 - mem[64]
                    mem[64] = _350 + _358 + _488 + _691 + 32
                    if ceil32(_691) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_691) + 1
                    s = _889
                    t = _100
                    continue 
                mem[_350 + _358 + _488 + 32] = 0
                _699 = mem[_200]
                s = 0
                while s < _699:
                    mem[_350 + _358 + _488 + s + 32] = mem[_200 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_699) <= _699:
                    _870 = mem[64]
                    mem[mem[64]] = _350 + _358 + _488 + _699 - mem[64]
                    mem[64] = _350 + _358 + _488 + _699 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _870
                    t = _100
                    continue 
                mem[_350 + _358 + _488 + _699 + 32] = 0
                _890 = mem[64]
                mem[mem[64]] = _350 + _358 + _488 + _699 - mem[64]
                mem[64] = _350 + _358 + _488 + _699 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _890
                t = _100
                continue 
            mem[_350 + _358 + 32] = 0
            _500 = mem[_60]
            s = 0
            while s < _500:
                mem[_350 + _358 + s + 32] = mem[_60 + s + 32]
                s = s + 32
                continue 
            if ceil32(_500) <= _500:
                _692 = mem[_200]
                s = 0
                while s < _692:
                    mem[_350 + _358 + _500 + s + 32] = mem[_200 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_692) <= _692:
                    _871 = mem[64]
                    mem[mem[64]] = _350 + _358 + _500 + _692 - mem[64]
                    mem[64] = _350 + _358 + _500 + _692 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _871
                    t = _100
                    continue 
                mem[_350 + _358 + _500 + _692 + 32] = 0
                _891 = mem[64]
                mem[mem[64]] = _350 + _358 + _500 + _692 - mem[64]
                mem[64] = _350 + _358 + _500 + _692 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _891
                t = _100
                continue 
            mem[_350 + _358 + _500 + 32] = 0
            _700 = mem[_200]
            s = 0
            while s < _700:
                mem[_350 + _358 + _500 + s + 32] = mem[_200 + s + 32]
                s = s + 32
                continue 
            if ceil32(_700) <= _700:
                _872 = mem[64]
                mem[mem[64]] = _350 + _358 + _500 + _700 - mem[64]
                mem[64] = _350 + _358 + _500 + _700 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _872
                t = _100
                continue 
            mem[_350 + _358 + _500 + _700 + 32] = 0
            _892 = mem[64]
            mem[mem[64]] = _350 + _358 + _500 + _700 - mem[64]
            mem[64] = _350 + _358 + _500 + _700 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _892
            t = _100
            continue 
        mem[mem[64]] = 32
        _103 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_103)] = mem[s + 32 len ceil32(_103)]
        if ceil32(_103) > _103:
            mem[mem[64] + _103 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_103) + 32]
    s = 0
    idx = mem[mem[128] + 96]
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _98 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _56
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[_98]:
                revert with 'NH{q', 50
            mem[t + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _201 = mem[64]
        mem[64] = mem[64] + 64
        mem[_201] = 1
        mem[_201 + 32] = '#'
        idx = 1
        s = _98
        t = _53
        while idx < _50:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _344 = mem[(32 * idx) + 128]
            _345 = mem[mem[(32 * idx) + 128] + 96]
            if not mem[mem[(32 * idx) + 128] + 96]:
                _351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_351] = 1
                mem[_351 + 32] = '0'
                _355 = mem[64]
                _363 = mem[s]
                t = 0
                while t < _363:
                    mem[_355 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_363) <= _363:
                    _485 = mem[_201]
                    s = 0
                    while s < _485:
                        mem[_355 + _363 + s + 32] = mem[_201 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_485) <= _485:
                        _683 = mem[_351]
                        s = 0
                        while s < _683:
                            mem[_355 + _363 + _485 + s + 32] = mem[_351 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_683) <= _683:
                            _857 = mem[64]
                            mem[mem[64]] = _355 + _363 + _485 + _683 - mem[64]
                            mem[64] = _355 + _363 + _485 + _683 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _857
                            t = _344
                            continue 
                        mem[_355 + _363 + _485 + _683 + 32] = 0
                        _875 = mem[64]
                        mem[mem[64]] = _355 + _363 + _485 + _683 - mem[64]
                        mem[64] = _355 + _363 + _485 + _683 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _875
                        t = _344
                        continue 
                    mem[_355 + _363 + _485 + 32] = 0
                    _693 = mem[_351]
                    s = 0
                    while s < _693:
                        mem[_355 + _363 + _485 + s + 32] = mem[_351 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _858 = mem[64]
                        mem[mem[64]] = _355 + _363 + _485 + _693 - mem[64]
                        mem[64] = _355 + _363 + _485 + _693 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _858
                        t = _344
                        continue 
                    mem[_355 + _363 + _485 + _693 + 32] = 0
                    _876 = mem[64]
                    mem[mem[64]] = _355 + _363 + _485 + _693 - mem[64]
                    mem[64] = _355 + _363 + _485 + _693 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _876
                    t = _344
                    continue 
                mem[_355 + _363 + 32] = 0
                _495 = mem[_201]
                s = 0
                while s < _495:
                    mem[_355 + _363 + s + 32] = mem[_201 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_495) <= _495:
                    _684 = mem[_351]
                    s = 0
                    while s < _684:
                        mem[_355 + _363 + _495 + s + 32] = mem[_351 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_684) <= _684:
                        _859 = mem[64]
                        mem[mem[64]] = _355 + _363 + _495 + _684 - mem[64]
                        mem[64] = _355 + _363 + _495 + _684 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _859
                        t = _344
                        continue 
                    mem[_355 + _363 + _495 + _684 + 32] = 0
                    _877 = mem[64]
                    mem[mem[64]] = _355 + _363 + _495 + _684 - mem[64]
                    mem[64] = _355 + _363 + _495 + _684 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _877
                    t = _344
                    continue 
                mem[_355 + _363 + _495 + 32] = 0
                _694 = mem[_351]
                s = 0
                while s < _694:
                    mem[_355 + _363 + _495 + s + 32] = mem[_351 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _860 = mem[64]
                    mem[mem[64]] = _355 + _363 + _495 + _694 - mem[64]
                    mem[64] = _355 + _363 + _495 + _694 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _860
                    t = _344
                    continue 
                mem[_355 + _363 + _495 + _694 + 32] = 0
                _878 = mem[64]
                mem[mem[64]] = _355 + _363 + _495 + _694 - mem[64]
                mem[64] = _355 + _363 + _495 + _694 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _878
                t = _344
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 96]
            while t:
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 'NH{q', 65
            _479 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _345
                while t:
                    if v < 1:
                        revert with 'NH{q', 17
                    if t / 10 and 10 > -1 / t / 10:
                        revert with 'NH{q', 17
                    if t < 10 * t / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 'NH{q', 17
                    if v - 1 >= mem[_479]:
                        revert with 'NH{q', 50
                    mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _677 = mem[64]
                _681 = mem[s]
                t = 0
                while t < _681:
                    mem[_677 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_681) <= _681:
                    _873 = mem[_201]
                    s = 0
                    while s < _873:
                        mem[_677 + _681 + s + 32] = mem[_201 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_873) <= _873:
                        _977 = mem[_479]
                        s = 0
                        while s < _977:
                            mem[_677 + _681 + _873 + s + 32] = mem[_479 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_977) <= _977:
                            _1057 = mem[64]
                            mem[mem[64]] = _677 + _681 + _873 + _977 - mem[64]
                            mem[64] = _677 + _681 + _873 + _977 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _1057
                            t = _344
                            continue 
                        mem[_677 + _681 + _873 + _977 + 32] = 0
                        _1073 = mem[64]
                        mem[mem[64]] = _677 + _681 + _873 + _977 - mem[64]
                        mem[64] = _677 + _681 + _873 + _977 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1073
                        t = _344
                        continue 
                    mem[_677 + _681 + _873 + 32] = 0
                    _985 = mem[_479]
                    s = 0
                    while s < _985:
                        mem[_677 + _681 + _873 + s + 32] = mem[_479 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_985) <= _985:
                        _1058 = mem[64]
                        mem[mem[64]] = _677 + _681 + _873 + _985 - mem[64]
                        mem[64] = _677 + _681 + _873 + _985 + 32
                        if ceil32(_985) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_985) + 1
                        s = _1058
                        t = _344
                        continue 
                    mem[_677 + _681 + _873 + _985 + 32] = 0
                    _1074 = mem[64]
                    mem[mem[64]] = _677 + _681 + _873 + _985 - mem[64]
                    mem[64] = _677 + _681 + _873 + _985 + 32
                    if ceil32(_985) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_985) + 1
                    s = _1074
                    t = _344
                    continue 
                mem[_677 + _681 + 32] = 0
                _893 = mem[_201]
                s = 0
                while s < _893:
                    mem[_677 + _681 + s + 32] = mem[_201 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_893) <= _893:
                    _978 = mem[_479]
                    s = 0
                    while s < _978:
                        mem[_677 + _681 + _893 + s + 32] = mem[_479 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_978) <= _978:
                        _1059 = mem[64]
                        mem[mem[64]] = _677 + _681 + _893 + _978 - mem[64]
                        mem[64] = _677 + _681 + _893 + _978 + 32
                        if ceil32(_978) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_978) + 1
                        s = _1059
                        t = _344
                        continue 
                    mem[_677 + _681 + _893 + _978 + 32] = 0
                    _1075 = mem[64]
                    mem[mem[64]] = _677 + _681 + _893 + _978 - mem[64]
                    mem[64] = _677 + _681 + _893 + _978 + 32
                    if ceil32(_978) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_978) + 1
                    s = _1075
                    t = _344
                    continue 
                mem[_677 + _681 + _893 + 32] = 0
                _986 = mem[_479]
                s = 0
                while s < _986:
                    mem[_677 + _681 + _893 + s + 32] = mem[_479 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1060 = mem[64]
                    mem[mem[64]] = _677 + _681 + _893 + _986 - mem[64]
                    mem[64] = _677 + _681 + _893 + _986 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1060
                    t = _344
                    continue 
                mem[_677 + _681 + _893 + _986 + 32] = 0
                _1076 = mem[64]
                mem[mem[64]] = _677 + _681 + _893 + _986 - mem[64]
                mem[64] = _677 + _681 + _893 + _986 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1076
                t = _344
                continue 
            mem[_479 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _345
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 and 10 > -1 / t / 10:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_479]:
                    revert with 'NH{q', 50
                mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _678 = mem[64]
            _682 = mem[s]
            t = 0
            while t < _682:
                mem[_678 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_682) <= _682:
                _874 = mem[_201]
                s = 0
                while s < _874:
                    mem[_678 + _682 + s + 32] = mem[_201 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_874) <= _874:
                    _979 = mem[_479]
                    s = 0
                    while s < _979:
                        mem[_678 + _682 + _874 + s + 32] = mem[_479 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_979) <= _979:
                        _1061 = mem[64]
                        mem[mem[64]] = _678 + _682 + _874 + _979 - mem[64]
                        mem[64] = _678 + _682 + _874 + _979 + 32
                        if ceil32(_979) == -1:
                            revert with 'NH{q', 17
                        s = ceil32(_979) + 1
                        s = _1061
                        t = _344
                        continue 
                    mem[_678 + _682 + _874 + _979 + 32] = 0
                    _1077 = mem[64]
                    mem[mem[64]] = _678 + _682 + _874 + _979 - mem[64]
                    mem[64] = _678 + _682 + _874 + _979 + 32
                    if ceil32(_979) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_979) + 1
                    s = _1077
                    t = _344
                    continue 
                mem[_678 + _682 + _874 + 32] = 0
                _987 = mem[_479]
                s = 0
                while s < _987:
                    mem[_678 + _682 + _874 + s + 32] = mem[_479 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_987) <= _987:
                    _1062 = mem[64]
                    mem[mem[64]] = _678 + _682 + _874 + _987 - mem[64]
                    mem[64] = _678 + _682 + _874 + _987 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1062
                    t = _344
                    continue 
                mem[_678 + _682 + _874 + _987 + 32] = 0
                _1078 = mem[64]
                mem[mem[64]] = _678 + _682 + _874 + _987 - mem[64]
                mem[64] = _678 + _682 + _874 + _987 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1078
                t = _344
                continue 
            mem[_678 + _682 + 32] = 0
            _894 = mem[_201]
            s = 0
            while s < _894:
                mem[_678 + _682 + s + 32] = mem[_201 + s + 32]
                s = s + 32
                continue 
            if ceil32(_894) <= _894:
                _980 = mem[_479]
                s = 0
                while s < _980:
                    mem[_678 + _682 + _894 + s + 32] = mem[_479 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_980) <= _980:
                    _1063 = mem[64]
                    mem[mem[64]] = _678 + _682 + _894 + _980 - mem[64]
                    mem[64] = _678 + _682 + _894 + _980 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1063
                    t = _344
                    continue 
                mem[_678 + _682 + _894 + _980 + 32] = 0
                _1079 = mem[64]
                mem[mem[64]] = _678 + _682 + _894 + _980 - mem[64]
                mem[64] = _678 + _682 + _894 + _980 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1079
                t = _344
                continue 
            mem[_678 + _682 + _894 + 32] = 0
            _988 = mem[_479]
            s = 0
            while s < _988:
                mem[_678 + _682 + _894 + s + 32] = mem[_479 + s + 32]
                s = s + 32
                continue 
            if ceil32(_988) <= _988:
                _1064 = mem[64]
                mem[mem[64]] = _678 + _682 + _894 + _988 - mem[64]
                mem[64] = _678 + _682 + _894 + _988 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1064
                t = _344
                continue 
            mem[_678 + _682 + _894 + _988 + 32] = 0
            _1080 = mem[64]
            mem[mem[64]] = _678 + _682 + _894 + _988 - mem[64]
            mem[64] = _678 + _682 + _894 + _988 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1080
            t = _344
            continue 
        mem[mem[64]] = 32
        _353 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_353)] = mem[s + 32 len ceil32(_353)]
        if ceil32(_353) > _353:
            mem[mem[64] + _353 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_353) + 32]
    mem[_98 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _56
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if idx / 10 and 10 > -1 / idx / 10:
            revert with 'NH{q', 17
        if idx < 10 * idx / 10:
            revert with 'NH{q', 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 'NH{q', 17
        if t - 1 >= mem[_98]:
            revert with 'NH{q', 50
        mem[t + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _202 = mem[64]
    mem[64] = mem[64] + 64
    mem[_202] = 1
    mem[_202 + 32] = '#'
    idx = 1
    s = _98
    t = _53
    while idx < _50:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _347 = mem[(32 * idx) + 128]
        _348 = mem[mem[(32 * idx) + 128] + 96]
        if not mem[mem[(32 * idx) + 128] + 96]:
            _352 = mem[64]
            mem[64] = mem[64] + 64
            mem[_352] = 1
            mem[_352 + 32] = '0'
            _356 = mem[64]
            _364 = mem[s]
            t = 0
            while t < _364:
                mem[_356 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_364) <= _364:
                _486 = mem[_202]
                s = 0
                while s < _486:
                    mem[_356 + _364 + s + 32] = mem[_202 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_486) <= _486:
                    _687 = mem[_352]
                    s = 0
                    while s < _687:
                        mem[_356 + _364 + _486 + s + 32] = mem[_352 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_687) <= _687:
                        _861 = mem[64]
                        mem[mem[64]] = _356 + _364 + _486 + _687 - mem[64]
                        mem[64] = _356 + _364 + _486 + _687 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _861
                        t = _347
                        continue 
                    mem[_356 + _364 + _486 + _687 + 32] = 0
                    _881 = mem[64]
                    mem[mem[64]] = _356 + _364 + _486 + _687 - mem[64]
                    mem[64] = _356 + _364 + _486 + _687 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _881
                    t = _347
                    continue 
                mem[_356 + _364 + _486 + 32] = 0
                _695 = mem[_352]
                s = 0
                while s < _695:
                    mem[_356 + _364 + _486 + s + 32] = mem[_352 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_695) <= _695:
                    _862 = mem[64]
                    mem[mem[64]] = _356 + _364 + _486 + _695 - mem[64]
                    mem[64] = _356 + _364 + _486 + _695 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _862
                    t = _347
                    continue 
                mem[_356 + _364 + _486 + _695 + 32] = 0
                _882 = mem[64]
                mem[mem[64]] = _356 + _364 + _486 + _695 - mem[64]
                mem[64] = _356 + _364 + _486 + _695 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _882
                t = _347
                continue 
            mem[_356 + _364 + 32] = 0
            _498 = mem[_202]
            s = 0
            while s < _498:
                mem[_356 + _364 + s + 32] = mem[_202 + s + 32]
                s = s + 32
                continue 
            if ceil32(_498) <= _498:
                _688 = mem[_352]
                s = 0
                while s < _688:
                    mem[_356 + _364 + _498 + s + 32] = mem[_352 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_688) <= _688:
                    _863 = mem[64]
                    mem[mem[64]] = _356 + _364 + _498 + _688 - mem[64]
                    mem[64] = _356 + _364 + _498 + _688 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _863
                    t = _347
                    continue 
                mem[_356 + _364 + _498 + _688 + 32] = 0
                _883 = mem[64]
                mem[mem[64]] = _356 + _364 + _498 + _688 - mem[64]
                mem[64] = _356 + _364 + _498 + _688 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _883
                t = _347
                continue 
            mem[_356 + _364 + _498 + 32] = 0
            _696 = mem[_352]
            s = 0
            while s < _696:
                mem[_356 + _364 + _498 + s + 32] = mem[_352 + s + 32]
                s = s + 32
                continue 
            if ceil32(_696) <= _696:
                _864 = mem[64]
                mem[mem[64]] = _356 + _364 + _498 + _696 - mem[64]
                mem[64] = _356 + _364 + _498 + _696 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _864
                t = _347
                continue 
            mem[_356 + _364 + _498 + _696 + 32] = 0
            _884 = mem[64]
            mem[mem[64]] = _356 + _364 + _498 + _696 - mem[64]
            mem[64] = _356 + _364 + _498 + _696 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _884
            t = _347
            continue 
        u = 0
        t = mem[mem[(32 * idx) + 128] + 96]
        while t:
            if u == -1:
                revert with 'NH{q', 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 'NH{q', 65
        _480 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = _348
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 and 10 > -1 / t / 10:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_480]:
                    revert with 'NH{q', 50
                mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _679 = mem[64]
            _685 = mem[s]
            t = 0
            while t < _685:
                mem[_679 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_685) <= _685:
                _879 = mem[_202]
                s = 0
                while s < _879:
                    mem[_679 + _685 + s + 32] = mem[_202 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_879) <= _879:
                    _981 = mem[_480]
                    s = 0
                    while s < _981:
                        mem[_679 + _685 + _879 + s + 32] = mem[_480 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_981) <= _981:
                        _1065 = mem[64]
                        mem[mem[64]] = _679 + _685 + _879 + _981 - mem[64]
                        mem[64] = _679 + _685 + _879 + _981 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1065
                        t = _347
                        continue 
                    mem[_679 + _685 + _879 + _981 + 32] = 0
                    _1081 = mem[64]
                    mem[mem[64]] = _679 + _685 + _879 + _981 - mem[64]
                    mem[64] = _679 + _685 + _879 + _981 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1081
                    t = _347
                    continue 
                mem[_679 + _685 + _879 + 32] = 0
                _989 = mem[_480]
                s = 0
                while s < _989:
                    mem[_679 + _685 + _879 + s + 32] = mem[_480 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1066 = mem[64]
                    mem[mem[64]] = _679 + _685 + _879 + _989 - mem[64]
                    mem[64] = _679 + _685 + _879 + _989 + 32
                    if ceil32(_989) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_989) + 1
                    s = _1066
                    t = _347
                    continue 
                mem[_679 + _685 + _879 + _989 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _679 + _685 + _879 + _989 - mem[64]
                mem[64] = _679 + _685 + _879 + _989 + 32
                if ceil32(_989) == -1:
                    revert with 'NH{q', 17
                s = ceil32(_989) + 1
                s = _1082
                t = _347
                continue 
            mem[_679 + _685 + 32] = 0
            _895 = mem[_202]
            s = 0
            while s < _895:
                mem[_679 + _685 + s + 32] = mem[_202 + s + 32]
                s = s + 32
                continue 
            if ceil32(_895) <= _895:
                _982 = mem[_480]
                s = 0
                while s < _982:
                    mem[_679 + _685 + _895 + s + 32] = mem[_480 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_982) <= _982:
                    _1067 = mem[64]
                    mem[mem[64]] = _679 + _685 + _895 + _982 - mem[64]
                    mem[64] = _679 + _685 + _895 + _982 + 32
                    if ceil32(_982) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_982) + 1
                    s = _1067
                    t = _347
                    continue 
                mem[_679 + _685 + _895 + _982 + 32] = 0
                _1083 = mem[64]
                mem[mem[64]] = _679 + _685 + _895 + _982 - mem[64]
                mem[64] = _679 + _685 + _895 + _982 + 32
                if ceil32(_982) == -1:
                    revert with 'NH{q', 17
                s = ceil32(_982) + 1
                s = _1083
                t = _347
                continue 
            mem[_679 + _685 + _895 + 32] = 0
            _990 = mem[_480]
            s = 0
            while s < _990:
                mem[_679 + _685 + _895 + s + 32] = mem[_480 + s + 32]
                s = s + 32
                continue 
            if ceil32(_990) <= _990:
                _1068 = mem[64]
                mem[mem[64]] = _679 + _685 + _895 + _990 - mem[64]
                mem[64] = _679 + _685 + _895 + _990 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1068
                t = _347
                continue 
            mem[_679 + _685 + _895 + _990 + 32] = 0
            _1084 = mem[64]
            mem[mem[64]] = _679 + _685 + _895 + _990 - mem[64]
            mem[64] = _679 + _685 + _895 + _990 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1084
            t = _347
            continue 
        mem[_480 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = _348
        while t:
            if v < 1:
                revert with 'NH{q', 17
            if t / 10 and 10 > -1 / t / 10:
                revert with 'NH{q', 17
            if t < 10 * t / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 'NH{q', 17
            if v - 1 >= mem[_480]:
                revert with 'NH{q', 50
            mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _680 = mem[64]
        _686 = mem[s]
        t = 0
        while t < _686:
            mem[_680 + t + 32] = mem[s + t + 32]
            t = t + 32
            continue 
        if ceil32(_686) <= _686:
            _880 = mem[_202]
            s = 0
            while s < _880:
                mem[_680 + _686 + s + 32] = mem[_202 + s + 32]
                s = s + 32
                continue 
            if ceil32(_880) <= _880:
                _983 = mem[_480]
                s = 0
                while s < _983:
                    mem[_680 + _686 + _880 + s + 32] = mem[_480 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_983) <= _983:
                    _1069 = mem[64]
                    mem[mem[64]] = _680 + _686 + _880 + _983 - mem[64]
                    mem[64] = _680 + _686 + _880 + _983 + 32
                    if ceil32(_983) == -1:
                        revert with 'NH{q', 17
                    s = ceil32(_983) + 1
                    s = _1069
                    t = _347
                    continue 
                mem[_680 + _686 + _880 + _983 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _680 + _686 + _880 + _983 - mem[64]
                mem[64] = _680 + _686 + _880 + _983 + 32
                if ceil32(_983) == -1:
                    revert with 'NH{q', 17
                s = ceil32(_983) + 1
                s = _1085
                t = _347
                continue 
            mem[_680 + _686 + _880 + 32] = 0
            _991 = mem[_480]
            s = 0
            while s < _991:
                mem[_680 + _686 + _880 + s + 32] = mem[_480 + s + 32]
                s = s + 32
                continue 
            if ceil32(_991) <= _991:
                _1070 = mem[64]
                mem[mem[64]] = _680 + _686 + _880 + _991 - mem[64]
                mem[64] = _680 + _686 + _880 + _991 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1070
                t = _347
                continue 
            mem[_680 + _686 + _880 + _991 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _680 + _686 + _880 + _991 - mem[64]
            mem[64] = _680 + _686 + _880 + _991 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1086
            t = _347
            continue 
        mem[_680 + _686 + 32] = 0
        _896 = mem[_202]
        s = 0
        while s < _896:
            mem[_680 + _686 + s + 32] = mem[_202 + s + 32]
            s = s + 32
            continue 
        if ceil32(_896) <= _896:
            _984 = mem[_480]
            s = 0
            while s < _984:
                mem[_680 + _686 + _896 + s + 32] = mem[_480 + s + 32]
                s = s + 32
                continue 
            if ceil32(_984) <= _984:
                _1071 = mem[64]
                mem[mem[64]] = _680 + _686 + _896 + _984 - mem[64]
                mem[64] = _680 + _686 + _896 + _984 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1071
                t = _347
                continue 
            mem[_680 + _686 + _896 + _984 + 32] = 0
            _1087 = mem[64]
            mem[mem[64]] = _680 + _686 + _896 + _984 - mem[64]
            mem[64] = _680 + _686 + _896 + _984 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1087
            t = _347
            continue 
        mem[_680 + _686 + _896 + 32] = 0
        _992 = mem[_480]
        s = 0
        while s < _992:
            mem[_680 + _686 + _896 + s + 32] = mem[_480 + s + 32]
            s = s + 32
            continue 
        if ceil32(_992) <= _992:
            _1072 = mem[64]
            mem[mem[64]] = _680 + _686 + _896 + _992 - mem[64]
            mem[64] = _680 + _686 + _896 + _992 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1072
            t = _347
            continue 
        mem[_680 + _686 + _896 + _992 + 32] = 0
        _1088 = mem[64]
        mem[mem[64]] = _680 + _686 + _896 + _992 - mem[64]
        mem[64] = _680 + _686 + _896 + _992 + 32
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _1088
        t = _347
        continue 
    mem[mem[64]] = 32
    _354 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_354)] = mem[s + 32 len ceil32(_354)]
    if ceil32(_354) > _354:
        mem[mem[64] + _354 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_354) + 32]
}

function _getRewardAmountOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 4
    idx = 0
    s = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 4)
        _520 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                revert with 'NH{q', 34
            _521 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
            mem[_521] = uint255(stor4[address(arg1)][idx].field_1)
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor4[address(arg1)][idx].field_1):
                    mem[_520] = _521
                    mem[_520 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_520 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_520 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    if uint256(stor4[address(arg1)][idx].field_512):
                        _530 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_530] = 30
                        mem[_530 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                            _538 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_538 + idx + 68] = mem[_530 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_538 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _538 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                            revert with 'NH{q', 17
                        _583 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_583] = 26
                        mem[_583 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _599 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_599 + idx + 68] = mem[_583 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_599 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _599 + -mem[64] + 100
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
                    _579 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_579] = 30
                    mem[_579 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                        _590 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_590 + idx + 68] = mem[_579 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_590 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _590 + -mem[64] + 100
                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                        revert with 'NH{q', 17
                    _693 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_693] = 26
                    mem[_693 + 32] = 'SafeMath: division by zero'
                    if claimTime <= 0:
                        _707 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_707 + idx + 68] = mem[_693 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_707 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _707 + -mem[64] + 100
                else:
                    if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                        mem[_521 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_520] = _521
                        mem[_520 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_520 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_520 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _540 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_540] = 30
                            mem[_540 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _550 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_550 + idx + 68] = mem[_540 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_550 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _550 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _600 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_600] = 26
                            mem[_600 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _623 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_623 + idx + 68] = mem[_600 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_623 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _623 + -mem[64] + 100
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
                        _593 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_593] = 30
                        mem[_593 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _612 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_612 + idx + 68] = mem[_593 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_612 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _612 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _709 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_709] = 26
                        mem[_709 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _724 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_724 + idx + 68] = mem[_709 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_724 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _724 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_521 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _521 + 32
                        u = sha3(mem[0])
                        while _521 + uint255(stor4[address(arg1)][idx].field_1) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_520] = _521
                        mem[_520 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_520 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_520 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1068 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1068] = 30
                            mem[_1068 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1076 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1076 + idx + 68] = mem[_1068 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1076 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1076 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _1156 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1156] = 26
                            mem[_1156 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1164 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1164 + idx + 68] = mem[_1156 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1164 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1164 + -mem[64] + 100
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
                        _1149 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1149] = 30
                        mem[_1149 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1160 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1160 + idx + 68] = mem[_1149 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1160 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1160 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _1189 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1189] = 26
                        mem[_1189 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _1196 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1196 + idx + 68] = mem[_1189 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1196 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1196 + -mem[64] + 100
            else:
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_520] = _521
                    mem[_520 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_520 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_520 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    if uint256(stor4[address(arg1)][idx].field_512):
                        _534 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_534] = 30
                        mem[_534 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                            _543 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_543 + idx + 68] = mem[_534 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_543 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _543 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                            revert with 'NH{q', 17
                        _594 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_594] = 26
                        mem[_594 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _613 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_613 + idx + 68] = mem[_594 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_613 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _613 + -mem[64] + 100
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
                        _601 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_601 + idx + 68] = mem[_585 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_601 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _601 + -mem[64] + 100
                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                        revert with 'NH{q', 17
                    _702 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_702] = 26
                    mem[_702 + 32] = 'SafeMath: division by zero'
                    if claimTime <= 0:
                        _715 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_715 + idx + 68] = mem[_702 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_715 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _715 + -mem[64] + 100
                else:
                    if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                        mem[_521 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_520] = _521
                        mem[_520 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_520 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_520 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _545 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_545] = 30
                            mem[_545 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _556 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_556 + idx + 68] = mem[_545 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_556 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _556 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _614 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_614] = 26
                            mem[_614 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _637 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_637 + idx + 68] = mem[_614 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_637 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _637 + -mem[64] + 100
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
                        _604 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_604] = 30
                        mem[_604 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _626 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_626 + idx + 68] = mem[_604 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_626 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _626 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _717 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_717] = 26
                        mem[_717 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _734 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_734 + idx + 68] = mem[_717 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_734 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _734 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_521 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _521 + 32
                        u = sha3(mem[0])
                        while _521 + stor4[address(arg1)][idx].field_1 % 128 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_520] = _521
                        mem[_520 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_520 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_520 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1069 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1069] = 30
                            mem[_1069 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1085 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1085 + idx + 68] = mem[_1069 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1085 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1085 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _1157 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1157] = 26
                            mem[_1157 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1165 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1165 + idx + 68] = mem[_1157 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1165 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1165 + -mem[64] + 100
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
                        _1151 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1151] = 30
                        mem[_1151 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1161 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1161 + idx + 68] = mem[_1151 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1161 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1161 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _1191 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1191] = 26
                        mem[_1191 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _1197 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1197 + idx + 68] = mem[_1191 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1197 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1197 + -mem[64] + 100
        else:
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            _523 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_523] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor4[address(arg1)][idx].field_1):
                    mem[_520] = _523
                    mem[_520 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_520 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_520 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    if uint256(stor4[address(arg1)][idx].field_512):
                        _536 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_536] = 30
                        mem[_536 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                            _546 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_546 + idx + 68] = mem[_536 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_546 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _546 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                            revert with 'NH{q', 17
                        _595 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_595] = 26
                        mem[_595 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _615 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_615 + idx + 68] = mem[_595 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_615 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _615 + -mem[64] + 100
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
                    _588 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_588] = 30
                    mem[_588 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                        _605 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_605 + idx + 68] = mem[_588 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_605 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _605 + -mem[64] + 100
                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                        revert with 'NH{q', 17
                    _704 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_704] = 26
                    mem[_704 + 32] = 'SafeMath: division by zero'
                    if claimTime <= 0:
                        _718 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_718 + idx + 68] = mem[_704 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_718 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _718 + -mem[64] + 100
                else:
                    if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                        mem[_523 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_520] = _523
                        mem[_520 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_520 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_520 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _548 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_548] = 30
                            mem[_548 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _558 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_558 + idx + 68] = mem[_548 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_558 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _558 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _616 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_616] = 26
                            mem[_616 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _640 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_640 + idx + 68] = mem[_616 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_640 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _640 + -mem[64] + 100
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
                        _608 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_608] = 30
                        mem[_608 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _629 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_629 + idx + 68] = mem[_608 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_629 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _629 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _720 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_720] = 26
                        mem[_720 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _737 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_737 + idx + 68] = mem[_720 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_737 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _737 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_523 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _523 + 32
                        u = sha3(mem[0])
                        while _523 + uint255(stor4[address(arg1)][idx].field_1) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_520] = _523
                        mem[_520 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_520 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_520 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1070 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1070] = 30
                            mem[_1070 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1094 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1094 + idx + 68] = mem[_1070 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1094 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1094 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _1158 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1158] = 26
                            mem[_1158 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1166 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1166 + idx + 68] = mem[_1158 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1166 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1166 + -mem[64] + 100
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
                        _1153 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1153] = 30
                        mem[_1153 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _1162 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1162 + idx + 68] = mem[_1153 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1162 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1162 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _1193 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1193] = 26
                        mem[_1193 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _1198 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1198 + idx + 68] = mem[_1193 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1198 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1198 + -mem[64] + 100
            else:
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_520] = _523
                    mem[_520 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_520 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_520 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    if uint256(stor4[address(arg1)][idx].field_512):
                        _541 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_541] = 30
                        mem[_541 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                            _551 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_551 + idx + 68] = mem[_541 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_551 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _551 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                            revert with 'NH{q', 17
                        _609 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_609] = 26
                        mem[_609 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _630 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_630 + idx + 68] = mem[_609 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_630 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _630 + -mem[64] + 100
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
                    _597 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_597] = 30
                    mem[_597 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                        _617 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_617 + idx + 68] = mem[_597 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_617 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _617 + -mem[64] + 100
                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                        revert with 'NH{q', 17
                    _713 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_713] = 26
                    mem[_713 + 32] = 'SafeMath: division by zero'
                    if claimTime <= 0:
                        _727 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_727 + idx + 68] = mem[_713 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_727 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _727 + -mem[64] + 100
                else:
                    if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                        mem[_523 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_520] = _523
                        mem[_520 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_520 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_520 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _553 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_553] = 30
                            mem[_553 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _563 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_563 + idx + 68] = mem[_553 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_563 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _563 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _631 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_631] = 26
                            mem[_631 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _655 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_655 + idx + 68] = mem[_631 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_655 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _655 + -mem[64] + 100
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
                        _620 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_620] = 30
                        mem[_620 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _643 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_643 + idx + 68] = mem[_620 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_643 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _643 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _729 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_729] = 26
                        mem[_729 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _748 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_748 + idx + 68] = mem[_729 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_748 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _748 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_523 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _523 + 32
                        u = sha3(mem[0])
                        while _523 + stor4[address(arg1)][idx].field_1 % 128 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_520] = _523
                        mem[_520 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_520 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_520 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1071 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1071] = 30
                            mem[_1071 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1103 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1103 + idx + 68] = mem[_1071 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1103 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1103 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _1159 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1159] = 26
                            mem[_1159 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _1167 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1167 + idx + 68] = mem[_1159 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1167 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1167 + -mem[64] + 100
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
                            _1163 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1163 + idx + 68] = mem[_1155 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1163 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1163 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _1195 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1195] = 26
                        mem[_1195 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _1199 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1199 + idx + 68] = mem[_1195 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1199 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1199 + -mem[64] + 100
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
        idx = 0
        s = 0
        while idx < uint256(stor4[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 4)
            _1846 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                    revert with 'NH{q', 34
                _1851 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
                mem[_1851] = uint255(stor4[address(arg1)][idx].field_1)
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor4[address(arg1)][idx].field_1):
                        mem[_1846] = _1851
                        mem[_1846 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1846 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1846 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1878 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1878] = 30
                            mem[_1878 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1902 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1902 + idx + 68] = mem[_1878 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1902 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1902 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _2037 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2037] = 26
                            mem[_2037 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2085 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2085 + idx + 68] = mem[_2037 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2085 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2085 + -mem[64] + 100
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
                        _2023 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2023] = 30
                        mem[_2023 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _2058 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2058 + idx + 68] = mem[_2023 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2058 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2058 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _2365 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2365] = 26
                        mem[_2365 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _2409 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2409 + idx + 68] = mem[_2365 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2409 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2409 + -mem[64] + 100
                    else:
                        if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                            mem[_1851 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1846] = _1851
                            mem[_1846 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1846 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1846 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1904 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1904] = 30
                                mem[_1904 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1936 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1936 + idx + 68] = mem[_1904 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1936 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1936 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2086 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2086] = 26
                                mem[_2086 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2153 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2153 + idx + 68] = mem[_2086 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2153 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2153 + -mem[64] + 100
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
                            _2061 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2061] = 30
                            mem[_2061 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2120 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2120 + idx + 68] = mem[_2061 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2120 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2120 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2411 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2411] = 26
                            mem[_2411 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2456 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2456 + idx + 68] = mem[_2411 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2456 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2456 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1851 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1851 + 32
                            u = sha3(mem[0])
                            while _1851 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1846] = _1851
                            mem[_1846 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1846 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1846 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _3780 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3780] = 30
                                mem[_3780 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _3796 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_3796 + idx + 68] = mem[_3780 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3796 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _3796 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _4044 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4044] = 26
                                mem[_4044 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _4068 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4068 + idx + 68] = mem[_4044 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4068 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4068 + -mem[64] + 100
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
                            _4021 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4021] = 30
                            mem[_4021 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _4056 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_4056 + idx + 68] = mem[_4021 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4056 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4056 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _4141 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4141] = 26
                            mem[_4141 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _4164 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_4164 + idx + 68] = mem[_4141 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4164 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _4164 + -mem[64] + 100
                else:
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor4[address(arg1)][idx].field_1 % 128:
                        mem[_1846] = _1851
                        mem[_1846 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1846 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1846 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1890 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1890] = 30
                            mem[_1890 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1917 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1917 + idx + 68] = mem[_1890 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1917 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1917 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _2062 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2062] = 26
                            mem[_2062 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2121 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2121 + idx + 68] = mem[_2062 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2121 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2121 + -mem[64] + 100
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
                        _2039 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2039] = 30
                        mem[_2039 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _2087 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2087 + idx + 68] = mem[_2039 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2087 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2087 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _2390 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2390] = 26
                        mem[_2390 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _2431 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2431 + idx + 68] = mem[_2390 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2431 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2431 + -mem[64] + 100
                    else:
                        if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1851 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1846] = _1851
                            mem[_1846 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1846 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1846 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1919 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1919] = 30
                                mem[_1919 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1952 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1952 + idx + 68] = mem[_1919 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1952 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1952 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2122 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2122] = 26
                                mem[_2122 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2189 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2189 + idx + 68] = mem[_2122 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2189 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2189 + -mem[64] + 100
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
                            _2090 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2090] = 30
                            mem[_2090 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2156 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2156 + idx + 68] = mem[_2090 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2156 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2156 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2433 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2433] = 26
                            mem[_2433 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2482 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2482 + idx + 68] = mem[_2433 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2482 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2482 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1851 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1851 + 32
                            u = sha3(mem[0])
                            while _1851 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1846] = _1851
                            mem[_1846 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1846 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1846 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _3781 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3781] = 30
                                mem[_3781 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _3805 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_3805 + idx + 68] = mem[_3781 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3805 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _3805 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _4045 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4045] = 26
                                mem[_4045 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _4069 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4069 + idx + 68] = mem[_4045 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4069 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4069 + -mem[64] + 100
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
                            _4023 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4023] = 30
                            mem[_4023 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _4057 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_4057 + idx + 68] = mem[_4023 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4057 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4057 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _4143 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4143] = 26
                            mem[_4143 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _4165 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_4165 + idx + 68] = mem[_4143 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4165 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _4165 + -mem[64] + 100
            else:
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                _1855 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
                mem[_1855] = stor4[address(arg1)][idx].field_1 % 128
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor4[address(arg1)][idx].field_1):
                        mem[_1846] = _1855
                        mem[_1846 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1846 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1846 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1892 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1892] = 30
                            mem[_1892 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1920 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1920 + idx + 68] = mem[_1892 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1920 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1920 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _2063 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2063] = 26
                            mem[_2063 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2123 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2123 + idx + 68] = mem[_2063 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2123 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2123 + -mem[64] + 100
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
                        _2042 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2042] = 30
                        mem[_2042 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _2091 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2091 + idx + 68] = mem[_2042 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2091 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2091 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _2392 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2392] = 26
                        mem[_2392 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _2434 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2434 + idx + 68] = mem[_2392 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2434 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2434 + -mem[64] + 100
                    else:
                        if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                            mem[_1855 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1846] = _1855
                            mem[_1846 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1846 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1846 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1922 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1922] = 30
                                mem[_1922 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1954 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1954 + idx + 68] = mem[_1922 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1954 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1954 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2124 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2124] = 26
                                mem[_2124 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2192 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2192 + idx + 68] = mem[_2124 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2192 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2192 + -mem[64] + 100
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
                            _2094 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2094] = 30
                            mem[_2094 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2159 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2159 + idx + 68] = mem[_2094 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2159 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2159 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2436 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2436] = 26
                            mem[_2436 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2485 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2485 + idx + 68] = mem[_2436 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2485 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2485 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1855 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1855 + 32
                            u = sha3(mem[0])
                            while _1855 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1846] = _1855
                            mem[_1846 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1846 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1846 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _3782 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3782] = 30
                                mem[_3782 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _3814 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_3814 + idx + 68] = mem[_3782 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3814 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _3814 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _4046 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4046] = 26
                                mem[_4046 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _4070 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4070 + idx + 68] = mem[_4046 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4070 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4070 + -mem[64] + 100
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
                            _4025 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4025] = 30
                            mem[_4025 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _4058 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_4058 + idx + 68] = mem[_4025 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4058 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4058 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _4145 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4145] = 26
                            mem[_4145 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _4166 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_4166 + idx + 68] = mem[_4145 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4166 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _4166 + -mem[64] + 100
                else:
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor4[address(arg1)][idx].field_1 % 128:
                        mem[_1846] = _1855
                        mem[_1846 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1846 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1846 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1905 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1905] = 30
                            mem[_1905 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1937 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1937 + idx + 68] = mem[_1905 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1937 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1937 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 'NH{q', 17
                            _2095 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2095] = 26
                            mem[_2095 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2160 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2160 + idx + 68] = mem[_2095 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2160 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2160 + -mem[64] + 100
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
                        _2065 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2065] = 30
                        mem[_2065 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _2125 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2125 + idx + 68] = mem[_2065 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2125 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2125 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 'NH{q', 17
                        _2415 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2415] = 26
                        mem[_2415 + 32] = 'SafeMath: division by zero'
                        if claimTime <= 0:
                            _2459 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2459 + idx + 68] = mem[_2415 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2459 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2459 + -mem[64] + 100
                    else:
                        if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1855 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1846] = _1855
                            mem[_1846 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1846 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1846 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1939 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1939] = 30
                                mem[_1939 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1969 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1969 + idx + 68] = mem[_1939 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1969 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1969 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2161 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2161] = 26
                                mem[_2161 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2231 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2231 + idx + 68] = mem[_2161 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2231 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2231 + -mem[64] + 100
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
                            _2128 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2128] = 30
                            mem[_2128 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2195 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2195 + idx + 68] = mem[_2128 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2195 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2195 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2461 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2461] = 26
                            mem[_2461 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2514 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2514 + idx + 68] = mem[_2461 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2514 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2514 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1855 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1855 + 32
                            u = sha3(mem[0])
                            while _1855 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1846] = _1855
                            mem[_1846 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1846 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1846 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _3783 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3783] = 30
                                mem[_3783 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _3823 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_3823 + idx + 68] = mem[_3783 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3823 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _3823 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _4047 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4047] = 26
                                mem[_4047 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _4071 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4071 + idx + 68] = mem[_4047 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4071 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4071 + -mem[64] + 100
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
                            _4027 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4027] = 30
                            mem[_4027 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _4059 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_4059 + idx + 68] = mem[_4027 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4059 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4059 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _4147 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4147] = 26
                            mem[_4147 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _4167 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_4167 + idx + 68] = mem[_4147 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4167 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _4167 + -mem[64] + 100
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
        if msg.sender == gateKeeperAddress:
            mem[0] = arg1
            mem[32] = 4
            idx = 0
            s = 0
            while idx < uint256(stor4[address(arg1)].field_0):
                mem[0] = sha3(address(arg1), 4)
                _1848 = mem[64]
                mem[64] = mem[64] + 128
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    _1852 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
                    mem[_1852] = uint255(stor4[address(arg1)][idx].field_1)
                    if bool(stor4[address(arg1)][idx].field_0):
                        if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if not uint255(stor4[address(arg1)][idx].field_1):
                            mem[_1848] = _1852
                            mem[_1848 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1848 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1848 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1882 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1882] = 30
                                mem[_1882 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1907 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1907 + idx + 68] = mem[_1882 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1907 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1907 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2044 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2044] = 26
                                mem[_2044 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2096 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2096 + idx + 68] = mem[_2044 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2096 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2096 + -mem[64] + 100
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
                            _2028 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2028] = 30
                            mem[_2028 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2067 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2067 + idx + 68] = mem[_2028 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2067 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2067 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2373 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2373] = 26
                            mem[_2373 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2416 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2416 + idx + 68] = mem[_2373 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2416 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2416 + -mem[64] + 100
                        else:
                            if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                                mem[_1852 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                mem[_1848] = _1852
                                mem[_1848 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1848 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1848 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _1909 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1909] = 30
                                    mem[_1909 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _1941 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1941 + idx + 68] = mem[_1909 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1941 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1941 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 'NH{q', 17
                                    _2097 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2097] = 26
                                    mem[_2097 + 32] = 'SafeMath: division by zero'
                                    if claimTime <= 0:
                                        _2164 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_2164 + idx + 68] = mem[_2097 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2164 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2164 + -mem[64] + 100
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
                                _2070 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2070] = 30
                                mem[_2070 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _2131 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2131 + idx + 68] = mem[_2070 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2131 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2131 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 'NH{q', 17
                                _2418 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2418] = 26
                                mem[_2418 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2464 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2464 + idx + 68] = mem[_2418 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2464 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2464 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_1852 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _1852 + 32
                                u = sha3(mem[0])
                                while _1852 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1848] = _1852
                                mem[_1848 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1848 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1848 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _3784 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3784] = 30
                                    mem[_3784 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _3832 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_3832 + idx + 68] = mem[_3784 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3832 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3832 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 'NH{q', 17
                                    _4048 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4048] = 26
                                    mem[_4048 + 32] = 'SafeMath: division by zero'
                                    if claimTime <= 0:
                                        _4072 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4072 + idx + 68] = mem[_4048 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4072 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4072 + -mem[64] + 100
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
                                _4029 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4029] = 30
                                mem[_4029 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _4060 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_4060 + idx + 68] = mem[_4029 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4060 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4060 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 'NH{q', 17
                                _4149 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4149] = 26
                                mem[_4149 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _4168 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4168 + idx + 68] = mem[_4149 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4168 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4168 + -mem[64] + 100
                    else:
                        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1848] = _1852
                            mem[_1848 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1848 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1848 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1894 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1894] = 30
                                mem[_1894 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1923 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1923 + idx + 68] = mem[_1894 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1923 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1923 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2071 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2071] = 26
                                mem[_2071 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2132 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2132 + idx + 68] = mem[_2071 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2132 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2132 + -mem[64] + 100
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
                            _2046 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2046] = 30
                            mem[_2046 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2098 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2098 + idx + 68] = mem[_2046 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2098 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2098 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2397 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2397] = 26
                            mem[_2397 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2439 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2439 + idx + 68] = mem[_2397 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2439 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2439 + -mem[64] + 100
                        else:
                            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                                mem[_1852 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                mem[_1848] = _1852
                                mem[_1848 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1848 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1848 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _1925 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1925] = 30
                                    mem[_1925 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _1957 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1957 + idx + 68] = mem[_1925 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1957 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1957 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 'NH{q', 17
                                    _2133 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2133] = 26
                                    mem[_2133 + 32] = 'SafeMath: division by zero'
                                    if claimTime <= 0:
                                        _2201 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_2201 + idx + 68] = mem[_2133 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2201 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2201 + -mem[64] + 100
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
                                _2101 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2101] = 30
                                mem[_2101 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _2167 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2167 + idx + 68] = mem[_2101 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2167 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2167 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 'NH{q', 17
                                _2441 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2441] = 26
                                mem[_2441 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2491 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2491 + idx + 68] = mem[_2441 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2491 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2491 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_1852 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _1852 + 32
                                u = sha3(mem[0])
                                while _1852 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1848] = _1852
                                mem[_1848 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1848 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1848 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _3785 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3785] = 30
                                    mem[_3785 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _3841 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_3841 + idx + 68] = mem[_3785 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3841 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3841 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 'NH{q', 17
                                    _4049 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4049] = 26
                                    mem[_4049 + 32] = 'SafeMath: division by zero'
                                    if claimTime <= 0:
                                        _4073 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4073 + idx + 68] = mem[_4049 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4073 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4073 + -mem[64] + 100
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
                                _4031 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4031] = 30
                                mem[_4031 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _4061 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_4061 + idx + 68] = mem[_4031 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4061 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4061 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 'NH{q', 17
                                _4151 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4151] = 26
                                mem[_4151 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _4169 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4169 + idx + 68] = mem[_4151 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4169 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4169 + -mem[64] + 100
                else:
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    _1857 = mem[64]
                    mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
                    mem[_1857] = stor4[address(arg1)][idx].field_1 % 128
                    if bool(stor4[address(arg1)][idx].field_0):
                        if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if not uint255(stor4[address(arg1)][idx].field_1):
                            mem[_1848] = _1857
                            mem[_1848 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1848 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1848 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1896 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1896] = 30
                                mem[_1896 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1926 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1926 + idx + 68] = mem[_1896 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1926 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1926 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2072 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2072] = 26
                                mem[_2072 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2134 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2134 + idx + 68] = mem[_2072 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2134 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2134 + -mem[64] + 100
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
                            _2049 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2049] = 30
                            mem[_2049 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2102 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2102 + idx + 68] = mem[_2049 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2102 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2102 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2399 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2399] = 26
                            mem[_2399 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2442 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2442 + idx + 68] = mem[_2399 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2442 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2442 + -mem[64] + 100
                        else:
                            if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                                mem[_1857 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                mem[_1848] = _1857
                                mem[_1848 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1848 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1848 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _1928 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1928] = 30
                                    mem[_1928 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _1959 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1959 + idx + 68] = mem[_1928 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1959 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1959 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 'NH{q', 17
                                    _2135 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2135] = 26
                                    mem[_2135 + 32] = 'SafeMath: division by zero'
                                    if claimTime <= 0:
                                        _2204 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_2204 + idx + 68] = mem[_2135 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2204 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2204 + -mem[64] + 100
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
                                _2105 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2105] = 30
                                mem[_2105 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _2170 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2170 + idx + 68] = mem[_2105 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2170 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2170 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 'NH{q', 17
                                _2444 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2444] = 26
                                mem[_2444 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2494 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2494 + idx + 68] = mem[_2444 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2494 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2494 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_1857 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _1857 + 32
                                u = sha3(mem[0])
                                while _1857 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1848] = _1857
                                mem[_1848 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1848 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1848 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _3786 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3786] = 30
                                    mem[_3786 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _3850 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_3850 + idx + 68] = mem[_3786 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3850 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3850 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 'NH{q', 17
                                    _4050 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4050] = 26
                                    mem[_4050 + 32] = 'SafeMath: division by zero'
                                    if claimTime <= 0:
                                        _4074 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4074 + idx + 68] = mem[_4050 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4074 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4074 + -mem[64] + 100
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
                                _4033 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4033] = 30
                                mem[_4033 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _4062 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_4062 + idx + 68] = mem[_4033 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4062 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4062 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 'NH{q', 17
                                _4153 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4153] = 26
                                mem[_4153 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _4170 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4170 + idx + 68] = mem[_4153 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4170 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4170 + -mem[64] + 100
                    else:
                        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1848] = _1857
                            mem[_1848 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1848 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1848 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1910 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1910] = 30
                                mem[_1910 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1942 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1942 + idx + 68] = mem[_1910 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1942 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1942 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2106 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2106] = 26
                                mem[_2106 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2171 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2171 + idx + 68] = mem[_2106 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2171 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2171 + -mem[64] + 100
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
                            _2074 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2074] = 30
                            mem[_2074 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2136 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2136 + idx + 68] = mem[_2074 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2136 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2136 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2422 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2422] = 26
                            mem[_2422 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2467 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2467 + idx + 68] = mem[_2422 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2467 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2467 + -mem[64] + 100
                        else:
                            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                                mem[_1857 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                mem[_1848] = _1857
                                mem[_1848 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1848 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1848 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _1944 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1944] = 30
                                    mem[_1944 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _1974 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1974 + idx + 68] = mem[_1944 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1974 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1974 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 'NH{q', 17
                                    _2172 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2172] = 26
                                    mem[_2172 + 32] = 'SafeMath: division by zero'
                                    if claimTime <= 0:
                                        _2243 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_2243 + idx + 68] = mem[_2172 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2243 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2243 + -mem[64] + 100
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
                                _2139 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2139] = 30
                                mem[_2139 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _2207 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2207 + idx + 68] = mem[_2139 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2207 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2207 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 'NH{q', 17
                                _2469 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2469] = 26
                                mem[_2469 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2524 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2524 + idx + 68] = mem[_2469 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2524 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2524 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_1857 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _1857 + 32
                                u = sha3(mem[0])
                                while _1857 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1848] = _1857
                                mem[_1848 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1848 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1848 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _3787 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3787] = 30
                                    mem[_3787 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _3859 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_3859 + idx + 68] = mem[_3787 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3859 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3859 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 'NH{q', 17
                                    _4051 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4051] = 26
                                    mem[_4051 + 32] = 'SafeMath: division by zero'
                                    if claimTime <= 0:
                                        _4075 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4075 + idx + 68] = mem[_4051 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4075 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4075 + -mem[64] + 100
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
                                _4035 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4035] = 30
                                mem[_4035 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _4063 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_4063 + idx + 68] = mem[_4035 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4063 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4063 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 'NH{q', 17
                                _4155 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4155] = 26
                                mem[_4155 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _4171 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4171 + idx + 68] = mem[_4155 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4171 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4171 + -mem[64] + 100
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
            if address(stor10.field_0) != msg.sender:
                revert with 0, 'Fuck off'
            mem[0] = arg1
            mem[32] = 4
            idx = 0
            s = 0
            while idx < uint256(stor4[address(arg1)].field_0):
                mem[0] = sha3(address(arg1), 4)
                _1850 = mem[64]
                mem[64] = mem[64] + 128
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                        revert with 'NH{q', 34
                    _1853 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_1)) + 32
                    mem[_1853] = uint255(stor4[address(arg1)][idx].field_1)
                    if bool(stor4[address(arg1)][idx].field_0):
                        if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if not uint255(stor4[address(arg1)][idx].field_1):
                            mem[_1850] = _1853
                            mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1886 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1886] = 30
                                mem[_1886 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1912 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1912 + idx + 68] = mem[_1886 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1912 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1912 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2051 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2051] = 26
                                mem[_2051 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2107 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2107 + idx + 68] = mem[_2051 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2107 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2107 + -mem[64] + 100
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
                            _2033 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2033] = 30
                            mem[_2033 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2076 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2076 + idx + 68] = mem[_2033 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2076 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2076 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2381 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2381] = 26
                            mem[_2381 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2423 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2423 + idx + 68] = mem[_2381 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2423 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2423 + -mem[64] + 100
                        else:
                            if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                                mem[_1853 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                mem[_1850] = _1853
                                mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _1914 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1914] = 30
                                    mem[_1914 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _1946 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1946 + idx + 68] = mem[_1914 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1946 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1946 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 'NH{q', 17
                                    _2108 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2108] = 26
                                    mem[_2108 + 32] = 'SafeMath: division by zero'
                                    if claimTime <= 0:
                                        _2175 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_2175 + idx + 68] = mem[_2108 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2175 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2175 + -mem[64] + 100
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
                                _2079 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2079] = 30
                                mem[_2079 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _2142 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2142 + idx + 68] = mem[_2079 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2142 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2142 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 'NH{q', 17
                                _2425 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2425] = 26
                                mem[_2425 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2472 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2472 + idx + 68] = mem[_2425 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2472 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2472 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_1853 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _1853 + 32
                                u = sha3(mem[0])
                                while _1853 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1850] = _1853
                                mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _3788 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3788] = 30
                                    mem[_3788 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _3868 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_3868 + idx + 68] = mem[_3788 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3868 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3868 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 'NH{q', 17
                                    _4052 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4052] = 26
                                    mem[_4052 + 32] = 'SafeMath: division by zero'
                                    if claimTime <= 0:
                                        _4076 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4076 + idx + 68] = mem[_4052 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4076 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4076 + -mem[64] + 100
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
                                _4037 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4037] = 30
                                mem[_4037 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _4064 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_4064 + idx + 68] = mem[_4037 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4064 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4064 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 'NH{q', 17
                                _4157 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4157] = 26
                                mem[_4157 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _4172 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4172 + idx + 68] = mem[_4157 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4172 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4172 + -mem[64] + 100
                    else:
                        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1850] = _1853
                            mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1898 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1898] = 30
                                mem[_1898 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1929 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1929 + idx + 68] = mem[_1898 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1929 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1929 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2080 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2080] = 26
                                mem[_2080 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2143 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2143 + idx + 68] = mem[_2080 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2143 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2143 + -mem[64] + 100
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
                            _2053 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2053] = 30
                            mem[_2053 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2109 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2109 + idx + 68] = mem[_2053 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2109 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2109 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2404 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2404] = 26
                            mem[_2404 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2447 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2447 + idx + 68] = mem[_2404 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2447 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2447 + -mem[64] + 100
                        else:
                            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                                mem[_1853 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                mem[_1850] = _1853
                                mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _1931 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1931] = 30
                                    mem[_1931 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _1962 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1962 + idx + 68] = mem[_1931 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1962 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1962 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 'NH{q', 17
                                    _2144 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2144] = 26
                                    mem[_2144 + 32] = 'SafeMath: division by zero'
                                    if claimTime <= 0:
                                        _2213 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_2213 + idx + 68] = mem[_2144 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2213 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2213 + -mem[64] + 100
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
                                _2112 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2112] = 30
                                mem[_2112 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _2178 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2178 + idx + 68] = mem[_2112 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2178 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2178 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 'NH{q', 17
                                _2449 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2449] = 26
                                mem[_2449 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2500 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2500 + idx + 68] = mem[_2449 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2500 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2500 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_1853 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _1853 + 32
                                u = sha3(mem[0])
                                while _1853 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1850] = _1853
                                mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _3789 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3789] = 30
                                    mem[_3789 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _3877 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_3877 + idx + 68] = mem[_3789 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3877 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3877 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 'NH{q', 17
                                    _4053 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4053] = 26
                                    mem[_4053 + 32] = 'SafeMath: division by zero'
                                    if claimTime <= 0:
                                        _4077 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4077 + idx + 68] = mem[_4053 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4077 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4077 + -mem[64] + 100
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
                                _4039 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4039] = 30
                                mem[_4039 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _4065 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_4065 + idx + 68] = mem[_4039 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4065 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4065 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 'NH{q', 17
                                _4159 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4159] = 26
                                mem[_4159 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _4173 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4173 + idx + 68] = mem[_4159 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4173 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4173 + -mem[64] + 100
                else:
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    _1859 = mem[64]
                    mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
                    mem[_1859] = stor4[address(arg1)][idx].field_1 % 128
                    if bool(stor4[address(arg1)][idx].field_0):
                        if bool(stor4[address(arg1)][idx].field_0) == uint255(stor4[address(arg1)][idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if not uint255(stor4[address(arg1)][idx].field_1):
                            mem[_1850] = _1859
                            mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1900 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1900] = 30
                                mem[_1900 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1932 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1932 + idx + 68] = mem[_1900 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1932 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1932 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2081 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2081] = 26
                                mem[_2081 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2145 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2145 + idx + 68] = mem[_2081 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2145 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2145 + -mem[64] + 100
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
                            _2056 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2056] = 30
                            mem[_2056 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2113 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2113 + idx + 68] = mem[_2056 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2113 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2113 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2406 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2406] = 26
                            mem[_2406 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2450 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2450 + idx + 68] = mem[_2406 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2450 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2450 + -mem[64] + 100
                        else:
                            if 31 >= uint255(stor4[address(arg1)][idx].field_1):
                                mem[_1859 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                mem[_1850] = _1859
                                mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _1934 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1934] = 30
                                    mem[_1934 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _1964 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1964 + idx + 68] = mem[_1934 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1964 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1964 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 'NH{q', 17
                                    _2146 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2146] = 26
                                    mem[_2146 + 32] = 'SafeMath: division by zero'
                                    if claimTime <= 0:
                                        _2216 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_2216 + idx + 68] = mem[_2146 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2216 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2216 + -mem[64] + 100
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
                                _2116 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2116] = 30
                                mem[_2116 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _2181 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2181 + idx + 68] = mem[_2116 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2181 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2181 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 'NH{q', 17
                                _2452 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2452] = 26
                                mem[_2452 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2503 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2503 + idx + 68] = mem[_2452 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2503 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2503 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_1859 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _1859 + 32
                                u = sha3(mem[0])
                                while _1859 + uint255(stor4[address(arg1)][idx].field_1) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1850] = _1859
                                mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _3790 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3790] = 30
                                    mem[_3790 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _3886 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_3886 + idx + 68] = mem[_3790 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3886 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3886 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 'NH{q', 17
                                    _4054 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4054] = 26
                                    mem[_4054 + 32] = 'SafeMath: division by zero'
                                    if claimTime <= 0:
                                        _4078 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4078 + idx + 68] = mem[_4054 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4078 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4078 + -mem[64] + 100
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
                                _4041 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4041] = 30
                                mem[_4041 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _4066 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_4066 + idx + 68] = mem[_4041 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4066 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4066 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 'NH{q', 17
                                _4161 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4161] = 26
                                mem[_4161 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _4174 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4174 + idx + 68] = mem[_4161 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4174 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4174 + -mem[64] + 100
                    else:
                        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1850] = _1859
                            mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1915 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1915] = 30
                                mem[_1915 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1947 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1947 + idx + 68] = mem[_1915 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1947 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1947 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 'NH{q', 17
                                _2117 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2117] = 26
                                mem[_2117 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2182 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2182 + idx + 68] = mem[_2117 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2182 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2182 + -mem[64] + 100
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
                            _2083 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2083] = 30
                            mem[_2083 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2147 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2147 + idx + 68] = mem[_2083 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2147 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2147 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 'NH{q', 17
                            _2429 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2429] = 26
                            mem[_2429 + 32] = 'SafeMath: division by zero'
                            if claimTime <= 0:
                                _2475 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2475 + idx + 68] = mem[_2429 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2475 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2475 + -mem[64] + 100
                        else:
                            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                                mem[_1859 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                mem[_1850] = _1859
                                mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _1949 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1949] = 30
                                    mem[_1949 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _1979 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1979 + idx + 68] = mem[_1949 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1979 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1979 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 'NH{q', 17
                                    _2183 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2183] = 26
                                    mem[_2183 + 32] = 'SafeMath: division by zero'
                                    if claimTime <= 0:
                                        _2255 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_2255 + idx + 68] = mem[_2183 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2255 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2255 + -mem[64] + 100
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
                                _2150 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2150] = 30
                                mem[_2150 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _2219 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2219 + idx + 68] = mem[_2150 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2219 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2219 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 'NH{q', 17
                                _2477 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2477] = 26
                                mem[_2477 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _2534 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_2534 + idx + 68] = mem[_2477 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2534 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2534 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_1859 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _1859 + 32
                                u = sha3(mem[0])
                                while _1859 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1850] = _1859
                                mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _3791 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3791] = 30
                                    mem[_3791 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _3895 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_3895 + idx + 68] = mem[_3791 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3895 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3895 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 'NH{q', 17
                                    _4055 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4055] = 26
                                    mem[_4055 + 32] = 'SafeMath: division by zero'
                                    if claimTime <= 0:
                                        _4079 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4079 + idx + 68] = mem[_4055 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4079 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4079 + -mem[64] + 100
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
                                _4043 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4043] = 30
                                mem[_4043 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _4067 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_4067 + idx + 68] = mem[_4043 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4067 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4067 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 'NH{q', 17
                                _4163 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4163] = 26
                                mem[_4163 + 32] = 'SafeMath: division by zero'
                                if claimTime <= 0:
                                    _4175 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4175 + idx + 68] = mem[_4163 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4175 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4175 + -mem[64] + 100
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
