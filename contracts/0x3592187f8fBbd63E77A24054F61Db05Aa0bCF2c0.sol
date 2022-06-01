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
address tokenAddress;
uint8 stor10; offset 160
uint8 stor10; offset 168
uint128 stor10; offset 160
address deathStrokeAddress;
uint256 gasForDistribution;
uint256 lastDistributionCount;
uint256 lastIndexProcessed;
uint256 totalNodesCreated;
uint256 totalRewardStaked;

function deathStroke() payable {
    return deathStrokeAddress
}

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

function _changeNodePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if deathStrokeAddress != msg.sender:
                revert with 0, 'Fuck off'
    nodePrice = arg1
}

function _changeClaimTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if deathStrokeAddress != msg.sender:
                revert with 0, 'Fuck off'
    claimTime = arg1
}

function _changeRewardPerNode(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if deathStrokeAddress != msg.sender:
                revert with 0, 'Fuck off'
    rewardPerNode = arg1
}

function _changeGasDistri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if deathStrokeAddress != msg.sender:
                revert with 0, 'Fuck off'
    gasForDistribution = arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if deathStrokeAddress != msg.sender:
                revert with 0, 'Fuck off'
    tokenAddress = arg1
}

function setDeathstoke(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if deathStrokeAddress != msg.sender:
                revert with 0, 'Fuck off'
    deathStrokeAddress = arg1
}

