contract main {




// =====================  Runtime code  =====================


#
#  - _cashoutNodeReward(address arg1, uint256 arg2)
#  - sub_a490c415(?)
#  - _getRewardAmountOf(address arg1, uint256 arg2)
#  - sub_d5426589(?)
#
array of uint256 stor1;
array of struct stor4;
mapping of uint256 sub_2bd06359;
mapping of uint256 sub_e5b87faa;
uint256 nodePrice;
uint256 sub_338e4796;
uint256 rewardPerNode;
uint256 rewardPerSecond;
uint256 claimTime;
uint256 sub_c5bcbc56;
uint256 sub_c9c081b1;
address gateKeeperAddress;
uint8 autoDistri; offset 160
uint8 distribution; offset 168
uint128 stor15; offset 160
address tokenAddress;
uint256 gasForDistribution;
uint256 lastDistributionCount;
uint256 lastIndexProcessed;
uint256 totalNodesCreated;
uint256 sub_4588b13b;
uint256 totalRewardStaked;

function claimTime() payable {
    return claimTime
}

function sub_2bd06359(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2bd06359[arg1]
}

function sub_338e4796(?) payable {
    return sub_338e4796
}

function sub_4588b13b(?) payable {
    return sub_4588b13b
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

function rewardPerSecond() payable {
    return rewardPerSecond
}

function totalNodesCreated() payable {
    return totalNodesCreated
}

function sub_c5bcbc56(?) payable {
    return sub_c5bcbc56
}

function sub_c9c081b1(?) payable {
    return sub_c9c081b1
}

function gasForDistribution() payable {
    return gasForDistribution
}

function sub_e5b87faa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e5b87faa[arg1]
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
    stor15 = Mask(96, 0, arg1)
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x98181b8ffd224700419e75d2b99705a76eb3a6b9)
    delegate 0x98181b8ffd224700419e75d2b99705a76eb3a6b9.0x732a2ccf with:
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
    require ext_code.size(0x98181b8ffd224700419e75d2b99705a76eb3a6b9)
    delegate 0x98181b8ffd224700419e75d2b99705a76eb3a6b9.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] > 0)
}

function _cashoutAllNodesReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    if not uint256(stor4[address(arg1)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
    idx = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        if idx >= uint256(stor4[address(arg1)].field_0):
            revert with 0, 50
        uint256(stor4[address(arg1)][idx].field_768) = block.timestamp
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        continue 
}

function sub_ac8ab79e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    idx = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        if idx >= uint256(stor4[address(arg1)].field_0):
            revert with 0, 50
        if uint256(stor4[address(arg1)][idx].field_256) == uint16(arg2):
            if idx >= uint256(stor4[address(arg1)].field_0):
                revert with 0, 50
            uint256(stor4[address(arg1)][idx].field_768) = block.timestamp
        if idx == -1:
            revert with 0, 17
        mem[0] = address(arg1)
        mem[32] = 4
        idx = idx + 1
        continue 
}

