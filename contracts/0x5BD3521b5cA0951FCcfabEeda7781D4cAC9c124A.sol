contract main {




// =====================  Runtime code  =====================


#
#  - _getNodesRewardAvailable(address arg1)
#  - _cashoutAllNodesReward(address arg1)
#  - _cashoutNodeReward(address arg1, uint256 arg2)
#  - _distributeRewards()
#  - sub_a50c28ea(?)
#  - _getRewardAmountOf(address arg1, uint256 arg2)
#
array of uint256 stor1;
array of struct sub_2130fe23;
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
uint256 claimDuration;
uint256 sub_b137b854;
uint256 sub_af89f87c;

function sub_2130fe23(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2130fe23[address(arg1)].field_0
}

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

function claimDuration() payable {
    return claimDuration
}

function sub_af89f87c(?) payable {
    return sub_af89f87c
}

function sub_b137b854(?) payable {
    return sub_b137b854
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

function sub_0df5c9d2(?) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    sub_af89f87c = arg1
}

function sub_d9b3d6db(?) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    sub_b137b854 = arg1
}

function sub_90b36e3a(?) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    claimDuration = arg1
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

function sub_2d6f594f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    if not sub_2130fe23[address(arg1)].field_0:
        revert with 0, 50
    if sub_2130fe23[address(arg1)].field_768 > !arg2:
        revert with 0, 17
    sub_2130fe23[address(arg1)].field_768 += arg2
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xf57dd5ba73203526c7a1dcd2842df5053e1b265e)
    delegate 0xf57dd5ba73203526c7a1dcd2842df5053e1b265e.0x732a2ccf with:
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
    require ext_code.size(0xf57dd5ba73203526c7a1dcd2842df5053e1b265e)
    delegate 0xf57dd5ba73203526c7a1dcd2842df5053e1b265e.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] > 0)
}

function sub_90219732(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
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
}