function _changeAutoDistri(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if deathStrokeAddress != msg.sender:
                revert with 0, 'Fuck off'
    Mask(96, 0, stor10.field_160) = Mask(96, 0, arg1)
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x8e77aa68acbb0bf2add1d8bb8ea871f3e4f30180)
    delegate 0x8e77aa68acbb0bf2add1d8bb8ea871f3e4f30180.0x732a2ccf with:
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
    require ext_code.size(0x8e77aa68acbb0bf2add1d8bb8ea871f3e4f30180)
    delegate 0x8e77aa68acbb0bf2add1d8bb8ea871f3e4f30180.0x732a2ccf with:
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
            if deathStrokeAddress != msg.sender:
                revert with 0, 'Fuck off'
    uint256(stor4[address(arg1)].field_0)++
    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=arg2.length, data=arg2[all])
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
    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = 0
    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = 0
    require ext_code.size(0x8e77aa68acbb0bf2add1d8bb8ea871f3e4f30180)
    delegate 0x8e77aa68acbb0bf2add1d8bb8ea871f3e4f30180.0xbc2b405c with:
         gas gas_remaining wei
        args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if totalNodesCreated == -1:
        revert with 0, 17
    totalNodesCreated++
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
    require ext_code.size(0x8e77aa68acbb0bf2add1d8bb8ea871f3e4f30180)
    delegate 0x8e77aa68acbb0bf2add1d8bb8ea871f3e4f30180.0x732a2ccf with:
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
    mem[mem[64]] = 32
    _105 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_105)] = mem[s + 32 len ceil32(_105)]
    if ceil32(_105) > _105:
        mem[mem[64] + _105 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_105) + 32]
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
        _170 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1
        mem[_170] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_170 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_170 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _170
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    _171 = mem[64]
    if mem[64] + ceil32(32 * arg3.length) + 1 < mem[64] or mem[64] + ceil32(32 * arg3.length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * arg3.length) + 1
    mem[_171] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = _171 + 32
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
    _338 = mem[64]
    if mem[64] + ceil32(32 * arg4.length) + 1 < mem[64] or mem[64] + ceil32(32 * arg4.length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * arg4.length) + 1
    mem[_338] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = _338 + 32
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
    _504 = mem[64]
    if mem[64] + ceil32(32 * arg5.length) + 1 < mem[64] or mem[64] + ceil32(32 * arg5.length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * arg5.length) + 1
    mem[_504] = arg5.length
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    idx = 0
    s = arg5 + 36
    t = _504 + 32
    while idx < arg5.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == tokenAddress:
        _669 = mem[96]
        require mem[96] == mem[_171]
        require mem[_338] == mem[96]
        require arg5.length == mem[96]
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
        while idx < _669:
            mem[0] = arg1
            mem[32] = 4
            _981 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[96]:
                revert with 0, 50
            mem[_981] = mem[(32 * idx) + 128]
            if idx >= mem[_171]:
                revert with 0, 50
            mem[_981 + 32] = mem[(32 * idx) + _171 + 32]
            if idx >= mem[_338]:
                revert with 0, 50
            mem[_981 + 64] = mem[(32 * idx) + _338 + 32]
            if idx >= mem[_504]:
                revert with 0, 50
            if mem[(32 * idx) + _504 + 32] > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                revert with 0, 17
            mem[_981 + 96] = 10^9 * mem[(32 * idx) + _504 + 32]
            uint256(stor4[address(arg1)].field_0)++
            mem[0] = sha3(address(arg1), 4)
            _1017 = mem[_981]
            _1018 = mem[mem[_981]]
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))
                if not _1018:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                    s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                    while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                else:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1018) + 1
                    t = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                    s = _1017 + 32
                    while _1017 + _1018 + 32 > s:
                        uint256(stor[t].field_0) = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (Mask(251, 0, _1018 + 31) >> 5)
                    while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))
                if not _1018:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                    s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                    while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                else:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1018) + 1
                    t = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                    s = _1017 + 32
                    while _1017 + _1018 + 32 > s:
                        uint256(stor[t].field_0) = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (Mask(251, 0, _1018 + 31) >> 5)
                    while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = mem[_981 + 32]
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = mem[_981 + 64]
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = mem[_981 + 96]
            if totalNodesCreated == -1:
                revert with 0, 17
            totalNodesCreated++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if msg.sender == gateKeeperAddress:
            _672 = mem[96]
            require mem[96] == mem[_171]
            require mem[_338] == mem[96]
            require arg5.length == mem[96]
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
            while idx < _672:
                mem[0] = arg1
                mem[32] = 4
                _987 = mem[64]
                mem[64] = mem[64] + 128
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_987] = mem[(32 * idx) + 128]
                if idx >= mem[_171]:
                    revert with 0, 50
                mem[_987 + 32] = mem[(32 * idx) + _171 + 32]
                if idx >= mem[_338]:
                    revert with 0, 50
                mem[_987 + 64] = mem[(32 * idx) + _338 + 32]
                if idx >= mem[_504]:
                    revert with 0, 50
                if mem[(32 * idx) + _504 + 32] > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                mem[_987 + 96] = 10^9 * mem[(32 * idx) + _504 + 32]
                uint256(stor4[address(arg1)].field_0)++
                mem[0] = sha3(address(arg1), 4)
                _1020 = mem[_987]
                _1021 = mem[mem[_987]]
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))
                    if not _1021:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1021) + 1
                        t = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        s = _1020 + 32
                        while _1020 + _1021 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (Mask(251, 0, _1021 + 31) >> 5)
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))
                    if not _1021:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1021) + 1
                        t = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        s = _1020 + 32
                        while _1020 + _1021 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (Mask(251, 0, _1021 + 31) >> 5)
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = mem[_987 + 32]
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = mem[_987 + 64]
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = mem[_987 + 96]
                if totalNodesCreated == -1:
                    revert with 0, 17
                totalNodesCreated++
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if deathStrokeAddress != msg.sender:
                revert with 0, 'Fuck off'
            _676 = mem[96]
            require mem[96] == mem[_171]
            require mem[_338] == mem[96]
            require arg5.length == mem[96]
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
            while idx < _676:
                mem[0] = arg1
                mem[32] = 4
                _993 = mem[64]
                mem[64] = mem[64] + 128
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_993] = mem[(32 * idx) + 128]
                if idx >= mem[_171]:
                    revert with 0, 50
                mem[_993 + 32] = mem[(32 * idx) + _171 + 32]
                if idx >= mem[_338]:
                    revert with 0, 50
                mem[_993 + 64] = mem[(32 * idx) + _338 + 32]
                if idx >= mem[_504]:
                    revert with 0, 50
                if mem[(32 * idx) + _504 + 32] > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                mem[_993 + 96] = 10^9 * mem[(32 * idx) + _504 + 32]
                uint256(stor4[address(arg1)].field_0)++
                mem[0] = sha3(address(arg1), 4)
                _1023 = mem[_993]
                _1024 = mem[mem[_993]]
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))
                    if not _1024:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1024) + 1
                        t = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        s = _1023 + 32
                        while _1023 + _1024 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (Mask(251, 0, _1024 + 31) >> 5)
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))
                    if not _1024:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = (2 * _1024) + 1
                        t = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0)))
                        s = _1023 + 32
                        while _1023 + _1024 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (Mask(251, 0, _1024 + 31) >> 5)
                        while sha3(sha3(sha3(address(arg1), 4)) + (4 * uint256(stor4[address(arg1)].field_0))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = mem[_993 + 32]
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = mem[_993 + 64]
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = mem[_993 + 96]
                if totalNodesCreated == -1:
                    revert with 0, 17
                totalNodesCreated++
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    require ext_code.size(0x8e77aa68acbb0bf2add1d8bb8ea871f3e4f30180)
    delegate 0x8e77aa68acbb0bf2add1d8bb8ea871f3e4f30180.0xbc2b405c with:
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
            _242 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _273 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                mem[_273] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_273 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_273 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _273 + 32
                            u = sha3(mem[0])
                            while _273 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_242] = _273
                    mem[_242 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_242 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_242 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _242
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_242] = _273
                    mem[_242 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_242 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_242 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _242
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_273 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_242] = _273
                    mem[_242 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_242 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_242 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _242
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
                mem[_242] = _273
                mem[_242 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_242 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_242 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _242
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            _280 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_280] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_242] = _280
                    mem[_242 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_242 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_242 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _242
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                    mem[_280 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_242] = _280
                    mem[_242 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_242 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_242 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _242
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_280 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _280 + 32
                u = sha3(mem[0])
                while _280 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_242] = _280
                mem[_242 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_242 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_242 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _242
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[address(arg1)][idx].field_1 % 128:
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_280 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_280 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _280 + 32
                    u = sha3(mem[0])
                    while _280 + stor4[address(arg1)][idx].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_242] = _280
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
                revert with 0, 50
            if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
                revert with 0, 'CREATE NODE: Name not available'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 4
        _497 = mem[64]
        mem[64] = mem[64] + 128
        mem[_497] = 96
        mem[_497 + 32] = arg3
        mem[_497 + 64] = arg4
        if arg5 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
            revert with 0, 17
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
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _276 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                    mem[_276] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                    if bool(stor4[address(arg1)][idx].field_0):
                        if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                            if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                                mem[_276 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_276 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _276 + 32
                                u = sha3(mem[0])
                                while _276 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[_244] = _276
                        mem[_244 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_244 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_244 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _244
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[address(arg1)][idx].field_1 % 128:
                        mem[_244] = _276
                        mem[_244 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_244 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_244 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _244
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                        mem[_276 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_244] = _276
                        mem[_244 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_244 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_244 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _244
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_276 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _276 + 32
                    u = sha3(mem[0])
                    while _276 + stor4[address(arg1)][u].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_244] = _276
                    mem[_244 + 32] = uint256(stor4[address(arg1)][u].field_256)
                    mem[_244 + 64] = uint256(stor4[address(arg1)][u].field_512)
                    mem[_244 + 96] = uint256(stor4[address(arg1)][u].field_768)
                    mem[t] = _244
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                _281 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
                mem[_281] = stor4[address(arg1)][idx].field_1 % 128
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        mem[_244] = _281
                        mem[_244 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_244 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_244 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _244
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                        mem[_281 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_244] = _281
                        mem[_244 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_244 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_244 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _244
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_281 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _281 + 32
                    u = sha3(mem[0])
                    while _281 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_244] = _281
                    mem[_244 + 32] = uint256(stor4[address(arg1)][u].field_256)
                    mem[_244 + 64] = uint256(stor4[address(arg1)][u].field_512)
                    mem[_244 + 96] = uint256(stor4[address(arg1)][u].field_768)
                    mem[t] = _244
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if stor4[address(arg1)][idx].field_1 % 128:
                    if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                        mem[_281 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_281 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _281 + 32
                        u = sha3(mem[0])
                        while _281 + stor4[address(arg1)][idx].field_1 % 128 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_244] = _281
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
                    revert with 0, 50
                if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
                    revert with 0, 'CREATE NODE: Name not available'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[0] = arg1
            mem[32] = 4
            _499 = mem[64]
            mem[64] = mem[64] + 128
            mem[_499] = 96
            mem[_499 + 32] = arg3
            mem[_499 + 64] = arg4
            if arg5 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                revert with 0, 17
            mem[_499 + 96] = 10^9 * arg5
        else:
            if deathStrokeAddress != msg.sender:
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
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _279 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                    mem[_279] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                    if bool(stor4[address(arg1)][idx].field_0):
                        if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                            if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                                mem[_279 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_279 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _279 + 32
                                u = sha3(mem[0])
                                while _279 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[_246] = _279
                        mem[_246 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_246 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_246 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _246
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[address(arg1)][idx].field_1 % 128:
                        mem[_246] = _279
                        mem[_246 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_246 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_246 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _246
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                        mem[_279 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_246] = _279
                        mem[_246 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_246 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_246 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _246
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_279 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _279 + 32
                    u = sha3(mem[0])
                    while _279 + stor4[address(arg1)][u].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_246] = _279
                    mem[_246 + 32] = uint256(stor4[address(arg1)][u].field_256)
                    mem[_246 + 64] = uint256(stor4[address(arg1)][u].field_512)
                    mem[_246 + 96] = uint256(stor4[address(arg1)][u].field_768)
                    mem[t] = _246
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                _282 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
                mem[_282] = stor4[address(arg1)][idx].field_1 % 128
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        mem[_246] = _282
                        mem[_246 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_246 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_246 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        mem[s] = _246
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
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
                    while _282 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
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
                    revert with 0, 34
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
                    revert with 0, 50
                if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
                    revert with 0, 'CREATE NODE: Name not available'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[0] = arg1
            mem[32] = 4
            _501 = mem[64]
            mem[64] = mem[64] + 128
            mem[_501] = 96
            mem[_501 + 32] = arg3
            mem[_501 + 64] = arg4
            if arg5 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                revert with 0, 17
            mem[_501 + 96] = 10^9 * arg5
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
    require ext_code.size(0x8e77aa68acbb0bf2add1d8bb8ea871f3e4f30180)
    delegate 0x8e77aa68acbb0bf2add1d8bb8ea871f3e4f30180.0xbc2b405c with:
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
    require ext_code.size(0x8e77aa68acbb0bf2add1d8bb8ea871f3e4f30180)
    delegate 0x8e77aa68acbb0bf2add1d8bb8ea871f3e4f30180.0x732a2ccf with:
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
        mem[mem[64]] = 32
        _108 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_108)] = mem[s + 32 len ceil32(_108)]
        if ceil32(_108) > _108:
            mem[mem[64] + _108 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_108) + 32]
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
        mem[mem[64]] = 32
        _361 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_361)] = mem[t + 32 len ceil32(_361)]
        if ceil32(_361) > _361:
            mem[mem[64] + _361 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_361) + 32]
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
    mem[mem[64]] = 32
    _363 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_363)] = mem[t + 32 len ceil32(_363)]
    if ceil32(_363) > _363:
        mem[mem[64] + _363 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_363) + 32]
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0x8e77aa68acbb0bf2add1d8bb8ea871f3e4f30180)
    delegate 0x8e77aa68acbb0bf2add1d8bb8ea871f3e4f30180.0x732a2ccf with:
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
        mem[mem[64]] = 32
        _108 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_108)] = mem[s + 32 len ceil32(_108)]
        if ceil32(_108) > _108:
            mem[mem[64] + _108 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_108) + 32]
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
        mem[mem[64]] = 32
        _361 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_361)] = mem[t + 32 len ceil32(_361)]
        if ceil32(_361) > _361:
            mem[mem[64] + _361 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_361) + 32]
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
    mem[mem[64]] = 32
    _363 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_363)] = mem[t + 32 len ceil32(_363)]
    if ceil32(_363) > _363:
        mem[mem[64] + _363 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_363) + 32]
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
        _521 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            _522 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
            mem[_522] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_521] = _522
                    mem[_521 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_521 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_521 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
                                mem[idx + _538 + 68] = mem[idx + _530 + 32]
                                idx = idx + 32
                                continue 
                            mem[_538 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _538 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
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
                    _570 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_570] = 30
                    mem[_570 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
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
                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
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
                    if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                        mem[_522 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_521] = _522
                        mem[_521 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_521 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_521 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _540 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_540] = 30
                            mem[_540 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
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
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
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
                        _590 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_590] = 30
                        mem[_590 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
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
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
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
                        mem[_522 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _522 + 32
                        u = sha3(mem[0])
                        while _522 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_521] = _522
                        mem[_521 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_521 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_521 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1072 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1072] = 30
                            mem[_1072 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
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
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
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
                                mem[idx + _1160 + 68] = mem[idx + _1149 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1160 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1160 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
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
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_521] = _522
                    mem[_521 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_521 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_521 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
                                mem[idx + _543 + 68] = mem[idx + _534 + 32]
                                idx = idx + 32
                                continue 
                            mem[_543 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _543 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
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
                    _580 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_580] = 30
                    mem[_580 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
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
                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
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
                    if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                        mem[_522 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_521] = _522
                        mem[_521 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_521 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_521 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _545 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_545] = 30
                            mem[_545 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
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
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
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
                        _603 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_603] = 30
                        mem[_603 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
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
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
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
                        mem[_522 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _522 + 32
                        u = sha3(mem[0])
                        while _522 + stor4[address(arg1)][idx].field_1 % 128 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_521] = _522
                        mem[_521 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_521 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_521 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1081 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1081] = 30
                            mem[_1081 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
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
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
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
                                mem[idx + _1161 + 68] = mem[idx + _1151 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1161 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1161 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
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
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            _523 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_523] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_521] = _523
                    mem[_521 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_521 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_521 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
                                mem[idx + _546 + 68] = mem[idx + _536 + 32]
                                idx = idx + 32
                                continue 
                            mem[_546 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _546 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
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
                    _583 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_583] = 30
                    mem[_583 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
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
                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
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
                    if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                        mem[_523 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_521] = _523
                        mem[_521 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_521 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_521 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _548 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_548] = 30
                            mem[_548 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
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
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
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
                        _607 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_607] = 30
                        mem[_607 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
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
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
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
                        mem[_523 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _523 + 32
                        u = sha3(mem[0])
                        while _523 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_521] = _523
                        mem[_521 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_521 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_521 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1090 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1090] = 30
                            mem[_1090 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
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
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
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
                                mem[idx + _1162 + 68] = mem[idx + _1153 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1162 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1162 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
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
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_521] = _523
                    mem[_521 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_521 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_521 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    if uint256(stor4[address(arg1)][idx].field_512):
                        _541 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_541] = 30
                        mem[_541 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
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
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
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
                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
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
                    if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                        mem[_523 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        mem[_521] = _523
                        mem[_521 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_521 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_521 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _554 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_554] = 30
                            mem[_554 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
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
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
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
                        _622 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_622] = 30
                        mem[_622 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
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
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
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
                        mem[_523 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _523 + 32
                        u = sha3(mem[0])
                        while _523 + stor4[address(arg1)][idx].field_1 % 128 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_521] = _523
                        mem[_521 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_521 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_521 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1099 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1099] = 30
                            mem[_1099 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
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
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
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
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
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
        idx = 0
        s = 0
        while idx < uint256(stor4[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 4)
            _1844 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _1854 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                mem[_1854] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        mem[_1844] = _1854
                        mem[_1844 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1844 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1844 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
                                    mem[idx + _1902 + 68] = mem[idx + _1878 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1902 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1902 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _2019 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2019] = 26
                            mem[_2019 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2082 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2082 + 68] = mem[idx + _2019 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2082 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2082 + -mem[64] + 100
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
                        _1996 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1996] = 30
                        mem[_1996 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _2049 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2049 + 68] = mem[idx + _1996 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2049 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2049 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _2296 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2296] = 26
                        mem[_2296 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _2385 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2385 + 68] = mem[idx + _2296 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2385 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2385 + -mem[64] + 100
                    else:
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_1854 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1844] = _1854
                            mem[_1844 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1844 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1844 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1904 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1904] = 30
                                mem[_1904 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1937 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1937 + 68] = mem[idx + _1904 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1937 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1937 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2083 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2083] = 26
                                mem[_2083 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2160 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2160 + 68] = mem[idx + _2083 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2160 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2160 + -mem[64] + 100
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
                            _2052 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2052] = 30
                            mem[_2052 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2122 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2122 + 68] = mem[idx + _2052 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2122 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2122 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2387 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2387] = 26
                            mem[_2387 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2462 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2462 + 68] = mem[idx + _2387 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2462 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2462 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1854 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1854 + 32
                            u = sha3(mem[0])
                            while _1854 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1844] = _1854
                            mem[_1844 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1844 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1844 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _3784 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3784] = 30
                                mem[_3784 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _3984 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3984 + 68] = mem[idx + _3784 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3984 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _3984 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _4044 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4044] = 26
                                mem[_4044 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4068 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4068 + 68] = mem[idx + _4044 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4068 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4068 + -mem[64] + 100
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
                                    mem[idx + _4056 + 68] = mem[idx + _4021 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4056 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4056 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _4141 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4141] = 26
                            mem[_4141 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _4164 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4164 + 68] = mem[idx + _4141 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4164 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _4164 + -mem[64] + 100
                else:
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[address(arg1)][idx].field_1 % 128:
                        mem[_1844] = _1854
                        mem[_1844 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1844 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1844 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
                                    mem[idx + _1917 + 68] = mem[idx + _1890 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1917 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1917 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _2053 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2053] = 26
                            mem[_2053 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2123 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2123 + 68] = mem[idx + _2053 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2123 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2123 + -mem[64] + 100
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
                        _2022 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2022] = 30
                        mem[_2022 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _2084 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2084 + 68] = mem[idx + _2022 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2084 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2084 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _2344 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2344] = 26
                        mem[_2344 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _2426 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2426 + 68] = mem[idx + _2344 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2426 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2426 + -mem[64] + 100
                    else:
                        if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1854 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1844] = _1854
                            mem[_1844 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1844 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1844 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1919 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1919] = 30
                                mem[_1919 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1956 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1956 + 68] = mem[idx + _1919 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1956 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1956 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2124 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2124] = 26
                                mem[_2124 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2211 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2211 + 68] = mem[idx + _2124 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2211 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2211 + -mem[64] + 100
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
                            _2087 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2087] = 30
                            mem[_2087 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2165 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2165 + 68] = mem[idx + _2087 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2165 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2165 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2428 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2428] = 26
                            mem[_2428 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2504 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2504 + 68] = mem[idx + _2428 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2504 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2504 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1854 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1854 + 32
                            u = sha3(mem[0])
                            while _1854 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1844] = _1854
                            mem[_1844 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1844 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1844 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _3793 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3793] = 30
                                mem[_3793 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _3985 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3985 + 68] = mem[idx + _3793 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3985 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _3985 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _4045 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4045] = 26
                                mem[_4045 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4069 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4069 + 68] = mem[idx + _4045 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4069 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4069 + -mem[64] + 100
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
                                    mem[idx + _4057 + 68] = mem[idx + _4023 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4057 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4057 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _4143 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4143] = 26
                            mem[_4143 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _4165 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4165 + 68] = mem[idx + _4143 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4165 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _4165 + -mem[64] + 100
            else:
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                _1857 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
                mem[_1857] = stor4[address(arg1)][idx].field_1 % 128
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        mem[_1844] = _1857
                        mem[_1844 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1844 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1844 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
                                    mem[idx + _1920 + 68] = mem[idx + _1892 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1920 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1920 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _2055 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2055] = 26
                            mem[_2055 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2125 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2125 + 68] = mem[idx + _2055 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2125 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2125 + -mem[64] + 100
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
                        _2025 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2025] = 30
                        mem[_2025 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _2088 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2088 + 68] = mem[idx + _2025 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2088 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2088 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _2348 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2348] = 26
                        mem[_2348 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _2429 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2429 + 68] = mem[idx + _2348 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2429 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2429 + -mem[64] + 100
                    else:
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_1857 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1844] = _1857
                            mem[_1844 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1844 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1844 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1922 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1922] = 30
                                mem[_1922 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1959 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1959 + 68] = mem[idx + _1922 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1959 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1959 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2126 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2126] = 26
                                mem[_2126 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2215 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2215 + 68] = mem[idx + _2126 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2215 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2215 + -mem[64] + 100
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
                            _2091 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2091] = 30
                            mem[_2091 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2170 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2170 + 68] = mem[idx + _2091 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2170 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2170 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2431 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2431] = 26
                            mem[_2431 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2510 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2510 + 68] = mem[idx + _2431 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2510 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2510 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_1857 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _1857 + 32
                            u = sha3(mem[0])
                            while _1857 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1844] = _1857
                            mem[_1844 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1844 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1844 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _3802 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3802] = 30
                                mem[_3802 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _3986 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3986 + 68] = mem[idx + _3802 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3986 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _3986 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _4046 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4046] = 26
                                mem[_4046 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4070 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4070 + 68] = mem[idx + _4046 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4070 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4070 + -mem[64] + 100
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
                                    mem[idx + _4058 + 68] = mem[idx + _4025 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4058 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4058 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _4145 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4145] = 26
                            mem[_4145 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _4166 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4166 + 68] = mem[idx + _4145 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4166 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _4166 + -mem[64] + 100
                else:
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[address(arg1)][idx].field_1 % 128:
                        mem[_1844] = _1857
                        mem[_1844 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                        mem[_1844 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                        mem[_1844 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                        if uint256(stor4[address(arg1)][idx].field_512):
                            _1905 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1905] = 30
                            mem[_1905 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                _1938 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1938 + 68] = mem[idx + _1905 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1938 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1938 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                revert with 0, 17
                            _2092 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2092] = 26
                            mem[_2092 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2171 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2171 + 68] = mem[idx + _2092 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2171 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2171 + -mem[64] + 100
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
                        _2058 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2058] = 30
                        mem[_2058 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                            _2127 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2127 + 68] = mem[idx + _2058 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2127 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2127 + -mem[64] + 100
                        if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                            revert with 0, 17
                        _2395 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2395] = 26
                        mem[_2395 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _2467 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2467 + 68] = mem[idx + _2395 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2467 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2467 + -mem[64] + 100
                    else:
                        if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1857 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                            mem[_1844] = _1857
                            mem[_1844 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1844 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1844 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1940 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1940] = 30
                                mem[_1940 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1980 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1980 + 68] = mem[idx + _1940 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1980 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1980 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2172 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2172] = 26
                                mem[_2172 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2266 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2266 + 68] = mem[idx + _2172 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2266 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2266 + -mem[64] + 100
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
                            _2130 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2130] = 30
                            mem[_2130 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2220 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2220 + 68] = mem[idx + _2130 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2220 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2220 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2469 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2469] = 26
                            mem[_2469 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2563 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2563 + 68] = mem[idx + _2469 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2563 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2563 + -mem[64] + 100
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
                            mem[_1844] = _1857
                            mem[_1844 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1844 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1844 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _3811 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3811] = 30
                                mem[_3811 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _3987 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3987 + 68] = mem[idx + _3811 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3987 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _3987 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _4047 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4047] = 26
                                mem[_4047 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4071 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4071 + 68] = mem[idx + _4047 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4071 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4071 + -mem[64] + 100
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
                                    mem[idx + _4059 + 68] = mem[idx + _4027 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4059 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4059 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _4147 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4147] = 26
                            mem[_4147 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _4167 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4167 + 68] = mem[idx + _4147 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4167 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _4167 + -mem[64] + 100
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
        if msg.sender == gateKeeperAddress:
            mem[0] = arg1
            mem[32] = 4
            idx = 0
            s = 0
            while idx < uint256(stor4[address(arg1)].field_0):
                mem[0] = sha3(address(arg1), 4)
                _1847 = mem[64]
                mem[64] = mem[64] + 128
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _1855 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                    mem[_1855] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                    if bool(stor4[address(arg1)][idx].field_0):
                        if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                            mem[_1847] = _1855
                            mem[_1847 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1847 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1847 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
                                        mem[idx + _1907 + 68] = mem[idx + _1882 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1907 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1907 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2029 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2029] = 26
                                mem[_2029 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2094 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2094 + 68] = mem[idx + _2029 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2094 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2094 + -mem[64] + 100
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
                            _2004 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2004] = 30
                            mem[_2004 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2060 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2060 + 68] = mem[idx + _2004 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2060 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2060 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2311 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2311] = 26
                            mem[_2311 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2398 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2398 + 68] = mem[idx + _2311 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2398 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2398 + -mem[64] + 100
                        else:
                            if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                                mem[_1855 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                mem[_1847] = _1855
                                mem[_1847 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1847 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1847 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _1909 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1909] = 30
                                    mem[_1909 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _1943 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1943 + 68] = mem[idx + _1909 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1943 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1943 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 0, 17
                                    _2095 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2095] = 26
                                    mem[_2095 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _2176 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _2176 + 68] = mem[idx + _2095 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2176 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2176 + -mem[64] + 100
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
                                _2063 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2063] = 30
                                mem[_2063 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _2135 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2135 + 68] = mem[idx + _2063 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2135 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2135 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 0, 17
                                _2400 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2400] = 26
                                mem[_2400 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2475 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2475 + 68] = mem[idx + _2400 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2475 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2475 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_1855 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _1855 + 32
                                u = sha3(mem[0])
                                while _1855 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1847] = _1855
                                mem[_1847 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1847 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1847 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _3820 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3820] = 30
                                    mem[_3820 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _3988 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3988 + 68] = mem[idx + _3820 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3988 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3988 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 0, 17
                                    _4048 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4048] = 26
                                    mem[_4048 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _4072 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _4072 + 68] = mem[idx + _4048 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4072 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4072 + -mem[64] + 100
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
                                        mem[idx + _4060 + 68] = mem[idx + _4029 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4060 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4060 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 0, 17
                                _4149 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4149] = 26
                                mem[_4149 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4168 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4168 + 68] = mem[idx + _4149 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4168 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4168 + -mem[64] + 100
                    else:
                        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1847] = _1855
                            mem[_1847 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1847 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1847 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
                                        mem[idx + _1923 + 68] = mem[idx + _1894 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1923 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1923 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2064 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2064] = 26
                                mem[_2064 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2136 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2136 + 68] = mem[idx + _2064 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2136 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2136 + -mem[64] + 100
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
                            _2032 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2032] = 30
                            mem[_2032 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2096 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2096 + 68] = mem[idx + _2032 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2096 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2096 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2359 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2359] = 26
                            mem[_2359 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2437 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2437 + 68] = mem[idx + _2359 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2437 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2437 + -mem[64] + 100
                        else:
                            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                                mem[_1855 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                mem[_1847] = _1855
                                mem[_1847 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1847 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1847 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _1925 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1925] = 30
                                    mem[_1925 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _1963 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1963 + 68] = mem[idx + _1925 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1963 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1963 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 0, 17
                                    _2137 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2137] = 26
                                    mem[_2137 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _2227 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _2227 + 68] = mem[idx + _2137 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2227 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2227 + -mem[64] + 100
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
                                _2099 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2099] = 30
                                mem[_2099 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _2181 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2181 + 68] = mem[idx + _2099 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2181 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2181 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 0, 17
                                _2439 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2439] = 26
                                mem[_2439 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2521 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2521 + 68] = mem[idx + _2439 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2521 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2521 + -mem[64] + 100
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
                                mem[_1847] = _1855
                                mem[_1847 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1847 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1847 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _3829 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3829] = 30
                                    mem[_3829 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _3989 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3989 + 68] = mem[idx + _3829 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3989 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3989 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 0, 17
                                    _4049 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4049] = 26
                                    mem[_4049 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _4073 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _4073 + 68] = mem[idx + _4049 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4073 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4073 + -mem[64] + 100
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
                                        mem[idx + _4061 + 68] = mem[idx + _4031 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4061 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4061 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 0, 17
                                _4151 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4151] = 26
                                mem[_4151 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4169 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4169 + 68] = mem[idx + _4151 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4169 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4169 + -mem[64] + 100
                else:
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    _1858 = mem[64]
                    mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
                    mem[_1858] = stor4[address(arg1)][idx].field_1 % 128
                    if bool(stor4[address(arg1)][idx].field_0):
                        if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                            mem[_1847] = _1858
                            mem[_1847 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1847 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1847 + 96] = uint256(stor4[address(arg1)][idx].field_768)
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
                                        mem[idx + _1926 + 68] = mem[idx + _1896 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1926 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1926 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2066 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2066] = 26
                                mem[_2066 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2138 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2138 + 68] = mem[idx + _2066 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2138 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2138 + -mem[64] + 100
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
                            _2035 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2035] = 30
                            mem[_2035 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2100 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2100 + 68] = mem[idx + _2035 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2100 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2100 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2363 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2363] = 26
                            mem[_2363 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2440 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2440 + 68] = mem[idx + _2363 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2440 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2440 + -mem[64] + 100
                        else:
                            if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                                mem[_1858 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                mem[_1847] = _1858
                                mem[_1847 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1847 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1847 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _1928 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1928] = 30
                                    mem[_1928 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _1966 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1966 + 68] = mem[idx + _1928 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1966 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1966 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 0, 17
                                    _2139 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2139] = 26
                                    mem[_2139 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _2231 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _2231 + 68] = mem[idx + _2139 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2231 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2231 + -mem[64] + 100
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
                                _2103 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2103] = 30
                                mem[_2103 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _2186 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2186 + 68] = mem[idx + _2103 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2186 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2186 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 0, 17
                                _2442 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2442] = 26
                                mem[_2442 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2527 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2527 + 68] = mem[idx + _2442 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2527 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2527 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_1858 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _1858 + 32
                                u = sha3(mem[0])
                                while _1858 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1847] = _1858
                                mem[_1847 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1847 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1847 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _3838 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3838] = 30
                                    mem[_3838 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _3990 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3990 + 68] = mem[idx + _3838 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3990 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3990 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 0, 17
                                    _4050 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4050] = 26
                                    mem[_4050 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _4074 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _4074 + 68] = mem[idx + _4050 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4074 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4074 + -mem[64] + 100
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
                                        mem[idx + _4062 + 68] = mem[idx + _4033 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4062 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4062 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 0, 17
                                _4153 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4153] = 26
                                mem[_4153 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4170 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4170 + 68] = mem[idx + _4153 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4170 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4170 + -mem[64] + 100
                    else:
                        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1847] = _1858
                            mem[_1847 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                            mem[_1847 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                            mem[_1847 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                            if uint256(stor4[address(arg1)][idx].field_512):
                                _1910 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1910] = 30
                                mem[_1910 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                    _1944 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1944 + 68] = mem[idx + _1910 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1944 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1944 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2104 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2104] = 26
                                mem[_2104 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2187 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2187 + 68] = mem[idx + _2104 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2187 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2187 + -mem[64] + 100
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
                            _2069 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2069] = 30
                            mem[_2069 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2140 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2140 + 68] = mem[idx + _2069 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2140 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2140 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2408 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2408] = 26
                            mem[_2408 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2480 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2480 + 68] = mem[idx + _2408 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2480 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2480 + -mem[64] + 100
                        else:
                            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                                mem[_1858 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                mem[_1847] = _1858
                                mem[_1847 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1847 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1847 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _1946 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1946] = 30
                                    mem[_1946 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _1987 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1987 + 68] = mem[idx + _1946 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1987 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1987 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 0, 17
                                    _2188 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2188] = 26
                                    mem[_2188 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _2280 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _2280 + 68] = mem[idx + _2188 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2280 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2280 + -mem[64] + 100
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
                                _2143 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2143] = 30
                                mem[_2143 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _2236 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2236 + 68] = mem[idx + _2143 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2236 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2236 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 0, 17
                                _2482 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2482] = 26
                                mem[_2482 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2580 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2580 + 68] = mem[idx + _2482 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2580 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2580 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_1858 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _1858 + 32
                                u = sha3(mem[0])
                                while _1858 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1847] = _1858
                                mem[_1847 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1847 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1847 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _3847 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3847] = 30
                                    mem[_3847 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _3991 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3991 + 68] = mem[idx + _3847 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3991 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3991 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 0, 17
                                    _4051 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4051] = 26
                                    mem[_4051 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _4075 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _4075 + 68] = mem[idx + _4051 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4075 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4075 + -mem[64] + 100
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
                                        mem[idx + _4063 + 68] = mem[idx + _4035 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4063 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4063 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 0, 17
                                _4155 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4155] = 26
                                mem[_4155 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4171 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4171 + 68] = mem[idx + _4155 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4171 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4171 + -mem[64] + 100
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
            if deathStrokeAddress != msg.sender:
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
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _1856 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                    mem[_1856] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                    if bool(stor4[address(arg1)][idx].field_0):
                        if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                            mem[_1850] = _1856
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
                                        mem[idx + _1912 + 68] = mem[idx + _1886 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1912 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1912 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2039 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2039] = 26
                                mem[_2039 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2106 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2106 + 68] = mem[idx + _2039 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2106 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2106 + -mem[64] + 100
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
                            _2012 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2012] = 30
                            mem[_2012 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2071 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2071 + 68] = mem[idx + _2012 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2071 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2071 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2326 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2326] = 26
                            mem[_2326 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2411 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2411 + 68] = mem[idx + _2326 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2411 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2411 + -mem[64] + 100
                        else:
                            if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                                mem[_1856 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                mem[_1850] = _1856
                                mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _1914 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1914] = 30
                                    mem[_1914 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _1949 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1949 + 68] = mem[idx + _1914 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1949 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1949 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 0, 17
                                    _2107 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2107] = 26
                                    mem[_2107 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _2192 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _2192 + 68] = mem[idx + _2107 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2192 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2192 + -mem[64] + 100
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
                                _2074 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2074] = 30
                                mem[_2074 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _2148 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2148 + 68] = mem[idx + _2074 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2148 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2148 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 0, 17
                                _2413 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2413] = 26
                                mem[_2413 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2488 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2488 + 68] = mem[idx + _2413 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2488 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2488 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_1856 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _1856 + 32
                                u = sha3(mem[0])
                                while _1856 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1850] = _1856
                                mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _3856 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3856] = 30
                                    mem[_3856 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _3992 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3992 + 68] = mem[idx + _3856 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3992 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3992 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 0, 17
                                    _4052 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4052] = 26
                                    mem[_4052 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _4076 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _4076 + 68] = mem[idx + _4052 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4076 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4076 + -mem[64] + 100
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
                                        mem[idx + _4064 + 68] = mem[idx + _4037 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4064 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4064 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 0, 17
                                _4157 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4157] = 26
                                mem[_4157 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4172 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4172 + 68] = mem[idx + _4157 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4172 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4172 + -mem[64] + 100
                    else:
                        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor4[address(arg1)][idx].field_1 % 128:
                            mem[_1850] = _1856
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
                                        mem[idx + _1929 + 68] = mem[idx + _1898 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1929 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1929 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2075 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2075] = 26
                                mem[_2075 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2149 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2149 + 68] = mem[idx + _2075 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2149 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2149 + -mem[64] + 100
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
                            _2042 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2042] = 30
                            mem[_2042 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2108 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2108 + 68] = mem[idx + _2042 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2108 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2108 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2374 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2374] = 26
                            mem[_2374 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2448 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2448 + 68] = mem[idx + _2374 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2448 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2448 + -mem[64] + 100
                        else:
                            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                                mem[_1856 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                mem[_1850] = _1856
                                mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _1931 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1931] = 30
                                    mem[_1931 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _1970 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1970 + 68] = mem[idx + _1931 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1970 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1970 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 0, 17
                                    _2150 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2150] = 26
                                    mem[_2150 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _2243 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _2243 + 68] = mem[idx + _2150 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2243 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2243 + -mem[64] + 100
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
                                _2111 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2111] = 30
                                mem[_2111 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _2197 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2197 + 68] = mem[idx + _2111 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2197 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2197 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 0, 17
                                _2450 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2450] = 26
                                mem[_2450 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2538 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2538 + 68] = mem[idx + _2450 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2538 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2538 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_1856 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _1856 + 32
                                u = sha3(mem[0])
                                while _1856 + stor4[address(arg1)][idx].field_1 % 128 > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1850] = _1856
                                mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _3865 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3865] = 30
                                    mem[_3865 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _3993 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3993 + 68] = mem[idx + _3865 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3993 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3993 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 0, 17
                                    _4053 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4053] = 26
                                    mem[_4053 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _4077 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _4077 + 68] = mem[idx + _4053 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4077 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4077 + -mem[64] + 100
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
                                        mem[idx + _4065 + 68] = mem[idx + _4039 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4065 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4065 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 0, 17
                                _4159 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4159] = 26
                                mem[_4159 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4173 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4173 + 68] = mem[idx + _4159 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4173 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4173 + -mem[64] + 100
                else:
                    if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    _1859 = mem[64]
                    mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
                    mem[_1859] = stor4[address(arg1)][idx].field_1 % 128
                    if bool(stor4[address(arg1)][idx].field_0):
                        if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
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
                                        mem[idx + _1932 + 68] = mem[idx + _1900 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1932 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1932 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2077 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2077] = 26
                                mem[_2077 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2151 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2151 + 68] = mem[idx + _2077 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2151 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2151 + -mem[64] + 100
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
                            _2045 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2045] = 30
                            mem[_2045 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2112 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2112 + 68] = mem[idx + _2045 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2112 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2112 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2378 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2378] = 26
                            mem[_2378 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2451 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2451 + 68] = mem[idx + _2378 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2451 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2451 + -mem[64] + 100
                        else:
                            if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
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
                                        _1973 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1973 + 68] = mem[idx + _1934 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1973 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1973 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 0, 17
                                    _2152 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2152] = 26
                                    mem[_2152 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _2247 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _2247 + 68] = mem[idx + _2152 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2247 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2247 + -mem[64] + 100
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
                                _2115 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2115] = 30
                                mem[_2115 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _2202 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2202 + 68] = mem[idx + _2115 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2202 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2202 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 0, 17
                                _2453 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2453] = 26
                                mem[_2453 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2544 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2544 + 68] = mem[idx + _2453 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2544 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2544 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                                mem[_1859 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                                t = _1859 + 32
                                u = sha3(mem[0])
                                while _1859 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1850] = _1859
                                mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _3874 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3874] = 30
                                    mem[_3874 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _3994 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3994 + 68] = mem[idx + _3874 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3994 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3994 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 0, 17
                                    _4054 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4054] = 26
                                    mem[_4054 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _4078 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _4078 + 68] = mem[idx + _4054 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4078 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4078 + -mem[64] + 100
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
                                        mem[idx + _4066 + 68] = mem[idx + _4041 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4066 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4066 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 0, 17
                                _4161 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4161] = 26
                                mem[_4161 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4174 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4174 + 68] = mem[idx + _4161 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4174 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4174 + -mem[64] + 100
                    else:
                        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                            revert with 0, 34
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
                                    _1950 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1950 + 68] = mem[idx + _1915 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1950 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1950 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                    revert with 0, 17
                                _2116 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2116] = 26
                                mem[_2116 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2203 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2203 + 68] = mem[idx + _2116 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2203 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2203 + -mem[64] + 100
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
                            _2080 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2080] = 30
                            mem[_2080 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                _2153 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2153 + 68] = mem[idx + _2080 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2153 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2153 + -mem[64] + 100
                            if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                revert with 0, 17
                            _2421 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2421] = 26
                            mem[_2421 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2493 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2493 + 68] = mem[idx + _2421 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2493 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2493 + -mem[64] + 100
                        else:
                            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                                mem[_1859 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                                mem[_1850] = _1859
                                mem[_1850 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                                mem[_1850 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                                mem[_1850 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                                if uint256(stor4[address(arg1)][idx].field_512):
                                    _1952 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1952] = 30
                                    mem[_1952 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _1994 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1994 + 68] = mem[idx + _1952 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1994 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1994 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 0, 17
                                    _2204 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2204] = 26
                                    mem[_2204 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _2294 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _2294 + 68] = mem[idx + _2204 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2294 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2294 + -mem[64] + 100
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
                                _2156 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2156] = 30
                                mem[_2156 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(stor4[address(arg1)][idx].field_256) > block.timestamp:
                                    _2252 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2252 + 68] = mem[idx + _2156 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2252 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2252 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 0, 17
                                _2495 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2495] = 26
                                mem[_2495 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2597 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2597 + 68] = mem[idx + _2495 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2597 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2597 + -mem[64] + 100
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
                                    _3883 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3883] = 30
                                    mem[_3883 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(stor4[address(arg1)][idx].field_512) > block.timestamp:
                                        _3995 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3995 + 68] = mem[idx + _3883 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3995 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3995 + -mem[64] + 100
                                    if block.timestamp < uint256(stor4[address(arg1)][idx].field_512):
                                        revert with 0, 17
                                    _4055 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4055] = 26
                                    mem[_4055 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _4079 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _4079 + 68] = mem[idx + _4055 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4079 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4079 + -mem[64] + 100
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
                                        mem[idx + _4067 + 68] = mem[idx + _4043 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4067 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4067 + -mem[64] + 100
                                if block.timestamp < uint256(stor4[address(arg1)][idx].field_256):
                                    revert with 0, 17
                                _4163 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4163] = 26
                                mem[_4163 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4175 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4175 + 68] = mem[idx + _4163 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4175 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4175 + -mem[64] + 100
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
