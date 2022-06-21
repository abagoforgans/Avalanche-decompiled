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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x26eca6c997117159a53a3097a0ceb864e9d81a20)
    delegate 0x26eca6c997117159a53a3097a0ceb864e9d81a20.0x732a2ccf with:
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
    require ext_code.size(0x26eca6c997117159a53a3097a0ceb864e9d81a20)
    delegate 0x26eca6c997117159a53a3097a0ceb864e9d81a20.0x732a2ccf with:
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CASHOUT ERROR: You don't have nodes to cash-out'
    idx = 0
    s = 0
    while idx < stor5[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        if s > !stor5[address(arg1)][idx].field_768:
            revert with 0, 17
        stor5[address(arg1)][idx].field_768 = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor5[address(arg1)][idx].field_768
        continue 
    return (s * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0 * stor5[address(arg1)].field_0)
}

function _getRewardAmountOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x26eca6c997117159a53a3097a0ceb864e9d81a20)
    delegate 0x26eca6c997117159a53a3097a0ceb864e9d81a20.0x732a2ccf with:
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
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
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
    require ext_code.size(0x26eca6c997117159a53a3097a0ceb864e9d81a20)
    delegate 0x26eca6c997117159a53a3097a0ceb864e9d81a20.0x732a2ccf with:
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
        _56 = mem[64]
        mem[64] = mem[64] + 128
        if stor5[address(arg1)][idx].field_0:
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            _62 = mem[64]
            mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1) + 32
            mem[_62] = stor5[address(arg1)][idx].field_1
            if stor5[address(arg1)][idx].field_0:
                if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                    revert with 0, 34
                if stor5[address(arg1)][idx].field_1:
                    if 31 >= stor5[address(arg1)][idx].field_1:
                        mem[_62 + 32] = 256 * stor5[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                        mem[_62 + 32] = stor5[address(arg1)][idx].field_0
                        t = _62 + 32
                        u = sha3(mem[0])
                        while _62 + stor5[address(arg1)][idx].field_1 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_56] = _62
                mem[_56 + 32] = stor5[address(arg1)][idx].field_256
                mem[_56 + 64] = stor5[address(arg1)][idx].field_512
                mem[_56 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor5[address(arg1)][idx].field_1:
                mem[_56] = _62
                mem[_56 + 32] = stor5[address(arg1)][idx].field_256
                mem[_56 + 64] = stor5[address(arg1)][idx].field_512
                mem[_56 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_62 + 32] = 256 * stor5[address(arg1)][idx].field_8
                mem[_56] = _62
                mem[_56 + 32] = stor5[address(arg1)][idx].field_256
                mem[_56 + 64] = stor5[address(arg1)][idx].field_512
                mem[_56 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_62 + 32] = stor5[address(arg1)][idx].field_0
            t = _62 + 32
            u = sha3(mem[0])
            while _62 + stor5[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_56] = _62
            mem[_56 + 32] = stor5[address(arg1)][u].field_256
            mem[_56 + 64] = stor5[address(arg1)][u].field_512
            mem[_56 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _56
            t = t + 32
            u = u + 1
            continue 
        if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _64 = mem[64]
        mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1) + 32
        mem[_64] = stor5[address(arg1)][idx].field_1
        if stor5[address(arg1)][idx].field_0:
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor5[address(arg1)][idx].field_1:
                mem[_56] = _64
                mem[_56 + 32] = stor5[address(arg1)][idx].field_256
                mem[_56 + 64] = stor5[address(arg1)][idx].field_512
                mem[_56 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_64 + 32] = 256 * stor5[address(arg1)][idx].field_8
                mem[_56] = _64
                mem[_56 + 32] = stor5[address(arg1)][idx].field_256
                mem[_56 + 64] = stor5[address(arg1)][idx].field_512
                mem[_56 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_64 + 32] = stor5[address(arg1)][idx].field_0
            t = _64 + 32
            u = sha3(mem[0])
            while _64 + stor5[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_56] = _64
            mem[_56 + 32] = stor5[address(arg1)][u].field_256
            mem[_56 + 64] = stor5[address(arg1)][u].field_512
            mem[_56 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _56
            t = t + 32
            u = u + 1
            continue 
        if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor5[address(arg1)][idx].field_1:
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_64 + 32] = 256 * stor5[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                mem[_64 + 32] = stor5[address(arg1)][idx].field_0
                t = _64 + 32
                u = sha3(mem[0])
                while _64 + stor5[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_56] = _64
        mem[_56 + 32] = stor5[address(arg1)][idx].field_256
        mem[_56 + 64] = stor5[address(arg1)][idx].field_512
        mem[_56 + 96] = stor5[address(arg1)][idx].field_768
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
        revert with 0, 50
    _60 = mem[mem[ceil32(return_data.size) + 128]]
    _61 = mem[64]
    mem[64] = mem[64] + 64
    mem[_61] = 1
    mem[_61 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = _60
    t = _57
    while idx < _54:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _100 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _101 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
        _102 = mem[64]
        _104 = mem[s]
        t = 0
        while t < _104:
            mem[t + _102 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_104) <= _104:
            _132 = mem[_61]
            s = 0
            while s < _132:
                mem[s + _102 + _104 + 32] = mem[s + _61 + 32]
                s = s + 32
                continue 
            if ceil32(_132) <= _132:
                _156 = mem[_101]
                s = 0
                while s < _156:
                    mem[s + _102 + _104 + _132 + 32] = mem[s + _101 + 32]
                    s = s + 32
                    continue 
                if ceil32(_156) <= _156:
                    _176 = mem[64]
                    mem[mem[64]] = _156 + _102 + _104 + _132 - mem[64]
                    mem[64] = _156 + _102 + _104 + _132 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _176
                    t = _100
                    continue 
                mem[_102 + _104 + _132 + _156 + 32] = 0
                _180 = mem[64]
                mem[mem[64]] = _156 + _102 + _104 + _132 - mem[64]
                mem[64] = _156 + _102 + _104 + _132 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _180
                t = _100
                continue 
            mem[_102 + _104 + _132 + 32] = 0
            _158 = mem[_101]
            s = 0
            while s < _158:
                mem[s + _102 + _104 + _132 + 32] = mem[s + _101 + 32]
                s = s + 32
                continue 
            if ceil32(_158) <= _158:
                _177 = mem[64]
                mem[mem[64]] = _158 + _102 + _104 + _132 - mem[64]
                mem[64] = _158 + _102 + _104 + _132 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _177
                t = _100
                continue 
            mem[_102 + _104 + _132 + _158 + 32] = 0
            _181 = mem[64]
            mem[mem[64]] = _158 + _102 + _104 + _132 - mem[64]
            mem[64] = _158 + _102 + _104 + _132 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _181
            t = _100
            continue 
        mem[_102 + _104 + 32] = 0
        _134 = mem[_61]
        s = 0
        while s < _134:
            mem[s + _102 + _104 + 32] = mem[s + _61 + 32]
            s = s + 32
            continue 
        if ceil32(_134) <= _134:
            _157 = mem[_101]
            s = 0
            while s < _157:
                mem[s + _102 + _104 + _134 + 32] = mem[s + _101 + 32]
                s = s + 32
                continue 
            if ceil32(_157) <= _157:
                _178 = mem[64]
                mem[mem[64]] = _157 + _102 + _104 + _134 - mem[64]
                mem[64] = _157 + _102 + _104 + _134 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _178
                t = _100
                continue 
            mem[_102 + _104 + _134 + _157 + 32] = 0
            _182 = mem[64]
            mem[mem[64]] = _157 + _102 + _104 + _134 - mem[64]
            mem[64] = _157 + _102 + _104 + _134 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _182
            t = _100
            continue 
        mem[_102 + _104 + _134 + 32] = 0
        _159 = mem[_101]
        s = 0
        while s < _159:
            mem[s + _102 + _104 + _134 + 32] = mem[s + _101 + 32]
            s = s + 32
            continue 
        if ceil32(_159) <= _159:
            _179 = mem[64]
            mem[mem[64]] = _159 + _102 + _104 + _134 - mem[64]
            mem[64] = _159 + _102 + _104 + _134 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _179
            t = _100
            continue 
        mem[_102 + _104 + _134 + _159 + 32] = 0
        _183 = mem[64]
        mem[mem[64]] = _159 + _102 + _104 + _134 - mem[64]
        mem[64] = _159 + _102 + _104 + _134 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _183
        t = _100
        continue 
    _103 = mem[64]
    mem[mem[64]] = 32
    _105 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_105)] = mem[s + 32 len ceil32(_105)]
    if ceil32(_105) <= _105:
        return 32, mem[mem[64] + 32 len ceil32(_105) + 32]
    mem[mem[64] + _105 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_105) + _103 + -mem[64] + 64
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 1
    mem[132] = arg1
    require ext_code.size(0x26eca6c997117159a53a3097a0ceb864e9d81a20)
    delegate 0x26eca6c997117159a53a3097a0ceb864e9d81a20.0x732a2ccf with:
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
        _63 = mem[64]
        mem[64] = mem[64] + 128
        if stor5[address(arg1)][idx].field_0:
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1) + 32
            mem[_70] = stor5[address(arg1)][idx].field_1
            if stor5[address(arg1)][idx].field_0:
                if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                    revert with 0, 34
                if stor5[address(arg1)][idx].field_1:
                    if 31 >= stor5[address(arg1)][idx].field_1:
                        mem[_70 + 32] = 256 * stor5[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                        mem[_70 + 32] = stor5[address(arg1)][idx].field_0
                        t = _70 + 32
                        u = sha3(mem[0])
                        while _70 + stor5[address(arg1)][idx].field_1 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_63] = _70
                mem[_63 + 32] = stor5[address(arg1)][idx].field_256
                mem[_63 + 64] = stor5[address(arg1)][idx].field_512
                mem[_63 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _63
                s = s + 32
                idx = idx + 1
                continue 
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor5[address(arg1)][idx].field_1:
                mem[_63] = _70
                mem[_63 + 32] = stor5[address(arg1)][idx].field_256
                mem[_63 + 64] = stor5[address(arg1)][idx].field_512
                mem[_63 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _63
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_70 + 32] = 256 * stor5[address(arg1)][idx].field_8
                mem[_63] = _70
                mem[_63 + 32] = stor5[address(arg1)][idx].field_256
                mem[_63 + 64] = stor5[address(arg1)][idx].field_512
                mem[_63 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _63
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_70 + 32] = stor5[address(arg1)][idx].field_0
            t = _70 + 32
            u = sha3(mem[0])
            while _70 + stor5[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_63] = _70
            mem[_63 + 32] = stor5[address(arg1)][u].field_256
            mem[_63 + 64] = stor5[address(arg1)][u].field_512
            mem[_63 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _63
            t = t + 32
            u = u + 1
            continue 
        if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _72 = mem[64]
        mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1) + 32
        mem[_72] = stor5[address(arg1)][idx].field_1
        if stor5[address(arg1)][idx].field_0:
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor5[address(arg1)][idx].field_1:
                mem[_63] = _72
                mem[_63 + 32] = stor5[address(arg1)][idx].field_256
                mem[_63 + 64] = stor5[address(arg1)][idx].field_512
                mem[_63 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _63
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_72 + 32] = 256 * stor5[address(arg1)][idx].field_8
                mem[_63] = _72
                mem[_63 + 32] = stor5[address(arg1)][idx].field_256
                mem[_63 + 64] = stor5[address(arg1)][idx].field_512
                mem[_63 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _63
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_72 + 32] = stor5[address(arg1)][idx].field_0
            t = _72 + 32
            u = sha3(mem[0])
            while _72 + stor5[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_63] = _72
            mem[_63 + 32] = stor5[address(arg1)][u].field_256
            mem[_63 + 64] = stor5[address(arg1)][u].field_512
            mem[_63 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _63
            t = t + 32
            u = u + 1
            continue 
        if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor5[address(arg1)][idx].field_1:
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_72 + 32] = 256 * stor5[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                mem[_72 + 32] = stor5[address(arg1)][idx].field_0
                t = _72 + 32
                u = sha3(mem[0])
                while _72 + stor5[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_63] = _72
        mem[_63 + 32] = stor5[address(arg1)][idx].field_256
        mem[_63 + 64] = stor5[address(arg1)][idx].field_512
        mem[_63 + 96] = stor5[address(arg1)][idx].field_768
        mem[s] = _63
        s = s + 32
        idx = idx + 1
        continue 
    _61 = mem[ceil32(return_data.size) + 96]
    _64 = mem[64]
    mem[64] = mem[64] + 128
    mem[_64] = 96
    mem[_64 + 32] = 0
    mem[_64 + 64] = 0
    mem[_64 + 96] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    _68 = mem[mem[ceil32(return_data.size) + 128] + 64]
    if not mem[mem[ceil32(return_data.size) + 128] + 64]:
        _71 = mem[64]
        mem[64] = mem[64] + 64
        mem[_71] = 1
        mem[_71 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _73 = mem[64]
        mem[64] = mem[64] + 64
        mem[_73] = 1
        mem[_73 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _71
        t = _64
        while idx < _61:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _112 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _113 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                _116 = mem[64]
                mem[64] = mem[64] + 64
                mem[_116] = 1
                mem[_116 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _118 = mem[64]
                _121 = mem[s]
                t = 0
                while t < _121:
                    mem[t + _118 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_121) <= _121:
                    _216 = mem[_73]
                    s = 0
                    while s < _216:
                        mem[s + _118 + _121 + 32] = mem[s + _73 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_216) <= _216:
                        _366 = mem[_116]
                        s = 0
                        while s < _366:
                            mem[s + _118 + _121 + _216 + 32] = mem[s + _116 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_366) <= _366:
                            _504 = mem[64]
                            mem[mem[64]] = _366 + _118 + _121 + _216 - mem[64]
                            mem[64] = _366 + _118 + _121 + _216 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _504
                            t = _112
                            continue 
                        mem[_118 + _121 + _216 + _366 + 32] = 0
                        _510 = mem[64]
                        mem[mem[64]] = _366 + _118 + _121 + _216 - mem[64]
                        mem[64] = _366 + _118 + _121 + _216 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _510
                        t = _112
                        continue 
                    mem[_118 + _121 + _216 + 32] = 0
                    _372 = mem[_116]
                    s = 0
                    while s < _372:
                        mem[s + _118 + _121 + _216 + 32] = mem[s + _116 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_372) <= _372:
                        _505 = mem[64]
                        mem[mem[64]] = _372 + _118 + _121 + _216 - mem[64]
                        mem[64] = _372 + _118 + _121 + _216 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _505
                        t = _112
                        continue 
                    mem[_118 + _121 + _216 + _372 + 32] = 0
                    _511 = mem[64]
                    mem[mem[64]] = _372 + _118 + _121 + _216 - mem[64]
                    mem[64] = _372 + _118 + _121 + _216 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _511
                    t = _112
                    continue 
                mem[_118 + _121 + 32] = 0
                _220 = mem[_73]
                s = 0
                while s < _220:
                    mem[s + _118 + _121 + 32] = mem[s + _73 + 32]
                    s = s + 32
                    continue 
                if ceil32(_220) <= _220:
                    _367 = mem[_116]
                    s = 0
                    while s < _367:
                        mem[s + _118 + _121 + _220 + 32] = mem[s + _116 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_367) <= _367:
                        _506 = mem[64]
                        mem[mem[64]] = _367 + _118 + _121 + _220 - mem[64]
                        mem[64] = _367 + _118 + _121 + _220 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _506
                        t = _112
                        continue 
                    mem[_118 + _121 + _220 + _367 + 32] = 0
                    _512 = mem[64]
                    mem[mem[64]] = _367 + _118 + _121 + _220 - mem[64]
                    mem[64] = _367 + _118 + _121 + _220 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _512
                    t = _112
                    continue 
                mem[_118 + _121 + _220 + 32] = 0
                _373 = mem[_116]
                s = 0
                while s < _373:
                    mem[s + _118 + _121 + _220 + 32] = mem[s + _116 + 32]
                    s = s + 32
                    continue 
                if ceil32(_373) <= _373:
                    _507 = mem[64]
                    mem[mem[64]] = _373 + _118 + _121 + _220 - mem[64]
                    mem[64] = _373 + _118 + _121 + _220 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _507
                    t = _112
                    continue 
                mem[_118 + _121 + _220 + _373 + 32] = 0
                _513 = mem[64]
                mem[mem[64]] = _373 + _118 + _121 + _220 - mem[64]
                mem[64] = _373 + _118 + _121 + _220 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _513
                t = _112
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
            _215 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _113
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_215]:
                        revert with 0, 50
                    mem[v + _215 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _360 = mem[64]
                _364 = mem[s]
                t = 0
                while t < _364:
                    mem[t + _360 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_364) <= _364:
                    _496 = mem[_73]
                    s = 0
                    while s < _496:
                        mem[s + _360 + _364 + 32] = mem[s + _73 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_496) <= _496:
                        _702 = mem[_215]
                        s = 0
                        while s < _702:
                            mem[s + _360 + _364 + _496 + 32] = mem[s + _215 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_702) <= _702:
                            _886 = mem[64]
                            mem[mem[64]] = _702 + _360 + _364 + _496 - mem[64]
                            mem[64] = _702 + _360 + _364 + _496 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _886
                            t = _112
                            continue 
                        mem[_360 + _364 + _496 + _702 + 32] = 0
                        _902 = mem[64]
                        mem[mem[64]] = _702 + _360 + _364 + _496 - mem[64]
                        mem[64] = _702 + _360 + _364 + _496 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _902
                        t = _112
                        continue 
                    mem[_360 + _364 + _496 + 32] = 0
                    _710 = mem[_215]
                    s = 0
                    while s < _710:
                        mem[s + _360 + _364 + _496 + 32] = mem[s + _215 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_710) <= _710:
                        _887 = mem[64]
                        mem[mem[64]] = _710 + _360 + _364 + _496 - mem[64]
                        mem[64] = _710 + _360 + _364 + _496 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _887
                        t = _112
                        continue 
                    mem[_360 + _364 + _496 + _710 + 32] = 0
                    _903 = mem[64]
                    mem[mem[64]] = _710 + _360 + _364 + _496 - mem[64]
                    mem[64] = _710 + _360 + _364 + _496 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _903
                    t = _112
                    continue 
                mem[_360 + _364 + 32] = 0
                _502 = mem[_73]
                s = 0
                while s < _502:
                    mem[s + _360 + _364 + 32] = mem[s + _73 + 32]
                    s = s + 32
                    continue 
                if ceil32(_502) <= _502:
                    _703 = mem[_215]
                    s = 0
                    while s < _703:
                        mem[s + _360 + _364 + _502 + 32] = mem[s + _215 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_703) <= _703:
                        _888 = mem[64]
                        mem[mem[64]] = _703 + _360 + _364 + _502 - mem[64]
                        mem[64] = _703 + _360 + _364 + _502 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _888
                        t = _112
                        continue 
                    mem[_360 + _364 + _502 + _703 + 32] = 0
                    _904 = mem[64]
                    mem[mem[64]] = _703 + _360 + _364 + _502 - mem[64]
                    mem[64] = _703 + _360 + _364 + _502 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _904
                    t = _112
                    continue 
                mem[_360 + _364 + _502 + 32] = 0
                _711 = mem[_215]
                s = 0
                while s < _711:
                    mem[s + _360 + _364 + _502 + 32] = mem[s + _215 + 32]
                    s = s + 32
                    continue 
                if ceil32(_711) <= _711:
                    _889 = mem[64]
                    mem[mem[64]] = _711 + _360 + _364 + _502 - mem[64]
                    mem[64] = _711 + _360 + _364 + _502 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _889
                    t = _112
                    continue 
                mem[_360 + _364 + _502 + _711 + 32] = 0
                _905 = mem[64]
                mem[mem[64]] = _711 + _360 + _364 + _502 - mem[64]
                mem[64] = _711 + _360 + _364 + _502 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _905
                t = _112
                continue 
            mem[_215 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _113
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_215]:
                    revert with 0, 50
                mem[v + _215 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _361 = mem[64]
            _365 = mem[s]
            t = 0
            while t < _365:
                mem[t + _361 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_365) <= _365:
                _497 = mem[_73]
                s = 0
                while s < _497:
                    mem[s + _361 + _365 + 32] = mem[s + _73 + 32]
                    s = s + 32
                    continue 
                if ceil32(_497) <= _497:
                    _704 = mem[_215]
                    s = 0
                    while s < _704:
                        mem[s + _361 + _365 + _497 + 32] = mem[s + _215 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_704) <= _704:
                        _890 = mem[64]
                        mem[mem[64]] = _704 + _361 + _365 + _497 - mem[64]
                        mem[64] = _704 + _361 + _365 + _497 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _890
                        t = _112
                        continue 
                    mem[_361 + _365 + _497 + _704 + 32] = 0
                    _906 = mem[64]
                    mem[mem[64]] = _704 + _361 + _365 + _497 - mem[64]
                    mem[64] = _704 + _361 + _365 + _497 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _906
                    t = _112
                    continue 
                mem[_361 + _365 + _497 + 32] = 0
                _712 = mem[_215]
                s = 0
                while s < _712:
                    mem[s + _361 + _365 + _497 + 32] = mem[s + _215 + 32]
                    s = s + 32
                    continue 
                if ceil32(_712) <= _712:
                    _891 = mem[64]
                    mem[mem[64]] = _712 + _361 + _365 + _497 - mem[64]
                    mem[64] = _712 + _361 + _365 + _497 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _891
                    t = _112
                    continue 
                mem[_361 + _365 + _497 + _712 + 32] = 0
                _907 = mem[64]
                mem[mem[64]] = _712 + _361 + _365 + _497 - mem[64]
                mem[64] = _712 + _361 + _365 + _497 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _907
                t = _112
                continue 
            mem[_361 + _365 + 32] = 0
            _503 = mem[_73]
            s = 0
            while s < _503:
                mem[s + _361 + _365 + 32] = mem[s + _73 + 32]
                s = s + 32
                continue 
            if ceil32(_503) <= _503:
                _705 = mem[_215]
                s = 0
                while s < _705:
                    mem[s + _361 + _365 + _503 + 32] = mem[s + _215 + 32]
                    s = s + 32
                    continue 
                if ceil32(_705) <= _705:
                    _892 = mem[64]
                    mem[mem[64]] = _705 + _361 + _365 + _503 - mem[64]
                    mem[64] = _705 + _361 + _365 + _503 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _892
                    t = _112
                    continue 
                mem[_361 + _365 + _503 + _705 + 32] = 0
                _908 = mem[64]
                mem[mem[64]] = _705 + _361 + _365 + _503 - mem[64]
                mem[64] = _705 + _361 + _365 + _503 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _908
                t = _112
                continue 
            mem[_361 + _365 + _503 + 32] = 0
            _713 = mem[_215]
            s = 0
            while s < _713:
                mem[s + _361 + _365 + _503 + 32] = mem[s + _215 + 32]
                s = s + 32
                continue 
            if ceil32(_713) <= _713:
                _893 = mem[64]
                mem[mem[64]] = _713 + _361 + _365 + _503 - mem[64]
                mem[64] = _713 + _361 + _365 + _503 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _893
                t = _112
                continue 
            mem[_361 + _365 + _503 + _713 + 32] = 0
            _909 = mem[64]
            mem[mem[64]] = _713 + _361 + _365 + _503 - mem[64]
            mem[64] = _713 + _361 + _365 + _503 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _909
            t = _112
            continue 
        _114 = mem[64]
        mem[mem[64]] = 32
        _115 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_115)] = mem[s + 32 len ceil32(_115)]
        if ceil32(_115) <= _115:
            return 32, mem[mem[64] + 32 len ceil32(_115) + 32]
        mem[mem[64] + _115 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_115) + _114 + -mem[64] + 64
    s = 0
    idx = mem[mem[ceil32(return_data.size) + 128] + 64]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _111 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _68
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_111]:
                revert with 0, 50
            mem[t + _111 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _213 = mem[64]
        mem[64] = mem[64] + 64
        mem[_213] = 1
        mem[_213 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _111
        t = _64
        while idx < _61:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _356 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _357 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                _369 = mem[64]
                mem[64] = mem[64] + 64
                mem[_369] = 1
                mem[_369 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _374 = mem[64]
                _381 = mem[s]
                t = 0
                while t < _381:
                    mem[t + _374 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_381) <= _381:
                    _494 = mem[_213]
                    s = 0
                    while s < _494:
                        mem[s + _374 + _381 + 32] = mem[s + _213 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_494) <= _494:
                        _696 = mem[_369]
                        s = 0
                        while s < _696:
                            mem[s + _374 + _381 + _494 + 32] = mem[s + _369 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_696) <= _696:
                            _876 = mem[64]
                            mem[mem[64]] = _696 + _374 + _381 + _494 - mem[64]
                            mem[64] = _696 + _374 + _381 + _494 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _876
                            t = _356
                            continue 
                        mem[_374 + _381 + _494 + _696 + 32] = 0
                        _894 = mem[64]
                        mem[mem[64]] = _696 + _374 + _381 + _494 - mem[64]
                        mem[64] = _696 + _374 + _381 + _494 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _894
                        t = _356
                        continue 
                    mem[_374 + _381 + _494 + 32] = 0
                    _706 = mem[_369]
                    s = 0
                    while s < _706:
                        mem[s + _374 + _381 + _494 + 32] = mem[s + _369 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_706) <= _706:
                        _877 = mem[64]
                        mem[mem[64]] = _706 + _374 + _381 + _494 - mem[64]
                        mem[64] = _706 + _374 + _381 + _494 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _877
                        t = _356
                        continue 
                    mem[_374 + _381 + _494 + _706 + 32] = 0
                    _895 = mem[64]
                    mem[mem[64]] = _706 + _374 + _381 + _494 - mem[64]
                    mem[64] = _706 + _374 + _381 + _494 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _895
                    t = _356
                    continue 
                mem[_374 + _381 + 32] = 0
                _499 = mem[_213]
                s = 0
                while s < _499:
                    mem[s + _374 + _381 + 32] = mem[s + _213 + 32]
                    s = s + 32
                    continue 
                if ceil32(_499) <= _499:
                    _697 = mem[_369]
                    s = 0
                    while s < _697:
                        mem[s + _374 + _381 + _499 + 32] = mem[s + _369 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _878 = mem[64]
                        mem[mem[64]] = _697 + _374 + _381 + _499 - mem[64]
                        mem[64] = _697 + _374 + _381 + _499 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _878
                        t = _356
                        continue 
                    mem[_374 + _381 + _499 + _697 + 32] = 0
                    _896 = mem[64]
                    mem[mem[64]] = _697 + _374 + _381 + _499 - mem[64]
                    mem[64] = _697 + _374 + _381 + _499 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _896
                    t = _356
                    continue 
                mem[_374 + _381 + _499 + 32] = 0
                _707 = mem[_369]
                s = 0
                while s < _707:
                    mem[s + _374 + _381 + _499 + 32] = mem[s + _369 + 32]
                    s = s + 32
                    continue 
                if ceil32(_707) <= _707:
                    _879 = mem[64]
                    mem[mem[64]] = _707 + _374 + _381 + _499 - mem[64]
                    mem[64] = _707 + _374 + _381 + _499 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _879
                    t = _356
                    continue 
                mem[_374 + _381 + _499 + _707 + 32] = 0
                _897 = mem[64]
                mem[mem[64]] = _707 + _374 + _381 + _499 - mem[64]
                mem[64] = _707 + _374 + _381 + _499 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _897
                t = _356
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
            _492 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _357
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_492]:
                        revert with 0, 50
                    mem[v + _492 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _690 = mem[64]
                _694 = mem[s]
                t = 0
                while t < _694:
                    mem[t + _690 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_694) <= _694:
                    _870 = mem[_213]
                    s = 0
                    while s < _870:
                        mem[s + _690 + _694 + 32] = mem[s + _213 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_870) <= _870:
                        _990 = mem[_492]
                        s = 0
                        while s < _990:
                            mem[s + _690 + _694 + _870 + 32] = mem[s + _492 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_990) <= _990:
                            _1070 = mem[64]
                            mem[mem[64]] = _990 + _690 + _694 + _870 - mem[64]
                            mem[64] = _990 + _690 + _694 + _870 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1070
                            t = _356
                            continue 
                        mem[_690 + _694 + _870 + _990 + 32] = 0
                        _1086 = mem[64]
                        mem[mem[64]] = _990 + _690 + _694 + _870 - mem[64]
                        mem[64] = _990 + _690 + _694 + _870 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1086
                        t = _356
                        continue 
                    mem[_690 + _694 + _870 + 32] = 0
                    _998 = mem[_492]
                    s = 0
                    while s < _998:
                        mem[s + _690 + _694 + _870 + 32] = mem[s + _492 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_998) <= _998:
                        _1071 = mem[64]
                        mem[mem[64]] = _998 + _690 + _694 + _870 - mem[64]
                        mem[64] = _998 + _690 + _694 + _870 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1071
                        t = _356
                        continue 
                    mem[_690 + _694 + _870 + _998 + 32] = 0
                    _1087 = mem[64]
                    mem[mem[64]] = _998 + _690 + _694 + _870 - mem[64]
                    mem[64] = _998 + _690 + _694 + _870 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1087
                    t = _356
                    continue 
                mem[_690 + _694 + 32] = 0
                _874 = mem[_213]
                s = 0
                while s < _874:
                    mem[s + _690 + _694 + 32] = mem[s + _213 + 32]
                    s = s + 32
                    continue 
                if ceil32(_874) <= _874:
                    _991 = mem[_492]
                    s = 0
                    while s < _991:
                        mem[s + _690 + _694 + _874 + 32] = mem[s + _492 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_991) <= _991:
                        _1072 = mem[64]
                        mem[mem[64]] = _991 + _690 + _694 + _874 - mem[64]
                        mem[64] = _991 + _690 + _694 + _874 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1072
                        t = _356
                        continue 
                    mem[_690 + _694 + _874 + _991 + 32] = 0
                    _1088 = mem[64]
                    mem[mem[64]] = _991 + _690 + _694 + _874 - mem[64]
                    mem[64] = _991 + _690 + _694 + _874 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1088
                    t = _356
                    continue 
                mem[_690 + _694 + _874 + 32] = 0
                _999 = mem[_492]
                s = 0
                while s < _999:
                    mem[s + _690 + _694 + _874 + 32] = mem[s + _492 + 32]
                    s = s + 32
                    continue 
                if ceil32(_999) <= _999:
                    _1073 = mem[64]
                    mem[mem[64]] = _999 + _690 + _694 + _874 - mem[64]
                    mem[64] = _999 + _690 + _694 + _874 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1073
                    t = _356
                    continue 
                mem[_690 + _694 + _874 + _999 + 32] = 0
                _1089 = mem[64]
                mem[mem[64]] = _999 + _690 + _694 + _874 - mem[64]
                mem[64] = _999 + _690 + _694 + _874 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1089
                t = _356
                continue 
            mem[_492 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _357
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_492]:
                    revert with 0, 50
                mem[v + _492 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _691 = mem[64]
            _695 = mem[s]
            t = 0
            while t < _695:
                mem[t + _691 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_695) <= _695:
                _871 = mem[_213]
                s = 0
                while s < _871:
                    mem[s + _691 + _695 + 32] = mem[s + _213 + 32]
                    s = s + 32
                    continue 
                if ceil32(_871) <= _871:
                    _992 = mem[_492]
                    s = 0
                    while s < _992:
                        mem[s + _691 + _695 + _871 + 32] = mem[s + _492 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_992) <= _992:
                        _1074 = mem[64]
                        mem[mem[64]] = _992 + _691 + _695 + _871 - mem[64]
                        mem[64] = _992 + _691 + _695 + _871 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1074
                        t = _356
                        continue 
                    mem[_691 + _695 + _871 + _992 + 32] = 0
                    _1090 = mem[64]
                    mem[mem[64]] = _992 + _691 + _695 + _871 - mem[64]
                    mem[64] = _992 + _691 + _695 + _871 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1090
                    t = _356
                    continue 
                mem[_691 + _695 + _871 + 32] = 0
                _1000 = mem[_492]
                s = 0
                while s < _1000:
                    mem[s + _691 + _695 + _871 + 32] = mem[s + _492 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1000) <= _1000:
                    _1075 = mem[64]
                    mem[mem[64]] = _1000 + _691 + _695 + _871 - mem[64]
                    mem[64] = _1000 + _691 + _695 + _871 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1075
                    t = _356
                    continue 
                mem[_691 + _695 + _871 + _1000 + 32] = 0
                _1091 = mem[64]
                mem[mem[64]] = _1000 + _691 + _695 + _871 - mem[64]
                mem[64] = _1000 + _691 + _695 + _871 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1091
                t = _356
                continue 
            mem[_691 + _695 + 32] = 0
            _875 = mem[_213]
            s = 0
            while s < _875:
                mem[s + _691 + _695 + 32] = mem[s + _213 + 32]
                s = s + 32
                continue 
            if ceil32(_875) <= _875:
                _993 = mem[_492]
                s = 0
                while s < _993:
                    mem[s + _691 + _695 + _875 + 32] = mem[s + _492 + 32]
                    s = s + 32
                    continue 
                if ceil32(_993) <= _993:
                    _1076 = mem[64]
                    mem[mem[64]] = _993 + _691 + _695 + _875 - mem[64]
                    mem[64] = _993 + _691 + _695 + _875 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1076
                    t = _356
                    continue 
                mem[_691 + _695 + _875 + _993 + 32] = 0
                _1092 = mem[64]
                mem[mem[64]] = _993 + _691 + _695 + _875 - mem[64]
                mem[64] = _993 + _691 + _695 + _875 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1092
                t = _356
                continue 
            mem[_691 + _695 + _875 + 32] = 0
            _1001 = mem[_492]
            s = 0
            while s < _1001:
                mem[s + _691 + _695 + _875 + 32] = mem[s + _492 + 32]
                s = s + 32
                continue 
            if ceil32(_1001) <= _1001:
                _1077 = mem[64]
                mem[mem[64]] = _1001 + _691 + _695 + _875 - mem[64]
                mem[64] = _1001 + _691 + _695 + _875 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1077
                t = _356
                continue 
            mem[_691 + _695 + _875 + _1001 + 32] = 0
            _1093 = mem[64]
            mem[mem[64]] = _1001 + _691 + _695 + _875 - mem[64]
            mem[64] = _1001 + _691 + _695 + _875 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1093
            t = _356
            continue 
        mem[mem[64]] = 32
        _368 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_368)] = mem[s + 32 len ceil32(_368)]
        if ceil32(_368) > _368:
            mem[mem[64] + _368 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_368) + 32]
    mem[_111 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _68
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[_111]:
            revert with 0, 50
        mem[t + _111 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _214 = mem[64]
    mem[64] = mem[64] + 64
    mem[_214] = 1
    mem[_214 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = _111
    t = _64
    while idx < _61:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _358 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _359 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
        if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
            _371 = mem[64]
            mem[64] = mem[64] + 64
            mem[_371] = 1
            mem[_371 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _375 = mem[64]
            _383 = mem[s]
            t = 0
            while t < _383:
                mem[t + _375 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_383) <= _383:
                _495 = mem[_214]
                s = 0
                while s < _495:
                    mem[s + _375 + _383 + 32] = mem[s + _214 + 32]
                    s = s + 32
                    continue 
                if ceil32(_495) <= _495:
                    _700 = mem[_371]
                    s = 0
                    while s < _700:
                        mem[s + _375 + _383 + _495 + 32] = mem[s + _371 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_700) <= _700:
                        _882 = mem[64]
                        mem[mem[64]] = _700 + _375 + _383 + _495 - mem[64]
                        mem[64] = _700 + _375 + _383 + _495 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _882
                        t = _358
                        continue 
                    mem[_375 + _383 + _495 + _700 + 32] = 0
                    _898 = mem[64]
                    mem[mem[64]] = _700 + _375 + _383 + _495 - mem[64]
                    mem[64] = _700 + _375 + _383 + _495 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _898
                    t = _358
                    continue 
                mem[_375 + _383 + _495 + 32] = 0
                _708 = mem[_371]
                s = 0
                while s < _708:
                    mem[s + _375 + _383 + _495 + 32] = mem[s + _371 + 32]
                    s = s + 32
                    continue 
                if ceil32(_708) <= _708:
                    _883 = mem[64]
                    mem[mem[64]] = _708 + _375 + _383 + _495 - mem[64]
                    mem[64] = _708 + _375 + _383 + _495 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _883
                    t = _358
                    continue 
                mem[_375 + _383 + _495 + _708 + 32] = 0
                _899 = mem[64]
                mem[mem[64]] = _708 + _375 + _383 + _495 - mem[64]
                mem[64] = _708 + _375 + _383 + _495 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _899
                t = _358
                continue 
            mem[_375 + _383 + 32] = 0
            _501 = mem[_214]
            s = 0
            while s < _501:
                mem[s + _375 + _383 + 32] = mem[s + _214 + 32]
                s = s + 32
                continue 
            if ceil32(_501) <= _501:
                _701 = mem[_371]
                s = 0
                while s < _701:
                    mem[s + _375 + _383 + _501 + 32] = mem[s + _371 + 32]
                    s = s + 32
                    continue 
                if ceil32(_701) <= _701:
                    _884 = mem[64]
                    mem[mem[64]] = _701 + _375 + _383 + _501 - mem[64]
                    mem[64] = _701 + _375 + _383 + _501 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _884
                    t = _358
                    continue 
                mem[_375 + _383 + _501 + _701 + 32] = 0
                _900 = mem[64]
                mem[mem[64]] = _701 + _375 + _383 + _501 - mem[64]
                mem[64] = _701 + _375 + _383 + _501 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _900
                t = _358
                continue 
            mem[_375 + _383 + _501 + 32] = 0
            _709 = mem[_371]
            s = 0
            while s < _709:
                mem[s + _375 + _383 + _501 + 32] = mem[s + _371 + 32]
                s = s + 32
                continue 
            if ceil32(_709) <= _709:
                _885 = mem[64]
                mem[mem[64]] = _709 + _375 + _383 + _501 - mem[64]
                mem[64] = _709 + _375 + _383 + _501 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _885
                t = _358
                continue 
            mem[_375 + _383 + _501 + _709 + 32] = 0
            _901 = mem[64]
            mem[mem[64]] = _709 + _375 + _383 + _501 - mem[64]
            mem[64] = _709 + _375 + _383 + _501 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _901
            t = _358
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
        _493 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = _359
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_493]:
                    revert with 0, 50
                mem[v + _493 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _692 = mem[64]
            _698 = mem[s]
            t = 0
            while t < _698:
                mem[t + _692 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_698) <= _698:
                _872 = mem[_214]
                s = 0
                while s < _872:
                    mem[s + _692 + _698 + 32] = mem[s + _214 + 32]
                    s = s + 32
                    continue 
                if ceil32(_872) <= _872:
                    _994 = mem[_493]
                    s = 0
                    while s < _994:
                        mem[s + _692 + _698 + _872 + 32] = mem[s + _493 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_994) <= _994:
                        _1078 = mem[64]
                        mem[mem[64]] = _994 + _692 + _698 + _872 - mem[64]
                        mem[64] = _994 + _692 + _698 + _872 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1078
                        t = _358
                        continue 
                    mem[_692 + _698 + _872 + _994 + 32] = 0
                    _1094 = mem[64]
                    mem[mem[64]] = _994 + _692 + _698 + _872 - mem[64]
                    mem[64] = _994 + _692 + _698 + _872 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1094
                    t = _358
                    continue 
                mem[_692 + _698 + _872 + 32] = 0
                _1002 = mem[_493]
                s = 0
                while s < _1002:
                    mem[s + _692 + _698 + _872 + 32] = mem[s + _493 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1002) <= _1002:
                    _1079 = mem[64]
                    mem[mem[64]] = _1002 + _692 + _698 + _872 - mem[64]
                    mem[64] = _1002 + _692 + _698 + _872 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1079
                    t = _358
                    continue 
                mem[_692 + _698 + _872 + _1002 + 32] = 0
                _1095 = mem[64]
                mem[mem[64]] = _1002 + _692 + _698 + _872 - mem[64]
                mem[64] = _1002 + _692 + _698 + _872 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1095
                t = _358
                continue 
            mem[_692 + _698 + 32] = 0
            _880 = mem[_214]
            s = 0
            while s < _880:
                mem[s + _692 + _698 + 32] = mem[s + _214 + 32]
                s = s + 32
                continue 
            if ceil32(_880) <= _880:
                _995 = mem[_493]
                s = 0
                while s < _995:
                    mem[s + _692 + _698 + _880 + 32] = mem[s + _493 + 32]
                    s = s + 32
                    continue 
                if ceil32(_995) <= _995:
                    _1080 = mem[64]
                    mem[mem[64]] = _995 + _692 + _698 + _880 - mem[64]
                    mem[64] = _995 + _692 + _698 + _880 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1080
                    t = _358
                    continue 
                mem[_692 + _698 + _880 + _995 + 32] = 0
                _1096 = mem[64]
                mem[mem[64]] = _995 + _692 + _698 + _880 - mem[64]
                mem[64] = _995 + _692 + _698 + _880 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1096
                t = _358
                continue 
            mem[_692 + _698 + _880 + 32] = 0
            _1003 = mem[_493]
            s = 0
            while s < _1003:
                mem[s + _692 + _698 + _880 + 32] = mem[s + _493 + 32]
                s = s + 32
                continue 
            if ceil32(_1003) <= _1003:
                _1081 = mem[64]
                mem[mem[64]] = _1003 + _692 + _698 + _880 - mem[64]
                mem[64] = _1003 + _692 + _698 + _880 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1081
                t = _358
                continue 
            mem[_692 + _698 + _880 + _1003 + 32] = 0
            _1097 = mem[64]
            mem[mem[64]] = _1003 + _692 + _698 + _880 - mem[64]
            mem[64] = _1003 + _692 + _698 + _880 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1097
            t = _358
            continue 
        mem[_493 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = _359
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_493]:
                revert with 0, 50
            mem[v + _493 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _693 = mem[64]
        _699 = mem[s]
        t = 0
        while t < _699:
            mem[t + _693 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_699) <= _699:
            _873 = mem[_214]
            s = 0
            while s < _873:
                mem[s + _693 + _699 + 32] = mem[s + _214 + 32]
                s = s + 32
                continue 
            if ceil32(_873) <= _873:
                _996 = mem[_493]
                s = 0
                while s < _996:
                    mem[s + _693 + _699 + _873 + 32] = mem[s + _493 + 32]
                    s = s + 32
                    continue 
                if ceil32(_996) <= _996:
                    _1082 = mem[64]
                    mem[mem[64]] = _996 + _693 + _699 + _873 - mem[64]
                    mem[64] = _996 + _693 + _699 + _873 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1082
                    t = _358
                    continue 
                mem[_693 + _699 + _873 + _996 + 32] = 0
                _1098 = mem[64]
                mem[mem[64]] = _996 + _693 + _699 + _873 - mem[64]
                mem[64] = _996 + _693 + _699 + _873 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1098
                t = _358
                continue 
            mem[_693 + _699 + _873 + 32] = 0
            _1004 = mem[_493]
            s = 0
            while s < _1004:
                mem[s + _693 + _699 + _873 + 32] = mem[s + _493 + 32]
                s = s + 32
                continue 
            if ceil32(_1004) <= _1004:
                _1083 = mem[64]
                mem[mem[64]] = _1004 + _693 + _699 + _873 - mem[64]
                mem[64] = _1004 + _693 + _699 + _873 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1083
                t = _358
                continue 
            mem[_693 + _699 + _873 + _1004 + 32] = 0
            _1099 = mem[64]
            mem[mem[64]] = _1004 + _693 + _699 + _873 - mem[64]
            mem[64] = _1004 + _693 + _699 + _873 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1099
            t = _358
            continue 
        mem[_693 + _699 + 32] = 0
        _881 = mem[_214]
        s = 0
        while s < _881:
            mem[s + _693 + _699 + 32] = mem[s + _214 + 32]
            s = s + 32
            continue 
        if ceil32(_881) <= _881:
            _997 = mem[_493]
            s = 0
            while s < _997:
                mem[s + _693 + _699 + _881 + 32] = mem[s + _493 + 32]
                s = s + 32
                continue 
            if ceil32(_997) <= _997:
                _1084 = mem[64]
                mem[mem[64]] = _997 + _693 + _699 + _881 - mem[64]
                mem[64] = _997 + _693 + _699 + _881 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1084
                t = _358
                continue 
            mem[_693 + _699 + _881 + _997 + 32] = 0
            _1100 = mem[64]
            mem[mem[64]] = _997 + _693 + _699 + _881 - mem[64]
            mem[64] = _997 + _693 + _699 + _881 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1100
            t = _358
            continue 
        mem[_693 + _699 + _881 + 32] = 0
        _1005 = mem[_493]
        s = 0
        while s < _1005:
            mem[s + _693 + _699 + _881 + 32] = mem[s + _493 + 32]
            s = s + 32
            continue 
        if ceil32(_1005) <= _1005:
            _1085 = mem[64]
            mem[mem[64]] = _1005 + _693 + _699 + _881 - mem[64]
            mem[64] = _1005 + _693 + _699 + _881 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1085
            t = _358
            continue 
        mem[_693 + _699 + _881 + _1005 + 32] = 0
        _1101 = mem[64]
        mem[mem[64]] = _1005 + _693 + _699 + _881 - mem[64]
        mem[64] = _1005 + _693 + _699 + _881 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _1101
        t = _358
        continue 
    _363 = mem[64]
    mem[mem[64]] = 32
    _370 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_370)] = mem[s + 32 len ceil32(_370)]
    if ceil32(_370) <= _370:
        return 32, mem[mem[64] + 32 len ceil32(_370) + 32]
    mem[mem[64] + _370 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_370) + _363 + -mem[64] + 64
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 1
    mem[132] = arg1
    require ext_code.size(0x26eca6c997117159a53a3097a0ceb864e9d81a20)
    delegate 0x26eca6c997117159a53a3097a0ceb864e9d81a20.0x732a2ccf with:
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
        _58 = mem[64]
        mem[64] = mem[64] + 128
        if stor5[address(arg1)][idx].field_0:
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1) + 32
            mem[_63] = stor5[address(arg1)][idx].field_1
            if stor5[address(arg1)][idx].field_0:
                if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                    revert with 0, 34
                if stor5[address(arg1)][idx].field_1:
                    if 31 >= stor5[address(arg1)][idx].field_1:
                        mem[_63 + 32] = 256 * stor5[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                        mem[_63 + 32] = stor5[address(arg1)][idx].field_0
                        t = _63 + 32
                        u = sha3(mem[0])
                        while _63 + stor5[address(arg1)][idx].field_1 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_58] = _63
                mem[_58 + 32] = stor5[address(arg1)][idx].field_256
                mem[_58 + 64] = stor5[address(arg1)][idx].field_512
                mem[_58 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor5[address(arg1)][idx].field_1:
                mem[_58] = _63
                mem[_58 + 32] = stor5[address(arg1)][idx].field_256
                mem[_58 + 64] = stor5[address(arg1)][idx].field_512
                mem[_58 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_63 + 32] = 256 * stor5[address(arg1)][idx].field_8
                mem[_58] = _63
                mem[_58 + 32] = stor5[address(arg1)][idx].field_256
                mem[_58 + 64] = stor5[address(arg1)][idx].field_512
                mem[_58 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_63 + 32] = stor5[address(arg1)][idx].field_0
            t = _63 + 32
            u = sha3(mem[0])
            while _63 + stor5[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_58] = _63
            mem[_58 + 32] = stor5[address(arg1)][u].field_256
            mem[_58 + 64] = stor5[address(arg1)][u].field_512
            mem[_58 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1) + 32
        mem[_65] = stor5[address(arg1)][idx].field_1
        if stor5[address(arg1)][idx].field_0:
            if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor5[address(arg1)][idx].field_1:
                mem[_58] = _65
                mem[_58 + 32] = stor5[address(arg1)][idx].field_256
                mem[_58 + 64] = stor5[address(arg1)][idx].field_512
                mem[_58 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_65 + 32] = 256 * stor5[address(arg1)][idx].field_8
                mem[_58] = _65
                mem[_58 + 32] = stor5[address(arg1)][idx].field_256
                mem[_58 + 64] = stor5[address(arg1)][idx].field_512
                mem[_58 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_65 + 32] = stor5[address(arg1)][idx].field_0
            t = _65 + 32
            u = sha3(mem[0])
            while _65 + stor5[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_58] = _65
            mem[_58 + 32] = stor5[address(arg1)][u].field_256
            mem[_58 + 64] = stor5[address(arg1)][u].field_512
            mem[_58 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if stor5[address(arg1)][idx].field_0 == stor5[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor5[address(arg1)][idx].field_1:
            if 31 >= stor5[address(arg1)][idx].field_1:
                mem[_65 + 32] = 256 * stor5[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                mem[_65 + 32] = stor5[address(arg1)][idx].field_0
                t = _65 + 32
                u = sha3(mem[0])
                while _65 + stor5[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_58] = _65
        mem[_58 + 32] = stor5[address(arg1)][idx].field_256
        mem[_58 + 64] = stor5[address(arg1)][idx].field_512
        mem[_58 + 96] = stor5[address(arg1)][idx].field_768
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
        revert with 0, 50
    _62 = mem[mem[ceil32(return_data.size) + 128] + 32]
    if not mem[mem[ceil32(return_data.size) + 128] + 32]:
        _64 = mem[64]
        mem[64] = mem[64] + 64
        mem[_64] = 1
        mem[_64 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _66 = mem[64]
        mem[64] = mem[64] + 64
        mem[_66] = 1
        mem[_66 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _64
        t = _59
        while idx < _56:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _105 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _106 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                _109 = mem[64]
                mem[64] = mem[64] + 64
                mem[_109] = 1
                mem[_109 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _111 = mem[64]
                _114 = mem[s]
                t = 0
                while t < _114:
                    mem[t + _111 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_114) <= _114:
                    _209 = mem[_66]
                    s = 0
                    while s < _209:
                        mem[s + _111 + _114 + 32] = mem[s + _66 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_209) <= _209:
                        _359 = mem[_109]
                        s = 0
                        while s < _359:
                            mem[s + _111 + _114 + _209 + 32] = mem[s + _109 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_359) <= _359:
                            _497 = mem[64]
                            mem[mem[64]] = _359 + _111 + _114 + _209 - mem[64]
                            mem[64] = _359 + _111 + _114 + _209 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _497
                            t = _105
                            continue 
                        mem[_111 + _114 + _209 + _359 + 32] = 0
                        _503 = mem[64]
                        mem[mem[64]] = _359 + _111 + _114 + _209 - mem[64]
                        mem[64] = _359 + _111 + _114 + _209 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _503
                        t = _105
                        continue 
                    mem[_111 + _114 + _209 + 32] = 0
                    _365 = mem[_109]
                    s = 0
                    while s < _365:
                        mem[s + _111 + _114 + _209 + 32] = mem[s + _109 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_365) <= _365:
                        _498 = mem[64]
                        mem[mem[64]] = _365 + _111 + _114 + _209 - mem[64]
                        mem[64] = _365 + _111 + _114 + _209 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _498
                        t = _105
                        continue 
                    mem[_111 + _114 + _209 + _365 + 32] = 0
                    _504 = mem[64]
                    mem[mem[64]] = _365 + _111 + _114 + _209 - mem[64]
                    mem[64] = _365 + _111 + _114 + _209 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _504
                    t = _105
                    continue 
                mem[_111 + _114 + 32] = 0
                _213 = mem[_66]
                s = 0
                while s < _213:
                    mem[s + _111 + _114 + 32] = mem[s + _66 + 32]
                    s = s + 32
                    continue 
                if ceil32(_213) <= _213:
                    _360 = mem[_109]
                    s = 0
                    while s < _360:
                        mem[s + _111 + _114 + _213 + 32] = mem[s + _109 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_360) <= _360:
                        _499 = mem[64]
                        mem[mem[64]] = _360 + _111 + _114 + _213 - mem[64]
                        mem[64] = _360 + _111 + _114 + _213 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _499
                        t = _105
                        continue 
                    mem[_111 + _114 + _213 + _360 + 32] = 0
                    _505 = mem[64]
                    mem[mem[64]] = _360 + _111 + _114 + _213 - mem[64]
                    mem[64] = _360 + _111 + _114 + _213 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _505
                    t = _105
                    continue 
                mem[_111 + _114 + _213 + 32] = 0
                _366 = mem[_109]
                s = 0
                while s < _366:
                    mem[s + _111 + _114 + _213 + 32] = mem[s + _109 + 32]
                    s = s + 32
                    continue 
                if ceil32(_366) <= _366:
                    _500 = mem[64]
                    mem[mem[64]] = _366 + _111 + _114 + _213 - mem[64]
                    mem[64] = _366 + _111 + _114 + _213 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _500
                    t = _105
                    continue 
                mem[_111 + _114 + _213 + _366 + 32] = 0
                _506 = mem[64]
                mem[mem[64]] = _366 + _111 + _114 + _213 - mem[64]
                mem[64] = _366 + _111 + _114 + _213 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _506
                t = _105
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
                t = _106
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
                _353 = mem[64]
                _357 = mem[s]
                t = 0
                while t < _357:
                    mem[t + _353 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_357) <= _357:
                    _489 = mem[_66]
                    s = 0
                    while s < _489:
                        mem[s + _353 + _357 + 32] = mem[s + _66 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_489) <= _489:
                        _695 = mem[_208]
                        s = 0
                        while s < _695:
                            mem[s + _353 + _357 + _489 + 32] = mem[s + _208 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_695) <= _695:
                            _879 = mem[64]
                            mem[mem[64]] = _695 + _353 + _357 + _489 - mem[64]
                            mem[64] = _695 + _353 + _357 + _489 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _879
                            t = _105
                            continue 
                        mem[_353 + _357 + _489 + _695 + 32] = 0
                        _895 = mem[64]
                        mem[mem[64]] = _695 + _353 + _357 + _489 - mem[64]
                        mem[64] = _695 + _353 + _357 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _895
                        t = _105
                        continue 
                    mem[_353 + _357 + _489 + 32] = 0
                    _703 = mem[_208]
                    s = 0
                    while s < _703:
                        mem[s + _353 + _357 + _489 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_703) <= _703:
                        _880 = mem[64]
                        mem[mem[64]] = _703 + _353 + _357 + _489 - mem[64]
                        mem[64] = _703 + _353 + _357 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _880
                        t = _105
                        continue 
                    mem[_353 + _357 + _489 + _703 + 32] = 0
                    _896 = mem[64]
                    mem[mem[64]] = _703 + _353 + _357 + _489 - mem[64]
                    mem[64] = _703 + _353 + _357 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _896
                    t = _105
                    continue 
                mem[_353 + _357 + 32] = 0
                _495 = mem[_66]
                s = 0
                while s < _495:
                    mem[s + _353 + _357 + 32] = mem[s + _66 + 32]
                    s = s + 32
                    continue 
                if ceil32(_495) <= _495:
                    _696 = mem[_208]
                    s = 0
                    while s < _696:
                        mem[s + _353 + _357 + _495 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_696) <= _696:
                        _881 = mem[64]
                        mem[mem[64]] = _696 + _353 + _357 + _495 - mem[64]
                        mem[64] = _696 + _353 + _357 + _495 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _881
                        t = _105
                        continue 
                    mem[_353 + _357 + _495 + _696 + 32] = 0
                    _897 = mem[64]
                    mem[mem[64]] = _696 + _353 + _357 + _495 - mem[64]
                    mem[64] = _696 + _353 + _357 + _495 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _897
                    t = _105
                    continue 
                mem[_353 + _357 + _495 + 32] = 0
                _704 = mem[_208]
                s = 0
                while s < _704:
                    mem[s + _353 + _357 + _495 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_704) <= _704:
                    _882 = mem[64]
                    mem[mem[64]] = _704 + _353 + _357 + _495 - mem[64]
                    mem[64] = _704 + _353 + _357 + _495 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _882
                    t = _105
                    continue 
                mem[_353 + _357 + _495 + _704 + 32] = 0
                _898 = mem[64]
                mem[mem[64]] = _704 + _353 + _357 + _495 - mem[64]
                mem[64] = _704 + _353 + _357 + _495 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _898
                t = _105
                continue 
            mem[_208 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _106
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
            _354 = mem[64]
            _358 = mem[s]
            t = 0
            while t < _358:
                mem[t + _354 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_358) <= _358:
                _490 = mem[_66]
                s = 0
                while s < _490:
                    mem[s + _354 + _358 + 32] = mem[s + _66 + 32]
                    s = s + 32
                    continue 
                if ceil32(_490) <= _490:
                    _697 = mem[_208]
                    s = 0
                    while s < _697:
                        mem[s + _354 + _358 + _490 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _883 = mem[64]
                        mem[mem[64]] = _697 + _354 + _358 + _490 - mem[64]
                        mem[64] = _697 + _354 + _358 + _490 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _883
                        t = _105
                        continue 
                    mem[_354 + _358 + _490 + _697 + 32] = 0
                    _899 = mem[64]
                    mem[mem[64]] = _697 + _354 + _358 + _490 - mem[64]
                    mem[64] = _697 + _354 + _358 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _899
                    t = _105
                    continue 
                mem[_354 + _358 + _490 + 32] = 0
                _705 = mem[_208]
                s = 0
                while s < _705:
                    mem[s + _354 + _358 + _490 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_705) <= _705:
                    _884 = mem[64]
                    mem[mem[64]] = _705 + _354 + _358 + _490 - mem[64]
                    mem[64] = _705 + _354 + _358 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _884
                    t = _105
                    continue 
                mem[_354 + _358 + _490 + _705 + 32] = 0
                _900 = mem[64]
                mem[mem[64]] = _705 + _354 + _358 + _490 - mem[64]
                mem[64] = _705 + _354 + _358 + _490 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _900
                t = _105
                continue 
            mem[_354 + _358 + 32] = 0
            _496 = mem[_66]
            s = 0
            while s < _496:
                mem[s + _354 + _358 + 32] = mem[s + _66 + 32]
                s = s + 32
                continue 
            if ceil32(_496) <= _496:
                _698 = mem[_208]
                s = 0
                while s < _698:
                    mem[s + _354 + _358 + _496 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _885 = mem[64]
                    mem[mem[64]] = _698 + _354 + _358 + _496 - mem[64]
                    mem[64] = _698 + _354 + _358 + _496 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _885
                    t = _105
                    continue 
                mem[_354 + _358 + _496 + _698 + 32] = 0
                _901 = mem[64]
                mem[mem[64]] = _698 + _354 + _358 + _496 - mem[64]
                mem[64] = _698 + _354 + _358 + _496 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _901
                t = _105
                continue 
            mem[_354 + _358 + _496 + 32] = 0
            _706 = mem[_208]
            s = 0
            while s < _706:
                mem[s + _354 + _358 + _496 + 32] = mem[s + _208 + 32]
                s = s + 32
                continue 
            if ceil32(_706) <= _706:
                _886 = mem[64]
                mem[mem[64]] = _706 + _354 + _358 + _496 - mem[64]
                mem[64] = _706 + _354 + _358 + _496 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _886
                t = _105
                continue 
            mem[_354 + _358 + _496 + _706 + 32] = 0
            _902 = mem[64]
            mem[mem[64]] = _706 + _354 + _358 + _496 - mem[64]
            mem[64] = _706 + _354 + _358 + _496 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _902
            t = _105
            continue 
        _107 = mem[64]
        mem[mem[64]] = 32
        _108 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_108)] = mem[s + 32 len ceil32(_108)]
        if ceil32(_108) <= _108:
            return 32, mem[mem[64] + 32 len ceil32(_108) + 32]
        mem[mem[64] + _108 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_108) + _107 + -mem[64] + 64
    s = 0
    idx = mem[mem[ceil32(return_data.size) + 128] + 32]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _104 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _62
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_104]:
                revert with 0, 50
            mem[t + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _206 = mem[64]
        mem[64] = mem[64] + 64
        mem[_206] = 1
        mem[_206 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _104
        t = _59
        while idx < _56:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _349 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _350 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                _362 = mem[64]
                mem[64] = mem[64] + 64
                mem[_362] = 1
                mem[_362 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _367 = mem[64]
                _374 = mem[s]
                t = 0
                while t < _374:
                    mem[t + _367 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_374) <= _374:
                    _487 = mem[_206]
                    s = 0
                    while s < _487:
                        mem[s + _367 + _374 + 32] = mem[s + _206 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_487) <= _487:
                        _689 = mem[_362]
                        s = 0
                        while s < _689:
                            mem[s + _367 + _374 + _487 + 32] = mem[s + _362 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_689) <= _689:
                            _869 = mem[64]
                            mem[mem[64]] = _689 + _367 + _374 + _487 - mem[64]
                            mem[64] = _689 + _367 + _374 + _487 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _869
                            t = _349
                            continue 
                        mem[_367 + _374 + _487 + _689 + 32] = 0
                        _887 = mem[64]
                        mem[mem[64]] = _689 + _367 + _374 + _487 - mem[64]
                        mem[64] = _689 + _367 + _374 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _887
                        t = _349
                        continue 
                    mem[_367 + _374 + _487 + 32] = 0
                    _699 = mem[_362]
                    s = 0
                    while s < _699:
                        mem[s + _367 + _374 + _487 + 32] = mem[s + _362 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_699) <= _699:
                        _870 = mem[64]
                        mem[mem[64]] = _699 + _367 + _374 + _487 - mem[64]
                        mem[64] = _699 + _367 + _374 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _870
                        t = _349
                        continue 
                    mem[_367 + _374 + _487 + _699 + 32] = 0
                    _888 = mem[64]
                    mem[mem[64]] = _699 + _367 + _374 + _487 - mem[64]
                    mem[64] = _699 + _367 + _374 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _888
                    t = _349
                    continue 
                mem[_367 + _374 + 32] = 0
                _492 = mem[_206]
                s = 0
                while s < _492:
                    mem[s + _367 + _374 + 32] = mem[s + _206 + 32]
                    s = s + 32
                    continue 
                if ceil32(_492) <= _492:
                    _690 = mem[_362]
                    s = 0
                    while s < _690:
                        mem[s + _367 + _374 + _492 + 32] = mem[s + _362 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _871 = mem[64]
                        mem[mem[64]] = _690 + _367 + _374 + _492 - mem[64]
                        mem[64] = _690 + _367 + _374 + _492 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _871
                        t = _349
                        continue 
                    mem[_367 + _374 + _492 + _690 + 32] = 0
                    _889 = mem[64]
                    mem[mem[64]] = _690 + _367 + _374 + _492 - mem[64]
                    mem[64] = _690 + _367 + _374 + _492 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _889
                    t = _349
                    continue 
                mem[_367 + _374 + _492 + 32] = 0
                _700 = mem[_362]
                s = 0
                while s < _700:
                    mem[s + _367 + _374 + _492 + 32] = mem[s + _362 + 32]
                    s = s + 32
                    continue 
                if ceil32(_700) <= _700:
                    _872 = mem[64]
                    mem[mem[64]] = _700 + _367 + _374 + _492 - mem[64]
                    mem[64] = _700 + _367 + _374 + _492 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _872
                    t = _349
                    continue 
                mem[_367 + _374 + _492 + _700 + 32] = 0
                _890 = mem[64]
                mem[mem[64]] = _700 + _367 + _374 + _492 - mem[64]
                mem[64] = _700 + _367 + _374 + _492 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _890
                t = _349
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
            _485 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _350
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_485]:
                        revert with 0, 50
                    mem[v + _485 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _683 = mem[64]
                _687 = mem[s]
                t = 0
                while t < _687:
                    mem[t + _683 + 32] = mem[t + s + 32]
                    t = t + 32
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
                            s = _1063
                            t = _349
                            continue 
                        mem[_683 + _687 + _863 + _983 + 32] = 0
                        _1079 = mem[64]
                        mem[mem[64]] = _983 + _683 + _687 + _863 - mem[64]
                        mem[64] = _983 + _683 + _687 + _863 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1079
                        t = _349
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
                        s = _1064
                        t = _349
                        continue 
                    mem[_683 + _687 + _863 + _991 + 32] = 0
                    _1080 = mem[64]
                    mem[mem[64]] = _991 + _683 + _687 + _863 - mem[64]
                    mem[64] = _991 + _683 + _687 + _863 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1080
                    t = _349
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
                        s = _1065
                        t = _349
                        continue 
                    mem[_683 + _687 + _867 + _984 + 32] = 0
                    _1081 = mem[64]
                    mem[mem[64]] = _984 + _683 + _687 + _867 - mem[64]
                    mem[64] = _984 + _683 + _687 + _867 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1081
                    t = _349
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
                    s = _1066
                    t = _349
                    continue 
                mem[_683 + _687 + _867 + _992 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _992 + _683 + _687 + _867 - mem[64]
                mem[64] = _992 + _683 + _687 + _867 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1082
                t = _349
                continue 
            mem[_485 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _350
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_485]:
                    revert with 0, 50
                mem[v + _485 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _684 = mem[64]
            _688 = mem[s]
            t = 0
            while t < _688:
                mem[t + _684 + 32] = mem[t + s + 32]
                t = t + 32
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
                        s = _1067
                        t = _349
                        continue 
                    mem[_684 + _688 + _864 + _985 + 32] = 0
                    _1083 = mem[64]
                    mem[mem[64]] = _985 + _684 + _688 + _864 - mem[64]
                    mem[64] = _985 + _684 + _688 + _864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1083
                    t = _349
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
                    s = _1068
                    t = _349
                    continue 
                mem[_684 + _688 + _864 + _993 + 32] = 0
                _1084 = mem[64]
                mem[mem[64]] = _993 + _684 + _688 + _864 - mem[64]
                mem[64] = _993 + _684 + _688 + _864 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1084
                t = _349
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
                    s = _1069
                    t = _349
                    continue 
                mem[_684 + _688 + _868 + _986 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _986 + _684 + _688 + _868 - mem[64]
                mem[64] = _986 + _684 + _688 + _868 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1085
                t = _349
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
                s = _1070
                t = _349
                continue 
            mem[_684 + _688 + _868 + _994 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _994 + _684 + _688 + _868 - mem[64]
            mem[64] = _994 + _684 + _688 + _868 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1086
            t = _349
            continue 
        _355 = mem[64]
        mem[mem[64]] = 32
        _361 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_361)] = mem[s + 32 len ceil32(_361)]
        if ceil32(_361) <= _361:
            return 32, mem[mem[64] + 32 len ceil32(_361) + 32]
        mem[mem[64] + _361 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_361) + _355 + -mem[64] + 64
    mem[_104 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _62
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[_104]:
            revert with 0, 50
        mem[t + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _207 = mem[64]
    mem[64] = mem[64] + 64
    mem[_207] = 1
    mem[_207 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = _104
    t = _59
    while idx < _56:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _351 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _352 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
        if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
            _364 = mem[64]
            mem[64] = mem[64] + 64
            mem[_364] = 1
            mem[_364 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _368 = mem[64]
            _376 = mem[s]
            t = 0
            while t < _376:
                mem[t + _368 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_376) <= _376:
                _488 = mem[_207]
                s = 0
                while s < _488:
                    mem[s + _368 + _376 + 32] = mem[s + _207 + 32]
                    s = s + 32
                    continue 
                if ceil32(_488) <= _488:
                    _693 = mem[_364]
                    s = 0
                    while s < _693:
                        mem[s + _368 + _376 + _488 + 32] = mem[s + _364 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _875 = mem[64]
                        mem[mem[64]] = _693 + _368 + _376 + _488 - mem[64]
                        mem[64] = _693 + _368 + _376 + _488 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _875
                        t = _351
                        continue 
                    mem[_368 + _376 + _488 + _693 + 32] = 0
                    _891 = mem[64]
                    mem[mem[64]] = _693 + _368 + _376 + _488 - mem[64]
                    mem[64] = _693 + _368 + _376 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _891
                    t = _351
                    continue 
                mem[_368 + _376 + _488 + 32] = 0
                _701 = mem[_364]
                s = 0
                while s < _701:
                    mem[s + _368 + _376 + _488 + 32] = mem[s + _364 + 32]
                    s = s + 32
                    continue 
                if ceil32(_701) <= _701:
                    _876 = mem[64]
                    mem[mem[64]] = _701 + _368 + _376 + _488 - mem[64]
                    mem[64] = _701 + _368 + _376 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _876
                    t = _351
                    continue 
                mem[_368 + _376 + _488 + _701 + 32] = 0
                _892 = mem[64]
                mem[mem[64]] = _701 + _368 + _376 + _488 - mem[64]
                mem[64] = _701 + _368 + _376 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _892
                t = _351
                continue 
            mem[_368 + _376 + 32] = 0
            _494 = mem[_207]
            s = 0
            while s < _494:
                mem[s + _368 + _376 + 32] = mem[s + _207 + 32]
                s = s + 32
                continue 
            if ceil32(_494) <= _494:
                _694 = mem[_364]
                s = 0
                while s < _694:
                    mem[s + _368 + _376 + _494 + 32] = mem[s + _364 + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _877 = mem[64]
                    mem[mem[64]] = _694 + _368 + _376 + _494 - mem[64]
                    mem[64] = _694 + _368 + _376 + _494 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _877
                    t = _351
                    continue 
                mem[_368 + _376 + _494 + _694 + 32] = 0
                _893 = mem[64]
                mem[mem[64]] = _694 + _368 + _376 + _494 - mem[64]
                mem[64] = _694 + _368 + _376 + _494 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _893
                t = _351
                continue 
            mem[_368 + _376 + _494 + 32] = 0
            _702 = mem[_364]
            s = 0
            while s < _702:
                mem[s + _368 + _376 + _494 + 32] = mem[s + _364 + 32]
                s = s + 32
                continue 
            if ceil32(_702) <= _702:
                _878 = mem[64]
                mem[mem[64]] = _702 + _368 + _376 + _494 - mem[64]
                mem[64] = _702 + _368 + _376 + _494 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _878
                t = _351
                continue 
            mem[_368 + _376 + _494 + _702 + 32] = 0
            _894 = mem[64]
            mem[mem[64]] = _702 + _368 + _376 + _494 - mem[64]
            mem[64] = _702 + _368 + _376 + _494 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _894
            t = _351
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
        _486 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = _352
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_486]:
                    revert with 0, 50
                mem[v + _486 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _685 = mem[64]
            _691 = mem[s]
            t = 0
            while t < _691:
                mem[t + _685 + 32] = mem[t + s + 32]
                t = t + 32
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
                        s = _1071
                        t = _351
                        continue 
                    mem[_685 + _691 + _865 + _987 + 32] = 0
                    _1087 = mem[64]
                    mem[mem[64]] = _987 + _685 + _691 + _865 - mem[64]
                    mem[64] = _987 + _685 + _691 + _865 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1087
                    t = _351
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
                    s = _1072
                    t = _351
                    continue 
                mem[_685 + _691 + _865 + _995 + 32] = 0
                _1088 = mem[64]
                mem[mem[64]] = _995 + _685 + _691 + _865 - mem[64]
                mem[64] = _995 + _685 + _691 + _865 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1088
                t = _351
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
                    s = _1073
                    t = _351
                    continue 
                mem[_685 + _691 + _873 + _988 + 32] = 0
                _1089 = mem[64]
                mem[mem[64]] = _988 + _685 + _691 + _873 - mem[64]
                mem[64] = _988 + _685 + _691 + _873 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1089
                t = _351
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
                s = _1074
                t = _351
                continue 
            mem[_685 + _691 + _873 + _996 + 32] = 0
            _1090 = mem[64]
            mem[mem[64]] = _996 + _685 + _691 + _873 - mem[64]
            mem[64] = _996 + _685 + _691 + _873 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1090
            t = _351
            continue 
        mem[_486 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = _352
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_486]:
                revert with 0, 50
            mem[v + _486 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _686 = mem[64]
        _692 = mem[s]
        t = 0
        while t < _692:
            mem[t + _686 + 32] = mem[t + s + 32]
            t = t + 32
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
                    s = _1075
                    t = _351
                    continue 
                mem[_686 + _692 + _866 + _989 + 32] = 0
                _1091 = mem[64]
                mem[mem[64]] = _989 + _686 + _692 + _866 - mem[64]
                mem[64] = _989 + _686 + _692 + _866 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1091
                t = _351
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
                s = _1076
                t = _351
                continue 
            mem[_686 + _692 + _866 + _997 + 32] = 0
            _1092 = mem[64]
            mem[mem[64]] = _997 + _686 + _692 + _866 - mem[64]
            mem[64] = _997 + _686 + _692 + _866 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1092
            t = _351
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
                s = _1077
                t = _351
                continue 
            mem[_686 + _692 + _874 + _990 + 32] = 0
            _1093 = mem[64]
            mem[mem[64]] = _990 + _686 + _692 + _874 - mem[64]
            mem[64] = _990 + _686 + _692 + _874 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1093
            t = _351
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
            s = _1078
            t = _351
            continue 
        mem[_686 + _692 + _874 + _998 + 32] = 0
        _1094 = mem[64]
        mem[mem[64]] = _998 + _686 + _692 + _874 - mem[64]
        mem[64] = _998 + _686 + _692 + _874 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _1094
        t = _351
        continue 
    _356 = mem[64]
    mem[mem[64]] = 32
    _363 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_363)] = mem[s + 32 len ceil32(_363)]
    if ceil32(_363) <= _363:
        return 32, mem[mem[64] + 32 len ceil32(_363) + 32]
    mem[mem[64] + _363 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_363) + _356 + -mem[64] + 64
}



}