function _getNodesNames(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0xf57dd5ba73203526c7a1dcd2842df5053e1b265e)
    delegate 0xf57dd5ba73203526c7a1dcd2842df5053e1b265e.0x732a2ccf with:
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
    mem[64] = ceil32(return_data.size) + (32 * sub_2130fe23[address(arg1)].field_0) + 128
    mem[ceil32(return_data.size) + 96] = sub_2130fe23[address(arg1)].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < sub_2130fe23[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        _57 = mem[64]
        mem[64] = mem[64] + 128
        if sub_2130fe23[address(arg1)][idx].field_0:
            if sub_2130fe23[address(arg1)][idx].field_0 == uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_63] = uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5
            if sub_2130fe23[address(arg1)][idx].field_0:
                if sub_2130fe23[address(arg1)][idx].field_0 == uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, sub_2130fe23[address(arg1)][idx].field_0):
                    if 31 >= uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5:
                        mem[_63 + 32] = 256 * sub_2130fe23[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_63 + 32] = sub_2130fe23[address(arg1)][idx].field_0
                        t = _63 + 32
                        u = sha3(mem[0])
                        while _63 + (uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_57] = _63
                mem[_57 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                mem[_57 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                mem[_57 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            if sub_2130fe23[address(arg1)][idx].field_0 == sub_2130fe23[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not sub_2130fe23[address(arg1)][idx].field_1:
                mem[_57] = _63
                mem[_57 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                mem[_57 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                mem[_57 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= sub_2130fe23[address(arg1)][idx].field_1:
                mem[_63 + 32] = 256 * sub_2130fe23[address(arg1)][idx].field_8
                mem[_57] = _63
                mem[_57 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                mem[_57 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                mem[_57 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_63 + 32] = sub_2130fe23[address(arg1)][idx].field_0
            t = _63 + 32
            u = sha3(mem[0])
            while _63 + sub_2130fe23[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_57] = _63
            mem[_57 + 32] = sub_2130fe23[address(arg1)][u].field_256
            mem[_57 + 64] = sub_2130fe23[address(arg1)][u].field_512
            mem[_57 + 96] = sub_2130fe23[address(arg1)][u].field_768
            mem[t] = _57
            t = t + 32
            u = u + 1
            continue 
        if sub_2130fe23[address(arg1)][idx].field_0 == sub_2130fe23[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _68 = mem[64]
        mem[64] = mem[64] + ceil32(sub_2130fe23[address(arg1)][idx].field_1) + 32
        mem[_68] = sub_2130fe23[address(arg1)][idx].field_1
        if sub_2130fe23[address(arg1)][idx].field_0:
            if sub_2130fe23[address(arg1)][idx].field_0 == uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, sub_2130fe23[address(arg1)][idx].field_0):
                mem[_57] = _68
                mem[_57 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                mem[_57 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                mem[_57 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5:
                mem[_68 + 32] = 256 * sub_2130fe23[address(arg1)][idx].field_8
                mem[_57] = _68
                mem[_57 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                mem[_57 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                mem[_57 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_68 + 32] = sub_2130fe23[address(arg1)][idx].field_0
            t = _68 + 32
            u = sha3(mem[0])
            while _68 + (uint255(sub_2130fe23[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_57] = _68
            mem[_57 + 32] = sub_2130fe23[address(arg1)][u].field_256
            mem[_57 + 64] = sub_2130fe23[address(arg1)][u].field_512
            mem[_57 + 96] = sub_2130fe23[address(arg1)][u].field_768
            mem[t] = _57
            t = t + 32
            u = u + 1
            continue 
        if sub_2130fe23[address(arg1)][idx].field_0 == sub_2130fe23[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if sub_2130fe23[address(arg1)][idx].field_1:
            if 31 >= sub_2130fe23[address(arg1)][idx].field_1:
                mem[_68 + 32] = 256 * sub_2130fe23[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_68 + 32] = sub_2130fe23[address(arg1)][idx].field_0
                t = _68 + 32
                u = sha3(mem[0])
                while _68 + sub_2130fe23[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_57] = _68
        mem[_57 + 32] = sub_2130fe23[address(arg1)][idx].field_256
        mem[_57 + 64] = sub_2130fe23[address(arg1)][idx].field_512
        mem[_57 + 96] = sub_2130fe23[address(arg1)][idx].field_768
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
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _176
                    t = _101
                    continue 
                mem[_103 + _105 + _132 + _156 + 32] = 0
                _180 = mem[64]
                mem[mem[64]] = _156 + _103 + _105 + _132 - mem[64]
                mem[64] = _156 + _103 + _105 + _132 + 32
                if idx == -1:
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
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _177
                t = _101
                continue 
            mem[_103 + _105 + _132 + _158 + 32] = 0
            _181 = mem[64]
            mem[mem[64]] = _158 + _103 + _105 + _132 - mem[64]
            mem[64] = _158 + _103 + _105 + _132 + 32
            if idx == -1:
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
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _178
                t = _101
                continue 
            mem[_103 + _105 + _134 + _157 + 32] = 0
            _182 = mem[64]
            mem[mem[64]] = _157 + _103 + _105 + _134 - mem[64]
            mem[64] = _157 + _103 + _105 + _134 + 32
            if idx == -1:
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
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _179
            t = _101
            continue 
        mem[_103 + _105 + _134 + _159 + 32] = 0
        _183 = mem[64]
        mem[mem[64]] = _159 + _103 + _105 + _134 - mem[64]
        mem[64] = _159 + _103 + _105 + _134 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _183
        t = _101
        continue 
    _100 = mem[64]
    mem[mem[64]] = 32
    _104 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_104)] = mem[s + 32 len ceil32(_104)]
    if ceil32(_104) <= _104:
        return 32, mem[mem[64] + 32 len ceil32(_104) + 32]
    mem[mem[64] + _104 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_104) + _100 + -mem[64] + 64
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0xf57dd5ba73203526c7a1dcd2842df5053e1b265e)
    delegate 0xf57dd5ba73203526c7a1dcd2842df5053e1b265e.0x732a2ccf with:
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
    mem[64] = ceil32(return_data.size) + (32 * sub_2130fe23[address(arg1)].field_0) + 128
    mem[ceil32(return_data.size) + 96] = sub_2130fe23[address(arg1)].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < sub_2130fe23[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        _59 = mem[64]
        mem[64] = mem[64] + 128
        if sub_2130fe23[address(arg1)][idx].field_0:
            if sub_2130fe23[address(arg1)][idx].field_0 == uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_64] = uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5
            if sub_2130fe23[address(arg1)][idx].field_0:
                if sub_2130fe23[address(arg1)][idx].field_0 == uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, sub_2130fe23[address(arg1)][idx].field_0):
                    if 31 >= uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5:
                        mem[_64 + 32] = 256 * sub_2130fe23[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_64 + 32] = sub_2130fe23[address(arg1)][idx].field_0
                        t = _64 + 32
                        u = sha3(mem[0])
                        while _64 + (uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_59] = _64
                mem[_59 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                mem[_59 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                mem[_59 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if sub_2130fe23[address(arg1)][idx].field_0 == sub_2130fe23[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not sub_2130fe23[address(arg1)][idx].field_1:
                mem[_59] = _64
                mem[_59 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                mem[_59 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                mem[_59 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= sub_2130fe23[address(arg1)][idx].field_1:
                mem[_64 + 32] = 256 * sub_2130fe23[address(arg1)][idx].field_8
                mem[_59] = _64
                mem[_59 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                mem[_59 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                mem[_59 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_64 + 32] = sub_2130fe23[address(arg1)][idx].field_0
            t = _64 + 32
            u = sha3(mem[0])
            while _64 + sub_2130fe23[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_59] = _64
            mem[_59 + 32] = sub_2130fe23[address(arg1)][u].field_256
            mem[_59 + 64] = sub_2130fe23[address(arg1)][u].field_512
            mem[_59 + 96] = sub_2130fe23[address(arg1)][u].field_768
            mem[t] = _59
            t = t + 32
            u = u + 1
            continue 
        if sub_2130fe23[address(arg1)][idx].field_0 == sub_2130fe23[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(sub_2130fe23[address(arg1)][idx].field_1) + 32
        mem[_66] = sub_2130fe23[address(arg1)][idx].field_1
        if sub_2130fe23[address(arg1)][idx].field_0:
            if sub_2130fe23[address(arg1)][idx].field_0 == uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, sub_2130fe23[address(arg1)][idx].field_0):
                mem[_59] = _66
                mem[_59 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                mem[_59 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                mem[_59 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5:
                mem[_66 + 32] = 256 * sub_2130fe23[address(arg1)][idx].field_8
                mem[_59] = _66
                mem[_59 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                mem[_59 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                mem[_59 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_66 + 32] = sub_2130fe23[address(arg1)][idx].field_0
            t = _66 + 32
            u = sha3(mem[0])
            while _66 + (uint255(sub_2130fe23[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_59] = _66
            mem[_59 + 32] = sub_2130fe23[address(arg1)][u].field_256
            mem[_59 + 64] = sub_2130fe23[address(arg1)][u].field_512
            mem[_59 + 96] = sub_2130fe23[address(arg1)][u].field_768
            mem[t] = _59
            t = t + 32
            u = u + 1
            continue 
        if sub_2130fe23[address(arg1)][idx].field_0 == sub_2130fe23[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if sub_2130fe23[address(arg1)][idx].field_1:
            if 31 >= sub_2130fe23[address(arg1)][idx].field_1:
                mem[_66 + 32] = 256 * sub_2130fe23[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_66 + 32] = sub_2130fe23[address(arg1)][idx].field_0
                t = _66 + 32
                u = sha3(mem[0])
                while _66 + sub_2130fe23[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_59] = _66
        mem[_59 + 32] = sub_2130fe23[address(arg1)][idx].field_256
        mem[_59 + 64] = sub_2130fe23[address(arg1)][idx].field_512
        mem[_59 + 96] = sub_2130fe23[address(arg1)][idx].field_768
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
                _113 = mem[s]
                t = 0
                while t < _113:
                    mem[t + _110 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_113) <= _113:
                    _209 = mem[_65]
                    s = 0
                    while s < _209:
                        mem[s + _110 + _113 + 32] = mem[s + _65 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_209) <= _209:
                        _361 = mem[_109]
                        s = 0
                        while s < _361:
                            mem[s + _110 + _113 + _209 + 32] = mem[s + _109 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_361) <= _361:
                            _497 = mem[64]
                            mem[mem[64]] = _361 + _110 + _113 + _209 - mem[64]
                            mem[64] = _361 + _110 + _113 + _209 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _497
                            t = _106
                            continue 
                        mem[_110 + _113 + _209 + _361 + 32] = 0
                        _503 = mem[64]
                        mem[mem[64]] = _361 + _110 + _113 + _209 - mem[64]
                        mem[64] = _361 + _110 + _113 + _209 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _503
                        t = _106
                        continue 
                    mem[_110 + _113 + _209 + 32] = 0
                    _365 = mem[_109]
                    s = 0
                    while s < _365:
                        mem[s + _110 + _113 + _209 + 32] = mem[s + _109 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_365) <= _365:
                        _498 = mem[64]
                        mem[mem[64]] = _365 + _110 + _113 + _209 - mem[64]
                        mem[64] = _365 + _110 + _113 + _209 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _498
                        t = _106
                        continue 
                    mem[_110 + _113 + _209 + _365 + 32] = 0
                    _504 = mem[64]
                    mem[mem[64]] = _365 + _110 + _113 + _209 - mem[64]
                    mem[64] = _365 + _110 + _113 + _209 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _504
                    t = _106
                    continue 
                mem[_110 + _113 + 32] = 0
                _213 = mem[_65]
                s = 0
                while s < _213:
                    mem[s + _110 + _113 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_213) <= _213:
                    _362 = mem[_109]
                    s = 0
                    while s < _362:
                        mem[s + _110 + _113 + _213 + 32] = mem[s + _109 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_362) <= _362:
                        _499 = mem[64]
                        mem[mem[64]] = _362 + _110 + _113 + _213 - mem[64]
                        mem[64] = _362 + _110 + _113 + _213 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _499
                        t = _106
                        continue 
                    mem[_110 + _113 + _213 + _362 + 32] = 0
                    _505 = mem[64]
                    mem[mem[64]] = _362 + _110 + _113 + _213 - mem[64]
                    mem[64] = _362 + _110 + _113 + _213 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _505
                    t = _106
                    continue 
                mem[_110 + _113 + _213 + 32] = 0
                _366 = mem[_109]
                s = 0
                while s < _366:
                    mem[s + _110 + _113 + _213 + 32] = mem[s + _109 + 32]
                    s = s + 32
                    continue 
                if ceil32(_366) <= _366:
                    _500 = mem[64]
                    mem[mem[64]] = _366 + _110 + _113 + _213 - mem[64]
                    mem[64] = _366 + _110 + _113 + _213 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _500
                    t = _106
                    continue 
                mem[_110 + _113 + _213 + _366 + 32] = 0
                _506 = mem[64]
                mem[mem[64]] = _366 + _110 + _113 + _213 - mem[64]
                mem[64] = _366 + _110 + _113 + _213 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _506
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
                _359 = mem[s]
                t = 0
                while t < _359:
                    mem[t + _355 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_359) <= _359:
                    _489 = mem[_65]
                    s = 0
                    while s < _489:
                        mem[s + _355 + _359 + 32] = mem[s + _65 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_489) <= _489:
                        _695 = mem[_208]
                        s = 0
                        while s < _695:
                            mem[s + _355 + _359 + _489 + 32] = mem[s + _208 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_695) <= _695:
                            _879 = mem[64]
                            mem[mem[64]] = _695 + _355 + _359 + _489 - mem[64]
                            mem[64] = _695 + _355 + _359 + _489 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _879
                            t = _106
                            continue 
                        mem[_355 + _359 + _489 + _695 + 32] = 0
                        _895 = mem[64]
                        mem[mem[64]] = _695 + _355 + _359 + _489 - mem[64]
                        mem[64] = _695 + _355 + _359 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _895
                        t = _106
                        continue 
                    mem[_355 + _359 + _489 + 32] = 0
                    _703 = mem[_208]
                    s = 0
                    while s < _703:
                        mem[s + _355 + _359 + _489 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_703) <= _703:
                        _880 = mem[64]
                        mem[mem[64]] = _703 + _355 + _359 + _489 - mem[64]
                        mem[64] = _703 + _355 + _359 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _880
                        t = _106
                        continue 
                    mem[_355 + _359 + _489 + _703 + 32] = 0
                    _896 = mem[64]
                    mem[mem[64]] = _703 + _355 + _359 + _489 - mem[64]
                    mem[64] = _703 + _355 + _359 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _896
                    t = _106
                    continue 
                mem[_355 + _359 + 32] = 0
                _495 = mem[_65]
                s = 0
                while s < _495:
                    mem[s + _355 + _359 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_495) <= _495:
                    _696 = mem[_208]
                    s = 0
                    while s < _696:
                        mem[s + _355 + _359 + _495 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_696) <= _696:
                        _881 = mem[64]
                        mem[mem[64]] = _696 + _355 + _359 + _495 - mem[64]
                        mem[64] = _696 + _355 + _359 + _495 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _881
                        t = _106
                        continue 
                    mem[_355 + _359 + _495 + _696 + 32] = 0
                    _897 = mem[64]
                    mem[mem[64]] = _696 + _355 + _359 + _495 - mem[64]
                    mem[64] = _696 + _355 + _359 + _495 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _897
                    t = _106
                    continue 
                mem[_355 + _359 + _495 + 32] = 0
                _704 = mem[_208]
                s = 0
                while s < _704:
                    mem[s + _355 + _359 + _495 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_704) <= _704:
                    _882 = mem[64]
                    mem[mem[64]] = _704 + _355 + _359 + _495 - mem[64]
                    mem[64] = _704 + _355 + _359 + _495 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _882
                    t = _106
                    continue 
                mem[_355 + _359 + _495 + _704 + 32] = 0
                _898 = mem[64]
                mem[mem[64]] = _704 + _355 + _359 + _495 - mem[64]
                mem[64] = _704 + _355 + _359 + _495 + 32
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
            _360 = mem[s]
            t = 0
            while t < _360:
                mem[t + _356 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_360) <= _360:
                _490 = mem[_65]
                s = 0
                while s < _490:
                    mem[s + _356 + _360 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_490) <= _490:
                    _697 = mem[_208]
                    s = 0
                    while s < _697:
                        mem[s + _356 + _360 + _490 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _883 = mem[64]
                        mem[mem[64]] = _697 + _356 + _360 + _490 - mem[64]
                        mem[64] = _697 + _356 + _360 + _490 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _883
                        t = _106
                        continue 
                    mem[_356 + _360 + _490 + _697 + 32] = 0
                    _899 = mem[64]
                    mem[mem[64]] = _697 + _356 + _360 + _490 - mem[64]
                    mem[64] = _697 + _356 + _360 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _899
                    t = _106
                    continue 
                mem[_356 + _360 + _490 + 32] = 0
                _705 = mem[_208]
                s = 0
                while s < _705:
                    mem[s + _356 + _360 + _490 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_705) <= _705:
                    _884 = mem[64]
                    mem[mem[64]] = _705 + _356 + _360 + _490 - mem[64]
                    mem[64] = _705 + _356 + _360 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _884
                    t = _106
                    continue 
                mem[_356 + _360 + _490 + _705 + 32] = 0
                _900 = mem[64]
                mem[mem[64]] = _705 + _356 + _360 + _490 - mem[64]
                mem[64] = _705 + _356 + _360 + _490 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _900
                t = _106
                continue 
            mem[_356 + _360 + 32] = 0
            _496 = mem[_65]
            s = 0
            while s < _496:
                mem[s + _356 + _360 + 32] = mem[s + _65 + 32]
                s = s + 32
                continue 
            if ceil32(_496) <= _496:
                _698 = mem[_208]
                s = 0
                while s < _698:
                    mem[s + _356 + _360 + _496 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _885 = mem[64]
                    mem[mem[64]] = _698 + _356 + _360 + _496 - mem[64]
                    mem[64] = _698 + _356 + _360 + _496 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _885
                    t = _106
                    continue 
                mem[_356 + _360 + _496 + _698 + 32] = 0
                _901 = mem[64]
                mem[mem[64]] = _698 + _356 + _360 + _496 - mem[64]
                mem[64] = _698 + _356 + _360 + _496 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _901
                t = _106
                continue 
            mem[_356 + _360 + _496 + 32] = 0
            _706 = mem[_208]
            s = 0
            while s < _706:
                mem[s + _356 + _360 + _496 + 32] = mem[s + _208 + 32]
                s = s + 32
                continue 
            if ceil32(_706) <= _706:
                _886 = mem[64]
                mem[mem[64]] = _706 + _356 + _360 + _496 - mem[64]
                mem[64] = _706 + _356 + _360 + _496 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _886
                t = _106
                continue 
            mem[_356 + _360 + _496 + _706 + 32] = 0
            _902 = mem[64]
            mem[mem[64]] = _706 + _356 + _360 + _496 - mem[64]
            mem[64] = _706 + _356 + _360 + _496 + 32
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
                _363 = mem[64]
                mem[64] = mem[64] + 64
                mem[_363] = 1
                mem[_363 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _367 = mem[64]
                _370 = mem[t]
                u = 0
                while u < _370:
                    mem[u + _367 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_370) <= _370:
                    _487 = mem[_206]
                    t = 0
                    while t < _487:
                        mem[t + _367 + _370 + 32] = mem[t + _206 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_487) <= _487:
                        _689 = mem[_363]
                        s = 0
                        while s < _689:
                            mem[s + _367 + _370 + _487 + 32] = mem[s + _363 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_689) <= _689:
                            _869 = mem[64]
                            mem[mem[64]] = _689 + _367 + _370 + _487 - mem[64]
                            mem[64] = _689 + _367 + _370 + _487 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _869
                            u = _350
                            continue 
                        mem[_367 + _370 + _487 + _689 + 32] = 0
                        _887 = mem[64]
                        mem[mem[64]] = _689 + _367 + _370 + _487 - mem[64]
                        mem[64] = _689 + _367 + _370 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _887
                        u = _350
                        continue 
                    mem[_367 + _370 + _487 + 32] = 0
                    _699 = mem[_363]
                    s = 0
                    while s < _699:
                        mem[s + _367 + _370 + _487 + 32] = mem[s + _363 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_699) <= _699:
                        _870 = mem[64]
                        mem[mem[64]] = _699 + _367 + _370 + _487 - mem[64]
                        mem[64] = _699 + _367 + _370 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _870
                        u = _350
                        continue 
                    mem[_367 + _370 + _487 + _699 + 32] = 0
                    _888 = mem[64]
                    mem[mem[64]] = _699 + _367 + _370 + _487 - mem[64]
                    mem[64] = _699 + _367 + _370 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _888
                    u = _350
                    continue 
                mem[_367 + _370 + 32] = 0
                _492 = mem[_206]
                s = 0
                while s < _492:
                    mem[s + _367 + _370 + 32] = mem[s + _206 + 32]
                    s = s + 32
                    continue 
                if ceil32(_492) <= _492:
                    _690 = mem[_363]
                    s = 0
                    while s < _690:
                        mem[s + _367 + _370 + _492 + 32] = mem[s + _363 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _871 = mem[64]
                        mem[mem[64]] = _690 + _367 + _370 + _492 - mem[64]
                        mem[64] = _690 + _367 + _370 + _492 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _871
                        u = _350
                        continue 
                    mem[_367 + _370 + _492 + _690 + 32] = 0
                    _889 = mem[64]
                    mem[mem[64]] = _690 + _367 + _370 + _492 - mem[64]
                    mem[64] = _690 + _367 + _370 + _492 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _889
                    u = _350
                    continue 
                mem[_367 + _370 + _492 + 32] = 0
                _700 = mem[_363]
                s = 0
                while s < _700:
                    mem[s + _367 + _370 + _492 + 32] = mem[s + _363 + 32]
                    s = s + 32
                    continue 
                if ceil32(_700) <= _700:
                    _872 = mem[64]
                    mem[mem[64]] = _700 + _367 + _370 + _492 - mem[64]
                    mem[64] = _700 + _367 + _370 + _492 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _872
                    u = _350
                    continue 
                mem[_367 + _370 + _492 + _700 + 32] = 0
                _890 = mem[64]
                mem[mem[64]] = _700 + _367 + _370 + _492 - mem[64]
                mem[64] = _700 + _367 + _370 + _492 + 32
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
        _357 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_357)] = mem[t + 32 len ceil32(_357)]
        if ceil32(_357) <= _357:
            return 32, mem[mem[64] + 32 len ceil32(_357) + 32]
        mem[mem[64] + _357 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_357) + _349 + -mem[64] + 64
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
            _372 = mem[t]
            u = 0
            while u < _372:
                mem[u + _368 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_372) <= _372:
                _488 = mem[_207]
                t = 0
                while t < _488:
                    mem[t + _368 + _372 + 32] = mem[t + _207 + 32]
                    t = t + 32
                    continue 
                if ceil32(_488) <= _488:
                    _693 = mem[_364]
                    s = 0
                    while s < _693:
                        mem[s + _368 + _372 + _488 + 32] = mem[s + _364 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _875 = mem[64]
                        mem[mem[64]] = _693 + _368 + _372 + _488 - mem[64]
                        mem[64] = _693 + _368 + _372 + _488 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _875
                        u = _353
                        continue 
                    mem[_368 + _372 + _488 + _693 + 32] = 0
                    _891 = mem[64]
                    mem[mem[64]] = _693 + _368 + _372 + _488 - mem[64]
                    mem[64] = _693 + _368 + _372 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _891
                    u = _353
                    continue 
                mem[_368 + _372 + _488 + 32] = 0
                _701 = mem[_364]
                s = 0
                while s < _701:
                    mem[s + _368 + _372 + _488 + 32] = mem[s + _364 + 32]
                    s = s + 32
                    continue 
                if ceil32(_701) <= _701:
                    _876 = mem[64]
                    mem[mem[64]] = _701 + _368 + _372 + _488 - mem[64]
                    mem[64] = _701 + _368 + _372 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _876
                    u = _353
                    continue 
                mem[_368 + _372 + _488 + _701 + 32] = 0
                _892 = mem[64]
                mem[mem[64]] = _701 + _368 + _372 + _488 - mem[64]
                mem[64] = _701 + _368 + _372 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _892
                u = _353
                continue 
            mem[_368 + _372 + 32] = 0
            _494 = mem[_207]
            s = 0
            while s < _494:
                mem[s + _368 + _372 + 32] = mem[s + _207 + 32]
                s = s + 32
                continue 
            if ceil32(_494) <= _494:
                _694 = mem[_364]
                s = 0
                while s < _694:
                    mem[s + _368 + _372 + _494 + 32] = mem[s + _364 + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _877 = mem[64]
                    mem[mem[64]] = _694 + _368 + _372 + _494 - mem[64]
                    mem[64] = _694 + _368 + _372 + _494 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _877
                    u = _353
                    continue 
                mem[_368 + _372 + _494 + _694 + 32] = 0
                _893 = mem[64]
                mem[mem[64]] = _694 + _368 + _372 + _494 - mem[64]
                mem[64] = _694 + _368 + _372 + _494 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _893
                u = _353
                continue 
            mem[_368 + _372 + _494 + 32] = 0
            _702 = mem[_364]
            s = 0
            while s < _702:
                mem[s + _368 + _372 + _494 + 32] = mem[s + _364 + 32]
                s = s + 32
                continue 
            if ceil32(_702) <= _702:
                _878 = mem[64]
                mem[mem[64]] = _702 + _368 + _372 + _494 - mem[64]
                mem[64] = _702 + _368 + _372 + _494 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _878
                u = _353
                continue 
            mem[_368 + _372 + _494 + _702 + 32] = 0
            _894 = mem[64]
            mem[mem[64]] = _702 + _368 + _372 + _494 - mem[64]
            mem[64] = _702 + _368 + _372 + _494 + 32
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
    _358 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_358)] = mem[t + 32 len ceil32(_358)]
    if ceil32(_358) > _358:
        mem[mem[64] + _358 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_358) + 32]
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0xf57dd5ba73203526c7a1dcd2842df5053e1b265e)
    delegate 0xf57dd5ba73203526c7a1dcd2842df5053e1b265e.0x732a2ccf with:
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
    mem[64] = ceil32(return_data.size) + (32 * sub_2130fe23[address(arg1)].field_0) + 128
    mem[ceil32(return_data.size) + 96] = sub_2130fe23[address(arg1)].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < sub_2130fe23[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        _59 = mem[64]
        mem[64] = mem[64] + 128
        if sub_2130fe23[address(arg1)][idx].field_0:
            if sub_2130fe23[address(arg1)][idx].field_0 == uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_64] = uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5
            if sub_2130fe23[address(arg1)][idx].field_0:
                if sub_2130fe23[address(arg1)][idx].field_0 == uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, sub_2130fe23[address(arg1)][idx].field_0):
                    if 31 >= uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5:
                        mem[_64 + 32] = 256 * sub_2130fe23[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_64 + 32] = sub_2130fe23[address(arg1)][idx].field_0
                        t = _64 + 32
                        u = sha3(mem[0])
                        while _64 + (uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_59] = _64
                mem[_59 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                mem[_59 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                mem[_59 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if sub_2130fe23[address(arg1)][idx].field_0 == sub_2130fe23[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not sub_2130fe23[address(arg1)][idx].field_1:
                mem[_59] = _64
                mem[_59 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                mem[_59 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                mem[_59 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= sub_2130fe23[address(arg1)][idx].field_1:
                mem[_64 + 32] = 256 * sub_2130fe23[address(arg1)][idx].field_8
                mem[_59] = _64
                mem[_59 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                mem[_59 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                mem[_59 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_64 + 32] = sub_2130fe23[address(arg1)][idx].field_0
            t = _64 + 32
            u = sha3(mem[0])
            while _64 + sub_2130fe23[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_59] = _64
            mem[_59 + 32] = sub_2130fe23[address(arg1)][u].field_256
            mem[_59 + 64] = sub_2130fe23[address(arg1)][u].field_512
            mem[_59 + 96] = sub_2130fe23[address(arg1)][u].field_768
            mem[t] = _59
            t = t + 32
            u = u + 1
            continue 
        if sub_2130fe23[address(arg1)][idx].field_0 == sub_2130fe23[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(sub_2130fe23[address(arg1)][idx].field_1) + 32
        mem[_66] = sub_2130fe23[address(arg1)][idx].field_1
        if sub_2130fe23[address(arg1)][idx].field_0:
            if sub_2130fe23[address(arg1)][idx].field_0 == uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, sub_2130fe23[address(arg1)][idx].field_0):
                mem[_59] = _66
                mem[_59 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                mem[_59 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                mem[_59 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5:
                mem[_66 + 32] = 256 * sub_2130fe23[address(arg1)][idx].field_8
                mem[_59] = _66
                mem[_59 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                mem[_59 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                mem[_59 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_66 + 32] = sub_2130fe23[address(arg1)][idx].field_0
            t = _66 + 32
            u = sha3(mem[0])
            while _66 + (uint255(sub_2130fe23[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_59] = _66
            mem[_59 + 32] = sub_2130fe23[address(arg1)][u].field_256
            mem[_59 + 64] = sub_2130fe23[address(arg1)][u].field_512
            mem[_59 + 96] = sub_2130fe23[address(arg1)][u].field_768
            mem[t] = _59
            t = t + 32
            u = u + 1
            continue 
        if sub_2130fe23[address(arg1)][idx].field_0 == sub_2130fe23[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if sub_2130fe23[address(arg1)][idx].field_1:
            if 31 >= sub_2130fe23[address(arg1)][idx].field_1:
                mem[_66 + 32] = 256 * sub_2130fe23[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_66 + 32] = sub_2130fe23[address(arg1)][idx].field_0
                t = _66 + 32
                u = sha3(mem[0])
                while _66 + sub_2130fe23[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_59] = _66
        mem[_59 + 32] = sub_2130fe23[address(arg1)][idx].field_256
        mem[_59 + 64] = sub_2130fe23[address(arg1)][idx].field_512
        mem[_59 + 96] = sub_2130fe23[address(arg1)][idx].field_768
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
                _113 = mem[s]
                t = 0
                while t < _113:
                    mem[t + _110 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_113) <= _113:
                    _209 = mem[_65]
                    s = 0
                    while s < _209:
                        mem[s + _110 + _113 + 32] = mem[s + _65 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_209) <= _209:
                        _361 = mem[_109]
                        s = 0
                        while s < _361:
                            mem[s + _110 + _113 + _209 + 32] = mem[s + _109 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_361) <= _361:
                            _497 = mem[64]
                            mem[mem[64]] = _361 + _110 + _113 + _209 - mem[64]
                            mem[64] = _361 + _110 + _113 + _209 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _497
                            t = _106
                            continue 
                        mem[_110 + _113 + _209 + _361 + 32] = 0
                        _503 = mem[64]
                        mem[mem[64]] = _361 + _110 + _113 + _209 - mem[64]
                        mem[64] = _361 + _110 + _113 + _209 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _503
                        t = _106
                        continue 
                    mem[_110 + _113 + _209 + 32] = 0
                    _365 = mem[_109]
                    s = 0
                    while s < _365:
                        mem[s + _110 + _113 + _209 + 32] = mem[s + _109 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_365) <= _365:
                        _498 = mem[64]
                        mem[mem[64]] = _365 + _110 + _113 + _209 - mem[64]
                        mem[64] = _365 + _110 + _113 + _209 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _498
                        t = _106
                        continue 
                    mem[_110 + _113 + _209 + _365 + 32] = 0
                    _504 = mem[64]
                    mem[mem[64]] = _365 + _110 + _113 + _209 - mem[64]
                    mem[64] = _365 + _110 + _113 + _209 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _504
                    t = _106
                    continue 
                mem[_110 + _113 + 32] = 0
                _213 = mem[_65]
                s = 0
                while s < _213:
                    mem[s + _110 + _113 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_213) <= _213:
                    _362 = mem[_109]
                    s = 0
                    while s < _362:
                        mem[s + _110 + _113 + _213 + 32] = mem[s + _109 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_362) <= _362:
                        _499 = mem[64]
                        mem[mem[64]] = _362 + _110 + _113 + _213 - mem[64]
                        mem[64] = _362 + _110 + _113 + _213 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _499
                        t = _106
                        continue 
                    mem[_110 + _113 + _213 + _362 + 32] = 0
                    _505 = mem[64]
                    mem[mem[64]] = _362 + _110 + _113 + _213 - mem[64]
                    mem[64] = _362 + _110 + _113 + _213 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _505
                    t = _106
                    continue 
                mem[_110 + _113 + _213 + 32] = 0
                _366 = mem[_109]
                s = 0
                while s < _366:
                    mem[s + _110 + _113 + _213 + 32] = mem[s + _109 + 32]
                    s = s + 32
                    continue 
                if ceil32(_366) <= _366:
                    _500 = mem[64]
                    mem[mem[64]] = _366 + _110 + _113 + _213 - mem[64]
                    mem[64] = _366 + _110 + _113 + _213 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _500
                    t = _106
                    continue 
                mem[_110 + _113 + _213 + _366 + 32] = 0
                _506 = mem[64]
                mem[mem[64]] = _366 + _110 + _113 + _213 - mem[64]
                mem[64] = _366 + _110 + _113 + _213 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _506
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
                _359 = mem[s]
                t = 0
                while t < _359:
                    mem[t + _355 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_359) <= _359:
                    _489 = mem[_65]
                    s = 0
                    while s < _489:
                        mem[s + _355 + _359 + 32] = mem[s + _65 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_489) <= _489:
                        _695 = mem[_208]
                        s = 0
                        while s < _695:
                            mem[s + _355 + _359 + _489 + 32] = mem[s + _208 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_695) <= _695:
                            _879 = mem[64]
                            mem[mem[64]] = _695 + _355 + _359 + _489 - mem[64]
                            mem[64] = _695 + _355 + _359 + _489 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _879
                            t = _106
                            continue 
                        mem[_355 + _359 + _489 + _695 + 32] = 0
                        _895 = mem[64]
                        mem[mem[64]] = _695 + _355 + _359 + _489 - mem[64]
                        mem[64] = _695 + _355 + _359 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _895
                        t = _106
                        continue 
                    mem[_355 + _359 + _489 + 32] = 0
                    _703 = mem[_208]
                    s = 0
                    while s < _703:
                        mem[s + _355 + _359 + _489 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_703) <= _703:
                        _880 = mem[64]
                        mem[mem[64]] = _703 + _355 + _359 + _489 - mem[64]
                        mem[64] = _703 + _355 + _359 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _880
                        t = _106
                        continue 
                    mem[_355 + _359 + _489 + _703 + 32] = 0
                    _896 = mem[64]
                    mem[mem[64]] = _703 + _355 + _359 + _489 - mem[64]
                    mem[64] = _703 + _355 + _359 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _896
                    t = _106
                    continue 
                mem[_355 + _359 + 32] = 0
                _495 = mem[_65]
                s = 0
                while s < _495:
                    mem[s + _355 + _359 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_495) <= _495:
                    _696 = mem[_208]
                    s = 0
                    while s < _696:
                        mem[s + _355 + _359 + _495 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_696) <= _696:
                        _881 = mem[64]
                        mem[mem[64]] = _696 + _355 + _359 + _495 - mem[64]
                        mem[64] = _696 + _355 + _359 + _495 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _881
                        t = _106
                        continue 
                    mem[_355 + _359 + _495 + _696 + 32] = 0
                    _897 = mem[64]
                    mem[mem[64]] = _696 + _355 + _359 + _495 - mem[64]
                    mem[64] = _696 + _355 + _359 + _495 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _897
                    t = _106
                    continue 
                mem[_355 + _359 + _495 + 32] = 0
                _704 = mem[_208]
                s = 0
                while s < _704:
                    mem[s + _355 + _359 + _495 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_704) <= _704:
                    _882 = mem[64]
                    mem[mem[64]] = _704 + _355 + _359 + _495 - mem[64]
                    mem[64] = _704 + _355 + _359 + _495 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _882
                    t = _106
                    continue 
                mem[_355 + _359 + _495 + _704 + 32] = 0
                _898 = mem[64]
                mem[mem[64]] = _704 + _355 + _359 + _495 - mem[64]
                mem[64] = _704 + _355 + _359 + _495 + 32
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
            _360 = mem[s]
            t = 0
            while t < _360:
                mem[t + _356 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_360) <= _360:
                _490 = mem[_65]
                s = 0
                while s < _490:
                    mem[s + _356 + _360 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_490) <= _490:
                    _697 = mem[_208]
                    s = 0
                    while s < _697:
                        mem[s + _356 + _360 + _490 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _883 = mem[64]
                        mem[mem[64]] = _697 + _356 + _360 + _490 - mem[64]
                        mem[64] = _697 + _356 + _360 + _490 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _883
                        t = _106
                        continue 
                    mem[_356 + _360 + _490 + _697 + 32] = 0
                    _899 = mem[64]
                    mem[mem[64]] = _697 + _356 + _360 + _490 - mem[64]
                    mem[64] = _697 + _356 + _360 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _899
                    t = _106
                    continue 
                mem[_356 + _360 + _490 + 32] = 0
                _705 = mem[_208]
                s = 0
                while s < _705:
                    mem[s + _356 + _360 + _490 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_705) <= _705:
                    _884 = mem[64]
                    mem[mem[64]] = _705 + _356 + _360 + _490 - mem[64]
                    mem[64] = _705 + _356 + _360 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _884
                    t = _106
                    continue 
                mem[_356 + _360 + _490 + _705 + 32] = 0
                _900 = mem[64]
                mem[mem[64]] = _705 + _356 + _360 + _490 - mem[64]
                mem[64] = _705 + _356 + _360 + _490 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _900
                t = _106
                continue 
            mem[_356 + _360 + 32] = 0
            _496 = mem[_65]
            s = 0
            while s < _496:
                mem[s + _356 + _360 + 32] = mem[s + _65 + 32]
                s = s + 32
                continue 
            if ceil32(_496) <= _496:
                _698 = mem[_208]
                s = 0
                while s < _698:
                    mem[s + _356 + _360 + _496 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _885 = mem[64]
                    mem[mem[64]] = _698 + _356 + _360 + _496 - mem[64]
                    mem[64] = _698 + _356 + _360 + _496 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _885
                    t = _106
                    continue 
                mem[_356 + _360 + _496 + _698 + 32] = 0
                _901 = mem[64]
                mem[mem[64]] = _698 + _356 + _360 + _496 - mem[64]
                mem[64] = _698 + _356 + _360 + _496 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _901
                t = _106
                continue 
            mem[_356 + _360 + _496 + 32] = 0
            _706 = mem[_208]
            s = 0
            while s < _706:
                mem[s + _356 + _360 + _496 + 32] = mem[s + _208 + 32]
                s = s + 32
                continue 
            if ceil32(_706) <= _706:
                _886 = mem[64]
                mem[mem[64]] = _706 + _356 + _360 + _496 - mem[64]
                mem[64] = _706 + _356 + _360 + _496 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _886
                t = _106
                continue 
            mem[_356 + _360 + _496 + _706 + 32] = 0
            _902 = mem[64]
            mem[mem[64]] = _706 + _356 + _360 + _496 - mem[64]
            mem[64] = _706 + _356 + _360 + _496 + 32
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
                _363 = mem[64]
                mem[64] = mem[64] + 64
                mem[_363] = 1
                mem[_363 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _367 = mem[64]
                _370 = mem[t]
                u = 0
                while u < _370:
                    mem[u + _367 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_370) <= _370:
                    _487 = mem[_206]
                    t = 0
                    while t < _487:
                        mem[t + _367 + _370 + 32] = mem[t + _206 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_487) <= _487:
                        _689 = mem[_363]
                        s = 0
                        while s < _689:
                            mem[s + _367 + _370 + _487 + 32] = mem[s + _363 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_689) <= _689:
                            _869 = mem[64]
                            mem[mem[64]] = _689 + _367 + _370 + _487 - mem[64]
                            mem[64] = _689 + _367 + _370 + _487 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _869
                            u = _350
                            continue 
                        mem[_367 + _370 + _487 + _689 + 32] = 0
                        _887 = mem[64]
                        mem[mem[64]] = _689 + _367 + _370 + _487 - mem[64]
                        mem[64] = _689 + _367 + _370 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _887
                        u = _350
                        continue 
                    mem[_367 + _370 + _487 + 32] = 0
                    _699 = mem[_363]
                    s = 0
                    while s < _699:
                        mem[s + _367 + _370 + _487 + 32] = mem[s + _363 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_699) <= _699:
                        _870 = mem[64]
                        mem[mem[64]] = _699 + _367 + _370 + _487 - mem[64]
                        mem[64] = _699 + _367 + _370 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _870
                        u = _350
                        continue 
                    mem[_367 + _370 + _487 + _699 + 32] = 0
                    _888 = mem[64]
                    mem[mem[64]] = _699 + _367 + _370 + _487 - mem[64]
                    mem[64] = _699 + _367 + _370 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _888
                    u = _350
                    continue 
                mem[_367 + _370 + 32] = 0
                _492 = mem[_206]
                s = 0
                while s < _492:
                    mem[s + _367 + _370 + 32] = mem[s + _206 + 32]
                    s = s + 32
                    continue 
                if ceil32(_492) <= _492:
                    _690 = mem[_363]
                    s = 0
                    while s < _690:
                        mem[s + _367 + _370 + _492 + 32] = mem[s + _363 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _871 = mem[64]
                        mem[mem[64]] = _690 + _367 + _370 + _492 - mem[64]
                        mem[64] = _690 + _367 + _370 + _492 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _871
                        u = _350
                        continue 
                    mem[_367 + _370 + _492 + _690 + 32] = 0
                    _889 = mem[64]
                    mem[mem[64]] = _690 + _367 + _370 + _492 - mem[64]
                    mem[64] = _690 + _367 + _370 + _492 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _889
                    u = _350
                    continue 
                mem[_367 + _370 + _492 + 32] = 0
                _700 = mem[_363]
                s = 0
                while s < _700:
                    mem[s + _367 + _370 + _492 + 32] = mem[s + _363 + 32]
                    s = s + 32
                    continue 
                if ceil32(_700) <= _700:
                    _872 = mem[64]
                    mem[mem[64]] = _700 + _367 + _370 + _492 - mem[64]
                    mem[64] = _700 + _367 + _370 + _492 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _872
                    u = _350
                    continue 
                mem[_367 + _370 + _492 + _700 + 32] = 0
                _890 = mem[64]
                mem[mem[64]] = _700 + _367 + _370 + _492 - mem[64]
                mem[64] = _700 + _367 + _370 + _492 + 32
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
        _357 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_357)] = mem[t + 32 len ceil32(_357)]
        if ceil32(_357) <= _357:
            return 32, mem[mem[64] + 32 len ceil32(_357) + 32]
        mem[mem[64] + _357 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_357) + _349 + -mem[64] + 64
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
            _372 = mem[t]
            u = 0
            while u < _372:
                mem[u + _368 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_372) <= _372:
                _488 = mem[_207]
                t = 0
                while t < _488:
                    mem[t + _368 + _372 + 32] = mem[t + _207 + 32]
                    t = t + 32
                    continue 
                if ceil32(_488) <= _488:
                    _693 = mem[_364]
                    s = 0
                    while s < _693:
                        mem[s + _368 + _372 + _488 + 32] = mem[s + _364 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _875 = mem[64]
                        mem[mem[64]] = _693 + _368 + _372 + _488 - mem[64]
                        mem[64] = _693 + _368 + _372 + _488 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _875
                        u = _353
                        continue 
                    mem[_368 + _372 + _488 + _693 + 32] = 0
                    _891 = mem[64]
                    mem[mem[64]] = _693 + _368 + _372 + _488 - mem[64]
                    mem[64] = _693 + _368 + _372 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _891
                    u = _353
                    continue 
                mem[_368 + _372 + _488 + 32] = 0
                _701 = mem[_364]
                s = 0
                while s < _701:
                    mem[s + _368 + _372 + _488 + 32] = mem[s + _364 + 32]
                    s = s + 32
                    continue 
                if ceil32(_701) <= _701:
                    _876 = mem[64]
                    mem[mem[64]] = _701 + _368 + _372 + _488 - mem[64]
                    mem[64] = _701 + _368 + _372 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _876
                    u = _353
                    continue 
                mem[_368 + _372 + _488 + _701 + 32] = 0
                _892 = mem[64]
                mem[mem[64]] = _701 + _368 + _372 + _488 - mem[64]
                mem[64] = _701 + _368 + _372 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _892
                u = _353
                continue 
            mem[_368 + _372 + 32] = 0
            _494 = mem[_207]
            s = 0
            while s < _494:
                mem[s + _368 + _372 + 32] = mem[s + _207 + 32]
                s = s + 32
                continue 
            if ceil32(_494) <= _494:
                _694 = mem[_364]
                s = 0
                while s < _694:
                    mem[s + _368 + _372 + _494 + 32] = mem[s + _364 + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _877 = mem[64]
                    mem[mem[64]] = _694 + _368 + _372 + _494 - mem[64]
                    mem[64] = _694 + _368 + _372 + _494 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _877
                    u = _353
                    continue 
                mem[_368 + _372 + _494 + _694 + 32] = 0
                _893 = mem[64]
                mem[mem[64]] = _694 + _368 + _372 + _494 - mem[64]
                mem[64] = _694 + _368 + _372 + _494 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _893
                u = _353
                continue 
            mem[_368 + _372 + _494 + 32] = 0
            _702 = mem[_364]
            s = 0
            while s < _702:
                mem[s + _368 + _372 + _494 + 32] = mem[s + _364 + 32]
                s = s + 32
                continue 
            if ceil32(_702) <= _702:
                _878 = mem[64]
                mem[mem[64]] = _702 + _368 + _372 + _494 - mem[64]
                mem[64] = _702 + _368 + _372 + _494 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _878
                u = _353
                continue 
            mem[_368 + _372 + _494 + _702 + 32] = 0
            _894 = mem[64]
            mem[mem[64]] = _702 + _368 + _372 + _494 - mem[64]
            mem[64] = _702 + _368 + _372 + _494 + 32
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
    _358 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_358)] = mem[t + 32 len ceil32(_358)]
    if ceil32(_358) > _358:
        mem[mem[64] + _358 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_358) + 32]
}

function _getRewardAmountOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 4
    idx = 0
    s = 0
    while idx < sub_2130fe23[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        _521 = mem[64]
        mem[64] = mem[64] + 128
        if sub_2130fe23[address(arg1)][idx].field_0:
            if sub_2130fe23[address(arg1)][idx].field_0 == uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _522 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_522] = uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5
            if sub_2130fe23[address(arg1)][idx].field_0:
                if sub_2130fe23[address(arg1)][idx].field_0 == uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, sub_2130fe23[address(arg1)][idx].field_0):
                    mem[_521] = _522
                    mem[_521 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                    mem[_521 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                    mem[_521 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                    if sub_2130fe23[address(arg1)][idx].field_512:
                        _530 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_530] = 30
                        mem[_530 + 32] = 'SafeMath: subtraction overflow'
                        if sub_2130fe23[address(arg1)][idx].field_512 > block.timestamp:
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
                        if block.timestamp < sub_2130fe23[address(arg1)][idx].field_512:
                            revert with 0, 17
                        _581 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_581] = 26
                        mem[_581 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _602 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _602 + 68] = mem[idx + _581 + 32]
                                idx = idx + 32
                                continue 
                            mem[_602 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _602 + -mem[64] + 100
                        if 0 > !(block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime):
                            revert with 0, 17
                        if block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > !sub_2130fe23[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if sub_2130fe23[address(arg1)][idx].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !sub_2130fe23[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + sub_2130fe23[address(arg1)][idx].field_768
                            continue 
                        if rewardPerNode and block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                            revert with 0, 17
                        if not rewardPerNode:
                            revert with 0, 18
                        if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > !sub_2130fe23[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > !((rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768
                        continue 
                    _572 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_572] = 30
                    mem[_572 + 32] = 'SafeMath: subtraction overflow'
                    if sub_2130fe23[address(arg1)][idx].field_256 > block.timestamp:
                        _592 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _592 + 68] = mem[idx + _572 + 32]
                            idx = idx + 32
                            continue 
                        mem[_592 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _592 + -mem[64] + 100
                    if block.timestamp < sub_2130fe23[address(arg1)][idx].field_256:
                        revert with 0, 17
                    _684 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_684] = 26
                    mem[_684 + 32] = 'SafeMath: division by zero'
                    if not claimTime:
                        _712 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _712 + 68] = mem[idx + _684 + 32]
                            idx = idx + 32
                            continue 
                        mem[_712 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _712 + -mem[64] + 100
                else:
                    if 31 >= uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5:
                        mem[_522 + 32] = 256 * sub_2130fe23[address(arg1)][idx].field_8
                        mem[_521] = _522
                        mem[_521 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                        mem[_521 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                        mem[_521 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                        if sub_2130fe23[address(arg1)][idx].field_512:
                            _540 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_540] = 30
                            mem[_540 + 32] = 'SafeMath: subtraction overflow'
                            if sub_2130fe23[address(arg1)][idx].field_512 > block.timestamp:
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
                            if block.timestamp < sub_2130fe23[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _606 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_606] = 26
                            mem[_606 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _636 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _636 + 68] = mem[idx + _606 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_636 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _636 + -mem[64] + 100
                            if 0 > !(block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !sub_2130fe23[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if sub_2130fe23[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !sub_2130fe23[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + sub_2130fe23[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > !sub_2130fe23[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768
                            continue 
                        _594 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_594] = 30
                        mem[_594 + 32] = 'SafeMath: subtraction overflow'
                        if sub_2130fe23[address(arg1)][idx].field_256 > block.timestamp:
                            _620 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _620 + 68] = mem[idx + _594 + 32]
                                idx = idx + 32
                                continue 
                            mem[_620 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _620 + -mem[64] + 100
                        if block.timestamp < sub_2130fe23[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _715 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_715] = 26
                        mem[_715 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _741 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _741 + 68] = mem[idx + _715 + 32]
                                idx = idx + 32
                                continue 
                            mem[_741 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _741 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_522 + 32] = sub_2130fe23[address(arg1)][idx].field_0
                        t = _522 + 32
                        u = sha3(mem[0])
                        while _522 + (uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_521] = _522
                        mem[_521 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                        mem[_521 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                        mem[_521 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                        if sub_2130fe23[address(arg1)][idx].field_512:
                            _1104 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1104] = 30
                            mem[_1104 + 32] = 'SafeMath: subtraction overflow'
                            if sub_2130fe23[address(arg1)][idx].field_512 > block.timestamp:
                                _1136 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1136 + 68] = mem[idx + _1104 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1136 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1136 + -mem[64] + 100
                            if block.timestamp < sub_2130fe23[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1156 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1156] = 26
                            mem[_1156 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1168 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1168 + 68] = mem[idx + _1156 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1168 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1168 + -mem[64] + 100
                            if 0 > !(block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !sub_2130fe23[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if sub_2130fe23[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !sub_2130fe23[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + sub_2130fe23[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > !sub_2130fe23[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768
                            continue 
                        _1152 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1152] = 30
                        mem[_1152 + 32] = 'SafeMath: subtraction overflow'
                        if sub_2130fe23[address(arg1)][idx].field_256 > block.timestamp:
                            _1161 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1161 + 68] = mem[idx + _1152 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1161 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1161 + -mem[64] + 100
                        if block.timestamp < sub_2130fe23[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1192 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1192] = 26
                        mem[_1192 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1201 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1201 + 68] = mem[idx + _1192 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1201 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1201 + -mem[64] + 100
            else:
                if sub_2130fe23[address(arg1)][idx].field_0 == sub_2130fe23[address(arg1)][idx].field_1 < 32:
                    revert with 0, 34
                if not sub_2130fe23[address(arg1)][idx].field_1:
                    mem[_521] = _522
                    mem[_521 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                    mem[_521 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                    mem[_521 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                    if sub_2130fe23[address(arg1)][idx].field_512:
                        _534 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_534] = 30
                        mem[_534 + 32] = 'SafeMath: subtraction overflow'
                        if sub_2130fe23[address(arg1)][idx].field_512 > block.timestamp:
                            _544 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _544 + 68] = mem[idx + _534 + 32]
                                idx = idx + 32
                                continue 
                            mem[_544 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _544 + -mem[64] + 100
                        if block.timestamp < sub_2130fe23[address(arg1)][idx].field_512:
                            revert with 0, 17
                        _595 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_595] = 26
                        mem[_595 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _621 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _621 + 68] = mem[idx + _595 + 32]
                                idx = idx + 32
                                continue 
                            mem[_621 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _621 + -mem[64] + 100
                        if 0 > !(block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime):
                            revert with 0, 17
                        if block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > !sub_2130fe23[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if sub_2130fe23[address(arg1)][idx].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !sub_2130fe23[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + sub_2130fe23[address(arg1)][idx].field_768
                            continue 
                        if rewardPerNode and block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                            revert with 0, 17
                        if not rewardPerNode:
                            revert with 0, 18
                        if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > !sub_2130fe23[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > !((rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768
                        continue 
                    _583 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_583] = 30
                    mem[_583 + 32] = 'SafeMath: subtraction overflow'
                    if sub_2130fe23[address(arg1)][idx].field_256 > block.timestamp:
                        _608 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _608 + 68] = mem[idx + _583 + 32]
                            idx = idx + 32
                            continue 
                        mem[_608 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _608 + -mem[64] + 100
                    if block.timestamp < sub_2130fe23[address(arg1)][idx].field_256:
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
                    if 31 >= sub_2130fe23[address(arg1)][idx].field_1:
                        mem[_522 + 32] = 256 * sub_2130fe23[address(arg1)][idx].field_8
                        mem[_521] = _522
                        mem[_521 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                        mem[_521 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                        mem[_521 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                        if sub_2130fe23[address(arg1)][idx].field_512:
                            _546 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_546] = 30
                            mem[_546 + 32] = 'SafeMath: subtraction overflow'
                            if sub_2130fe23[address(arg1)][idx].field_512 > block.timestamp:
                                _560 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _560 + 68] = mem[idx + _546 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_560 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _560 + -mem[64] + 100
                            if block.timestamp < sub_2130fe23[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _625 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_625] = 26
                            mem[_625 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _657 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _657 + 68] = mem[idx + _625 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_657 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _657 + -mem[64] + 100
                            if 0 > !(block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !sub_2130fe23[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if sub_2130fe23[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !sub_2130fe23[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + sub_2130fe23[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > !sub_2130fe23[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768
                            continue 
                        _610 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_610] = 30
                        mem[_610 + 32] = 'SafeMath: subtraction overflow'
                        if sub_2130fe23[address(arg1)][idx].field_256 > block.timestamp:
                            _642 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _642 + 68] = mem[idx + _610 + 32]
                                idx = idx + 32
                                continue 
                            mem[_642 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _642 + -mem[64] + 100
                        if block.timestamp < sub_2130fe23[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _731 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_731] = 26
                        mem[_731 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _762 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _762 + 68] = mem[idx + _731 + 32]
                                idx = idx + 32
                                continue 
                            mem[_762 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _762 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_522 + 32] = sub_2130fe23[address(arg1)][idx].field_0
                        t = _522 + 32
                        u = sha3(mem[0])
                        while _522 + sub_2130fe23[address(arg1)][idx].field_1 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_521] = _522
                        mem[_521 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                        mem[_521 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                        mem[_521 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                        if sub_2130fe23[address(arg1)][idx].field_512:
                            _1113 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1113] = 30
                            mem[_1113 + 32] = 'SafeMath: subtraction overflow'
                            if sub_2130fe23[address(arg1)][idx].field_512 > block.timestamp:
                                _1137 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1137 + 68] = mem[idx + _1113 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1137 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1137 + -mem[64] + 100
                            if block.timestamp < sub_2130fe23[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1157 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1157] = 26
                            mem[_1157 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1171 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1171 + 68] = mem[idx + _1157 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1171 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1171 + -mem[64] + 100
                            if 0 > !(block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !sub_2130fe23[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if sub_2130fe23[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !sub_2130fe23[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + sub_2130fe23[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > !sub_2130fe23[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768
                            continue 
                        _1153 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1153] = 30
                        mem[_1153 + 32] = 'SafeMath: subtraction overflow'
                        if sub_2130fe23[address(arg1)][idx].field_256 > block.timestamp:
                            _1163 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1163 + 68] = mem[idx + _1153 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1163 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1163 + -mem[64] + 100
                        if block.timestamp < sub_2130fe23[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1193 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1193] = 26
                        mem[_1193 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1204 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1204 + 68] = mem[idx + _1193 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1204 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1204 + -mem[64] + 100
        else:
            if sub_2130fe23[address(arg1)][idx].field_0 == sub_2130fe23[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            _523 = mem[64]
            mem[64] = mem[64] + ceil32(sub_2130fe23[address(arg1)][idx].field_1) + 32
            mem[_523] = sub_2130fe23[address(arg1)][idx].field_1
            if sub_2130fe23[address(arg1)][idx].field_0:
                if sub_2130fe23[address(arg1)][idx].field_0 == uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, sub_2130fe23[address(arg1)][idx].field_0):
                    mem[_521] = _523
                    mem[_521 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                    mem[_521 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                    mem[_521 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                    if sub_2130fe23[address(arg1)][idx].field_512:
                        _536 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_536] = 30
                        mem[_536 + 32] = 'SafeMath: subtraction overflow'
                        if sub_2130fe23[address(arg1)][idx].field_512 > block.timestamp:
                            _547 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _547 + 68] = mem[idx + _536 + 32]
                                idx = idx + 32
                                continue 
                            mem[_547 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _547 + -mem[64] + 100
                        if block.timestamp < sub_2130fe23[address(arg1)][idx].field_512:
                            revert with 0, 17
                        _597 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_597] = 26
                        mem[_597 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _626 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _626 + 68] = mem[idx + _597 + 32]
                                idx = idx + 32
                                continue 
                            mem[_626 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _626 + -mem[64] + 100
                        if 0 > !(block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime):
                            revert with 0, 17
                        if block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > !sub_2130fe23[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if sub_2130fe23[address(arg1)][idx].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !sub_2130fe23[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + sub_2130fe23[address(arg1)][idx].field_768
                            continue 
                        if rewardPerNode and block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                            revert with 0, 17
                        if not rewardPerNode:
                            revert with 0, 18
                        if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > !sub_2130fe23[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > !((rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768
                        continue 
                    _586 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_586] = 30
                    mem[_586 + 32] = 'SafeMath: subtraction overflow'
                    if sub_2130fe23[address(arg1)][idx].field_256 > block.timestamp:
                        _612 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _612 + 68] = mem[idx + _586 + 32]
                            idx = idx + 32
                            continue 
                        mem[_612 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _612 + -mem[64] + 100
                    if block.timestamp < sub_2130fe23[address(arg1)][idx].field_256:
                        revert with 0, 17
                    _704 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_704] = 26
                    mem[_704 + 32] = 'SafeMath: division by zero'
                    if not claimTime:
                        _733 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _733 + 68] = mem[idx + _704 + 32]
                            idx = idx + 32
                            continue 
                        mem[_733 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _733 + -mem[64] + 100
                else:
                    if 31 >= uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5:
                        mem[_523 + 32] = 256 * sub_2130fe23[address(arg1)][idx].field_8
                        mem[_521] = _523
                        mem[_521 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                        mem[_521 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                        mem[_521 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                        if sub_2130fe23[address(arg1)][idx].field_512:
                            _549 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_549] = 30
                            mem[_549 + 32] = 'SafeMath: subtraction overflow'
                            if sub_2130fe23[address(arg1)][idx].field_512 > block.timestamp:
                                _562 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _562 + 68] = mem[idx + _549 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_562 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _562 + -mem[64] + 100
                            if block.timestamp < sub_2130fe23[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _630 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_630] = 26
                            mem[_630 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _661 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _661 + 68] = mem[idx + _630 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_661 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _661 + -mem[64] + 100
                            if 0 > !(block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !sub_2130fe23[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if sub_2130fe23[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !sub_2130fe23[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + sub_2130fe23[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > !sub_2130fe23[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768
                            continue 
                        _614 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_614] = 30
                        mem[_614 + 32] = 'SafeMath: subtraction overflow'
                        if sub_2130fe23[address(arg1)][idx].field_256 > block.timestamp:
                            _646 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _646 + 68] = mem[idx + _614 + 32]
                                idx = idx + 32
                                continue 
                            mem[_646 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _646 + -mem[64] + 100
                        if block.timestamp < sub_2130fe23[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _736 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_736] = 26
                        mem[_736 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _766 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _766 + 68] = mem[idx + _736 + 32]
                                idx = idx + 32
                                continue 
                            mem[_766 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _766 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_523 + 32] = sub_2130fe23[address(arg1)][idx].field_0
                        t = _523 + 32
                        u = sha3(mem[0])
                        while _523 + (uint255(sub_2130fe23[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_521] = _523
                        mem[_521 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                        mem[_521 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                        mem[_521 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                        if sub_2130fe23[address(arg1)][idx].field_512:
                            _1122 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1122] = 30
                            mem[_1122 + 32] = 'SafeMath: subtraction overflow'
                            if sub_2130fe23[address(arg1)][idx].field_512 > block.timestamp:
                                _1138 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1138 + 68] = mem[idx + _1122 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1138 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1138 + -mem[64] + 100
                            if block.timestamp < sub_2130fe23[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1158 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1158] = 26
                            mem[_1158 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1174 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1174 + 68] = mem[idx + _1158 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1174 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1174 + -mem[64] + 100
                            if 0 > !(block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !sub_2130fe23[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if sub_2130fe23[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !sub_2130fe23[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + sub_2130fe23[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > !sub_2130fe23[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768
                            continue 
                        _1154 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1154] = 30
                        mem[_1154 + 32] = 'SafeMath: subtraction overflow'
                        if sub_2130fe23[address(arg1)][idx].field_256 > block.timestamp:
                            _1165 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1165 + 68] = mem[idx + _1154 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1165 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1165 + -mem[64] + 100
                        if block.timestamp < sub_2130fe23[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1194 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1194] = 26
                        mem[_1194 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1207 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1207 + 68] = mem[idx + _1194 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1207 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1207 + -mem[64] + 100
            else:
                if sub_2130fe23[address(arg1)][idx].field_0 == sub_2130fe23[address(arg1)][idx].field_1 < 32:
                    revert with 0, 34
                if not sub_2130fe23[address(arg1)][idx].field_1:
                    mem[_521] = _523
                    mem[_521 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                    mem[_521 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                    mem[_521 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                    if sub_2130fe23[address(arg1)][idx].field_512:
                        _541 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_541] = 30
                        mem[_541 + 32] = 'SafeMath: subtraction overflow'
                        if sub_2130fe23[address(arg1)][idx].field_512 > block.timestamp:
                            _554 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _554 + 68] = mem[idx + _541 + 32]
                                idx = idx + 32
                                continue 
                            mem[_554 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _554 + -mem[64] + 100
                        if block.timestamp < sub_2130fe23[address(arg1)][idx].field_512:
                            revert with 0, 17
                        _615 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_615] = 26
                        mem[_615 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _647 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _647 + 68] = mem[idx + _615 + 32]
                                idx = idx + 32
                                continue 
                            mem[_647 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _647 + -mem[64] + 100
                        if 0 > !(block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime):
                            revert with 0, 17
                        if block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > !sub_2130fe23[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if sub_2130fe23[address(arg1)][idx].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !sub_2130fe23[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + sub_2130fe23[address(arg1)][idx].field_768
                            continue 
                        if rewardPerNode and block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                            revert with 0, 17
                        if not rewardPerNode:
                            revert with 0, 18
                        if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > !sub_2130fe23[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > !((rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768
                        continue 
                    _599 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_599] = 30
                    mem[_599 + 32] = 'SafeMath: subtraction overflow'
                    if sub_2130fe23[address(arg1)][idx].field_256 > block.timestamp:
                        _632 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _632 + 68] = mem[idx + _599 + 32]
                            idx = idx + 32
                            continue 
                        mem[_632 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _632 + -mem[64] + 100
                    if block.timestamp < sub_2130fe23[address(arg1)][idx].field_256:
                        revert with 0, 17
                    _720 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_720] = 26
                    mem[_720 + 32] = 'SafeMath: division by zero'
                    if not claimTime:
                        _752 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _752 + 68] = mem[idx + _720 + 32]
                            idx = idx + 32
                            continue 
                        mem[_752 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _752 + -mem[64] + 100
                else:
                    if 31 >= sub_2130fe23[address(arg1)][idx].field_1:
                        mem[_523 + 32] = 256 * sub_2130fe23[address(arg1)][idx].field_8
                        mem[_521] = _523
                        mem[_521 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                        mem[_521 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                        mem[_521 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                        if sub_2130fe23[address(arg1)][idx].field_512:
                            _556 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_556] = 30
                            mem[_556 + 32] = 'SafeMath: subtraction overflow'
                            if sub_2130fe23[address(arg1)][idx].field_512 > block.timestamp:
                                _571 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _571 + 68] = mem[idx + _556 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_571 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _571 + -mem[64] + 100
                            if block.timestamp < sub_2130fe23[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _651 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_651] = 26
                            mem[_651 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _681 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _681 + 68] = mem[idx + _651 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_681 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _681 + -mem[64] + 100
                            if 0 > !(block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !sub_2130fe23[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if sub_2130fe23[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !sub_2130fe23[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + sub_2130fe23[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > !sub_2130fe23[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768
                            continue 
                        _634 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_634] = 30
                        mem[_634 + 32] = 'SafeMath: subtraction overflow'
                        if sub_2130fe23[address(arg1)][idx].field_256 > block.timestamp:
                            _667 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _667 + 68] = mem[idx + _634 + 32]
                                idx = idx + 32
                                continue 
                            mem[_667 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _667 + -mem[64] + 100
                        if block.timestamp < sub_2130fe23[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _755 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_755] = 26
                        mem[_755 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _787 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _787 + 68] = mem[idx + _755 + 32]
                                idx = idx + 32
                                continue 
                            mem[_787 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _787 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_523 + 32] = sub_2130fe23[address(arg1)][idx].field_0
                        t = _523 + 32
                        u = sha3(mem[0])
                        while _523 + sub_2130fe23[address(arg1)][idx].field_1 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_521] = _523
                        mem[_521 + 32] = sub_2130fe23[address(arg1)][idx].field_256
                        mem[_521 + 64] = sub_2130fe23[address(arg1)][idx].field_512
                        mem[_521 + 96] = sub_2130fe23[address(arg1)][idx].field_768
                        if sub_2130fe23[address(arg1)][idx].field_512:
                            _1131 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1131] = 30
                            mem[_1131 + 32] = 'SafeMath: subtraction overflow'
                            if sub_2130fe23[address(arg1)][idx].field_512 > block.timestamp:
                                _1139 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1139 + 68] = mem[idx + _1131 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1139 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1139 + -mem[64] + 100
                            if block.timestamp < sub_2130fe23[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1159 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1159] = 26
                            mem[_1159 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1177 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1177 + 68] = mem[idx + _1159 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1177 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1177 + -mem[64] + 100
                            if 0 > !(block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !sub_2130fe23[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if sub_2130fe23[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !sub_2130fe23[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + sub_2130fe23[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime > !sub_2130fe23[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - sub_2130fe23[address(arg1)][idx].field_512 / claimTime) + sub_2130fe23[address(arg1)][idx].field_768
                            continue 
                        _1155 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1155] = 30
                        mem[_1155 + 32] = 'SafeMath: subtraction overflow'
                        if sub_2130fe23[address(arg1)][idx].field_256 > block.timestamp:
                            _1167 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1167 + 68] = mem[idx + _1155 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1167 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1167 + -mem[64] + 100
                        if block.timestamp < sub_2130fe23[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1195 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1195] = 26
                        mem[_1195 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1210 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1210 + 68] = mem[idx + _1195 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1210 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1210 + -mem[64] + 100
        ('stor', ('name', 'claimTime', 7))
        if 1 > !(block.timestamp - sub_2130fe23[address(arg1)][idx].field_256 / claimTime):
            revert with 0, 17
        if (block.timestamp - sub_2130fe23[address(arg1)][idx].field_256 / claimTime) + 1 < 1:
            revert with 0, 'SafeMath: addition overflow'
        if not rewardPerNode:
            if 0 > !sub_2130fe23[address(arg1)][idx].field_768:
                revert with 0, 17
            if sub_2130fe23[address(arg1)][idx].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if s > !sub_2130fe23[address(arg1)][idx].field_768:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + sub_2130fe23[address(arg1)][idx].field_768
            continue 
        if rewardPerNode and (block.timestamp - sub_2130fe23[address(arg1)][idx].field_256 / claimTime) + 1 > -1 / rewardPerNode:
            revert with 0, 17
        if not rewardPerNode:
            revert with 0, 18
        if rewardPerNode + (block.timestamp - sub_2130fe23[address(arg1)][idx].field_256 / claimTime * rewardPerNode) / rewardPerNode != (block.timestamp - sub_2130fe23[address(arg1)][idx].field_256 / claimTime) + 1:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewardPerNode + (block.timestamp - sub_2130fe23[address(arg1)][idx].field_256 / claimTime * rewardPerNode) > !sub_2130fe23[address(arg1)][idx].field_768:
            revert with 0, 17
        if sub_2130fe23[address(arg1)][idx].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if s > !(rewardPerNode + (block.timestamp - sub_2130fe23[address(arg1)][idx].field_256 / claimTime * rewardPerNode) + sub_2130fe23[address(arg1)][idx].field_768):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + rewardPerNode + (block.timestamp - sub_2130fe23[address(arg1)][idx].field_256 / claimTime * rewardPerNode) + sub_2130fe23[address(arg1)][idx].field_768
        continue 
    return s
}



}