function sub_2ac30427(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 4
    mem[64] = (32 * uint256(stor4[address(arg1)].field_0)) + 128
    mem[96] = uint256(stor4[address(arg1)].field_0)
    s = 128
    idx = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 4)
        _25 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            _30 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
            mem[_30] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                        mem[_30 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_30 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                        t = _30 + 32
                        u = sha3(mem[0])
                        while _30 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_25] = _30
                mem[_25 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_25 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_25 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _25
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor4[address(arg1)][idx].field_1 % 128:
                mem[_25] = _30
                mem[_25 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_25 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_25 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _25
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_30 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_25] = _30
                mem[_25 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_25 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_25 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _25
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_30 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _30 + 32
            u = sha3(mem[0])
            while _30 + stor4[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_25] = _30
            mem[_25 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_25 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_25 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _25
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
        mem[_33] = stor4[address(arg1)][idx].field_1 % 128
        if bool(stor4[address(arg1)][idx].field_0):
            if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                mem[_25] = _33
                mem[_25 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_25 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_25 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _25
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                mem[_33 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                mem[_25] = _33
                mem[_25 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                mem[_25 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_25 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[s] = _25
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
            mem[_33 + 32] = uint256(stor4[address(arg1)][idx].field_0)
            t = _33 + 32
            u = sha3(mem[0])
            while _33 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_25] = _33
            mem[_25 + 32] = uint256(stor4[address(arg1)][u].field_256)
            mem[_25 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_25 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[t] = _25
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        if stor4[address(arg1)][idx].field_1 % 128:
            if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                mem[_33 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_33 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _33 + 32
                u = sha3(mem[0])
                while _33 + stor4[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_25] = _33
        mem[_25 + 32] = uint256(stor4[address(arg1)][idx].field_256)
        mem[_25 + 64] = uint256(stor4[address(arg1)][idx].field_512)
        mem[_25 + 96] = uint256(stor4[address(arg1)][idx].field_768)
        mem[s] = _25
        s = s + 32
        idx = idx + 1
        continue 
    _26 = mem[64]
    mem[mem[64]] = 32
    _27 = mem[96]
    mem[mem[64] + 32] = mem[96]
    t = 0
    s = 128
    u = mem[64] + (32 * mem[96]) + 64
    v = mem[64] + 64
    while t < _27:
        mem[v] = u + -_26 - 64
        _45 = mem[s]
        _46 = mem[mem[s]]
        mem[u] = 128
        _48 = mem[_46]
        mem[u + 128] = mem[_46]
        idx = 0
        while idx < _48:
            mem[idx + u + 160] = mem[idx + _46 + 32]
            idx = idx + 32
            continue 
        if ceil32(_48) > _48:
            mem[u + _48 + 160] = 0
        mem[u + 32] = mem[_45 + 32]
        mem[u + 64] = mem[_45 + 64]
        mem[u + 96] = mem[_45 + 96]
        t = t + 1
        s = s + 32
        u = ceil32(_48) + u + 160
        v = v + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function _getNodesNames(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0x98181b8ffd224700419e75d2b99705a76eb3a6b9)
    delegate 0x98181b8ffd224700419e75d2b99705a76eb3a6b9.0x732a2ccf with:
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
            _233 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _253 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                mem[_253] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_253 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_253 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _253 + 32
                            u = sha3(mem[0])
                            while _253 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_233] = _253
                    mem[_233 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_233 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_233 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _233
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_233] = _253
                    mem[_233 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_233 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_233 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _233
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_253 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_233] = _253
                    mem[_233 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_233 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_233 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _233
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_253 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _253 + 32
                u = sha3(mem[0])
                while _253 + stor4[address(arg1)][u].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_233] = _253
                mem[_233 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_233 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_233 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _233
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            _262 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_262] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_233] = _262
                    mem[_233 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_233 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_233 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _233
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                    mem[_262 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_233] = _262
                    mem[_233 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_233 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_233 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _233
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_262 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _262 + 32
                u = sha3(mem[0])
                while _262 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_233] = _262
                mem[_233 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_233 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_233 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _233
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[address(arg1)][idx].field_1 % 128:
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_262 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_262 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _262 + 32
                    u = sha3(mem[0])
                    while _262 + stor4[address(arg1)][idx].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_233] = _262
            mem[_233 + 32] = uint256(stor4[address(arg1)][idx].field_256)
            mem[_233 + 64] = uint256(stor4[address(arg1)][idx].field_512)
            mem[_233 + 96] = uint256(stor4[address(arg1)][idx].field_768)
            mem[s] = _233
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
        if sub_2bd06359[address(arg1)] > sub_c5bcbc56:
            revert with 0, 'Node V1 limit has been reached'
        mem[0] = arg1
        mem[32] = 4
        _475 = mem[64]
        mem[64] = mem[64] + 128
        mem[_475] = 96
        mem[_475 + 32] = 0
        mem[_475 + 64] = block.timestamp
        mem[_475 + 96] = block.timestamp
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
            _235 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _255 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                mem[_255] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_255 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_255 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _255 + 32
                            u = sha3(mem[0])
                            while _255 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_235] = _255
                    mem[_235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _235
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_235] = _255
                    mem[_235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _235
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_255 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_235] = _255
                    mem[_235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _235
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_255 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _255 + 32
                u = sha3(mem[0])
                while _255 + stor4[address(arg1)][u].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_235] = _255
                mem[_235 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_235 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_235 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _235
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            _269 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_269] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_235] = _269
                    mem[_235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _235
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                    mem[_269 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_235] = _269
                    mem[_235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _235
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_269 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _269 + 32
                u = sha3(mem[0])
                while _269 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_235] = _269
                mem[_235 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_235 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_235 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _235
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[address(arg1)][idx].field_1 % 128:
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_269 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_269 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _269 + 32
                    u = sha3(mem[0])
                    while _269 + stor4[address(arg1)][idx].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_235] = _269
            mem[_235 + 32] = uint256(stor4[address(arg1)][idx].field_256)
            mem[_235 + 64] = uint256(stor4[address(arg1)][idx].field_512)
            mem[_235 + 96] = uint256(stor4[address(arg1)][idx].field_768)
            mem[s] = _235
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
        if sub_2bd06359[address(arg1)] > sub_c5bcbc56:
            revert with 0, 'Node V1 limit has been reached'
        mem[0] = arg1
        mem[32] = 4
        _481 = mem[64]
        mem[64] = mem[64] + 128
        mem[_481] = 96
        mem[_481 + 32] = 0
        mem[_481 + 64] = block.timestamp
        mem[_481 + 96] = block.timestamp
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
    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 0
    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
    require ext_code.size(0x98181b8ffd224700419e75d2b99705a76eb3a6b9)
    delegate 0x98181b8ffd224700419e75d2b99705a76eb3a6b9.0xbc2b405c with:
         gas gas_remaining wei
        args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_2bd06359[address(arg1)] > -2:
        revert with 0, 17
    if sub_2bd06359[address(arg1)] + 1 < sub_2bd06359[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_2bd06359[address(arg1)]++
    if totalNodesCreated == -1:
        revert with 0, 17
    totalNodesCreated++
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0x98181b8ffd224700419e75d2b99705a76eb3a6b9)
    delegate 0x98181b8ffd224700419e75d2b99705a76eb3a6b9.0x732a2ccf with:
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

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0x98181b8ffd224700419e75d2b99705a76eb3a6b9)
    delegate 0x98181b8ffd224700419e75d2b99705a76eb3a6b9.0x732a2ccf with:
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
    _62 = mem[mem[ceil32(return_data.size) + 128] + 96]
    if not mem[mem[ceil32(return_data.size) + 128] + 96]:
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
            _107 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
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
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]
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
    t = mem[mem[ceil32(return_data.size) + 128] + 96]
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
            _351 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
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
            s = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]
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
        _354 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]
        if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
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
        s = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]
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

function sub_e6c5ccf2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
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
        mem[0] = address(arg1)
        mem[32] = 4
        mem[64] = ceil32(ceil32(arg2.length)) + (32 * uint256(stor4[address(arg1)].field_0)) + 129
        mem[ceil32(ceil32(arg2.length)) + 97] = uint256(stor4[address(arg1)].field_0)
        s = ceil32(ceil32(arg2.length)) + 129
        idx = 0
        while idx < uint256(stor4[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 4)
            _177 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _197 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                mem[_197] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_197 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_197 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _197 + 32
                            u = sha3(mem[0])
                            while _197 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_177] = _197
                    mem[_177 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_177 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_177 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _177
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_177] = _197
                    mem[_177 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_177 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_177 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _177
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_197 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_177] = _197
                    mem[_177 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_177 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_177 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _177
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_197 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _197 + 32
                u = sha3(mem[0])
                while _197 + stor4[address(arg1)][u].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_177] = _197
                mem[_177 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_177 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_177 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _177
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            _202 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_202] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_177] = _202
                    mem[_177 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_177 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_177 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _177
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                    mem[_202 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_177] = _202
                    mem[_177 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_177 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_177 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _177
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_202 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _202 + 32
                u = sha3(mem[0])
                while _202 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_177] = _202
                mem[_177 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_177 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_177 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _177
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[address(arg1)][idx].field_1 % 128:
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_202 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_202 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _202 + 32
                    u = sha3(mem[0])
                    while _202 + stor4[address(arg1)][idx].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_177] = _202
            mem[_177 + 32] = uint256(stor4[address(arg1)][idx].field_256)
            mem[_177 + 64] = uint256(stor4[address(arg1)][idx].field_512)
            mem[_177 + 96] = uint256(stor4[address(arg1)][idx].field_768)
            mem[s] = _177
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
        if sub_2bd06359[address(arg1)] < sub_338e4796:
            revert with 0, 'don't have enough nodes'
        mem[0] = address(arg1)
        mem[32] = 6
        if sub_e5b87faa[address(arg1)] > sub_c9c081b1:
            revert with 0, 'Node V2 limit has been reached'
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _378 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_378] < nodePrice:
            revert with 0, 'ERROR: DO NOT HAVE ENOUGH TOKEN'
        idx = 0
        while idx < 20:
            mem[32] = 4
            if 0 >= uint256(stor4[address(arg1)].field_0):
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            if uint256(stor4[address(arg1)].field_256) != 0:
                idx = idx
                continue 
            if 0 >= uint256(stor4[address(arg1)].field_0):
                revert with 0, 'index > node of user length'
            if var73001 < 1:
                revert with 0, 17
            if var77002 < var77001:
                mem[0] = address(arg1)
                mem[32] = 4
                if 1 > !var81002:
                    revert with 0, 17
                s = var83003 + 1
                t = var83005
                u = var83006
                while s < uint256(stor[t].field_0):
                    if u >= uint256(stor4[address(arg1)].field_0):
                        revert with 0, 50
                    if not bool(stor[(4 * s) + sha3(t)].field_0):
                        if bool(stor[(4 * s) + sha3(t)].field_0) == stor[(4 * s) + sha3(t)].field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor4[address(arg1)][u].field_0):
                            if bool(stor4[address(arg1)][u].field_0) == uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if not stor[(4 * s) + sha3(t)].field_1 % 128:
                                uint256(stor4[address(arg1)][u].field_0) = 0
                                v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > v:
                                    uint256(stor[v].field_0) = 0
                                    v = v + 1
                                    continue 
                                uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                                uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                                uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                                if u == -1:
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)].field_0) < 1:
                                    revert with 0, 17
                                if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    s = u + 2
                                    t = sha3(address(arg1), 4)
                                    u = u + 1
                                    continue 
                                if not uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 49
                                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                                    if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                        uint256(stor4[address(arg1)].field_0)--
                                        if idx > -2:
                                            revert with 0, 17
                                        if idx + 1 < idx:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(arg1)
                                        mem[32] = 5
                                        _9610 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9610] = 30
                                        mem[_9610 + 32] = 'SafeMath: subtraction overflow'
                                        if 1 <= sub_2bd06359[address(arg1)]:
                                            if sub_2bd06359[address(arg1)] < 1:
                                                revert with 0, 17
                                            mem[0] = address(arg1)
                                            mem[32] = 5
                                            sub_2bd06359[address(arg1)]--
                                            idx = idx + 1
                                            continue 
                                        _9716 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _9716 + 68] = mem[idx + _9610 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9716 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9716 + -mem[64] + 100
                                    s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                                    while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                    uint256(stor4[address(arg1)].field_0)--
                                    if idx > -2:
                                        revert with 0, 17
                                    if idx + 1 < idx:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    _11088 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11088] = 30
                                    mem[_11088 + 32] = 'SafeMath: subtraction overflow'
                                    if 1 <= sub_2bd06359[address(arg1)]:
                                        if sub_2bd06359[address(arg1)] < 1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 5
                                        sub_2bd06359[address(arg1)]--
                                        idx = idx + 1
                                        continue 
                                    _11154 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _11154 + 68] = mem[idx + _11088 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11154 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11154 + -mem[64] + 100
                                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                                if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                    uint256(stor4[address(arg1)].field_0)--
                                    if idx > -2:
                                        revert with 0, 17
                                    if idx + 1 < idx:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    _9669 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9669] = 30
                                    mem[_9669 + 32] = 'SafeMath: subtraction overflow'
                                    if 1 <= sub_2bd06359[address(arg1)]:
                                        if sub_2bd06359[address(arg1)] < 1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 5
                                        sub_2bd06359[address(arg1)]--
                                        idx = idx + 1
                                        continue 
                                    _9806 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9806 + 68] = mem[idx + _9669 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9806 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9806 + -mem[64] + 100
                                s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _11089 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11089] = 30
                                mem[_11089 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _11155 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11155 + 68] = mem[idx + _11089 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11155 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11155 + -mem[64] + 100
                            uint256(stor4[address(arg1)][u].field_0) = (2 * stor[(4 * s) + sha3(t)].field_1 % 128) + 1
                            v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                            w = sha3((4 * s) + sha3(t))
                            while sha3((4 * s) + sha3(t)) + (stor[(4 * s) + sha3(t)].field_1 % 128 + 31 / 32) > w:
                                uint256(stor[v].field_0) = uint256(stor[w].field_0)
                                v = v + 1
                                w = w + 1
                                continue 
                            w = v
                            while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > w:
                                uint256(stor[w].field_0) = 0
                                w = w + 1
                                continue 
                            uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                            uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                            uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                            if u == -1:
                                revert with 0, 17
                            if uint256(stor4[address(arg1)].field_0) < 1:
                                revert with 0, 17
                            if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                                mem[0] = address(arg1)
                                mem[32] = 4
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                s = u + 2
                                t = sha3(address(arg1), 4)
                                u = u + 1
                                continue 
                            if not uint256(stor4[address(arg1)].field_0):
                                revert with 0, 49
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                                if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                    uint256(stor4[address(arg1)].field_0)--
                                    if idx > -2:
                                        revert with 0, 17
                                    if idx + 1 < idx:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    _11480 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11480] = 30
                                    mem[_11480 + 32] = 'SafeMath: subtraction overflow'
                                    if 1 <= sub_2bd06359[address(arg1)]:
                                        if sub_2bd06359[address(arg1)] < 1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 5
                                        sub_2bd06359[address(arg1)]--
                                        idx = idx + 1
                                        continue 
                                    _11511 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _11511 + 68] = mem[idx + _11480 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11511 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11511 + -mem[64] + 100
                                s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _12006 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12006] = 30
                                mem[_12006 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _12022 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12022 + 68] = mem[idx + _12006 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12022 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12022 + -mem[64] + 100
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _11500 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11500] = 30
                                mem[_11500 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _11533 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11533 + 68] = mem[idx + _11500 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11533 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11533 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _12007 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12007] = 30
                            mem[_12007 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _12023 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12023 + 68] = mem[idx + _12007 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12023 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12023 + -mem[64] + 100
                        if bool(stor4[address(arg1)][u].field_0) == stor4[address(arg1)][u].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor[(4 * s) + sha3(t)].field_1 % 128:
                            uint256(stor4[address(arg1)][u].field_0) = 0
                            v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                uint256(stor[v].field_0) = 0
                                v = v + 1
                                continue 
                            uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                            uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                            uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                            if u == -1:
                                revert with 0, 17
                            if uint256(stor4[address(arg1)].field_0) < 1:
                                revert with 0, 17
                            if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                                mem[0] = address(arg1)
                                mem[32] = 4
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                s = u + 2
                                t = sha3(address(arg1), 4)
                                u = u + 1
                                continue 
                            if not uint256(stor4[address(arg1)].field_0):
                                revert with 0, 49
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                                if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                    uint256(stor4[address(arg1)].field_0)--
                                    if idx > -2:
                                        revert with 0, 17
                                    if idx + 1 < idx:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    _9619 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9619] = 30
                                    mem[_9619 + 32] = 'SafeMath: subtraction overflow'
                                    if 1 <= sub_2bd06359[address(arg1)]:
                                        if sub_2bd06359[address(arg1)] < 1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 5
                                        sub_2bd06359[address(arg1)]--
                                        idx = idx + 1
                                        continue 
                                    _9725 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9725 + 68] = mem[idx + _9619 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9725 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9725 + -mem[64] + 100
                                s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _11096 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11096] = 30
                                mem[_11096 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _11160 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11160 + 68] = mem[idx + _11096 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11160 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11160 + -mem[64] + 100
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _9673 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9673] = 30
                                mem[_9673 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _9821 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9821 + 68] = mem[idx + _9673 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9821 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9821 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11097 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11097] = 30
                            mem[_11097 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11161 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11161 + 68] = mem[idx + _11097 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11161 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11161 + -mem[64] + 100
                        uint256(stor4[address(arg1)][u].field_0) = (2 * stor[(4 * s) + sha3(t)].field_1 % 128) + 1
                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                        w = sha3((4 * s) + sha3(t))
                        while sha3((4 * s) + sha3(t)) + (stor[(4 * s) + sha3(t)].field_1 % 128 + 31 / 32) > w:
                            uint256(stor[v].field_0) = uint256(stor[w].field_0)
                            v = v + 1
                            w = w + 1
                            continue 
                        w = v
                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > w:
                            uint256(stor[w].field_0) = 0
                            w = w + 1
                            continue 
                        uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                        uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                        uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                        if u == -1:
                            revert with 0, 17
                        if uint256(stor4[address(arg1)].field_0) < 1:
                            revert with 0, 17
                        if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                            mem[0] = address(arg1)
                            mem[32] = 4
                            if 1 > !(u + 1):
                                revert with 0, 17
                            s = u + 2
                            t = sha3(address(arg1), 4)
                            u = u + 1
                            continue 
                        if not uint256(stor4[address(arg1)].field_0):
                            revert with 0, 49
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _11483 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11483] = 30
                                mem[_11483 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _11513 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11513 + 68] = mem[idx + _11483 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11513 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11513 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _12008 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12008] = 30
                            mem[_12008 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _12024 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12024 + 68] = mem[idx + _12008 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12024 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12024 + -mem[64] + 100
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                        if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11501 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11501] = 30
                            mem[_11501 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11537 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11537 + 68] = mem[idx + _11501 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11537 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11537 + -mem[64] + 100
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                        uint256(stor4[address(arg1)].field_0)--
                        if idx > -2:
                            revert with 0, 17
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(arg1)
                        mem[32] = 5
                        _12009 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12009] = 30
                        mem[_12009 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= sub_2bd06359[address(arg1)]:
                            if sub_2bd06359[address(arg1)] < 1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 5
                            sub_2bd06359[address(arg1)]--
                            idx = idx + 1
                            continue 
                        _12025 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12025 + 68] = mem[idx + _12009 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12025 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12025 + -mem[64] + 100
                    if bool(stor[(4 * s) + sha3(t)].field_0) == uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor4[address(arg1)][u].field_0):
                        if bool(stor4[address(arg1)][u].field_0) == uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                            uint256(stor4[address(arg1)][u].field_0) = 0
                            v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > v:
                                uint256(stor[v].field_0) = 0
                                v = v + 1
                                continue 
                            uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                            uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                            uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                            if u == -1:
                                revert with 0, 17
                            if uint256(stor4[address(arg1)].field_0) < 1:
                                revert with 0, 17
                            if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                                mem[0] = address(arg1)
                                mem[32] = 4
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                s = u + 2
                                t = sha3(address(arg1), 4)
                                u = u + 1
                                continue 
                            if not uint256(stor4[address(arg1)].field_0):
                                revert with 0, 49
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                                if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                    uint256(stor4[address(arg1)].field_0)--
                                    if idx > -2:
                                        revert with 0, 17
                                    if idx + 1 < idx:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    _9592 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9592] = 30
                                    mem[_9592 + 32] = 'SafeMath: subtraction overflow'
                                    if 1 <= sub_2bd06359[address(arg1)]:
                                        if sub_2bd06359[address(arg1)] < 1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 5
                                        sub_2bd06359[address(arg1)]--
                                        idx = idx + 1
                                        continue 
                                    _9698 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9698 + 68] = mem[idx + _9592 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9698 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9698 + -mem[64] + 100
                                s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _11072 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11072] = 30
                                mem[_11072 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _11142 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11142 + 68] = mem[idx + _11072 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11142 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11142 + -mem[64] + 100
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _9661 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9661] = 30
                                mem[_9661 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _9776 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9776 + 68] = mem[idx + _9661 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9776 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9776 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11073 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11073] = 30
                            mem[_11073 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11143 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11143 + 68] = mem[idx + _11073 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11143 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11143 + -mem[64] + 100
                        if 31 >= uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                            uint256(stor4[address(arg1)][u].field_0) = uint256(stor[(4 * s) + sha3(t)].field_0)
                            v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > v:
                                uint256(stor[v].field_0) = 0
                                v = v + 1
                                continue 
                            uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                            uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                            uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                            if u == -1:
                                revert with 0, 17
                            if uint256(stor4[address(arg1)].field_0) < 1:
                                revert with 0, 17
                            if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                                mem[0] = address(arg1)
                                mem[32] = 4
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                s = u + 2
                                t = sha3(address(arg1), 4)
                                u = u + 1
                                continue 
                            if not uint256(stor4[address(arg1)].field_0):
                                revert with 0, 49
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                                if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                    uint256(stor4[address(arg1)].field_0)--
                                    if idx > -2:
                                        revert with 0, 17
                                    if idx + 1 < idx:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    _9589 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9589] = 30
                                    mem[_9589 + 32] = 'SafeMath: subtraction overflow'
                                    if 1 <= sub_2bd06359[address(arg1)]:
                                        if sub_2bd06359[address(arg1)] < 1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 5
                                        sub_2bd06359[address(arg1)]--
                                        idx = idx + 1
                                        continue 
                                    _9696 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9696 + 68] = mem[idx + _9589 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9696 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9696 + -mem[64] + 100
                                s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _11070 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11070] = 30
                                mem[_11070 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _11140 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11140 + 68] = mem[idx + _11070 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11140 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11140 + -mem[64] + 100
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _9660 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9660] = 30
                                mem[_9660 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _9772 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9772 + 68] = mem[idx + _9660 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9772 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9772 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11071 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11071] = 30
                            mem[_11071 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11141 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11141 + 68] = mem[idx + _11071 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11141 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11141 + -mem[64] + 100
                        uint256(stor4[address(arg1)][u].field_0) = Mask(254, 1, uint256(stor[(4 * s) + sha3(t)].field_0)) + 1
                        if not Mask(256, -1, uint256(stor[(4 * s) + sha3(t)].field_0)):
                            v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > v:
                                uint256(stor[v].field_0) = 0
                                v = v + 1
                                continue 
                            uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                            uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                            uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                            if u == -1:
                                revert with 0, 17
                            if uint256(stor4[address(arg1)].field_0) < 1:
                                revert with 0, 17
                            if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                                mem[0] = address(arg1)
                                mem[32] = 4
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                s = u + 2
                                t = sha3(address(arg1), 4)
                                u = u + 1
                                continue 
                            if not uint256(stor4[address(arg1)].field_0):
                                revert with 0, 49
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                                if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                    uint256(stor4[address(arg1)].field_0)--
                                    if idx > -2:
                                        revert with 0, 17
                                    if idx + 1 < idx:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    _9586 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9586] = 30
                                    mem[_9586 + 32] = 'SafeMath: subtraction overflow'
                                    if 1 <= sub_2bd06359[address(arg1)]:
                                        if sub_2bd06359[address(arg1)] < 1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 5
                                        sub_2bd06359[address(arg1)]--
                                        idx = idx + 1
                                        continue 
                                    _9691 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9691 + 68] = mem[idx + _9586 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9691 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9691 + -mem[64] + 100
                                s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _11066 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11066] = 30
                                mem[_11066 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _11138 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11138 + 68] = mem[idx + _11066 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11138 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11138 + -mem[64] + 100
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _9658 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9658] = 30
                                mem[_9658 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _9765 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9765 + 68] = mem[idx + _9658 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9765 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9765 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11067 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11067] = 30
                            mem[_11067 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11139 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11139 + 68] = mem[idx + _11067 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11139 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11139 + -mem[64] + 100
                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                        w = sha3((4 * s) + sha3(t))
                        while sha3((4 * s) + sha3(t)) + ((uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5) + 31 / 32) > w:
                            uint256(stor[v].field_0) = uint256(stor[w].field_0)
                            v = v + 1
                            w = w + 1
                            continue 
                        w = v
                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > w:
                            uint256(stor[w].field_0) = 0
                            w = w + 1
                            continue 
                        uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                        uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                        uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                        if u == -1:
                            revert with 0, 17
                        if uint256(stor4[address(arg1)].field_0) < 1:
                            revert with 0, 17
                        if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                            mem[0] = address(arg1)
                            mem[32] = 4
                            if 1 > !(u + 1):
                                revert with 0, 17
                            s = u + 2
                            t = sha3(address(arg1), 4)
                            u = u + 1
                            continue 
                        if not uint256(stor4[address(arg1)].field_0):
                            revert with 0, 49
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _11474 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11474] = 30
                                mem[_11474 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _11507 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11507 + 68] = mem[idx + _11474 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11507 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11507 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _12002 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12002] = 30
                            mem[_12002 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _12018 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12018 + 68] = mem[idx + _12002 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12018 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12018 + -mem[64] + 100
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                        if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11498 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11498] = 30
                            mem[_11498 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11525 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11525 + 68] = mem[idx + _11498 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11525 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11525 + -mem[64] + 100
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                        uint256(stor4[address(arg1)].field_0)--
                        if idx > -2:
                            revert with 0, 17
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(arg1)
                        mem[32] = 5
                        _12003 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12003] = 30
                        mem[_12003 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= sub_2bd06359[address(arg1)]:
                            if sub_2bd06359[address(arg1)] < 1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 5
                            sub_2bd06359[address(arg1)]--
                            idx = idx + 1
                            continue 
                        _12019 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12019 + 68] = mem[idx + _12003 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12019 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12019 + -mem[64] + 100
                    if bool(stor4[address(arg1)][u].field_0) == stor4[address(arg1)][u].field_1 % 128 < 32:
                        revert with 0, 34
                    if not uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                        uint256(stor4[address(arg1)][u].field_0) = 0
                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                            uint256(stor[v].field_0) = 0
                            v = v + 1
                            continue 
                        uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                        uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                        uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                        if u == -1:
                            revert with 0, 17
                        if uint256(stor4[address(arg1)].field_0) < 1:
                            revert with 0, 17
                        if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                            mem[0] = address(arg1)
                            mem[32] = 4
                            if 1 > !(u + 1):
                                revert with 0, 17
                            s = u + 2
                            t = sha3(address(arg1), 4)
                            u = u + 1
                            continue 
                        if not uint256(stor4[address(arg1)].field_0):
                            revert with 0, 49
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _9601 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9601] = 30
                                mem[_9601 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _9707 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9707 + 68] = mem[idx + _9601 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9707 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9707 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11080 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11080] = 30
                            mem[_11080 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11148 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11148 + 68] = mem[idx + _11080 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11148 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11148 + -mem[64] + 100
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                        if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _9665 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9665] = 30
                            mem[_9665 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _9791 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9791 + 68] = mem[idx + _9665 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9791 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9791 + -mem[64] + 100
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                        uint256(stor4[address(arg1)].field_0)--
                        if idx > -2:
                            revert with 0, 17
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(arg1)
                        mem[32] = 5
                        _11081 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11081] = 30
                        mem[_11081 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= sub_2bd06359[address(arg1)]:
                            if sub_2bd06359[address(arg1)] < 1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 5
                            sub_2bd06359[address(arg1)]--
                            idx = idx + 1
                            continue 
                        _11149 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11149 + 68] = mem[idx + _11081 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11149 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _11149 + -mem[64] + 100
                    if 31 >= uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                        uint256(stor4[address(arg1)][u].field_0) = uint256(stor[(4 * s) + sha3(t)].field_0)
                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                            uint256(stor[v].field_0) = 0
                            v = v + 1
                            continue 
                        uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                        uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                        uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                        if u == -1:
                            revert with 0, 17
                        if uint256(stor4[address(arg1)].field_0) < 1:
                            revert with 0, 17
                        if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                            mem[0] = address(arg1)
                            mem[32] = 4
                            if 1 > !(u + 1):
                                revert with 0, 17
                            s = u + 2
                            t = sha3(address(arg1), 4)
                            u = u + 1
                            continue 
                        if not uint256(stor4[address(arg1)].field_0):
                            revert with 0, 49
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _9598 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9598] = 30
                                mem[_9598 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _9705 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9705 + 68] = mem[idx + _9598 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9705 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9705 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11078 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11078] = 30
                            mem[_11078 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11146 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11146 + 68] = mem[idx + _11078 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11146 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11146 + -mem[64] + 100
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                        if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _9664 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9664] = 30
                            mem[_9664 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _9787 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9787 + 68] = mem[idx + _9664 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9787 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9787 + -mem[64] + 100
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                        uint256(stor4[address(arg1)].field_0)--
                        if idx > -2:
                            revert with 0, 17
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(arg1)
                        mem[32] = 5
                        _11079 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11079] = 30
                        mem[_11079 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= sub_2bd06359[address(arg1)]:
                            if sub_2bd06359[address(arg1)] < 1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 5
                            sub_2bd06359[address(arg1)]--
                            idx = idx + 1
                            continue 
                        _11147 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11147 + 68] = mem[idx + _11079 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11147 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _11147 + -mem[64] + 100
                    uint256(stor4[address(arg1)][u].field_0) = Mask(254, 1, uint256(stor[(4 * s) + sha3(t)].field_0)) + 1
                    if not Mask(256, -1, uint256(stor[(4 * s) + sha3(t)].field_0)):
                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                            uint256(stor[v].field_0) = 0
                            v = v + 1
                            continue 
                        uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                        uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                        uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                        if u == -1:
                            revert with 0, 17
                        if uint256(stor4[address(arg1)].field_0) < 1:
                            revert with 0, 17
                        if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                            mem[0] = address(arg1)
                            mem[32] = 4
                            if 1 > !(u + 1):
                                revert with 0, 17
                            s = u + 2
                            t = sha3(address(arg1), 4)
                            u = u + 1
                            continue 
                        if not uint256(stor4[address(arg1)].field_0):
                            revert with 0, 49
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _9595 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9595] = 30
                                mem[_9595 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _9700 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9700 + 68] = mem[idx + _9595 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9700 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9700 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11074 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11074] = 30
                            mem[_11074 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11144 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11144 + 68] = mem[idx + _11074 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11144 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11144 + -mem[64] + 100
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                        if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _9662 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9662] = 30
                            mem[_9662 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _9780 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9780 + 68] = mem[idx + _9662 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9780 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9780 + -mem[64] + 100
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                        uint256(stor4[address(arg1)].field_0)--
                        if idx > -2:
                            revert with 0, 17
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(arg1)
                        mem[32] = 5
                        _11075 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11075] = 30
                        mem[_11075 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= sub_2bd06359[address(arg1)]:
                            if sub_2bd06359[address(arg1)] < 1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 5
                            sub_2bd06359[address(arg1)]--
                            idx = idx + 1
                            continue 
                        _11145 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11145 + 68] = mem[idx + _11075 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11145 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _11145 + -mem[64] + 100
                    v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                    w = sha3((4 * s) + sha3(t))
                    while sha3((4 * s) + sha3(t)) + ((uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5) + 31 / 32) > w:
                        uint256(stor[v].field_0) = uint256(stor[w].field_0)
                        v = v + 1
                        w = w + 1
                        continue 
                    w = v
                    while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > w:
                        uint256(stor[w].field_0) = 0
                        w = w + 1
                        continue 
                    uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                    uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                    uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                    if u == -1:
                        revert with 0, 17
                    if uint256(stor4[address(arg1)].field_0) < 1:
                        revert with 0, 17
                    if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                        mem[0] = address(arg1)
                        mem[32] = 4
                        if 1 > !(u + 1):
                            revert with 0, 17
                        s = u + 2
                        t = sha3(address(arg1), 4)
                        u = u + 1
                        continue 
                    if not uint256(stor4[address(arg1)].field_0):
                        revert with 0, 49
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                        if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11477 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11477] = 30
                            mem[_11477 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11509 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11509 + 68] = mem[idx + _11477 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11509 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11509 + -mem[64] + 100
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                        uint256(stor4[address(arg1)].field_0)--
                        if idx > -2:
                            revert with 0, 17
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(arg1)
                        mem[32] = 5
                        _12004 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12004] = 30
                        mem[_12004 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= sub_2bd06359[address(arg1)]:
                            if sub_2bd06359[address(arg1)] < 1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 5
                            sub_2bd06359[address(arg1)]--
                            idx = idx + 1
                            continue 
                        _12020 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12020 + 68] = mem[idx + _12004 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12020 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12020 + -mem[64] + 100
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                    if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                        uint256(stor4[address(arg1)].field_0)--
                        if idx > -2:
                            revert with 0, 17
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(arg1)
                        mem[32] = 5
                        _11499 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11499] = 30
                        mem[_11499 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= sub_2bd06359[address(arg1)]:
                            if sub_2bd06359[address(arg1)] < 1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 5
                            sub_2bd06359[address(arg1)]--
                            idx = idx + 1
                            continue 
                        _11529 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11529 + 68] = mem[idx + _11499 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11529 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _11529 + -mem[64] + 100
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                    while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                    uint256(stor4[address(arg1)].field_0)--
                    if idx > -2:
                        revert with 0, 17
                    if idx + 1 < idx:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(arg1)
                    mem[32] = 5
                    _12005 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12005] = 30
                    mem[_12005 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= sub_2bd06359[address(arg1)]:
                        if sub_2bd06359[address(arg1)] < 1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 5
                        sub_2bd06359[address(arg1)]--
                        idx = idx + 1
                        continue 
                    _12021 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _12021 + 68] = mem[idx + _12005 + 32]
                        idx = idx + 32
                        continue 
                    mem[_12021 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _12021 + -mem[64] + 100
                revert with 0, 50
            if not uint256(stor4[address(arg1)].field_0):
                revert with 0, 49
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                    uint256(stor4[address(arg1)].field_0)--
                    if idx > -2:
                        revert with 0, 17
                    if idx + 1 < idx:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(arg1)
                    mem[32] = 5
                    _1734 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1734] = 30
                    mem[_1734 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= sub_2bd06359[address(arg1)]:
                        if sub_2bd06359[address(arg1)] < 1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 5
                        sub_2bd06359[address(arg1)]--
                        idx = idx + 1
                        continue 
                    _1747 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1747 + 68] = mem[idx + _1734 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1747 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1747 + -mem[64] + 100
                s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                uint256(stor4[address(arg1)].field_0)--
                if idx > -2:
                    revert with 0, 17
                if idx + 1 < idx:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(arg1)
                mem[32] = 5
                _3288 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3288] = 30
                mem[_3288 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= sub_2bd06359[address(arg1)]:
                    if sub_2bd06359[address(arg1)] < 1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 5
                    sub_2bd06359[address(arg1)]--
                    idx = idx + 1
                    continue 
                _3292 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3292 + 68] = mem[idx + _3288 + 32]
                    idx = idx + 32
                    continue 
                mem[_3292 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3292 + -mem[64] + 100
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                revert with 0, 34
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
            if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                uint256(stor4[address(arg1)].field_0)--
                if idx > -2:
                    revert with 0, 17
                if idx + 1 < idx:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(arg1)
                mem[32] = 5
                _1742 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1742] = 30
                mem[_1742 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= sub_2bd06359[address(arg1)]:
                    if sub_2bd06359[address(arg1)] < 1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 5
                    sub_2bd06359[address(arg1)]--
                    idx = idx + 1
                    continue 
                _1757 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1757 + 68] = mem[idx + _1742 + 32]
                    idx = idx + 32
                    continue 
                mem[_1757 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1757 + -mem[64] + 100
            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
            uint256(stor4[address(arg1)].field_0)--
            if idx > -2:
                revert with 0, 17
            if idx + 1 < idx:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(arg1)
            mem[32] = 5
            _3289 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3289] = 30
            mem[_3289 + 32] = 'SafeMath: subtraction overflow'
            if 1 <= sub_2bd06359[address(arg1)]:
                if sub_2bd06359[address(arg1)] < 1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 5
                sub_2bd06359[address(arg1)]--
                idx = idx + 1
                continue 
            _3293 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _3293 + 68] = mem[idx + _3289 + 32]
                idx = idx + 32
                continue 
            mem[_3293 + 98] = 0
            revert with memory
              from mem[64]
               len _3293 + -mem[64] + 100
        mem[0] = address(arg1)
        mem[32] = 4
        _497 = mem[64]
        mem[64] = mem[64] + 128
        mem[_497] = 96
        mem[_497 + 32] = 1
        mem[_497 + 64] = block.timestamp
        mem[_497 + 96] = block.timestamp
        uint256(stor4[address(arg1)].field_0)++
        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5 < 32:
                revert with 0, 34
            if mem[96]:
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 1
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
                require ext_code.size(0x98181b8ffd224700419e75d2b99705a76eb3a6b9)
                delegate 0x98181b8ffd224700419e75d2b99705a76eb3a6b9.0xbc2b405c with:
                     gas gas_remaining wei
                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_338e4796 > totalNodesCreated:
                    revert with 0, 'SafeMath: subtraction overflow', 0
            else:
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                idx = 0
                while (uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32 > idx:
                    uint256(stor4[address(arg1)][(4 * uint256(stor4[address(arg1)].field_0)) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 1
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
                require ext_code.size(0x98181b8ffd224700419e75d2b99705a76eb3a6b9)
                delegate 0x98181b8ffd224700419e75d2b99705a76eb3a6b9.0xbc2b405c with:
                     gas gas_remaining wei
                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_338e4796 > totalNodesCreated:
                    var59001 = 32
                    revert with 0, 'SafeMath: subtraction overflow', 0
        else:
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                revert with 0, 34
            if mem[96]:
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 1
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
                require ext_code.size(0x98181b8ffd224700419e75d2b99705a76eb3a6b9)
                delegate 0x98181b8ffd224700419e75d2b99705a76eb3a6b9.0xbc2b405c with:
                     gas gas_remaining wei
                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_338e4796 > totalNodesCreated:
                    revert with 0, 'SafeMath: subtraction overflow', 0
            else:
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                idx = 0
                while stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32 > idx:
                    uint256(stor4[address(arg1)][(4 * uint256(stor4[address(arg1)].field_0)) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 1
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
                require ext_code.size(0x98181b8ffd224700419e75d2b99705a76eb3a6b9)
                delegate 0x98181b8ffd224700419e75d2b99705a76eb3a6b9.0xbc2b405c with:
                     gas gas_remaining wei
                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_338e4796 > totalNodesCreated:
                    var60001 = 32
                    revert with 0, 'SafeMath: subtraction overflow', 0
    else:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
        mem[0] = address(arg1)
        mem[32] = 4
        mem[64] = ceil32(ceil32(arg2.length)) + (32 * uint256(stor4[address(arg1)].field_0)) + 129
        mem[ceil32(ceil32(arg2.length)) + 97] = uint256(stor4[address(arg1)].field_0)
        s = ceil32(ceil32(arg2.length)) + 129
        idx = 0
        while idx < uint256(stor4[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 4)
            _179 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _199 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                mem[_199] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_199 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_199 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _199 + 32
                            u = sha3(mem[0])
                            while _199 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_179] = _199
                    mem[_179 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_179 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_179 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _179
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_179] = _199
                    mem[_179 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_179 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_179 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _179
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_199 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_179] = _199
                    mem[_179 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_179 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_179 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _179
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_199 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _199 + 32
                u = sha3(mem[0])
                while _199 + stor4[address(arg1)][u].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_179] = _199
                mem[_179 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_179 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_179 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _179
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            _205 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_205] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_179] = _205
                    mem[_179 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_179 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_179 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _179
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                    mem[_205 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_179] = _205
                    mem[_179 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_179 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_179 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _179
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_205 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _205 + 32
                u = sha3(mem[0])
                while _205 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_179] = _205
                mem[_179 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_179 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_179 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _179
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[address(arg1)][idx].field_1 % 128:
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_205 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_205 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _205 + 32
                    u = sha3(mem[0])
                    while _205 + stor4[address(arg1)][idx].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_179] = _205
            mem[_179 + 32] = uint256(stor4[address(arg1)][idx].field_256)
            mem[_179 + 64] = uint256(stor4[address(arg1)][idx].field_512)
            mem[_179 + 96] = uint256(stor4[address(arg1)][idx].field_768)
            mem[s] = _179
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
        if sub_2bd06359[address(arg1)] < sub_338e4796:
            revert with 0, 'don't have enough nodes'
        mem[0] = address(arg1)
        mem[32] = 6
        if sub_e5b87faa[address(arg1)] > sub_c9c081b1:
            revert with 0, 'Node V2 limit has been reached'
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _380 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_380] < nodePrice:
            revert with 0, 'ERROR: DO NOT HAVE ENOUGH TOKEN'
        idx = 0
        while idx < 20:
            mem[32] = 4
            if 0 >= uint256(stor4[address(arg1)].field_0):
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            if uint256(stor4[address(arg1)].field_256) != 0:
                idx = idx
                continue 
            if 0 >= uint256(stor4[address(arg1)].field_0):
                revert with 0, 'index > node of user length'
            if var74001 < 1:
                revert with 0, 17
            if var78002 < var78001:
                mem[0] = address(arg1)
                mem[32] = 4
                if 1 > !var82002:
                    revert with 0, 17
                s = var84003 + 1
                t = var84005
                u = var84006
                while s < uint256(stor[t].field_0):
                    if u >= uint256(stor4[address(arg1)].field_0):
                        revert with 0, 50
                    if not bool(stor[(4 * s) + sha3(t)].field_0):
                        if bool(stor[(4 * s) + sha3(t)].field_0) == stor[(4 * s) + sha3(t)].field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor4[address(arg1)][u].field_0):
                            if bool(stor4[address(arg1)][u].field_0) == uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if not stor[(4 * s) + sha3(t)].field_1 % 128:
                                uint256(stor4[address(arg1)][u].field_0) = 0
                                v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > v:
                                    uint256(stor[v].field_0) = 0
                                    v = v + 1
                                    continue 
                                uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                                uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                                uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                                if u == -1:
                                    revert with 0, 17
                                if uint256(stor4[address(arg1)].field_0) < 1:
                                    revert with 0, 17
                                if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    s = u + 2
                                    t = sha3(address(arg1), 4)
                                    u = u + 1
                                    continue 
                                if not uint256(stor4[address(arg1)].field_0):
                                    revert with 0, 49
                                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                                    if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                        uint256(stor4[address(arg1)].field_0)--
                                        if idx > -2:
                                            revert with 0, 17
                                        if idx + 1 < idx:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(arg1)
                                        mem[32] = 5
                                        _9646 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9646] = 30
                                        mem[_9646 + 32] = 'SafeMath: subtraction overflow'
                                        if 1 <= sub_2bd06359[address(arg1)]:
                                            if sub_2bd06359[address(arg1)] < 1:
                                                revert with 0, 17
                                            mem[0] = address(arg1)
                                            mem[32] = 5
                                            sub_2bd06359[address(arg1)]--
                                            idx = idx + 1
                                            continue 
                                        _9752 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _9752 + 68] = mem[idx + _9646 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9752 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9752 + -mem[64] + 100
                                    s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                                    while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                    uint256(stor4[address(arg1)].field_0)--
                                    if idx > -2:
                                        revert with 0, 17
                                    if idx + 1 < idx:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    _11120 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11120] = 30
                                    mem[_11120 + 32] = 'SafeMath: subtraction overflow'
                                    if 1 <= sub_2bd06359[address(arg1)]:
                                        if sub_2bd06359[address(arg1)] < 1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 5
                                        sub_2bd06359[address(arg1)]--
                                        idx = idx + 1
                                        continue 
                                    _11178 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _11178 + 68] = mem[idx + _11120 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11178 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11178 + -mem[64] + 100
                                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                                if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                    uint256(stor4[address(arg1)].field_0)--
                                    if idx > -2:
                                        revert with 0, 17
                                    if idx + 1 < idx:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    _9685 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9685] = 30
                                    mem[_9685 + 32] = 'SafeMath: subtraction overflow'
                                    if 1 <= sub_2bd06359[address(arg1)]:
                                        if sub_2bd06359[address(arg1)] < 1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 5
                                        sub_2bd06359[address(arg1)]--
                                        idx = idx + 1
                                        continue 
                                    _9866 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9866 + 68] = mem[idx + _9685 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9866 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9866 + -mem[64] + 100
                                s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _11121 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11121] = 30
                                mem[_11121 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _11179 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11179 + 68] = mem[idx + _11121 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11179 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11179 + -mem[64] + 100
                            uint256(stor4[address(arg1)][u].field_0) = (2 * stor[(4 * s) + sha3(t)].field_1 % 128) + 1
                            v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                            w = sha3((4 * s) + sha3(t))
                            while sha3((4 * s) + sha3(t)) + (stor[(4 * s) + sha3(t)].field_1 % 128 + 31 / 32) > w:
                                uint256(stor[v].field_0) = uint256(stor[w].field_0)
                                v = v + 1
                                w = w + 1
                                continue 
                            w = v
                            while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > w:
                                uint256(stor[w].field_0) = 0
                                w = w + 1
                                continue 
                            uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                            uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                            uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                            if u == -1:
                                revert with 0, 17
                            if uint256(stor4[address(arg1)].field_0) < 1:
                                revert with 0, 17
                            if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                                mem[0] = address(arg1)
                                mem[32] = 4
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                s = u + 2
                                t = sha3(address(arg1), 4)
                                u = u + 1
                                continue 
                            if not uint256(stor4[address(arg1)].field_0):
                                revert with 0, 49
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                                if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                    uint256(stor4[address(arg1)].field_0)--
                                    if idx > -2:
                                        revert with 0, 17
                                    if idx + 1 < idx:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    _11492 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11492] = 30
                                    mem[_11492 + 32] = 'SafeMath: subtraction overflow'
                                    if 1 <= sub_2bd06359[address(arg1)]:
                                        if sub_2bd06359[address(arg1)] < 1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 5
                                        sub_2bd06359[address(arg1)]--
                                        idx = idx + 1
                                        continue 
                                    _11519 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _11519 + 68] = mem[idx + _11492 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11519 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11519 + -mem[64] + 100
                                s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _12014 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12014] = 30
                                mem[_12014 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _12030 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12030 + 68] = mem[idx + _12014 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12030 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12030 + -mem[64] + 100
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _11504 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11504] = 30
                                mem[_11504 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _11549 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11549 + 68] = mem[idx + _11504 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11549 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11549 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _12015 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12015] = 30
                            mem[_12015 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _12031 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12031 + 68] = mem[idx + _12015 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12031 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12031 + -mem[64] + 100
                        if bool(stor4[address(arg1)][u].field_0) == stor4[address(arg1)][u].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor[(4 * s) + sha3(t)].field_1 % 128:
                            uint256(stor4[address(arg1)][u].field_0) = 0
                            v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                uint256(stor[v].field_0) = 0
                                v = v + 1
                                continue 
                            uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                            uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                            uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                            if u == -1:
                                revert with 0, 17
                            if uint256(stor4[address(arg1)].field_0) < 1:
                                revert with 0, 17
                            if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                                mem[0] = address(arg1)
                                mem[32] = 4
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                s = u + 2
                                t = sha3(address(arg1), 4)
                                u = u + 1
                                continue 
                            if not uint256(stor4[address(arg1)].field_0):
                                revert with 0, 49
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                                if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                    uint256(stor4[address(arg1)].field_0)--
                                    if idx > -2:
                                        revert with 0, 17
                                    if idx + 1 < idx:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    _9655 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9655] = 30
                                    mem[_9655 + 32] = 'SafeMath: subtraction overflow'
                                    if 1 <= sub_2bd06359[address(arg1)]:
                                        if sub_2bd06359[address(arg1)] < 1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 5
                                        sub_2bd06359[address(arg1)]--
                                        idx = idx + 1
                                        continue 
                                    _9761 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9761 + 68] = mem[idx + _9655 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9761 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9761 + -mem[64] + 100
                                s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _11128 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11128] = 30
                                mem[_11128 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _11184 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11184 + 68] = mem[idx + _11128 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11184 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11184 + -mem[64] + 100
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _9689 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9689] = 30
                                mem[_9689 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _9881 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9881 + 68] = mem[idx + _9689 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9881 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9881 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11129 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11129] = 30
                            mem[_11129 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11185 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11185 + 68] = mem[idx + _11129 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11185 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11185 + -mem[64] + 100
                        uint256(stor4[address(arg1)][u].field_0) = (2 * stor[(4 * s) + sha3(t)].field_1 % 128) + 1
                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                        w = sha3((4 * s) + sha3(t))
                        while sha3((4 * s) + sha3(t)) + (stor[(4 * s) + sha3(t)].field_1 % 128 + 31 / 32) > w:
                            uint256(stor[v].field_0) = uint256(stor[w].field_0)
                            v = v + 1
                            w = w + 1
                            continue 
                        w = v
                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > w:
                            uint256(stor[w].field_0) = 0
                            w = w + 1
                            continue 
                        uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                        uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                        uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                        if u == -1:
                            revert with 0, 17
                        if uint256(stor4[address(arg1)].field_0) < 1:
                            revert with 0, 17
                        if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                            mem[0] = address(arg1)
                            mem[32] = 4
                            if 1 > !(u + 1):
                                revert with 0, 17
                            s = u + 2
                            t = sha3(address(arg1), 4)
                            u = u + 1
                            continue 
                        if not uint256(stor4[address(arg1)].field_0):
                            revert with 0, 49
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _11495 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11495] = 30
                                mem[_11495 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _11521 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11521 + 68] = mem[idx + _11495 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11521 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11521 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _12016 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12016] = 30
                            mem[_12016 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _12032 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12032 + 68] = mem[idx + _12016 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12032 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12032 + -mem[64] + 100
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                        if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11505 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11505] = 30
                            mem[_11505 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11553 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11553 + 68] = mem[idx + _11505 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11553 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11553 + -mem[64] + 100
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                        uint256(stor4[address(arg1)].field_0)--
                        if idx > -2:
                            revert with 0, 17
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(arg1)
                        mem[32] = 5
                        _12017 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12017] = 30
                        mem[_12017 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= sub_2bd06359[address(arg1)]:
                            if sub_2bd06359[address(arg1)] < 1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 5
                            sub_2bd06359[address(arg1)]--
                            idx = idx + 1
                            continue 
                        _12033 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12033 + 68] = mem[idx + _12017 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12033 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12033 + -mem[64] + 100
                    if bool(stor[(4 * s) + sha3(t)].field_0) == uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor4[address(arg1)][u].field_0):
                        if bool(stor4[address(arg1)][u].field_0) == uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                            uint256(stor4[address(arg1)][u].field_0) = 0
                            v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > v:
                                uint256(stor[v].field_0) = 0
                                v = v + 1
                                continue 
                            uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                            uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                            uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                            if u == -1:
                                revert with 0, 17
                            if uint256(stor4[address(arg1)].field_0) < 1:
                                revert with 0, 17
                            if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                                mem[0] = address(arg1)
                                mem[32] = 4
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                s = u + 2
                                t = sha3(address(arg1), 4)
                                u = u + 1
                                continue 
                            if not uint256(stor4[address(arg1)].field_0):
                                revert with 0, 49
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                                if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                    uint256(stor4[address(arg1)].field_0)--
                                    if idx > -2:
                                        revert with 0, 17
                                    if idx + 1 < idx:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    _9628 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9628] = 30
                                    mem[_9628 + 32] = 'SafeMath: subtraction overflow'
                                    if 1 <= sub_2bd06359[address(arg1)]:
                                        if sub_2bd06359[address(arg1)] < 1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 5
                                        sub_2bd06359[address(arg1)]--
                                        idx = idx + 1
                                        continue 
                                    _9734 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9734 + 68] = mem[idx + _9628 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9734 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9734 + -mem[64] + 100
                                s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _11104 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11104] = 30
                                mem[_11104 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _11166 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11166 + 68] = mem[idx + _11104 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11166 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11166 + -mem[64] + 100
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _9677 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9677] = 30
                                mem[_9677 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _9836 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9836 + 68] = mem[idx + _9677 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9836 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9836 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11105 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11105] = 30
                            mem[_11105 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11167 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11167 + 68] = mem[idx + _11105 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11167 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11167 + -mem[64] + 100
                        if 31 >= uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                            uint256(stor4[address(arg1)][u].field_0) = uint256(stor[(4 * s) + sha3(t)].field_0)
                            v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > v:
                                uint256(stor[v].field_0) = 0
                                v = v + 1
                                continue 
                            uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                            uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                            uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                            if u == -1:
                                revert with 0, 17
                            if uint256(stor4[address(arg1)].field_0) < 1:
                                revert with 0, 17
                            if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                                mem[0] = address(arg1)
                                mem[32] = 4
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                s = u + 2
                                t = sha3(address(arg1), 4)
                                u = u + 1
                                continue 
                            if not uint256(stor4[address(arg1)].field_0):
                                revert with 0, 49
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                                if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                    uint256(stor4[address(arg1)].field_0)--
                                    if idx > -2:
                                        revert with 0, 17
                                    if idx + 1 < idx:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    _9625 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9625] = 30
                                    mem[_9625 + 32] = 'SafeMath: subtraction overflow'
                                    if 1 <= sub_2bd06359[address(arg1)]:
                                        if sub_2bd06359[address(arg1)] < 1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 5
                                        sub_2bd06359[address(arg1)]--
                                        idx = idx + 1
                                        continue 
                                    _9732 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9732 + 68] = mem[idx + _9625 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9732 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9732 + -mem[64] + 100
                                s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _11102 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11102] = 30
                                mem[_11102 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _11164 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11164 + 68] = mem[idx + _11102 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11164 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11164 + -mem[64] + 100
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _9676 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9676] = 30
                                mem[_9676 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _9832 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9832 + 68] = mem[idx + _9676 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9832 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9832 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11103 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11103] = 30
                            mem[_11103 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11165 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11165 + 68] = mem[idx + _11103 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11165 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11165 + -mem[64] + 100
                        uint256(stor4[address(arg1)][u].field_0) = Mask(254, 1, uint256(stor[(4 * s) + sha3(t)].field_0)) + 1
                        if not Mask(256, -1, uint256(stor[(4 * s) + sha3(t)].field_0)):
                            v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > v:
                                uint256(stor[v].field_0) = 0
                                v = v + 1
                                continue 
                            uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                            uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                            uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                            if u == -1:
                                revert with 0, 17
                            if uint256(stor4[address(arg1)].field_0) < 1:
                                revert with 0, 17
                            if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                                mem[0] = address(arg1)
                                mem[32] = 4
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                s = u + 2
                                t = sha3(address(arg1), 4)
                                u = u + 1
                                continue 
                            if not uint256(stor4[address(arg1)].field_0):
                                revert with 0, 49
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                                if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                    uint256(stor4[address(arg1)].field_0)--
                                    if idx > -2:
                                        revert with 0, 17
                                    if idx + 1 < idx:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    _9622 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9622] = 30
                                    mem[_9622 + 32] = 'SafeMath: subtraction overflow'
                                    if 1 <= sub_2bd06359[address(arg1)]:
                                        if sub_2bd06359[address(arg1)] < 1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 5
                                        sub_2bd06359[address(arg1)]--
                                        idx = idx + 1
                                        continue 
                                    _9727 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9727 + 68] = mem[idx + _9622 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9727 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9727 + -mem[64] + 100
                                s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _11098 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11098] = 30
                                mem[_11098 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _11162 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11162 + 68] = mem[idx + _11098 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11162 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11162 + -mem[64] + 100
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _9674 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9674] = 30
                                mem[_9674 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _9825 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9825 + 68] = mem[idx + _9674 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9825 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9825 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11099 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11099] = 30
                            mem[_11099 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11163 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11163 + 68] = mem[idx + _11099 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11163 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11163 + -mem[64] + 100
                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                        w = sha3((4 * s) + sha3(t))
                        while sha3((4 * s) + sha3(t)) + ((uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5) + 31 / 32) > w:
                            uint256(stor[v].field_0) = uint256(stor[w].field_0)
                            v = v + 1
                            w = w + 1
                            continue 
                        w = v
                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > w:
                            uint256(stor[w].field_0) = 0
                            w = w + 1
                            continue 
                        uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                        uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                        uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                        if u == -1:
                            revert with 0, 17
                        if uint256(stor4[address(arg1)].field_0) < 1:
                            revert with 0, 17
                        if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                            mem[0] = address(arg1)
                            mem[32] = 4
                            if 1 > !(u + 1):
                                revert with 0, 17
                            s = u + 2
                            t = sha3(address(arg1), 4)
                            u = u + 1
                            continue 
                        if not uint256(stor4[address(arg1)].field_0):
                            revert with 0, 49
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _11486 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11486] = 30
                                mem[_11486 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _11515 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11515 + 68] = mem[idx + _11486 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11515 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11515 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _12010 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12010] = 30
                            mem[_12010 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _12026 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12026 + 68] = mem[idx + _12010 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12026 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12026 + -mem[64] + 100
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                        if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11502 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11502] = 30
                            mem[_11502 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11541 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11541 + 68] = mem[idx + _11502 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11541 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11541 + -mem[64] + 100
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                        uint256(stor4[address(arg1)].field_0)--
                        if idx > -2:
                            revert with 0, 17
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(arg1)
                        mem[32] = 5
                        _12011 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12011] = 30
                        mem[_12011 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= sub_2bd06359[address(arg1)]:
                            if sub_2bd06359[address(arg1)] < 1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 5
                            sub_2bd06359[address(arg1)]--
                            idx = idx + 1
                            continue 
                        _12027 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12027 + 68] = mem[idx + _12011 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12027 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12027 + -mem[64] + 100
                    if bool(stor4[address(arg1)][u].field_0) == stor4[address(arg1)][u].field_1 % 128 < 32:
                        revert with 0, 34
                    if not uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                        uint256(stor4[address(arg1)][u].field_0) = 0
                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                            uint256(stor[v].field_0) = 0
                            v = v + 1
                            continue 
                        uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                        uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                        uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                        if u == -1:
                            revert with 0, 17
                        if uint256(stor4[address(arg1)].field_0) < 1:
                            revert with 0, 17
                        if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                            mem[0] = address(arg1)
                            mem[32] = 4
                            if 1 > !(u + 1):
                                revert with 0, 17
                            s = u + 2
                            t = sha3(address(arg1), 4)
                            u = u + 1
                            continue 
                        if not uint256(stor4[address(arg1)].field_0):
                            revert with 0, 49
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _9637 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9637] = 30
                                mem[_9637 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _9743 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9743 + 68] = mem[idx + _9637 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9743 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9743 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11112 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11112] = 30
                            mem[_11112 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11172 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11172 + 68] = mem[idx + _11112 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11172 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11172 + -mem[64] + 100
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                        if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _9681 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9681] = 30
                            mem[_9681 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _9851 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9851 + 68] = mem[idx + _9681 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9851 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9851 + -mem[64] + 100
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                        uint256(stor4[address(arg1)].field_0)--
                        if idx > -2:
                            revert with 0, 17
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(arg1)
                        mem[32] = 5
                        _11113 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11113] = 30
                        mem[_11113 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= sub_2bd06359[address(arg1)]:
                            if sub_2bd06359[address(arg1)] < 1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 5
                            sub_2bd06359[address(arg1)]--
                            idx = idx + 1
                            continue 
                        _11173 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11173 + 68] = mem[idx + _11113 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11173 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _11173 + -mem[64] + 100
                    if 31 >= uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                        uint256(stor4[address(arg1)][u].field_0) = uint256(stor[(4 * s) + sha3(t)].field_0)
                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                            uint256(stor[v].field_0) = 0
                            v = v + 1
                            continue 
                        uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                        uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                        uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                        if u == -1:
                            revert with 0, 17
                        if uint256(stor4[address(arg1)].field_0) < 1:
                            revert with 0, 17
                        if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                            mem[0] = address(arg1)
                            mem[32] = 4
                            if 1 > !(u + 1):
                                revert with 0, 17
                            s = u + 2
                            t = sha3(address(arg1), 4)
                            u = u + 1
                            continue 
                        if not uint256(stor4[address(arg1)].field_0):
                            revert with 0, 49
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _9634 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9634] = 30
                                mem[_9634 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _9741 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9741 + 68] = mem[idx + _9634 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9741 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9741 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11110 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11110] = 30
                            mem[_11110 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11170 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11170 + 68] = mem[idx + _11110 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11170 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11170 + -mem[64] + 100
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                        if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _9680 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9680] = 30
                            mem[_9680 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _9847 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9847 + 68] = mem[idx + _9680 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9847 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9847 + -mem[64] + 100
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                        uint256(stor4[address(arg1)].field_0)--
                        if idx > -2:
                            revert with 0, 17
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(arg1)
                        mem[32] = 5
                        _11111 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11111] = 30
                        mem[_11111 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= sub_2bd06359[address(arg1)]:
                            if sub_2bd06359[address(arg1)] < 1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 5
                            sub_2bd06359[address(arg1)]--
                            idx = idx + 1
                            continue 
                        _11171 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11171 + 68] = mem[idx + _11111 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11171 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _11171 + -mem[64] + 100
                    uint256(stor4[address(arg1)][u].field_0) = Mask(254, 1, uint256(stor[(4 * s) + sha3(t)].field_0)) + 1
                    if not Mask(256, -1, uint256(stor[(4 * s) + sha3(t)].field_0)):
                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                            uint256(stor[v].field_0) = 0
                            v = v + 1
                            continue 
                        uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                        uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                        uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                        if u == -1:
                            revert with 0, 17
                        if uint256(stor4[address(arg1)].field_0) < 1:
                            revert with 0, 17
                        if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                            mem[0] = address(arg1)
                            mem[32] = 4
                            if 1 > !(u + 1):
                                revert with 0, 17
                            s = u + 2
                            t = sha3(address(arg1), 4)
                            u = u + 1
                            continue 
                        if not uint256(stor4[address(arg1)].field_0):
                            revert with 0, 49
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                            if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(stor4[address(arg1)].field_0)--
                                if idx > -2:
                                    revert with 0, 17
                                if idx + 1 < idx:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(arg1)
                                mem[32] = 5
                                _9631 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9631] = 30
                                mem[_9631 + 32] = 'SafeMath: subtraction overflow'
                                if 1 <= sub_2bd06359[address(arg1)]:
                                    if sub_2bd06359[address(arg1)] < 1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 5
                                    sub_2bd06359[address(arg1)]--
                                    idx = idx + 1
                                    continue 
                                _9736 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9736 + 68] = mem[idx + _9631 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9736 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9736 + -mem[64] + 100
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11106 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11106] = 30
                            mem[_11106 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11168 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11168 + 68] = mem[idx + _11106 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11168 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11168 + -mem[64] + 100
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                        if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _9678 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9678] = 30
                            mem[_9678 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _9840 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9840 + 68] = mem[idx + _9678 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9840 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9840 + -mem[64] + 100
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                        uint256(stor4[address(arg1)].field_0)--
                        if idx > -2:
                            revert with 0, 17
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(arg1)
                        mem[32] = 5
                        _11107 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11107] = 30
                        mem[_11107 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= sub_2bd06359[address(arg1)]:
                            if sub_2bd06359[address(arg1)] < 1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 5
                            sub_2bd06359[address(arg1)]--
                            idx = idx + 1
                            continue 
                        _11169 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11169 + 68] = mem[idx + _11107 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11169 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _11169 + -mem[64] + 100
                    v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                    w = sha3((4 * s) + sha3(t))
                    while sha3((4 * s) + sha3(t)) + ((uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5) + 31 / 32) > w:
                        uint256(stor[v].field_0) = uint256(stor[w].field_0)
                        v = v + 1
                        w = w + 1
                        continue 
                    w = v
                    while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > w:
                        uint256(stor[w].field_0) = 0
                        w = w + 1
                        continue 
                    uint256(stor4[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1].field_0)
                    uint256(stor4[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2].field_0)
                    uint256(stor4[address(arg1)][u].field_768) = uint256(stor[(4 * s) + sha3(t) + 3].field_0)
                    if u == -1:
                        revert with 0, 17
                    if uint256(stor4[address(arg1)].field_0) < 1:
                        revert with 0, 17
                    if u + 1 < uint256(stor4[address(arg1)].field_0) - 1:
                        mem[0] = address(arg1)
                        mem[32] = 4
                        if 1 > !(u + 1):
                            revert with 0, 17
                        s = u + 2
                        t = sha3(address(arg1), 4)
                        u = u + 1
                        continue 
                    if not uint256(stor4[address(arg1)].field_0):
                        revert with 0, 49
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                        if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                            uint256(stor4[address(arg1)].field_0)--
                            if idx > -2:
                                revert with 0, 17
                            if idx + 1 < idx:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(arg1)
                            mem[32] = 5
                            _11489 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11489] = 30
                            mem[_11489 + 32] = 'SafeMath: subtraction overflow'
                            if 1 <= sub_2bd06359[address(arg1)]:
                                if sub_2bd06359[address(arg1)] < 1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 5
                                sub_2bd06359[address(arg1)]--
                                idx = idx + 1
                                continue 
                            _11517 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11517 + 68] = mem[idx + _11489 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11517 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11517 + -mem[64] + 100
                        s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                        while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                        uint256(stor4[address(arg1)].field_0)--
                        if idx > -2:
                            revert with 0, 17
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(arg1)
                        mem[32] = 5
                        _12012 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12012] = 30
                        mem[_12012 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= sub_2bd06359[address(arg1)]:
                            if sub_2bd06359[address(arg1)] < 1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 5
                            sub_2bd06359[address(arg1)]--
                            idx = idx + 1
                            continue 
                        _12028 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12028 + 68] = mem[idx + _12012 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12028 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12028 + -mem[64] + 100
                    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                    if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                        uint256(stor4[address(arg1)].field_0)--
                        if idx > -2:
                            revert with 0, 17
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(arg1)
                        mem[32] = 5
                        _11503 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11503] = 30
                        mem[_11503 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= sub_2bd06359[address(arg1)]:
                            if sub_2bd06359[address(arg1)] < 1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 5
                            sub_2bd06359[address(arg1)]--
                            idx = idx + 1
                            continue 
                        _11545 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11545 + 68] = mem[idx + _11503 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11545 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _11545 + -mem[64] + 100
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                    while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                    uint256(stor4[address(arg1)].field_0)--
                    if idx > -2:
                        revert with 0, 17
                    if idx + 1 < idx:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(arg1)
                    mem[32] = 5
                    _12013 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12013] = 30
                    mem[_12013 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= sub_2bd06359[address(arg1)]:
                        if sub_2bd06359[address(arg1)] < 1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 5
                        sub_2bd06359[address(arg1)]--
                        idx = idx + 1
                        continue 
                    _12029 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _12029 + 68] = mem[idx + _12013 + 32]
                        idx = idx + 32
                        continue 
                    mem[_12029 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _12029 + -mem[64] + 100
                revert with 0, 50
            if not uint256(stor4[address(arg1)].field_0):
                revert with 0, 49
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                if 31 >= uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                    uint256(stor4[address(arg1)].field_0)--
                    if idx > -2:
                        revert with 0, 17
                    if idx + 1 < idx:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(arg1)
                    mem[32] = 5
                    _1738 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1738] = 30
                    mem[_1738 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= sub_2bd06359[address(arg1)]:
                        if sub_2bd06359[address(arg1)] < 1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 5
                        sub_2bd06359[address(arg1)]--
                        idx = idx + 1
                        continue 
                    _1751 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1751 + 68] = mem[idx + _1738 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1751 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1751 + -mem[64] + 100
                s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                uint256(stor4[address(arg1)].field_0)--
                if idx > -2:
                    revert with 0, 17
                if idx + 1 < idx:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(arg1)
                mem[32] = 5
                _3290 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3290] = 30
                mem[_3290 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= sub_2bd06359[address(arg1)]:
                    if sub_2bd06359[address(arg1)] < 1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 5
                    sub_2bd06359[address(arg1)]--
                    idx = idx + 1
                    continue 
                _3294 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3294 + 68] = mem[idx + _3290 + 32]
                    idx = idx + 32
                    continue 
                mem[_3294 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3294 + -mem[64] + 100
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                revert with 0, 34
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
            if 31 >= stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
                uint256(stor4[address(arg1)].field_0)--
                if idx > -2:
                    revert with 0, 17
                if idx + 1 < idx:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(arg1)
                mem[32] = 5
                _1744 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1744] = 30
                mem[_1744 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= sub_2bd06359[address(arg1)]:
                    if sub_2bd06359[address(arg1)] < 1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 5
                    sub_2bd06359[address(arg1)]--
                    idx = idx + 1
                    continue 
                _1762 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1762 + 68] = mem[idx + _1744 + 32]
                    idx = idx + 32
                    continue 
                mem[_1762 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1762 + -mem[64] + 100
            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_256) = 0
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_512) = 0
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_768) = 0
            uint256(stor4[address(arg1)].field_0)--
            if idx > -2:
                revert with 0, 17
            if idx + 1 < idx:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(arg1)
            mem[32] = 5
            _3291 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3291] = 30
            mem[_3291 + 32] = 'SafeMath: subtraction overflow'
            if 1 <= sub_2bd06359[address(arg1)]:
                if sub_2bd06359[address(arg1)] < 1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 5
                sub_2bd06359[address(arg1)]--
                idx = idx + 1
                continue 
            _3295 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _3295 + 68] = mem[idx + _3291 + 32]
                idx = idx + 32
                continue 
            mem[_3295 + 98] = 0
            revert with memory
              from mem[64]
               len _3295 + -mem[64] + 100
        mem[0] = address(arg1)
        mem[32] = 4
        _503 = mem[64]
        mem[64] = mem[64] + 128
        mem[_503] = 96
        mem[_503 + 32] = 1
        mem[_503 + 64] = block.timestamp
        mem[_503 + 96] = block.timestamp
        uint256(stor4[address(arg1)].field_0)++
        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5 < 32:
                revert with 0, 34
            if mem[96]:
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 1
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
                require ext_code.size(0x98181b8ffd224700419e75d2b99705a76eb3a6b9)
                delegate 0x98181b8ffd224700419e75d2b99705a76eb3a6b9.0xbc2b405c with:
                     gas gas_remaining wei
                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_338e4796 > totalNodesCreated:
                    revert with 0, 'SafeMath: subtraction overflow', 0
            else:
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                idx = 0
                while (uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5) + 31 / 32 > idx:
                    uint256(stor4[address(arg1)][(4 * uint256(stor4[address(arg1)].field_0)) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 1
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
                require ext_code.size(0x98181b8ffd224700419e75d2b99705a76eb3a6b9)
                delegate 0x98181b8ffd224700419e75d2b99705a76eb3a6b9.0xbc2b405c with:
                     gas gas_remaining wei
                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_338e4796 > totalNodesCreated:
                    var60001 = 32
                    revert with 0, 'SafeMath: subtraction overflow', 0
        else:
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                revert with 0, 34
            if mem[96]:
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 1
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
                require ext_code.size(0x98181b8ffd224700419e75d2b99705a76eb3a6b9)
                delegate 0x98181b8ffd224700419e75d2b99705a76eb3a6b9.0xbc2b405c with:
                     gas gas_remaining wei
                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_338e4796 > totalNodesCreated:
                    revert with 0, 'SafeMath: subtraction overflow', 0
            else:
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                idx = 0
                while stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32 > idx:
                    uint256(stor4[address(arg1)][(4 * uint256(stor4[address(arg1)].field_0)) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 1
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
                require ext_code.size(0x98181b8ffd224700419e75d2b99705a76eb3a6b9)
                delegate 0x98181b8ffd224700419e75d2b99705a76eb3a6b9.0xbc2b405c with:
                     gas gas_remaining wei
                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_338e4796 > totalNodesCreated:
                    var61001 = 32
                    revert with 0, 'SafeMath: subtraction overflow', 0
    ('le', ('stor', ('name', 'sub_338e4796', 8)), ('stor', ('name', 'totalNodesCreated', 19)))
    if totalNodesCreated < sub_338e4796:
        revert with 0, 17
    totalNodesCreated -= sub_338e4796
    if sub_4588b13b == -1:
        revert with 0, 17
    sub_4588b13b++
    if sub_e5b87faa[address(arg1)] > -2:
        revert with 0, 17
    if sub_e5b87faa[address(arg1)] + 1 < sub_e5b87faa[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_e5b87faa[address(arg1)]++
}



}
