contract main {




// =====================  Runtime code  =====================


#
#  - _getRewardMultAmountOf(address arg1, uint256 arg2)
#  - _getNodeRewardAmountOf(address arg1, uint256 arg2)
#  - _cashoutNodeReward(address arg1, uint256 arg2)
#  - _addNodeValue(address arg1, uint256 arg2)
#  - _getNodeValueOf(address arg1, uint256 arg2)
#  - _distributeRewards()
#  - sub_90219732(?)
#  - _getNodeValueAmountOf(address arg1, uint256 arg2)
#  - _getRewardAmountOf(address arg1, uint256 arg2)
#  - _getAddValueCountOf(address arg1, uint256 arg2)
#  - _getRewardMultOf(address arg1, uint256 arg2)
#
array of uint256 stor1;
array of struct stor4;
uint256 sub_943ab261;
uint256 sub_728f0b4b;
uint256 claimTime;
address gateKeeperAddress;
uint8 stor9; offset 160
uint8 stor9; offset 168
uint128 stor9; offset 160
address tokenAddress;
uint256 gasForDistribution;
uint256 lastDistributionCount;
uint256 lastIndexProcessed;
array of uint256 tierLevel;
array of uint256 tierSlope;
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

function lastIndexProcessed() payable {
    return lastIndexProcessed
}

function sub_728f0b4b(?) payable {
    return sub_728f0b4b
}

function autoDistri() payable {
    return bool(uint8(stor9.field_160))
}

function totalRewardStaked() payable {
    return totalRewardStaked
}

function sub_943ab261(?) payable {
    return sub_943ab261
}

function tierLevel(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < tierLevel.length
    return tierLevel[arg1].field_0
}

function totalNodesCreated() payable {
    return totalNodesCreated
}

function tierSlope(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < tierSlope.length
    return tierSlope[arg1].field_0
}

function gasForDistribution() payable {
    return gasForDistribution
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

function _changeClaimTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    claimTime = arg1
}

function _changeNodeMinPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    sub_943ab261 = arg1
}

function _changeRewardPerValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    sub_728f0b4b = arg1
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
    require ext_code.size(0xd9145cce52d386f254917e481eb44e9943f39138)
    delegate 0xd9145cce52d386f254917e481eb44e9943f39138.0x732a2ccf with:
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
    require ext_code.size(0xd9145cce52d386f254917e481eb44e9943f39138)
    delegate 0xd9145cce52d386f254917e481eb44e9943f39138.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    return (delegate.return_data[0] > 0)
}

function _getRewardMultOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xd9145cce52d386f254917e481eb44e9943f39138)
    delegate 0xd9145cce52d386f254917e481eb44e9943f39138.0x732a2ccf with:
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
        if stor4[address(arg1)][idx].field_1024:
            if stor4[address(arg1)][idx].field_1024 and stor4[address(arg1)][idx].field_768 > -1 / stor4[address(arg1)][idx].field_1024:
                revert with 'NH{q', 17
            if not stor4[address(arg1)][idx].field_1024:
                revert with 'NH{q', 18
            if stor4[address(arg1)][idx].field_1024 * stor4[address(arg1)][idx].field_768 / stor4[address(arg1)][idx].field_1024 != stor4[address(arg1)][idx].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > (-1 * stor4[address(arg1)][idx].field_1024 * stor4[address(arg1)][idx].field_768) - 1:
                revert with 'NH{q', 17
        if idx >= stor4[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 4)
        if s > -stor4[address(arg1)][idx].field_1024 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + stor4[address(arg1)][idx].field_1024
        continue 
    if s <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not s:
        revert with 'NH{q', 18
    return (0 / s)
}

function sub_57829c61(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    tierLevel.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while tierLevel.length > idx:
            tierLevel[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            tierLevel[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while tierLevel.length > idx:
            tierLevel[idx].field_0 = 0
            idx = idx + 1
            continue 
    tierSlope.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while tierSlope.length > idx:
            tierSlope[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = floor32(('cd', 4).length) + 129
        while floor32(('cd', 4).length) + (32 * ('cd', 36).length) + 129 > idx:
            tierSlope[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while tierSlope.length > idx:
            tierSlope[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function _getRewardAmountOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xd9145cce52d386f254917e481eb44e9943f39138)
    delegate 0xd9145cce52d386f254917e481eb44e9943f39138.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    idx = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        if not stor4[address(arg1)][idx].field_1280:
            _28 = mem[64]
            mem[64] = mem[64] + 64
            mem[_28] = 26
            mem[_28 + 32] = 'SafeMath: division by zero'
            _30 = mem[64]
            mem[64] = mem[64] + 64
            mem[_30] = 26
            mem[_30 + 32] = 'SafeMath: division by zero'
        else:
            if stor4[address(arg1)][idx].field_1280 and stor4[address(arg1)][idx].field_768 > -1 / stor4[address(arg1)][idx].field_1280:
                revert with 'NH{q', 17
            if not stor4[address(arg1)][idx].field_1280:
                revert with 'NH{q', 18
            if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 / stor4[address(arg1)][idx].field_1280 != stor4[address(arg1)][idx].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
            if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                _31 = mem[64]
                mem[64] = mem[64] + 64
                mem[_31] = 26
                mem[_31 + 32] = 'SafeMath: division by zero'
                _34 = mem[64]
                mem[64] = mem[64] + 64
                mem[_34] = 26
                mem[_34 + 32] = 'SafeMath: division by zero'
            else:
                if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 and stor4[address(arg1)][idx].field_1024 > -1 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                    revert with 'NH{q', 17
                if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                    revert with 'NH{q', 18
                if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 != stor4[address(arg1)][idx].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                _35 = mem[64]
                mem[64] = mem[64] + 64
                mem[_35] = 26
                mem[_35 + 32] = 'SafeMath: division by zero'
                _37 = mem[64]
                mem[64] = mem[64] + 64
                mem[_37] = 26
                mem[_37 + 32] = 'SafeMath: division by zero'
                if 0 > -(stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18) - 1:
                    revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function _getNodeValueOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xd9145cce52d386f254917e481eb44e9943f39138)
    delegate 0xd9145cce52d386f254917e481eb44e9943f39138.0x732a2ccf with:
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
        if s > -stor4[address(arg1)][idx].field_1024 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + stor4[address(arg1)][idx].field_1024
        continue 
    return (s * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0)
}

function _cashoutAllNodesReward(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == tokenAddress:
        if stor4[address(arg1)].field_0 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
        idx = 0
        s = 0
        while idx < stor4[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 4)
            if not stor4[address(arg1)][idx].field_1280:
                _41 = mem[64]
                mem[64] = mem[64] + 64
                mem[_41] = 26
                mem[_41 + 32] = 'SafeMath: division by zero'
                _45 = mem[64]
                mem[64] = mem[64] + 64
                mem[_45] = 26
                mem[_45 + 32] = 'SafeMath: division by zero'
            else:
                if stor4[address(arg1)][idx].field_1280 and stor4[address(arg1)][idx].field_768 > -1 / stor4[address(arg1)][idx].field_1280:
                    revert with 'NH{q', 17
                if not stor4[address(arg1)][idx].field_1280:
                    revert with 'NH{q', 18
                if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 / stor4[address(arg1)][idx].field_1280 != stor4[address(arg1)][idx].field_768:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                    _47 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_47] = 26
                    mem[_47 + 32] = 'SafeMath: division by zero'
                    _52 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_52] = 26
                    mem[_52 + 32] = 'SafeMath: division by zero'
                else:
                    if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 and stor4[address(arg1)][idx].field_1024 > -1 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                        revert with 'NH{q', 17
                    if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                        revert with 'NH{q', 18
                    if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 != stor4[address(arg1)][idx].field_1024:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _55 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_55] = 26
                    mem[_55 + 32] = 'SafeMath: division by zero'
                    _59 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_59] = 26
                    mem[_59 + 32] = 'SafeMath: division by zero'
                    if 0 > -(stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18) - 1:
                        revert with 'NH{q', 17
            stor4[address(arg1)][idx].field_1280 = 0
            stor4[address(arg1)][idx].field_768 = 100000
            stor4[address(arg1)][idx].field_1536 = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = (7 * idx) + sha3(sha3(address(arg1), 4))
            continue 
    else:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
        if stor4[address(arg1)].field_0 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
        idx = 0
        s = 0
        while idx < stor4[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 4)
            if not stor4[address(arg1)][idx].field_1280:
                _42 = mem[64]
                mem[64] = mem[64] + 64
                mem[_42] = 26
                mem[_42 + 32] = 'SafeMath: division by zero'
                _46 = mem[64]
                mem[64] = mem[64] + 64
                mem[_46] = 26
                mem[_46 + 32] = 'SafeMath: division by zero'
            else:
                if stor4[address(arg1)][idx].field_1280 and stor4[address(arg1)][idx].field_768 > -1 / stor4[address(arg1)][idx].field_1280:
                    revert with 'NH{q', 17
                if not stor4[address(arg1)][idx].field_1280:
                    revert with 'NH{q', 18
                if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 / stor4[address(arg1)][idx].field_1280 != stor4[address(arg1)][idx].field_768:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                    _48 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_48] = 26
                    mem[_48 + 32] = 'SafeMath: division by zero'
                    _54 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_54] = 26
                    mem[_54 + 32] = 'SafeMath: division by zero'
                else:
                    if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 and stor4[address(arg1)][idx].field_1024 > -1 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                        revert with 'NH{q', 17
                    if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                        revert with 'NH{q', 18
                    if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 != stor4[address(arg1)][idx].field_1024:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _56 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_56] = 26
                    mem[_56 + 32] = 'SafeMath: division by zero'
                    _60 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_60] = 26
                    mem[_60 + 32] = 'SafeMath: division by zero'
                    if 0 > -(stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18) - 1:
                        revert with 'NH{q', 17
            stor4[address(arg1)][idx].field_1280 = 0
            stor4[address(arg1)][idx].field_768 = 100000
            stor4[address(arg1)][idx].field_1536 = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = (7 * idx) + sha3(sha3(address(arg1), 4))
            continue 
    return 0
}

function _getNodesNames(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0xd9145cce52d386f254917e481eb44e9943f39138)
    delegate 0xd9145cce52d386f254917e481eb44e9943f39138.0x732a2ccf with:
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
        mem[64] = mem[64] + 224
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
                        mem[0] = (7 * idx) + sha3(sha3(address(arg1), 4))
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
                mem[_56 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_56 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_56 + 192] = stor4[address(arg1)][idx].field_1536
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
                mem[_56 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_56 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_56 + 192] = stor4[address(arg1)][idx].field_1536
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
                mem[_56 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_56 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_56 + 192] = stor4[address(arg1)][idx].field_1536
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (7 * idx) + sha3(sha3(address(arg1), 4))
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
            mem[_56 + 128] = stor4[address(arg1)][u].field_1024
            mem[_56 + 160] = stor4[address(arg1)][u].field_1280
            mem[_56 + 192] = stor4[address(arg1)][u].field_1536
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
                mem[_56 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_56 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_56 + 192] = stor4[address(arg1)][idx].field_1536
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
                mem[_56 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_56 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_56 + 192] = stor4[address(arg1)][idx].field_1536
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (7 * idx) + sha3(sha3(address(arg1), 4))
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
            mem[_56 + 128] = stor4[address(arg1)][u].field_1024
            mem[_56 + 160] = stor4[address(arg1)][u].field_1280
            mem[_56 + 192] = stor4[address(arg1)][u].field_1536
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
                mem[0] = (7 * idx) + sha3(sha3(address(arg1), 4))
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
        mem[_56 + 128] = stor4[address(arg1)][idx].field_1024
        mem[_56 + 160] = stor4[address(arg1)][idx].field_1280
        mem[_56 + 192] = stor4[address(arg1)][idx].field_1536
        mem[s] = _56
        s = s + 32
        idx = idx + 1
        continue 
    _54 = mem[ceil32(return_data.size) + 96]
    _57 = mem[64]
    mem[64] = mem[64] + 224
    mem[_57] = 96
    mem[_57 + 32] = 0
    mem[_57 + 64] = 0
    mem[_57 + 96] = 0
    mem[_57 + 128] = 0
    mem[_57 + 160] = 0
    mem[_57 + 192] = 0
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
       len _100 + ceil32(_104) + -mem[64] + 64
}

function _addAllNodeValue(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == tokenAddress:
        if stor4[address(arg1)].field_0 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
        idx = 0
        s = 0
        while idx < stor4[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 4)
            if not stor4[address(arg1)][idx].field_1280:
                _299 = mem[64]
                mem[64] = mem[64] + 64
                mem[_299] = 26
                mem[_299 + 32] = 'SafeMath: division by zero'
                _303 = mem[64]
                mem[64] = mem[64] + 64
                mem[_303] = 26
                mem[_303 + 32] = 'SafeMath: division by zero'
                if not stor4[address(arg1)][idx].field_1280:
                    _317 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_317] = 26
                    mem[_317 + 32] = 'SafeMath: division by zero'
                    _323 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_323] = 26
                    mem[_323 + 32] = 'SafeMath: division by zero'
                    if stor4[address(arg1)][idx].field_1024 > -1:
                        revert with 'NH{q', 17
                else:
                    if stor4[address(arg1)][idx].field_1280 and stor4[address(arg1)][idx].field_768 > -1 / stor4[address(arg1)][idx].field_1280:
                        revert with 'NH{q', 17
                    if not stor4[address(arg1)][idx].field_1280:
                        revert with 'NH{q', 18
                    if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 / stor4[address(arg1)][idx].field_1280 != stor4[address(arg1)][idx].field_768:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                        _326 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_326] = 26
                        mem[_326 + 32] = 'SafeMath: division by zero'
                        _335 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_335] = 26
                        mem[_335 + 32] = 'SafeMath: division by zero'
                        if stor4[address(arg1)][idx].field_1024 > -1:
                            revert with 'NH{q', 17
                    else:
                        if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 and stor4[address(arg1)][idx].field_1024 > -1 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                            revert with 'NH{q', 17
                        if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                            revert with 'NH{q', 18
                        if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 != stor4[address(arg1)][idx].field_1024:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _341 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_341] = 26
                        mem[_341 + 32] = 'SafeMath: division by zero'
                        _372 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_372] = 26
                        mem[_372 + 32] = 'SafeMath: division by zero'
                        if stor4[address(arg1)][idx].field_1024 > -(stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18) - 1:
                            revert with 'NH{q', 17
                        stor4[address(arg1)][idx].field_1024 += stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18
            else:
                if stor4[address(arg1)][idx].field_1280 and stor4[address(arg1)][idx].field_768 > -1 / stor4[address(arg1)][idx].field_1280:
                    revert with 'NH{q', 17
                if not stor4[address(arg1)][idx].field_1280:
                    revert with 'NH{q', 18
                if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 / stor4[address(arg1)][idx].field_1280 != stor4[address(arg1)][idx].field_768:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                    _305 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_305] = 26
                    mem[_305 + 32] = 'SafeMath: division by zero'
                    _310 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_310] = 26
                    mem[_310 + 32] = 'SafeMath: division by zero'
                    if not stor4[address(arg1)][idx].field_1280:
                        _325 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_325] = 26
                        mem[_325 + 32] = 'SafeMath: division by zero'
                        _333 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_333] = 26
                        mem[_333 + 32] = 'SafeMath: division by zero'
                        if stor4[address(arg1)][idx].field_1024 > -1:
                            revert with 'NH{q', 17
                    else:
                        if stor4[address(arg1)][idx].field_1280 and stor4[address(arg1)][idx].field_768 > -1 / stor4[address(arg1)][idx].field_1280:
                            revert with 'NH{q', 17
                        if not stor4[address(arg1)][idx].field_1280:
                            revert with 'NH{q', 18
                        if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 / stor4[address(arg1)][idx].field_1280 != stor4[address(arg1)][idx].field_768:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                            _340 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_340] = 26
                            mem[_340 + 32] = 'SafeMath: division by zero'
                            _371 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_371] = 26
                            mem[_371 + 32] = 'SafeMath: division by zero'
                            if stor4[address(arg1)][idx].field_1024 > -1:
                                revert with 'NH{q', 17
                        else:
                            if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 and stor4[address(arg1)][idx].field_1024 > -1 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                                revert with 'NH{q', 17
                            if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                                revert with 'NH{q', 18
                            if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 != stor4[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _382 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_382] = 26
                            mem[_382 + 32] = 'SafeMath: division by zero'
                            _427 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_427] = 26
                            mem[_427 + 32] = 'SafeMath: division by zero'
                            if stor4[address(arg1)][idx].field_1024 > -(stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18) - 1:
                                revert with 'NH{q', 17
                            stor4[address(arg1)][idx].field_1024 += stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18
                else:
                    if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 and stor4[address(arg1)][idx].field_1024 > -1 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                        revert with 'NH{q', 17
                    if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                        revert with 'NH{q', 18
                    if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 != stor4[address(arg1)][idx].field_1024:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _313 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_313] = 26
                    mem[_313 + 32] = 'SafeMath: division by zero'
                    _319 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_319] = 26
                    mem[_319 + 32] = 'SafeMath: division by zero'
                    if 0 > -(stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18) - 1:
                        revert with 'NH{q', 17
                    if not stor4[address(arg1)][idx].field_1280:
                        _339 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_339] = 26
                        mem[_339 + 32] = 'SafeMath: division by zero'
                        _369 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_369] = 26
                        mem[_369 + 32] = 'SafeMath: division by zero'
                        if stor4[address(arg1)][idx].field_1024 > -1:
                            revert with 'NH{q', 17
                    else:
                        if stor4[address(arg1)][idx].field_1280 and stor4[address(arg1)][idx].field_768 > -1 / stor4[address(arg1)][idx].field_1280:
                            revert with 'NH{q', 17
                        if not stor4[address(arg1)][idx].field_1280:
                            revert with 'NH{q', 18
                        if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 / stor4[address(arg1)][idx].field_1280 != stor4[address(arg1)][idx].field_768:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                            _381 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_381] = 26
                            mem[_381 + 32] = 'SafeMath: division by zero'
                            _426 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_426] = 26
                            mem[_426 + 32] = 'SafeMath: division by zero'
                            if stor4[address(arg1)][idx].field_1024 > -1:
                                revert with 'NH{q', 17
                        else:
                            if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 and stor4[address(arg1)][idx].field_1024 > -1 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                                revert with 'NH{q', 17
                            if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                                revert with 'NH{q', 18
                            if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 != stor4[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _439 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_439] = 26
                            mem[_439 + 32] = 'SafeMath: division by zero'
                            _497 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_497] = 26
                            mem[_497 + 32] = 'SafeMath: division by zero'
                            if stor4[address(arg1)][idx].field_1024 > -(stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18) - 1:
                                revert with 'NH{q', 17
                            stor4[address(arg1)][idx].field_1024 += stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18
            if stor4[address(arg1)][idx].field_1280 > 0:
                if 5 >= tierLevel.length:
                    revert with 'NH{q', 50
                if stor4[address(arg1)][idx].field_768 >= uint256(tierLevel.field_1280):
                    if 5 >= tierSlope.length:
                        revert with 'NH{q', 50
                    mem[0] = 14
                    if stor4[address(arg1)][idx].field_768 > -uint256(tierSlope.field_1280) - 1:
                        revert with 'NH{q', 17
                    stor4[address(arg1)][idx].field_768 += uint256(tierSlope.field_1280)
                else:
                    if 4 >= tierLevel.length:
                        revert with 'NH{q', 50
                    if stor4[address(arg1)][idx].field_768 >= uint256(tierLevel.field_1024):
                        if 4 >= tierSlope.length:
                            revert with 'NH{q', 50
                        mem[0] = 14
                        if stor4[address(arg1)][idx].field_768 > -uint256(tierSlope.field_1024) - 1:
                            revert with 'NH{q', 17
                        stor4[address(arg1)][idx].field_768 += uint256(tierSlope.field_1024)
                    else:
                        if 3 >= tierLevel.length:
                            revert with 'NH{q', 50
                        if stor4[address(arg1)][idx].field_768 >= uint256(tierLevel.field_768):
                            if 2 >= tierSlope.length:
                                revert with 'NH{q', 50
                            mem[0] = 14
                            if stor4[address(arg1)][idx].field_768 > -uint256(tierSlope.field_512) - 1:
                                revert with 'NH{q', 17
                            stor4[address(arg1)][idx].field_768 += uint256(tierSlope.field_512)
                        else:
                            if 2 >= tierLevel.length:
                                revert with 'NH{q', 50
                            if stor4[address(arg1)][idx].field_768 >= uint256(tierLevel.field_512):
                                if 2 >= tierSlope.length:
                                    revert with 'NH{q', 50
                                mem[0] = 14
                                if stor4[address(arg1)][idx].field_768 > -uint256(tierSlope.field_512) - 1:
                                    revert with 'NH{q', 17
                                stor4[address(arg1)][idx].field_768 += uint256(tierSlope.field_512)
                            else:
                                if 1 >= tierLevel.length:
                                    revert with 'NH{q', 50
                                if stor4[address(arg1)][idx].field_768 < uint256(tierLevel.field_256):
                                    if 0 >= tierSlope.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 14
                                    if stor4[address(arg1)][idx].field_768 > -uint256(tierSlope.field_0) - 1:
                                        revert with 'NH{q', 17
                                    stor4[address(arg1)][idx].field_768 += uint256(tierSlope.field_0)
                                else:
                                    if 1 >= tierSlope.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 14
                                    if stor4[address(arg1)][idx].field_768 > -uint256(tierSlope.field_256) - 1:
                                        revert with 'NH{q', 17
                                    stor4[address(arg1)][idx].field_768 += uint256(tierSlope.field_256)
                stor4[address(arg1)][idx].field_1280 = 0
                if stor4[address(arg1)][idx].field_1536 > -2:
                    revert with 'NH{q', 17
                stor4[address(arg1)][idx].field_1536++
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = (7 * idx) + sha3(sha3(address(arg1), 4))
            continue 
    else:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
        if stor4[address(arg1)].field_0 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
        idx = 0
        s = 0
        while idx < stor4[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 4)
            if not stor4[address(arg1)][idx].field_1280:
                _300 = mem[64]
                mem[64] = mem[64] + 64
                mem[_300] = 26
                mem[_300 + 32] = 'SafeMath: division by zero'
                _304 = mem[64]
                mem[64] = mem[64] + 64
                mem[_304] = 26
                mem[_304 + 32] = 'SafeMath: division by zero'
                if not stor4[address(arg1)][idx].field_1280:
                    _318 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_318] = 26
                    mem[_318 + 32] = 'SafeMath: division by zero'
                    _324 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_324] = 26
                    mem[_324 + 32] = 'SafeMath: division by zero'
                    if stor4[address(arg1)][idx].field_1024 > -1:
                        revert with 'NH{q', 17
                else:
                    if stor4[address(arg1)][idx].field_1280 and stor4[address(arg1)][idx].field_768 > -1 / stor4[address(arg1)][idx].field_1280:
                        revert with 'NH{q', 17
                    if not stor4[address(arg1)][idx].field_1280:
                        revert with 'NH{q', 18
                    if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 / stor4[address(arg1)][idx].field_1280 != stor4[address(arg1)][idx].field_768:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                        _328 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_328] = 26
                        mem[_328 + 32] = 'SafeMath: division by zero'
                        _338 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_338] = 26
                        mem[_338 + 32] = 'SafeMath: division by zero'
                        if stor4[address(arg1)][idx].field_1024 > -1:
                            revert with 'NH{q', 17
                    else:
                        if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 and stor4[address(arg1)][idx].field_1024 > -1 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                            revert with 'NH{q', 17
                        if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                            revert with 'NH{q', 18
                        if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 != stor4[address(arg1)][idx].field_1024:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _344 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_344] = 26
                        mem[_344 + 32] = 'SafeMath: division by zero'
                        _378 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_378] = 26
                        mem[_378 + 32] = 'SafeMath: division by zero'
                        if stor4[address(arg1)][idx].field_1024 > -(stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18) - 1:
                            revert with 'NH{q', 17
                        stor4[address(arg1)][idx].field_1024 += stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18
            else:
                if stor4[address(arg1)][idx].field_1280 and stor4[address(arg1)][idx].field_768 > -1 / stor4[address(arg1)][idx].field_1280:
                    revert with 'NH{q', 17
                if not stor4[address(arg1)][idx].field_1280:
                    revert with 'NH{q', 18
                if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 / stor4[address(arg1)][idx].field_1280 != stor4[address(arg1)][idx].field_768:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                    _306 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_306] = 26
                    mem[_306 + 32] = 'SafeMath: division by zero'
                    _312 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_312] = 26
                    mem[_312 + 32] = 'SafeMath: division by zero'
                    if not stor4[address(arg1)][idx].field_1280:
                        _327 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_327] = 26
                        mem[_327 + 32] = 'SafeMath: division by zero'
                        _336 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_336] = 26
                        mem[_336 + 32] = 'SafeMath: division by zero'
                        if stor4[address(arg1)][idx].field_1024 > -1:
                            revert with 'NH{q', 17
                    else:
                        if stor4[address(arg1)][idx].field_1280 and stor4[address(arg1)][idx].field_768 > -1 / stor4[address(arg1)][idx].field_1280:
                            revert with 'NH{q', 17
                        if not stor4[address(arg1)][idx].field_1280:
                            revert with 'NH{q', 18
                        if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 / stor4[address(arg1)][idx].field_1280 != stor4[address(arg1)][idx].field_768:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                            _343 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_343] = 26
                            mem[_343 + 32] = 'SafeMath: division by zero'
                            _377 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_377] = 26
                            mem[_377 + 32] = 'SafeMath: division by zero'
                            if stor4[address(arg1)][idx].field_1024 > -1:
                                revert with 'NH{q', 17
                        else:
                            if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 and stor4[address(arg1)][idx].field_1024 > -1 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                                revert with 'NH{q', 17
                            if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                                revert with 'NH{q', 18
                            if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 != stor4[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _384 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_384] = 26
                            mem[_384 + 32] = 'SafeMath: division by zero'
                            _434 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_434] = 26
                            mem[_434 + 32] = 'SafeMath: division by zero'
                            if stor4[address(arg1)][idx].field_1024 > -(stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18) - 1:
                                revert with 'NH{q', 17
                            stor4[address(arg1)][idx].field_1024 += stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18
                else:
                    if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 and stor4[address(arg1)][idx].field_1024 > -1 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                        revert with 'NH{q', 17
                    if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                        revert with 'NH{q', 18
                    if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 != stor4[address(arg1)][idx].field_1024:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _314 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_314] = 26
                    mem[_314 + 32] = 'SafeMath: division by zero'
                    _320 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_320] = 26
                    mem[_320 + 32] = 'SafeMath: division by zero'
                    if 0 > -(stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18) - 1:
                        revert with 'NH{q', 17
                    if not stor4[address(arg1)][idx].field_1280:
                        _342 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_342] = 26
                        mem[_342 + 32] = 'SafeMath: division by zero'
                        _375 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_375] = 26
                        mem[_375 + 32] = 'SafeMath: division by zero'
                        if stor4[address(arg1)][idx].field_1024 > -1:
                            revert with 'NH{q', 17
                    else:
                        if stor4[address(arg1)][idx].field_1280 and stor4[address(arg1)][idx].field_768 > -1 / stor4[address(arg1)][idx].field_1280:
                            revert with 'NH{q', 17
                        if not stor4[address(arg1)][idx].field_1280:
                            revert with 'NH{q', 18
                        if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 / stor4[address(arg1)][idx].field_1280 != stor4[address(arg1)][idx].field_768:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                            _383 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_383] = 26
                            mem[_383 + 32] = 'SafeMath: division by zero'
                            _433 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_433] = 26
                            mem[_433 + 32] = 'SafeMath: division by zero'
                            if stor4[address(arg1)][idx].field_1024 > -1:
                                revert with 'NH{q', 17
                        else:
                            if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 and stor4[address(arg1)][idx].field_1024 > -1 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                                revert with 'NH{q', 17
                            if not stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768:
                                revert with 'NH{q', 18
                            if stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 != stor4[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _440 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_440] = 26
                            mem[_440 + 32] = 'SafeMath: division by zero'
                            _504 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_504] = 26
                            mem[_504 + 32] = 'SafeMath: division by zero'
                            if stor4[address(arg1)][idx].field_1024 > -(stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18) - 1:
                                revert with 'NH{q', 17
                            stor4[address(arg1)][idx].field_1024 += stor4[address(arg1)][idx].field_1280 * stor4[address(arg1)][idx].field_768 * stor4[address(arg1)][idx].field_1024 / 100000 / 10^18
            if stor4[address(arg1)][idx].field_1280 > 0:
                if 5 >= tierLevel.length:
                    revert with 'NH{q', 50
                if stor4[address(arg1)][idx].field_768 >= uint256(tierLevel.field_1280):
                    if 5 >= tierSlope.length:
                        revert with 'NH{q', 50
                    mem[0] = 14
                    if stor4[address(arg1)][idx].field_768 > -uint256(tierSlope.field_1280) - 1:
                        revert with 'NH{q', 17
                    stor4[address(arg1)][idx].field_768 += uint256(tierSlope.field_1280)
                else:
                    if 4 >= tierLevel.length:
                        revert with 'NH{q', 50
                    if stor4[address(arg1)][idx].field_768 >= uint256(tierLevel.field_1024):
                        if 4 >= tierSlope.length:
                            revert with 'NH{q', 50
                        mem[0] = 14
                        if stor4[address(arg1)][idx].field_768 > -uint256(tierSlope.field_1024) - 1:
                            revert with 'NH{q', 17
                        stor4[address(arg1)][idx].field_768 += uint256(tierSlope.field_1024)
                    else:
                        if 3 >= tierLevel.length:
                            revert with 'NH{q', 50
                        if stor4[address(arg1)][idx].field_768 >= uint256(tierLevel.field_768):
                            if 2 >= tierSlope.length:
                                revert with 'NH{q', 50
                            mem[0] = 14
                            if stor4[address(arg1)][idx].field_768 > -uint256(tierSlope.field_512) - 1:
                                revert with 'NH{q', 17
                            stor4[address(arg1)][idx].field_768 += uint256(tierSlope.field_512)
                        else:
                            if 2 >= tierLevel.length:
                                revert with 'NH{q', 50
                            if stor4[address(arg1)][idx].field_768 >= uint256(tierLevel.field_512):
                                if 2 >= tierSlope.length:
                                    revert with 'NH{q', 50
                                mem[0] = 14
                                if stor4[address(arg1)][idx].field_768 > -uint256(tierSlope.field_512) - 1:
                                    revert with 'NH{q', 17
                                stor4[address(arg1)][idx].field_768 += uint256(tierSlope.field_512)
                            else:
                                if 1 >= tierLevel.length:
                                    revert with 'NH{q', 50
                                if stor4[address(arg1)][idx].field_768 < uint256(tierLevel.field_256):
                                    if 0 >= tierSlope.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 14
                                    if stor4[address(arg1)][idx].field_768 > -uint256(tierSlope.field_0) - 1:
                                        revert with 'NH{q', 17
                                    stor4[address(arg1)][idx].field_768 += uint256(tierSlope.field_0)
                                else:
                                    if 1 >= tierSlope.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 14
                                    if stor4[address(arg1)][idx].field_768 > -uint256(tierSlope.field_256) - 1:
                                        revert with 'NH{q', 17
                                    stor4[address(arg1)][idx].field_768 += uint256(tierSlope.field_256)
                stor4[address(arg1)][idx].field_1280 = 0
                if stor4[address(arg1)][idx].field_1536 > -2:
                    revert with 'NH{q', 17
                stor4[address(arg1)][idx].field_1536++
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = (7 * idx) + sha3(sha3(address(arg1), 4))
            continue 
    return 0
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0xd9145cce52d386f254917e481eb44e9943f39138)
    delegate 0xd9145cce52d386f254917e481eb44e9943f39138.0x732a2ccf with:
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
        mem[64] = mem[64] + 224
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
                        mem[0] = (7 * idx) + sha3(sha3(address(arg1), 4))
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
                mem[_58 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_58 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_58 + 192] = stor4[address(arg1)][idx].field_1536
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
                mem[_58 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_58 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_58 + 192] = stor4[address(arg1)][idx].field_1536
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
                mem[_58 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_58 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_58 + 192] = stor4[address(arg1)][idx].field_1536
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (7 * idx) + sha3(sha3(address(arg1), 4))
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
            mem[_58 + 128] = stor4[address(arg1)][u].field_1024
            mem[_58 + 160] = stor4[address(arg1)][u].field_1280
            mem[_58 + 192] = stor4[address(arg1)][u].field_1536
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
                mem[_58 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_58 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_58 + 192] = stor4[address(arg1)][idx].field_1536
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
                mem[_58 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_58 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_58 + 192] = stor4[address(arg1)][idx].field_1536
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (7 * idx) + sha3(sha3(address(arg1), 4))
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
            mem[_58 + 128] = stor4[address(arg1)][u].field_1024
            mem[_58 + 160] = stor4[address(arg1)][u].field_1280
            mem[_58 + 192] = stor4[address(arg1)][u].field_1536
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
                mem[0] = (7 * idx) + sha3(sha3(address(arg1), 4))
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
        mem[_58 + 128] = stor4[address(arg1)][idx].field_1024
        mem[_58 + 160] = stor4[address(arg1)][idx].field_1280
        mem[_58 + 192] = stor4[address(arg1)][idx].field_1536
        mem[s] = _58
        s = s + 32
        idx = idx + 1
        continue 
    _56 = mem[ceil32(return_data.size) + 96]
    _59 = mem[64]
    mem[64] = mem[64] + 224
    mem[_59] = 96
    mem[_59 + 32] = 0
    mem[_59 + 64] = 0
    mem[_59 + 96] = 0
    mem[_59 + 128] = 0
    mem[_59 + 160] = 0
    mem[_59 + 192] = 0
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
        _349 = mem[64]
        mem[mem[64]] = 32
        _359 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_359)] = mem[s + 32 len ceil32(_359)]
        if ceil32(_359) <= _359:
            return 32, mem[mem[64] + 32 len ceil32(_359) + 32]
        mem[mem[64] + _359 + 64] = 0
        return memory
          from mem[64]
           len _349 + ceil32(_359) + -mem[64] + 64
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
    _352 = mem[64]
    mem[mem[64]] = 32
    _360 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_360)] = mem[s + 32 len ceil32(_360)]
    if ceil32(_360) <= _360:
        return 32, mem[mem[64] + 32 len ceil32(_360) + 32]
    mem[mem[64] + _360 + 64] = 0
    return memory
      from mem[64]
       len _352 + ceil32(_360) + -mem[64] + 64
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0xd9145cce52d386f254917e481eb44e9943f39138)
    delegate 0xd9145cce52d386f254917e481eb44e9943f39138.0x732a2ccf with:
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
        mem[64] = mem[64] + 224
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
                        mem[0] = (7 * idx) + sha3(sha3(address(arg1), 4))
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
                mem[_58 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_58 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_58 + 192] = stor4[address(arg1)][idx].field_1536
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
                mem[_58 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_58 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_58 + 192] = stor4[address(arg1)][idx].field_1536
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
                mem[_58 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_58 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_58 + 192] = stor4[address(arg1)][idx].field_1536
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (7 * idx) + sha3(sha3(address(arg1), 4))
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
            mem[_58 + 128] = stor4[address(arg1)][u].field_1024
            mem[_58 + 160] = stor4[address(arg1)][u].field_1280
            mem[_58 + 192] = stor4[address(arg1)][u].field_1536
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
                mem[_58 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_58 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_58 + 192] = stor4[address(arg1)][idx].field_1536
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
                mem[_58 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_58 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_58 + 192] = stor4[address(arg1)][idx].field_1536
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (7 * idx) + sha3(sha3(address(arg1), 4))
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
            mem[_58 + 128] = stor4[address(arg1)][u].field_1024
            mem[_58 + 160] = stor4[address(arg1)][u].field_1280
            mem[_58 + 192] = stor4[address(arg1)][u].field_1536
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
                mem[0] = (7 * idx) + sha3(sha3(address(arg1), 4))
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
        mem[_58 + 128] = stor4[address(arg1)][idx].field_1024
        mem[_58 + 160] = stor4[address(arg1)][idx].field_1280
        mem[_58 + 192] = stor4[address(arg1)][idx].field_1536
        mem[s] = _58
        s = s + 32
        idx = idx + 1
        continue 
    _56 = mem[ceil32(return_data.size) + 96]
    _59 = mem[64]
    mem[64] = mem[64] + 224
    mem[_59] = 96
    mem[_59 + 32] = 0
    mem[_59 + 64] = 0
    mem[_59 + 96] = 0
    mem[_59 + 128] = 0
    mem[_59 + 160] = 0
    mem[_59 + 192] = 0
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
        _349 = mem[64]
        mem[mem[64]] = 32
        _359 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_359)] = mem[s + 32 len ceil32(_359)]
        if ceil32(_359) <= _359:
            return 32, mem[mem[64] + 32 len ceil32(_359) + 32]
        mem[mem[64] + _359 + 64] = 0
        return memory
          from mem[64]
           len _349 + ceil32(_359) + -mem[64] + 64
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
    _352 = mem[64]
    mem[mem[64]] = 32
    _360 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_360)] = mem[s + 32 len ceil32(_360)]
    if ceil32(_360) <= _360:
        return 32, mem[mem[64] + 32 len ceil32(_360) + 32]
    mem[mem[64] + _360 + 64] = 0
    return memory
      from mem[64]
       len _352 + ceil32(_360) + -mem[64] + 64
}

function _getNodesRewardAvailable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0xd9145cce52d386f254917e481eb44e9943f39138)
    delegate 0xd9145cce52d386f254917e481eb44e9943f39138.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 4
    mem[64] = ceil32(return_data.size) + (32 * stor4[address(arg1)].field_0) + 128
    mem[ceil32(return_data.size) + 96] = stor4[address(arg1)].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        _288 = mem[64]
        mem[64] = mem[64] + 224
        if stor4[address(arg1)][idx].field_0:
            if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                revert with 'NH{q', 34
            _297 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
            mem[_297] = stor4[address(arg1)][idx].field_1
            if stor4[address(arg1)][idx].field_0:
                if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor4[address(arg1)][idx].field_1:
                    if 31 >= stor4[address(arg1)][idx].field_1:
                        mem[_297 + 32] = 256 * stor4[address(arg1)][idx].field_8
                    else:
                        mem[0] = (7 * idx) + sha3(sha3(address(arg1), 4))
                        mem[_297 + 32] = stor4[address(arg1)][idx].field_0
                        t = _297 + 32
                        u = sha3(mem[0])
                        while _297 + stor4[address(arg1)][idx].field_1 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_288] = _297
                mem[_288 + 32] = stor4[address(arg1)][idx].field_256
                mem[_288 + 64] = stor4[address(arg1)][idx].field_512
                mem[_288 + 96] = stor4[address(arg1)][idx].field_768
                mem[_288 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_288 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_288 + 192] = stor4[address(arg1)][idx].field_1536
                mem[s] = _288
                s = s + 32
                idx = idx + 1
                continue 
            if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor4[address(arg1)][idx].field_1:
                mem[_288] = _297
                mem[_288 + 32] = stor4[address(arg1)][idx].field_256
                mem[_288 + 64] = stor4[address(arg1)][idx].field_512
                mem[_288 + 96] = stor4[address(arg1)][idx].field_768
                mem[_288 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_288 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_288 + 192] = stor4[address(arg1)][idx].field_1536
                mem[s] = _288
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_297 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_288] = _297
                mem[_288 + 32] = stor4[address(arg1)][idx].field_256
                mem[_288 + 64] = stor4[address(arg1)][idx].field_512
                mem[_288 + 96] = stor4[address(arg1)][idx].field_768
                mem[_288 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_288 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_288 + 192] = stor4[address(arg1)][idx].field_1536
                mem[s] = _288
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (7 * idx) + sha3(sha3(address(arg1), 4))
            mem[_297 + 32] = stor4[address(arg1)][idx].field_0
            t = _297 + 32
            u = sha3(mem[0])
            while _297 + stor4[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_288] = _297
            mem[_288 + 32] = stor4[address(arg1)][u].field_256
            mem[_288 + 64] = stor4[address(arg1)][u].field_512
            mem[_288 + 96] = stor4[address(arg1)][u].field_768
            mem[_288 + 128] = stor4[address(arg1)][u].field_1024
            mem[_288 + 160] = stor4[address(arg1)][u].field_1280
            mem[_288 + 192] = stor4[address(arg1)][u].field_1536
            mem[t] = _288
            t = t + 32
            u = u + 1
            continue 
        if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
            revert with 'NH{q', 34
        _300 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1) + 32
        mem[_300] = stor4[address(arg1)][idx].field_1
        if stor4[address(arg1)][idx].field_0:
            if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor4[address(arg1)][idx].field_1:
                mem[_288] = _300
                mem[_288 + 32] = stor4[address(arg1)][idx].field_256
                mem[_288 + 64] = stor4[address(arg1)][idx].field_512
                mem[_288 + 96] = stor4[address(arg1)][idx].field_768
                mem[_288 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_288 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_288 + 192] = stor4[address(arg1)][idx].field_1536
                mem[s] = _288
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_300 + 32] = 256 * stor4[address(arg1)][idx].field_8
                mem[_288] = _300
                mem[_288 + 32] = stor4[address(arg1)][idx].field_256
                mem[_288 + 64] = stor4[address(arg1)][idx].field_512
                mem[_288 + 96] = stor4[address(arg1)][idx].field_768
                mem[_288 + 128] = stor4[address(arg1)][idx].field_1024
                mem[_288 + 160] = stor4[address(arg1)][idx].field_1280
                mem[_288 + 192] = stor4[address(arg1)][idx].field_1536
                mem[s] = _288
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (7 * idx) + sha3(sha3(address(arg1), 4))
            mem[_300 + 32] = stor4[address(arg1)][idx].field_0
            t = _300 + 32
            u = sha3(mem[0])
            while _300 + stor4[address(arg1)][u].field_1 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_288] = _300
            mem[_288 + 32] = stor4[address(arg1)][u].field_256
            mem[_288 + 64] = stor4[address(arg1)][u].field_512
            mem[_288 + 96] = stor4[address(arg1)][u].field_768
            mem[_288 + 128] = stor4[address(arg1)][u].field_1024
            mem[_288 + 160] = stor4[address(arg1)][u].field_1280
            mem[_288 + 192] = stor4[address(arg1)][u].field_1536
            mem[t] = _288
            t = t + 32
            u = u + 1
            continue 
        if stor4[address(arg1)][idx].field_0 == stor4[address(arg1)][idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[address(arg1)][idx].field_1:
            if 31 >= stor4[address(arg1)][idx].field_1:
                mem[_300 + 32] = 256 * stor4[address(arg1)][idx].field_8
            else:
                mem[0] = (7 * idx) + sha3(sha3(address(arg1), 4))
                mem[_300 + 32] = stor4[address(arg1)][idx].field_0
                t = _300 + 32
                u = sha3(mem[0])
                while _300 + stor4[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_288] = _300
        mem[_288 + 32] = stor4[address(arg1)][idx].field_256
        mem[_288 + 64] = stor4[address(arg1)][idx].field_512
        mem[_288 + 96] = stor4[address(arg1)][idx].field_768
        mem[_288 + 128] = stor4[address(arg1)][idx].field_1024
        mem[_288 + 160] = stor4[address(arg1)][idx].field_1280
        mem[_288 + 192] = stor4[address(arg1)][idx].field_1536
        mem[s] = _288
        s = s + 32
        idx = idx + 1
        continue 
    _286 = mem[ceil32(return_data.size) + 96]
    _289 = mem[64]
    mem[64] = mem[64] + 224
    mem[_289] = 96
    mem[_289 + 32] = 0
    mem[_289 + 64] = 0
    mem[_289 + 96] = 0
    mem[_289 + 128] = 0
    mem[_289 + 160] = 0
    mem[_289 + 192] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    _292 = mem[mem[ceil32(return_data.size) + 128] + 128]
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    _295 = mem[mem[ceil32(return_data.size) + 128] + 96]
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    _299 = mem[mem[ceil32(return_data.size) + 128] + 160]
    if not mem[mem[ceil32(return_data.size) + 128] + 160]:
        _305 = mem[64]
        mem[64] = mem[64] + 64
        mem[_305] = 26
        mem[_305 + 32] = 'SafeMath: division by zero'
        _307 = mem[64]
        mem[64] = mem[64] + 64
        mem[_307] = 26
        mem[_307 + 32] = 'SafeMath: division by zero'
        _310 = mem[64]
        mem[64] = mem[64] + 64
        mem[_310] = 1
        mem[_310 + 32] = '0'
        _313 = mem[64]
        mem[64] = mem[64] + 64
        mem[_313] = 1
        mem[_313 + 32] = '#'
        idx = 1
        s = _310
        t = _289
        while idx < _286:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _612 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _613 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]
            _614 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]
            _615 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
                _638 = mem[64]
                mem[64] = mem[64] + 64
                mem[_638] = 26
                mem[_638 + 32] = 'SafeMath: division by zero'
                _656 = mem[64]
                mem[64] = mem[64] + 64
                mem[_656] = 26
                mem[_656 + 32] = 'SafeMath: division by zero'
                _677 = mem[64]
                mem[64] = mem[64] + 64
                mem[_677] = 1
                mem[_677 + 32] = '0'
                _686 = mem[64]
                _694 = mem[s]
                t = 0
                while t < _694:
                    mem[_686 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_694) <= _694:
                    _1099 = mem[_313]
                    s = 0
                    while s < _1099:
                        mem[_686 + _694 + s + 32] = mem[_313 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1099) <= _1099:
                        _1655 = mem[_677]
                        s = 0
                        while s < _1655:
                            mem[_686 + _694 + _1099 + s + 32] = mem[_677 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1655) <= _1655:
                            _2169 = mem[64]
                            mem[mem[64]] = _686 + _694 + _1099 + _1655 - mem[64]
                            mem[64] = _686 + _694 + _1099 + _1655 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _2169
                            t = _612
                            continue 
                        mem[_686 + _694 + _1099 + _1655 + 32] = 0
                        _2217 = mem[64]
                        mem[mem[64]] = _686 + _694 + _1099 + _1655 - mem[64]
                        mem[64] = _686 + _694 + _1099 + _1655 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2217
                        t = _612
                        continue 
                    mem[_686 + _694 + _1099 + 32] = 0
                    _1673 = mem[_677]
                    s = 0
                    while s < _1673:
                        mem[_686 + _694 + _1099 + s + 32] = mem[_677 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1673) <= _1673:
                        _2170 = mem[64]
                        mem[mem[64]] = _686 + _694 + _1099 + _1673 - mem[64]
                        mem[64] = _686 + _694 + _1099 + _1673 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2170
                        t = _612
                        continue 
                    mem[_686 + _694 + _1099 + _1673 + 32] = 0
                    _2218 = mem[64]
                    mem[mem[64]] = _686 + _694 + _1099 + _1673 - mem[64]
                    mem[64] = _686 + _694 + _1099 + _1673 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2218
                    t = _612
                    continue 
                mem[_686 + _694 + 32] = 0
                _1114 = mem[_313]
                s = 0
                while s < _1114:
                    mem[_686 + _694 + s + 32] = mem[_313 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1114) <= _1114:
                    _1656 = mem[_677]
                    s = 0
                    while s < _1656:
                        mem[_686 + _694 + _1114 + s + 32] = mem[_677 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1656) <= _1656:
                        _2171 = mem[64]
                        mem[mem[64]] = _686 + _694 + _1114 + _1656 - mem[64]
                        mem[64] = _686 + _694 + _1114 + _1656 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2171
                        t = _612
                        continue 
                    mem[_686 + _694 + _1114 + _1656 + 32] = 0
                    _2219 = mem[64]
                    mem[mem[64]] = _686 + _694 + _1114 + _1656 - mem[64]
                    mem[64] = _686 + _694 + _1114 + _1656 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2219
                    t = _612
                    continue 
                mem[_686 + _694 + _1114 + 32] = 0
                _1674 = mem[_677]
                s = 0
                while s < _1674:
                    mem[_686 + _694 + _1114 + s + 32] = mem[_677 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1674) <= _1674:
                    _2172 = mem[64]
                    mem[mem[64]] = _686 + _694 + _1114 + _1674 - mem[64]
                    mem[64] = _686 + _694 + _1114 + _1674 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2172
                    t = _612
                    continue 
                mem[_686 + _694 + _1114 + _1674 + 32] = 0
                _2220 = mem[64]
                mem[mem[64]] = _686 + _694 + _1114 + _1674 - mem[64]
                mem[64] = _686 + _694 + _1114 + _1674 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2220
                t = _612
                continue 
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] and mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] > -1 / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
                revert with 'NH{q', 17
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
                revert with 'NH{q', 18
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] != mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
                _662 = mem[64]
                mem[64] = mem[64] + 64
                mem[_662] = 26
                mem[_662 + 32] = 'SafeMath: division by zero'
                _685 = mem[64]
                mem[64] = mem[64] + 64
                mem[_685] = 26
                mem[_685 + 32] = 'SafeMath: division by zero'
                _715 = mem[64]
                mem[64] = mem[64] + 64
                mem[_715] = 1
                mem[_715 + 32] = '0'
                _726 = mem[64]
                _734 = mem[s]
                t = 0
                while t < _734:
                    mem[_726 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_734) <= _734:
                    _1098 = mem[_313]
                    s = 0
                    while s < _1098:
                        mem[_726 + _734 + s + 32] = mem[_313 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1098) <= _1098:
                        _1653 = mem[_715]
                        s = 0
                        while s < _1653:
                            mem[_726 + _734 + _1098 + s + 32] = mem[_715 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1653) <= _1653:
                            _2165 = mem[64]
                            mem[mem[64]] = _726 + _734 + _1098 + _1653 - mem[64]
                            mem[64] = _726 + _734 + _1098 + _1653 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _2165
                            t = _612
                            continue 
                        mem[_726 + _734 + _1098 + _1653 + 32] = 0
                        _2213 = mem[64]
                        mem[mem[64]] = _726 + _734 + _1098 + _1653 - mem[64]
                        mem[64] = _726 + _734 + _1098 + _1653 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2213
                        t = _612
                        continue 
                    mem[_726 + _734 + _1098 + 32] = 0
                    _1671 = mem[_715]
                    s = 0
                    while s < _1671:
                        mem[_726 + _734 + _1098 + s + 32] = mem[_715 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1671) <= _1671:
                        _2166 = mem[64]
                        mem[mem[64]] = _726 + _734 + _1098 + _1671 - mem[64]
                        mem[64] = _726 + _734 + _1098 + _1671 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2166
                        t = _612
                        continue 
                    mem[_726 + _734 + _1098 + _1671 + 32] = 0
                    _2214 = mem[64]
                    mem[mem[64]] = _726 + _734 + _1098 + _1671 - mem[64]
                    mem[64] = _726 + _734 + _1098 + _1671 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2214
                    t = _612
                    continue 
                mem[_726 + _734 + 32] = 0
                _1113 = mem[_313]
                s = 0
                while s < _1113:
                    mem[_726 + _734 + s + 32] = mem[_313 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1113) <= _1113:
                    _1654 = mem[_715]
                    s = 0
                    while s < _1654:
                        mem[_726 + _734 + _1113 + s + 32] = mem[_715 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1654) <= _1654:
                        _2167 = mem[64]
                        mem[mem[64]] = _726 + _734 + _1113 + _1654 - mem[64]
                        mem[64] = _726 + _734 + _1113 + _1654 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2167
                        t = _612
                        continue 
                    mem[_726 + _734 + _1113 + _1654 + 32] = 0
                    _2215 = mem[64]
                    mem[mem[64]] = _726 + _734 + _1113 + _1654 - mem[64]
                    mem[64] = _726 + _734 + _1113 + _1654 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2215
                    t = _612
                    continue 
                mem[_726 + _734 + _1113 + 32] = 0
                _1672 = mem[_715]
                s = 0
                while s < _1672:
                    mem[_726 + _734 + _1113 + s + 32] = mem[_715 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1672) <= _1672:
                    _2168 = mem[64]
                    mem[mem[64]] = _726 + _734 + _1113 + _1672 - mem[64]
                    mem[64] = _726 + _734 + _1113 + _1672 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2168
                    t = _612
                    continue 
                mem[_726 + _734 + _1113 + _1672 + 32] = 0
                _2216 = mem[64]
                mem[mem[64]] = _726 + _734 + _1113 + _1672 - mem[64]
                mem[64] = _726 + _734 + _1113 + _1672 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2216
                t = _612
                continue 
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] and mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] > -1 / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
                revert with 'NH{q', 17
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
                revert with 'NH{q', 18
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] != mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]:
                revert with 0, 'SafeMath: multiplication overflow'
            _693 = mem[64]
            mem[64] = mem[64] + 64
            mem[_693] = 26
            mem[_693 + 32] = 'SafeMath: division by zero'
            _725 = mem[64]
            mem[64] = mem[64] + 64
            mem[_725] = 26
            mem[_725 + 32] = 'SafeMath: division by zero'
            if not _615 * _614 * _613 / 100000 / 10^18:
                _771 = mem[64]
                mem[64] = mem[64] + 64
                mem[_771] = 1
                mem[_771 + 32] = '0'
                _782 = mem[64]
                _800 = mem[s]
                t = 0
                while t < _800:
                    mem[_782 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_800) <= _800:
                    _1097 = mem[_313]
                    s = 0
                    while s < _1097:
                        mem[_782 + _800 + s + 32] = mem[_313 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1097) <= _1097:
                        _1651 = mem[_771]
                        s = 0
                        while s < _1651:
                            mem[_782 + _800 + _1097 + s + 32] = mem[_771 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1651) <= _1651:
                            _2161 = mem[64]
                            mem[mem[64]] = _782 + _800 + _1097 + _1651 - mem[64]
                            mem[64] = _782 + _800 + _1097 + _1651 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _2161
                            t = _612
                            continue 
                        mem[_782 + _800 + _1097 + _1651 + 32] = 0
                        _2209 = mem[64]
                        mem[mem[64]] = _782 + _800 + _1097 + _1651 - mem[64]
                        mem[64] = _782 + _800 + _1097 + _1651 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2209
                        t = _612
                        continue 
                    mem[_782 + _800 + _1097 + 32] = 0
                    _1669 = mem[_771]
                    s = 0
                    while s < _1669:
                        mem[_782 + _800 + _1097 + s + 32] = mem[_771 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1669) <= _1669:
                        _2162 = mem[64]
                        mem[mem[64]] = _782 + _800 + _1097 + _1669 - mem[64]
                        mem[64] = _782 + _800 + _1097 + _1669 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2162
                        t = _612
                        continue 
                    mem[_782 + _800 + _1097 + _1669 + 32] = 0
                    _2210 = mem[64]
                    mem[mem[64]] = _782 + _800 + _1097 + _1669 - mem[64]
                    mem[64] = _782 + _800 + _1097 + _1669 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2210
                    t = _612
                    continue 
                mem[_782 + _800 + 32] = 0
                _1112 = mem[_313]
                s = 0
                while s < _1112:
                    mem[_782 + _800 + s + 32] = mem[_313 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1112) <= _1112:
                    _1652 = mem[_771]
                    s = 0
                    while s < _1652:
                        mem[_782 + _800 + _1112 + s + 32] = mem[_771 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1652) <= _1652:
                        _2163 = mem[64]
                        mem[mem[64]] = _782 + _800 + _1112 + _1652 - mem[64]
                        mem[64] = _782 + _800 + _1112 + _1652 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2163
                        t = _612
                        continue 
                    mem[_782 + _800 + _1112 + _1652 + 32] = 0
                    _2211 = mem[64]
                    mem[mem[64]] = _782 + _800 + _1112 + _1652 - mem[64]
                    mem[64] = _782 + _800 + _1112 + _1652 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2211
                    t = _612
                    continue 
                mem[_782 + _800 + _1112 + 32] = 0
                _1670 = mem[_771]
                s = 0
                while s < _1670:
                    mem[_782 + _800 + _1112 + s + 32] = mem[_771 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1670) <= _1670:
                    _2164 = mem[64]
                    mem[mem[64]] = _782 + _800 + _1112 + _1670 - mem[64]
                    mem[64] = _782 + _800 + _1112 + _1670 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2164
                    t = _612
                    continue 
                mem[_782 + _800 + _1112 + _1670 + 32] = 0
                _2212 = mem[64]
                mem[mem[64]] = _782 + _800 + _1112 + _1670 - mem[64]
                mem[64] = _782 + _800 + _1112 + _1670 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2212
                t = _612
                continue 
            u = 0
            t = _615 * _614 * _613 / 100000 / 10^18
            while t:
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 'NH{q', 65
            _1076 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                t = u
                idx = _615 * _614 * _613 / 100000 / 10^18
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if idx / 10 and 10 > -1 / idx / 10:
                        revert with 'NH{q', 17
                    if idx < 10 * idx / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_1076]:
                        revert with 'NH{q', 50
                    mem[t + _1076 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1629 = mem[64]
                _1649 = mem[s]
                idx = 0
                while idx < _1649:
                    mem[_1629 + idx + 32] = mem[s + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1649) <= _1649:
                    _2207 = mem[_313]
                    idx = 0
                    while idx < _2207:
                        mem[_1629 + _1649 + idx + 32] = mem[_313 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2207) <= _2207:
                        _2601 = mem[_1076]
                        idx = 0
                        while idx < _2601:
                            mem[_1629 + _1649 + _2207 + idx + 32] = mem[_1076 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2601) <= _2601:
                            _2953 = mem[64]
                            mem[mem[64]] = _1629 + _1649 + _2207 + _2601 - mem[64]
                            mem[64] = _1629 + _1649 + _2207 + _2601 + 32
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            s = _2953
                            t = _612
                            continue 
                        mem[_1629 + _1649 + _2207 + _2601 + 32] = 0
                        _3005 = mem[64]
                        mem[mem[64]] = _1629 + _1649 + _2207 + _2601 - mem[64]
                        mem[64] = _1629 + _1649 + _2207 + _2601 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _3005
                        t = _612
                        continue 
                    mem[_1629 + _1649 + _2207 + 32] = 0
                    _2625 = mem[_1076]
                    idx = 0
                    while idx < _2625:
                        mem[_1629 + _1649 + _2207 + idx + 32] = mem[_1076 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2625) <= _2625:
                        _2954 = mem[64]
                        mem[mem[64]] = _1629 + _1649 + _2207 + _2625 - mem[64]
                        mem[64] = _1629 + _1649 + _2207 + _2625 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _2954
                        t = _612
                        continue 
                    mem[_1629 + _1649 + _2207 + _2625 + 32] = 0
                    _3006 = mem[64]
                    mem[mem[64]] = _1629 + _1649 + _2207 + _2625 - mem[64]
                    mem[64] = _1629 + _1649 + _2207 + _2625 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _3006
                    t = _612
                    continue 
                mem[_1629 + _1649 + 32] = 0
                _2235 = mem[_313]
                idx = 0
                while idx < _2235:
                    mem[_1629 + _1649 + idx + 32] = mem[_313 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2235) <= _2235:
                    _2602 = mem[_1076]
                    idx = 0
                    while idx < _2602:
                        mem[_1629 + _1649 + _2235 + idx + 32] = mem[_1076 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2602) <= _2602:
                        _2955 = mem[64]
                        mem[mem[64]] = _1629 + _1649 + _2235 + _2602 - mem[64]
                        mem[64] = _1629 + _1649 + _2235 + _2602 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _2955
                        t = _612
                        continue 
                    mem[_1629 + _1649 + _2235 + _2602 + 32] = 0
                    _3007 = mem[64]
                    mem[mem[64]] = _1629 + _1649 + _2235 + _2602 - mem[64]
                    mem[64] = _1629 + _1649 + _2235 + _2602 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _3007
                    t = _612
                    continue 
                mem[_1629 + _1649 + _2235 + 32] = 0
                _2626 = mem[_1076]
                idx = 0
                while idx < _2626:
                    mem[_1629 + _1649 + _2235 + idx + 32] = mem[_1076 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2626) <= _2626:
                    _2956 = mem[64]
                    mem[mem[64]] = _1629 + _1649 + _2235 + _2626 - mem[64]
                    mem[64] = _1629 + _1649 + _2235 + _2626 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _2956
                    t = _612
                    continue 
                mem[_1629 + _1649 + _2235 + _2626 + 32] = 0
                _3008 = mem[64]
                mem[mem[64]] = _1629 + _1649 + _2235 + _2626 - mem[64]
                mem[64] = _1629 + _1649 + _2235 + _2626 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _3008
                t = _612
                continue 
            mem[_1076 + 32 len u] = call.data[calldata.size len u]
            t = u
            idx = _615 * _614 * _613 / 100000 / 10^18
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_1076]:
                    revert with 'NH{q', 50
                mem[t + _1076 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1630 = mem[64]
            _1650 = mem[s]
            idx = 0
            while idx < _1650:
                mem[_1630 + idx + 32] = mem[s + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_1650) <= _1650:
                _2208 = mem[_313]
                idx = 0
                while idx < _2208:
                    mem[_1630 + _1650 + idx + 32] = mem[_313 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2208) <= _2208:
                    _2603 = mem[_1076]
                    idx = 0
                    while idx < _2603:
                        mem[_1630 + _1650 + _2208 + idx + 32] = mem[_1076 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2603) <= _2603:
                        _2957 = mem[64]
                        mem[mem[64]] = _1630 + _1650 + _2208 + _2603 - mem[64]
                        mem[64] = _1630 + _1650 + _2208 + _2603 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _2957
                        t = _612
                        continue 
                    mem[_1630 + _1650 + _2208 + _2603 + 32] = 0
                    _3009 = mem[64]
                    mem[mem[64]] = _1630 + _1650 + _2208 + _2603 - mem[64]
                    mem[64] = _1630 + _1650 + _2208 + _2603 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _3009
                    t = _612
                    continue 
                mem[_1630 + _1650 + _2208 + 32] = 0
                _2627 = mem[_1076]
                idx = 0
                while idx < _2627:
                    mem[_1630 + _1650 + _2208 + idx + 32] = mem[_1076 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2627) <= _2627:
                    _2958 = mem[64]
                    mem[mem[64]] = _1630 + _1650 + _2208 + _2627 - mem[64]
                    mem[64] = _1630 + _1650 + _2208 + _2627 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _2958
                    t = _612
                    continue 
                mem[_1630 + _1650 + _2208 + _2627 + 32] = 0
                _3010 = mem[64]
                mem[mem[64]] = _1630 + _1650 + _2208 + _2627 - mem[64]
                mem[64] = _1630 + _1650 + _2208 + _2627 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _3010
                t = _612
                continue 
            mem[_1630 + _1650 + 32] = 0
            _2236 = mem[_313]
            idx = 0
            while idx < _2236:
                mem[_1630 + _1650 + idx + 32] = mem[_313 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2236) <= _2236:
                _2604 = mem[_1076]
                idx = 0
                while idx < _2604:
                    mem[_1630 + _1650 + _2236 + idx + 32] = mem[_1076 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2604) <= _2604:
                    _2959 = mem[64]
                    mem[mem[64]] = _1630 + _1650 + _2236 + _2604 - mem[64]
                    mem[64] = _1630 + _1650 + _2236 + _2604 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _2959
                    t = _612
                    continue 
                mem[_1630 + _1650 + _2236 + _2604 + 32] = 0
                _3011 = mem[64]
                mem[mem[64]] = _1630 + _1650 + _2236 + _2604 - mem[64]
                mem[64] = _1630 + _1650 + _2236 + _2604 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _3011
                t = _612
                continue 
            mem[_1630 + _1650 + _2236 + 32] = 0
            _2628 = mem[_1076]
            idx = 0
            while idx < _2628:
                mem[_1630 + _1650 + _2236 + idx + 32] = mem[_1076 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2628) <= _2628:
                _2960 = mem[64]
                mem[mem[64]] = _1630 + _1650 + _2236 + _2628 - mem[64]
                mem[64] = _1630 + _1650 + _2236 + _2628 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _2960
                t = _612
                continue 
            mem[_1630 + _1650 + _2236 + _2628 + 32] = 0
            _3012 = mem[64]
            mem[mem[64]] = _1630 + _1650 + _2236 + _2628 - mem[64]
            mem[64] = _1630 + _1650 + _2236 + _2628 + 32
            if u == -1:
                revert with 'NH{q', 17
            u = u + 1
            s = _3012
            t = _612
            continue 
        _611 = mem[64]
        mem[mem[64]] = 32
        _618 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_618)] = mem[s + 32 len ceil32(_618)]
        if ceil32(_618) <= _618:
            return 32, mem[mem[64] + 32 len ceil32(_618) + 32]
        mem[mem[64] + _618 + 64] = 0
        return memory
          from mem[64]
           len _611 + ceil32(_618) + -mem[64] + 64
    if mem[mem[ceil32(return_data.size) + 128] + 160] and mem[mem[ceil32(return_data.size) + 128] + 96] > -1 / mem[mem[ceil32(return_data.size) + 128] + 160]:
        revert with 'NH{q', 17
    if not mem[mem[ceil32(return_data.size) + 128] + 160]:
        revert with 'NH{q', 18
    if mem[mem[ceil32(return_data.size) + 128] + 160] * mem[mem[ceil32(return_data.size) + 128] + 96] / mem[mem[ceil32(return_data.size) + 128] + 160] != mem[mem[ceil32(return_data.size) + 128] + 96]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not mem[mem[ceil32(return_data.size) + 128] + 160] * mem[mem[ceil32(return_data.size) + 128] + 96]:
        _308 = mem[64]
        mem[64] = mem[64] + 64
        mem[_308] = 26
        mem[_308 + 32] = 'SafeMath: division by zero'
        _312 = mem[64]
        mem[64] = mem[64] + 64
        mem[_312] = 26
        mem[_312 + 32] = 'SafeMath: division by zero'
        _325 = mem[64]
        mem[64] = mem[64] + 64
        mem[_325] = 1
        mem[_325 + 32] = '0'
        _327 = mem[64]
        mem[64] = mem[64] + 64
        mem[_327] = 1
        mem[_327 + 32] = '#'
        idx = 1
        s = _325
        t = _289
        while idx < _286:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _607 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _608 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]
            _609 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]
            _610 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
                _636 = mem[64]
                mem[64] = mem[64] + 64
                mem[_636] = 26
                mem[_636 + 32] = 'SafeMath: division by zero'
                _655 = mem[64]
                mem[64] = mem[64] + 64
                mem[_655] = 26
                mem[_655 + 32] = 'SafeMath: division by zero'
                _676 = mem[64]
                mem[64] = mem[64] + 64
                mem[_676] = 1
                mem[_676 + 32] = '0'
                _683 = mem[64]
                _692 = mem[s]
                t = 0
                while t < _692:
                    mem[_683 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_692) <= _692:
                    _1096 = mem[_327]
                    s = 0
                    while s < _1096:
                        mem[_683 + _692 + s + 32] = mem[_327 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1096) <= _1096:
                        _1647 = mem[_676]
                        s = 0
                        while s < _1647:
                            mem[_683 + _692 + _1096 + s + 32] = mem[_676 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1647) <= _1647:
                            _2157 = mem[64]
                            mem[mem[64]] = _683 + _692 + _1096 + _1647 - mem[64]
                            mem[64] = _683 + _692 + _1096 + _1647 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _2157
                            t = _607
                            continue 
                        mem[_683 + _692 + _1096 + _1647 + 32] = 0
                        _2203 = mem[64]
                        mem[mem[64]] = _683 + _692 + _1096 + _1647 - mem[64]
                        mem[64] = _683 + _692 + _1096 + _1647 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2203
                        t = _607
                        continue 
                    mem[_683 + _692 + _1096 + 32] = 0
                    _1667 = mem[_676]
                    s = 0
                    while s < _1667:
                        mem[_683 + _692 + _1096 + s + 32] = mem[_676 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1667) <= _1667:
                        _2158 = mem[64]
                        mem[mem[64]] = _683 + _692 + _1096 + _1667 - mem[64]
                        mem[64] = _683 + _692 + _1096 + _1667 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2158
                        t = _607
                        continue 
                    mem[_683 + _692 + _1096 + _1667 + 32] = 0
                    _2204 = mem[64]
                    mem[mem[64]] = _683 + _692 + _1096 + _1667 - mem[64]
                    mem[64] = _683 + _692 + _1096 + _1667 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2204
                    t = _607
                    continue 
                mem[_683 + _692 + 32] = 0
                _1109 = mem[_327]
                s = 0
                while s < _1109:
                    mem[_683 + _692 + s + 32] = mem[_327 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1109) <= _1109:
                    _1648 = mem[_676]
                    s = 0
                    while s < _1648:
                        mem[_683 + _692 + _1109 + s + 32] = mem[_676 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1648) <= _1648:
                        _2159 = mem[64]
                        mem[mem[64]] = _683 + _692 + _1109 + _1648 - mem[64]
                        mem[64] = _683 + _692 + _1109 + _1648 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2159
                        t = _607
                        continue 
                    mem[_683 + _692 + _1109 + _1648 + 32] = 0
                    _2205 = mem[64]
                    mem[mem[64]] = _683 + _692 + _1109 + _1648 - mem[64]
                    mem[64] = _683 + _692 + _1109 + _1648 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2205
                    t = _607
                    continue 
                mem[_683 + _692 + _1109 + 32] = 0
                _1668 = mem[_676]
                s = 0
                while s < _1668:
                    mem[_683 + _692 + _1109 + s + 32] = mem[_676 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1668) <= _1668:
                    _2160 = mem[64]
                    mem[mem[64]] = _683 + _692 + _1109 + _1668 - mem[64]
                    mem[64] = _683 + _692 + _1109 + _1668 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2160
                    t = _607
                    continue 
                mem[_683 + _692 + _1109 + _1668 + 32] = 0
                _2206 = mem[64]
                mem[mem[64]] = _683 + _692 + _1109 + _1668 - mem[64]
                mem[64] = _683 + _692 + _1109 + _1668 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2206
                t = _607
                continue 
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] and mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] > -1 / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
                revert with 'NH{q', 17
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
                revert with 'NH{q', 18
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] != mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
                _661 = mem[64]
                mem[64] = mem[64] + 64
                mem[_661] = 26
                mem[_661 + 32] = 'SafeMath: division by zero'
                _682 = mem[64]
                mem[64] = mem[64] + 64
                mem[_682] = 26
                mem[_682 + 32] = 'SafeMath: division by zero'
                _714 = mem[64]
                mem[64] = mem[64] + 64
                mem[_714] = 1
                mem[_714 + 32] = '0'
                _723 = mem[64]
                _733 = mem[s]
                t = 0
                while t < _733:
                    mem[_723 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_733) <= _733:
                    _1095 = mem[_327]
                    s = 0
                    while s < _1095:
                        mem[_723 + _733 + s + 32] = mem[_327 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1095) <= _1095:
                        _1645 = mem[_714]
                        s = 0
                        while s < _1645:
                            mem[_723 + _733 + _1095 + s + 32] = mem[_714 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1645) <= _1645:
                            _2153 = mem[64]
                            mem[mem[64]] = _723 + _733 + _1095 + _1645 - mem[64]
                            mem[64] = _723 + _733 + _1095 + _1645 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _2153
                            t = _607
                            continue 
                        mem[_723 + _733 + _1095 + _1645 + 32] = 0
                        _2199 = mem[64]
                        mem[mem[64]] = _723 + _733 + _1095 + _1645 - mem[64]
                        mem[64] = _723 + _733 + _1095 + _1645 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2199
                        t = _607
                        continue 
                    mem[_723 + _733 + _1095 + 32] = 0
                    _1665 = mem[_714]
                    s = 0
                    while s < _1665:
                        mem[_723 + _733 + _1095 + s + 32] = mem[_714 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1665) <= _1665:
                        _2154 = mem[64]
                        mem[mem[64]] = _723 + _733 + _1095 + _1665 - mem[64]
                        mem[64] = _723 + _733 + _1095 + _1665 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2154
                        t = _607
                        continue 
                    mem[_723 + _733 + _1095 + _1665 + 32] = 0
                    _2200 = mem[64]
                    mem[mem[64]] = _723 + _733 + _1095 + _1665 - mem[64]
                    mem[64] = _723 + _733 + _1095 + _1665 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2200
                    t = _607
                    continue 
                mem[_723 + _733 + 32] = 0
                _1108 = mem[_327]
                s = 0
                while s < _1108:
                    mem[_723 + _733 + s + 32] = mem[_327 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1108) <= _1108:
                    _1646 = mem[_714]
                    s = 0
                    while s < _1646:
                        mem[_723 + _733 + _1108 + s + 32] = mem[_714 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1646) <= _1646:
                        _2155 = mem[64]
                        mem[mem[64]] = _723 + _733 + _1108 + _1646 - mem[64]
                        mem[64] = _723 + _733 + _1108 + _1646 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2155
                        t = _607
                        continue 
                    mem[_723 + _733 + _1108 + _1646 + 32] = 0
                    _2201 = mem[64]
                    mem[mem[64]] = _723 + _733 + _1108 + _1646 - mem[64]
                    mem[64] = _723 + _733 + _1108 + _1646 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2201
                    t = _607
                    continue 
                mem[_723 + _733 + _1108 + 32] = 0
                _1666 = mem[_714]
                s = 0
                while s < _1666:
                    mem[_723 + _733 + _1108 + s + 32] = mem[_714 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1666) <= _1666:
                    _2156 = mem[64]
                    mem[mem[64]] = _723 + _733 + _1108 + _1666 - mem[64]
                    mem[64] = _723 + _733 + _1108 + _1666 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2156
                    t = _607
                    continue 
                mem[_723 + _733 + _1108 + _1666 + 32] = 0
                _2202 = mem[64]
                mem[mem[64]] = _723 + _733 + _1108 + _1666 - mem[64]
                mem[64] = _723 + _733 + _1108 + _1666 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2202
                t = _607
                continue 
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] and mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] > -1 / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
                revert with 'NH{q', 17
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
                revert with 'NH{q', 18
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] != mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]:
                revert with 0, 'SafeMath: multiplication overflow'
            _691 = mem[64]
            mem[64] = mem[64] + 64
            mem[_691] = 26
            mem[_691 + 32] = 'SafeMath: division by zero'
            _722 = mem[64]
            mem[64] = mem[64] + 64
            mem[_722] = 26
            mem[_722 + 32] = 'SafeMath: division by zero'
            if not _610 * _609 * _608 / 100000 / 10^18:
                _770 = mem[64]
                mem[64] = mem[64] + 64
                mem[_770] = 1
                mem[_770 + 32] = '0'
                _780 = mem[64]
                _798 = mem[s]
                t = 0
                while t < _798:
                    mem[_780 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_798) <= _798:
                    _1094 = mem[_327]
                    s = 0
                    while s < _1094:
                        mem[_780 + _798 + s + 32] = mem[_327 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1094) <= _1094:
                        _1643 = mem[_770]
                        s = 0
                        while s < _1643:
                            mem[_780 + _798 + _1094 + s + 32] = mem[_770 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1643) <= _1643:
                            _2149 = mem[64]
                            mem[mem[64]] = _780 + _798 + _1094 + _1643 - mem[64]
                            mem[64] = _780 + _798 + _1094 + _1643 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _2149
                            t = _607
                            continue 
                        mem[_780 + _798 + _1094 + _1643 + 32] = 0
                        _2195 = mem[64]
                        mem[mem[64]] = _780 + _798 + _1094 + _1643 - mem[64]
                        mem[64] = _780 + _798 + _1094 + _1643 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2195
                        t = _607
                        continue 
                    mem[_780 + _798 + _1094 + 32] = 0
                    _1663 = mem[_770]
                    s = 0
                    while s < _1663:
                        mem[_780 + _798 + _1094 + s + 32] = mem[_770 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1663) <= _1663:
                        _2150 = mem[64]
                        mem[mem[64]] = _780 + _798 + _1094 + _1663 - mem[64]
                        mem[64] = _780 + _798 + _1094 + _1663 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2150
                        t = _607
                        continue 
                    mem[_780 + _798 + _1094 + _1663 + 32] = 0
                    _2196 = mem[64]
                    mem[mem[64]] = _780 + _798 + _1094 + _1663 - mem[64]
                    mem[64] = _780 + _798 + _1094 + _1663 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2196
                    t = _607
                    continue 
                mem[_780 + _798 + 32] = 0
                _1107 = mem[_327]
                s = 0
                while s < _1107:
                    mem[_780 + _798 + s + 32] = mem[_327 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1107) <= _1107:
                    _1644 = mem[_770]
                    s = 0
                    while s < _1644:
                        mem[_780 + _798 + _1107 + s + 32] = mem[_770 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1644) <= _1644:
                        _2151 = mem[64]
                        mem[mem[64]] = _780 + _798 + _1107 + _1644 - mem[64]
                        mem[64] = _780 + _798 + _1107 + _1644 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2151
                        t = _607
                        continue 
                    mem[_780 + _798 + _1107 + _1644 + 32] = 0
                    _2197 = mem[64]
                    mem[mem[64]] = _780 + _798 + _1107 + _1644 - mem[64]
                    mem[64] = _780 + _798 + _1107 + _1644 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2197
                    t = _607
                    continue 
                mem[_780 + _798 + _1107 + 32] = 0
                _1664 = mem[_770]
                s = 0
                while s < _1664:
                    mem[_780 + _798 + _1107 + s + 32] = mem[_770 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1664) <= _1664:
                    _2152 = mem[64]
                    mem[mem[64]] = _780 + _798 + _1107 + _1664 - mem[64]
                    mem[64] = _780 + _798 + _1107 + _1664 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2152
                    t = _607
                    continue 
                mem[_780 + _798 + _1107 + _1664 + 32] = 0
                _2198 = mem[64]
                mem[mem[64]] = _780 + _798 + _1107 + _1664 - mem[64]
                mem[64] = _780 + _798 + _1107 + _1664 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2198
                t = _607
                continue 
            u = 0
            t = _610 * _609 * _608 / 100000 / 10^18
            while t:
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 'NH{q', 65
            _1075 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                t = u
                idx = _610 * _609 * _608 / 100000 / 10^18
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if idx / 10 and 10 > -1 / idx / 10:
                        revert with 'NH{q', 17
                    if idx < 10 * idx / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_1075]:
                        revert with 'NH{q', 50
                    mem[t + _1075 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1627 = mem[64]
                _1641 = mem[s]
                idx = 0
                while idx < _1641:
                    mem[_1627 + idx + 32] = mem[s + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1641) <= _1641:
                    _2193 = mem[_327]
                    idx = 0
                    while idx < _2193:
                        mem[_1627 + _1641 + idx + 32] = mem[_327 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2193) <= _2193:
                        _2597 = mem[_1075]
                        idx = 0
                        while idx < _2597:
                            mem[_1627 + _1641 + _2193 + idx + 32] = mem[_1075 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2597) <= _2597:
                            _2945 = mem[64]
                            mem[mem[64]] = _1627 + _1641 + _2193 + _2597 - mem[64]
                            mem[64] = _1627 + _1641 + _2193 + _2597 + 32
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            s = _2945
                            t = _607
                            continue 
                        mem[_1627 + _1641 + _2193 + _2597 + 32] = 0
                        _2997 = mem[64]
                        mem[mem[64]] = _1627 + _1641 + _2193 + _2597 - mem[64]
                        mem[64] = _1627 + _1641 + _2193 + _2597 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _2997
                        t = _607
                        continue 
                    mem[_1627 + _1641 + _2193 + 32] = 0
                    _2621 = mem[_1075]
                    idx = 0
                    while idx < _2621:
                        mem[_1627 + _1641 + _2193 + idx + 32] = mem[_1075 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2621) <= _2621:
                        _2946 = mem[64]
                        mem[mem[64]] = _1627 + _1641 + _2193 + _2621 - mem[64]
                        mem[64] = _1627 + _1641 + _2193 + _2621 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _2946
                        t = _607
                        continue 
                    mem[_1627 + _1641 + _2193 + _2621 + 32] = 0
                    _2998 = mem[64]
                    mem[mem[64]] = _1627 + _1641 + _2193 + _2621 - mem[64]
                    mem[64] = _1627 + _1641 + _2193 + _2621 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _2998
                    t = _607
                    continue 
                mem[_1627 + _1641 + 32] = 0
                _2233 = mem[_327]
                idx = 0
                while idx < _2233:
                    mem[_1627 + _1641 + idx + 32] = mem[_327 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2233) <= _2233:
                    _2598 = mem[_1075]
                    idx = 0
                    while idx < _2598:
                        mem[_1627 + _1641 + _2233 + idx + 32] = mem[_1075 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2598) <= _2598:
                        _2947 = mem[64]
                        mem[mem[64]] = _1627 + _1641 + _2233 + _2598 - mem[64]
                        mem[64] = _1627 + _1641 + _2233 + _2598 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _2947
                        t = _607
                        continue 
                    mem[_1627 + _1641 + _2233 + _2598 + 32] = 0
                    _2999 = mem[64]
                    mem[mem[64]] = _1627 + _1641 + _2233 + _2598 - mem[64]
                    mem[64] = _1627 + _1641 + _2233 + _2598 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _2999
                    t = _607
                    continue 
                mem[_1627 + _1641 + _2233 + 32] = 0
                _2622 = mem[_1075]
                idx = 0
                while idx < _2622:
                    mem[_1627 + _1641 + _2233 + idx + 32] = mem[_1075 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2622) <= _2622:
                    _2948 = mem[64]
                    mem[mem[64]] = _1627 + _1641 + _2233 + _2622 - mem[64]
                    mem[64] = _1627 + _1641 + _2233 + _2622 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _2948
                    t = _607
                    continue 
                mem[_1627 + _1641 + _2233 + _2622 + 32] = 0
                _3000 = mem[64]
                mem[mem[64]] = _1627 + _1641 + _2233 + _2622 - mem[64]
                mem[64] = _1627 + _1641 + _2233 + _2622 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _3000
                t = _607
                continue 
            mem[_1075 + 32 len u] = call.data[calldata.size len u]
            t = u
            idx = _610 * _609 * _608 / 100000 / 10^18
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_1075]:
                    revert with 'NH{q', 50
                mem[t + _1075 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1628 = mem[64]
            _1642 = mem[s]
            idx = 0
            while idx < _1642:
                mem[_1628 + idx + 32] = mem[s + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_1642) <= _1642:
                _2194 = mem[_327]
                idx = 0
                while idx < _2194:
                    mem[_1628 + _1642 + idx + 32] = mem[_327 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2194) <= _2194:
                    _2599 = mem[_1075]
                    idx = 0
                    while idx < _2599:
                        mem[_1628 + _1642 + _2194 + idx + 32] = mem[_1075 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2599) <= _2599:
                        _2949 = mem[64]
                        mem[mem[64]] = _1628 + _1642 + _2194 + _2599 - mem[64]
                        mem[64] = _1628 + _1642 + _2194 + _2599 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _2949
                        t = _607
                        continue 
                    mem[_1628 + _1642 + _2194 + _2599 + 32] = 0
                    _3001 = mem[64]
                    mem[mem[64]] = _1628 + _1642 + _2194 + _2599 - mem[64]
                    mem[64] = _1628 + _1642 + _2194 + _2599 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _3001
                    t = _607
                    continue 
                mem[_1628 + _1642 + _2194 + 32] = 0
                _2623 = mem[_1075]
                idx = 0
                while idx < _2623:
                    mem[_1628 + _1642 + _2194 + idx + 32] = mem[_1075 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2623) <= _2623:
                    _2950 = mem[64]
                    mem[mem[64]] = _1628 + _1642 + _2194 + _2623 - mem[64]
                    mem[64] = _1628 + _1642 + _2194 + _2623 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _2950
                    t = _607
                    continue 
                mem[_1628 + _1642 + _2194 + _2623 + 32] = 0
                _3002 = mem[64]
                mem[mem[64]] = _1628 + _1642 + _2194 + _2623 - mem[64]
                mem[64] = _1628 + _1642 + _2194 + _2623 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _3002
                t = _607
                continue 
            mem[_1628 + _1642 + 32] = 0
            _2234 = mem[_327]
            idx = 0
            while idx < _2234:
                mem[_1628 + _1642 + idx + 32] = mem[_327 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2234) <= _2234:
                _2600 = mem[_1075]
                idx = 0
                while idx < _2600:
                    mem[_1628 + _1642 + _2234 + idx + 32] = mem[_1075 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2600) <= _2600:
                    _2951 = mem[64]
                    mem[mem[64]] = _1628 + _1642 + _2234 + _2600 - mem[64]
                    mem[64] = _1628 + _1642 + _2234 + _2600 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _2951
                    t = _607
                    continue 
                mem[_1628 + _1642 + _2234 + _2600 + 32] = 0
                _3003 = mem[64]
                mem[mem[64]] = _1628 + _1642 + _2234 + _2600 - mem[64]
                mem[64] = _1628 + _1642 + _2234 + _2600 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _3003
                t = _607
                continue 
            mem[_1628 + _1642 + _2234 + 32] = 0
            _2624 = mem[_1075]
            idx = 0
            while idx < _2624:
                mem[_1628 + _1642 + _2234 + idx + 32] = mem[_1075 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2624) <= _2624:
                _2952 = mem[64]
                mem[mem[64]] = _1628 + _1642 + _2234 + _2624 - mem[64]
                mem[64] = _1628 + _1642 + _2234 + _2624 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _2952
                t = _607
                continue 
            mem[_1628 + _1642 + _2234 + _2624 + 32] = 0
            _3004 = mem[64]
            mem[mem[64]] = _1628 + _1642 + _2234 + _2624 - mem[64]
            mem[64] = _1628 + _1642 + _2234 + _2624 + 32
            if u == -1:
                revert with 'NH{q', 17
            u = u + 1
            s = _3004
            t = _607
            continue 
        _606 = mem[64]
        mem[mem[64]] = 32
        _617 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_617)] = mem[s + 32 len ceil32(_617)]
        if ceil32(_617) <= _617:
            return 32, mem[mem[64] + 32 len ceil32(_617) + 32]
        mem[mem[64] + _617 + 64] = 0
        return memory
          from mem[64]
           len _606 + ceil32(_617) + -mem[64] + 64
    if mem[mem[ceil32(return_data.size) + 128] + 160] * mem[mem[ceil32(return_data.size) + 128] + 96] and mem[mem[ceil32(return_data.size) + 128] + 128] > -1 / mem[mem[ceil32(return_data.size) + 128] + 160] * mem[mem[ceil32(return_data.size) + 128] + 96]:
        revert with 'NH{q', 17
    if not mem[mem[ceil32(return_data.size) + 128] + 160] * mem[mem[ceil32(return_data.size) + 128] + 96]:
        revert with 'NH{q', 18
    if mem[mem[ceil32(return_data.size) + 128] + 160] * mem[mem[ceil32(return_data.size) + 128] + 96] * mem[mem[ceil32(return_data.size) + 128] + 128] / mem[mem[ceil32(return_data.size) + 128] + 160] * mem[mem[ceil32(return_data.size) + 128] + 96] != mem[mem[ceil32(return_data.size) + 128] + 128]:
        revert with 0, 'SafeMath: multiplication overflow'
    _315 = mem[64]
    mem[64] = mem[64] + 64
    mem[_315] = 26
    mem[_315 + 32] = 'SafeMath: division by zero'
    _326 = mem[64]
    mem[64] = mem[64] + 64
    mem[_326] = 26
    mem[_326 + 32] = 'SafeMath: division by zero'
    if not _299 * _295 * _292 / 100000 / 10^18:
        _342 = mem[64]
        mem[64] = mem[64] + 64
        mem[_342] = 1
        mem[_342 + 32] = '0'
        _344 = mem[64]
        mem[64] = mem[64] + 64
        mem[_344] = 1
        mem[_344 + 32] = '#'
        idx = 1
        s = _342
        t = _289
        while idx < _286:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _602 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _603 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]
            _604 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]
            _605 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
                _634 = mem[64]
                mem[64] = mem[64] + 64
                mem[_634] = 26
                mem[_634 + 32] = 'SafeMath: division by zero'
                _654 = mem[64]
                mem[64] = mem[64] + 64
                mem[_654] = 26
                mem[_654 + 32] = 'SafeMath: division by zero'
                _675 = mem[64]
                mem[64] = mem[64] + 64
                mem[_675] = 1
                mem[_675 + 32] = '0'
                _680 = mem[64]
                _690 = mem[s]
                t = 0
                while t < _690:
                    mem[_680 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_690) <= _690:
                    _1093 = mem[_344]
                    s = 0
                    while s < _1093:
                        mem[_680 + _690 + s + 32] = mem[_344 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1093) <= _1093:
                        _1639 = mem[_675]
                        s = 0
                        while s < _1639:
                            mem[_680 + _690 + _1093 + s + 32] = mem[_675 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1639) <= _1639:
                            _2145 = mem[64]
                            mem[mem[64]] = _680 + _690 + _1093 + _1639 - mem[64]
                            mem[64] = _680 + _690 + _1093 + _1639 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _2145
                            t = _602
                            continue 
                        mem[_680 + _690 + _1093 + _1639 + 32] = 0
                        _2189 = mem[64]
                        mem[mem[64]] = _680 + _690 + _1093 + _1639 - mem[64]
                        mem[64] = _680 + _690 + _1093 + _1639 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2189
                        t = _602
                        continue 
                    mem[_680 + _690 + _1093 + 32] = 0
                    _1661 = mem[_675]
                    s = 0
                    while s < _1661:
                        mem[_680 + _690 + _1093 + s + 32] = mem[_675 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1661) <= _1661:
                        _2146 = mem[64]
                        mem[mem[64]] = _680 + _690 + _1093 + _1661 - mem[64]
                        mem[64] = _680 + _690 + _1093 + _1661 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2146
                        t = _602
                        continue 
                    mem[_680 + _690 + _1093 + _1661 + 32] = 0
                    _2190 = mem[64]
                    mem[mem[64]] = _680 + _690 + _1093 + _1661 - mem[64]
                    mem[64] = _680 + _690 + _1093 + _1661 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2190
                    t = _602
                    continue 
                mem[_680 + _690 + 32] = 0
                _1104 = mem[_344]
                s = 0
                while s < _1104:
                    mem[_680 + _690 + s + 32] = mem[_344 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1104) <= _1104:
                    _1640 = mem[_675]
                    s = 0
                    while s < _1640:
                        mem[_680 + _690 + _1104 + s + 32] = mem[_675 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1640) <= _1640:
                        _2147 = mem[64]
                        mem[mem[64]] = _680 + _690 + _1104 + _1640 - mem[64]
                        mem[64] = _680 + _690 + _1104 + _1640 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2147
                        t = _602
                        continue 
                    mem[_680 + _690 + _1104 + _1640 + 32] = 0
                    _2191 = mem[64]
                    mem[mem[64]] = _680 + _690 + _1104 + _1640 - mem[64]
                    mem[64] = _680 + _690 + _1104 + _1640 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2191
                    t = _602
                    continue 
                mem[_680 + _690 + _1104 + 32] = 0
                _1662 = mem[_675]
                s = 0
                while s < _1662:
                    mem[_680 + _690 + _1104 + s + 32] = mem[_675 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1662) <= _1662:
                    _2148 = mem[64]
                    mem[mem[64]] = _680 + _690 + _1104 + _1662 - mem[64]
                    mem[64] = _680 + _690 + _1104 + _1662 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2148
                    t = _602
                    continue 
                mem[_680 + _690 + _1104 + _1662 + 32] = 0
                _2192 = mem[64]
                mem[mem[64]] = _680 + _690 + _1104 + _1662 - mem[64]
                mem[64] = _680 + _690 + _1104 + _1662 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2192
                t = _602
                continue 
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] and mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] > -1 / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
                revert with 'NH{q', 17
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
                revert with 'NH{q', 18
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] != mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
                _660 = mem[64]
                mem[64] = mem[64] + 64
                mem[_660] = 26
                mem[_660 + 32] = 'SafeMath: division by zero'
                _679 = mem[64]
                mem[64] = mem[64] + 64
                mem[_679] = 26
                mem[_679 + 32] = 'SafeMath: division by zero'
                _713 = mem[64]
                mem[64] = mem[64] + 64
                mem[_713] = 1
                mem[_713 + 32] = '0'
                _720 = mem[64]
                _732 = mem[s]
                t = 0
                while t < _732:
                    mem[_720 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_732) <= _732:
                    _1092 = mem[_344]
                    s = 0
                    while s < _1092:
                        mem[_720 + _732 + s + 32] = mem[_344 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1092) <= _1092:
                        _1637 = mem[_713]
                        s = 0
                        while s < _1637:
                            mem[_720 + _732 + _1092 + s + 32] = mem[_713 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1637) <= _1637:
                            _2141 = mem[64]
                            mem[mem[64]] = _720 + _732 + _1092 + _1637 - mem[64]
                            mem[64] = _720 + _732 + _1092 + _1637 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _2141
                            t = _602
                            continue 
                        mem[_720 + _732 + _1092 + _1637 + 32] = 0
                        _2185 = mem[64]
                        mem[mem[64]] = _720 + _732 + _1092 + _1637 - mem[64]
                        mem[64] = _720 + _732 + _1092 + _1637 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2185
                        t = _602
                        continue 
                    mem[_720 + _732 + _1092 + 32] = 0
                    _1659 = mem[_713]
                    s = 0
                    while s < _1659:
                        mem[_720 + _732 + _1092 + s + 32] = mem[_713 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1659) <= _1659:
                        _2142 = mem[64]
                        mem[mem[64]] = _720 + _732 + _1092 + _1659 - mem[64]
                        mem[64] = _720 + _732 + _1092 + _1659 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2142
                        t = _602
                        continue 
                    mem[_720 + _732 + _1092 + _1659 + 32] = 0
                    _2186 = mem[64]
                    mem[mem[64]] = _720 + _732 + _1092 + _1659 - mem[64]
                    mem[64] = _720 + _732 + _1092 + _1659 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2186
                    t = _602
                    continue 
                mem[_720 + _732 + 32] = 0
                _1103 = mem[_344]
                s = 0
                while s < _1103:
                    mem[_720 + _732 + s + 32] = mem[_344 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1103) <= _1103:
                    _1638 = mem[_713]
                    s = 0
                    while s < _1638:
                        mem[_720 + _732 + _1103 + s + 32] = mem[_713 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1638) <= _1638:
                        _2143 = mem[64]
                        mem[mem[64]] = _720 + _732 + _1103 + _1638 - mem[64]
                        mem[64] = _720 + _732 + _1103 + _1638 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2143
                        t = _602
                        continue 
                    mem[_720 + _732 + _1103 + _1638 + 32] = 0
                    _2187 = mem[64]
                    mem[mem[64]] = _720 + _732 + _1103 + _1638 - mem[64]
                    mem[64] = _720 + _732 + _1103 + _1638 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2187
                    t = _602
                    continue 
                mem[_720 + _732 + _1103 + 32] = 0
                _1660 = mem[_713]
                s = 0
                while s < _1660:
                    mem[_720 + _732 + _1103 + s + 32] = mem[_713 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1660) <= _1660:
                    _2144 = mem[64]
                    mem[mem[64]] = _720 + _732 + _1103 + _1660 - mem[64]
                    mem[64] = _720 + _732 + _1103 + _1660 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2144
                    t = _602
                    continue 
                mem[_720 + _732 + _1103 + _1660 + 32] = 0
                _2188 = mem[64]
                mem[mem[64]] = _720 + _732 + _1103 + _1660 - mem[64]
                mem[64] = _720 + _732 + _1103 + _1660 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2188
                t = _602
                continue 
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] and mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] > -1 / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
                revert with 'NH{q', 17
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
                revert with 'NH{q', 18
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] != mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]:
                revert with 0, 'SafeMath: multiplication overflow'
            _689 = mem[64]
            mem[64] = mem[64] + 64
            mem[_689] = 26
            mem[_689 + 32] = 'SafeMath: division by zero'
            _719 = mem[64]
            mem[64] = mem[64] + 64
            mem[_719] = 26
            mem[_719 + 32] = 'SafeMath: division by zero'
            if not _605 * _604 * _603 / 100000 / 10^18:
                _769 = mem[64]
                mem[64] = mem[64] + 64
                mem[_769] = 1
                mem[_769 + 32] = '0'
                _778 = mem[64]
                _796 = mem[s]
                t = 0
                while t < _796:
                    mem[_778 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_796) <= _796:
                    _1091 = mem[_344]
                    s = 0
                    while s < _1091:
                        mem[_778 + _796 + s + 32] = mem[_344 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1091) <= _1091:
                        _1635 = mem[_769]
                        s = 0
                        while s < _1635:
                            mem[_778 + _796 + _1091 + s + 32] = mem[_769 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1635) <= _1635:
                            _2137 = mem[64]
                            mem[mem[64]] = _778 + _796 + _1091 + _1635 - mem[64]
                            mem[64] = _778 + _796 + _1091 + _1635 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _2137
                            t = _602
                            continue 
                        mem[_778 + _796 + _1091 + _1635 + 32] = 0
                        _2181 = mem[64]
                        mem[mem[64]] = _778 + _796 + _1091 + _1635 - mem[64]
                        mem[64] = _778 + _796 + _1091 + _1635 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2181
                        t = _602
                        continue 
                    mem[_778 + _796 + _1091 + 32] = 0
                    _1657 = mem[_769]
                    s = 0
                    while s < _1657:
                        mem[_778 + _796 + _1091 + s + 32] = mem[_769 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1657) <= _1657:
                        _2138 = mem[64]
                        mem[mem[64]] = _778 + _796 + _1091 + _1657 - mem[64]
                        mem[64] = _778 + _796 + _1091 + _1657 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2138
                        t = _602
                        continue 
                    mem[_778 + _796 + _1091 + _1657 + 32] = 0
                    _2182 = mem[64]
                    mem[mem[64]] = _778 + _796 + _1091 + _1657 - mem[64]
                    mem[64] = _778 + _796 + _1091 + _1657 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2182
                    t = _602
                    continue 
                mem[_778 + _796 + 32] = 0
                _1102 = mem[_344]
                s = 0
                while s < _1102:
                    mem[_778 + _796 + s + 32] = mem[_344 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1102) <= _1102:
                    _1636 = mem[_769]
                    s = 0
                    while s < _1636:
                        mem[_778 + _796 + _1102 + s + 32] = mem[_769 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1636) <= _1636:
                        _2139 = mem[64]
                        mem[mem[64]] = _778 + _796 + _1102 + _1636 - mem[64]
                        mem[64] = _778 + _796 + _1102 + _1636 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2139
                        t = _602
                        continue 
                    mem[_778 + _796 + _1102 + _1636 + 32] = 0
                    _2183 = mem[64]
                    mem[mem[64]] = _778 + _796 + _1102 + _1636 - mem[64]
                    mem[64] = _778 + _796 + _1102 + _1636 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2183
                    t = _602
                    continue 
                mem[_778 + _796 + _1102 + 32] = 0
                _1658 = mem[_769]
                s = 0
                while s < _1658:
                    mem[_778 + _796 + _1102 + s + 32] = mem[_769 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1658) <= _1658:
                    _2140 = mem[64]
                    mem[mem[64]] = _778 + _796 + _1102 + _1658 - mem[64]
                    mem[64] = _778 + _796 + _1102 + _1658 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2140
                    t = _602
                    continue 
                mem[_778 + _796 + _1102 + _1658 + 32] = 0
                _2184 = mem[64]
                mem[mem[64]] = _778 + _796 + _1102 + _1658 - mem[64]
                mem[64] = _778 + _796 + _1102 + _1658 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2184
                t = _602
                continue 
            u = 0
            t = _605 * _604 * _603 / 100000 / 10^18
            while t:
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 'NH{q', 65
            _1074 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                t = u
                idx = _605 * _604 * _603 / 100000 / 10^18
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if idx / 10 and 10 > -1 / idx / 10:
                        revert with 'NH{q', 17
                    if idx < 10 * idx / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_1074]:
                        revert with 'NH{q', 50
                    mem[t + _1074 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1625 = mem[64]
                _1633 = mem[s]
                idx = 0
                while idx < _1633:
                    mem[_1625 + idx + 32] = mem[s + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1633) <= _1633:
                    _2179 = mem[_344]
                    idx = 0
                    while idx < _2179:
                        mem[_1625 + _1633 + idx + 32] = mem[_344 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2179) <= _2179:
                        _2593 = mem[_1074]
                        idx = 0
                        while idx < _2593:
                            mem[_1625 + _1633 + _2179 + idx + 32] = mem[_1074 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2593) <= _2593:
                            _2937 = mem[64]
                            mem[mem[64]] = _1625 + _1633 + _2179 + _2593 - mem[64]
                            mem[64] = _1625 + _1633 + _2179 + _2593 + 32
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            s = _2937
                            t = _602
                            continue 
                        mem[_1625 + _1633 + _2179 + _2593 + 32] = 0
                        _2989 = mem[64]
                        mem[mem[64]] = _1625 + _1633 + _2179 + _2593 - mem[64]
                        mem[64] = _1625 + _1633 + _2179 + _2593 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _2989
                        t = _602
                        continue 
                    mem[_1625 + _1633 + _2179 + 32] = 0
                    _2617 = mem[_1074]
                    idx = 0
                    while idx < _2617:
                        mem[_1625 + _1633 + _2179 + idx + 32] = mem[_1074 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2617) <= _2617:
                        _2938 = mem[64]
                        mem[mem[64]] = _1625 + _1633 + _2179 + _2617 - mem[64]
                        mem[64] = _1625 + _1633 + _2179 + _2617 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _2938
                        t = _602
                        continue 
                    mem[_1625 + _1633 + _2179 + _2617 + 32] = 0
                    _2990 = mem[64]
                    mem[mem[64]] = _1625 + _1633 + _2179 + _2617 - mem[64]
                    mem[64] = _1625 + _1633 + _2179 + _2617 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _2990
                    t = _602
                    continue 
                mem[_1625 + _1633 + 32] = 0
                _2231 = mem[_344]
                idx = 0
                while idx < _2231:
                    mem[_1625 + _1633 + idx + 32] = mem[_344 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2231) <= _2231:
                    _2594 = mem[_1074]
                    idx = 0
                    while idx < _2594:
                        mem[_1625 + _1633 + _2231 + idx + 32] = mem[_1074 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2594) <= _2594:
                        _2939 = mem[64]
                        mem[mem[64]] = _1625 + _1633 + _2231 + _2594 - mem[64]
                        mem[64] = _1625 + _1633 + _2231 + _2594 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _2939
                        t = _602
                        continue 
                    mem[_1625 + _1633 + _2231 + _2594 + 32] = 0
                    _2991 = mem[64]
                    mem[mem[64]] = _1625 + _1633 + _2231 + _2594 - mem[64]
                    mem[64] = _1625 + _1633 + _2231 + _2594 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _2991
                    t = _602
                    continue 
                mem[_1625 + _1633 + _2231 + 32] = 0
                _2618 = mem[_1074]
                idx = 0
                while idx < _2618:
                    mem[_1625 + _1633 + _2231 + idx + 32] = mem[_1074 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2618) <= _2618:
                    _2940 = mem[64]
                    mem[mem[64]] = _1625 + _1633 + _2231 + _2618 - mem[64]
                    mem[64] = _1625 + _1633 + _2231 + _2618 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _2940
                    t = _602
                    continue 
                mem[_1625 + _1633 + _2231 + _2618 + 32] = 0
                _2992 = mem[64]
                mem[mem[64]] = _1625 + _1633 + _2231 + _2618 - mem[64]
                mem[64] = _1625 + _1633 + _2231 + _2618 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _2992
                t = _602
                continue 
            mem[_1074 + 32 len u] = call.data[calldata.size len u]
            t = u
            idx = _605 * _604 * _603 / 100000 / 10^18
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_1074]:
                    revert with 'NH{q', 50
                mem[t + _1074 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1626 = mem[64]
            _1634 = mem[s]
            idx = 0
            while idx < _1634:
                mem[_1626 + idx + 32] = mem[s + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_1634) <= _1634:
                _2180 = mem[_344]
                idx = 0
                while idx < _2180:
                    mem[_1626 + _1634 + idx + 32] = mem[_344 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2180) <= _2180:
                    _2595 = mem[_1074]
                    idx = 0
                    while idx < _2595:
                        mem[_1626 + _1634 + _2180 + idx + 32] = mem[_1074 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2595) <= _2595:
                        _2941 = mem[64]
                        mem[mem[64]] = _1626 + _1634 + _2180 + _2595 - mem[64]
                        mem[64] = _1626 + _1634 + _2180 + _2595 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _2941
                        t = _602
                        continue 
                    mem[_1626 + _1634 + _2180 + _2595 + 32] = 0
                    _2993 = mem[64]
                    mem[mem[64]] = _1626 + _1634 + _2180 + _2595 - mem[64]
                    mem[64] = _1626 + _1634 + _2180 + _2595 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _2993
                    t = _602
                    continue 
                mem[_1626 + _1634 + _2180 + 32] = 0
                _2619 = mem[_1074]
                idx = 0
                while idx < _2619:
                    mem[_1626 + _1634 + _2180 + idx + 32] = mem[_1074 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2619) <= _2619:
                    _2942 = mem[64]
                    mem[mem[64]] = _1626 + _1634 + _2180 + _2619 - mem[64]
                    mem[64] = _1626 + _1634 + _2180 + _2619 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _2942
                    t = _602
                    continue 
                mem[_1626 + _1634 + _2180 + _2619 + 32] = 0
                _2994 = mem[64]
                mem[mem[64]] = _1626 + _1634 + _2180 + _2619 - mem[64]
                mem[64] = _1626 + _1634 + _2180 + _2619 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _2994
                t = _602
                continue 
            mem[_1626 + _1634 + 32] = 0
            _2232 = mem[_344]
            idx = 0
            while idx < _2232:
                mem[_1626 + _1634 + idx + 32] = mem[_344 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2232) <= _2232:
                _2596 = mem[_1074]
                idx = 0
                while idx < _2596:
                    mem[_1626 + _1634 + _2232 + idx + 32] = mem[_1074 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2596) <= _2596:
                    _2943 = mem[64]
                    mem[mem[64]] = _1626 + _1634 + _2232 + _2596 - mem[64]
                    mem[64] = _1626 + _1634 + _2232 + _2596 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _2943
                    t = _602
                    continue 
                mem[_1626 + _1634 + _2232 + _2596 + 32] = 0
                _2995 = mem[64]
                mem[mem[64]] = _1626 + _1634 + _2232 + _2596 - mem[64]
                mem[64] = _1626 + _1634 + _2232 + _2596 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _2995
                t = _602
                continue 
            mem[_1626 + _1634 + _2232 + 32] = 0
            _2620 = mem[_1074]
            idx = 0
            while idx < _2620:
                mem[_1626 + _1634 + _2232 + idx + 32] = mem[_1074 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2620) <= _2620:
                _2944 = mem[64]
                mem[mem[64]] = _1626 + _1634 + _2232 + _2620 - mem[64]
                mem[64] = _1626 + _1634 + _2232 + _2620 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _2944
                t = _602
                continue 
            mem[_1626 + _1634 + _2232 + _2620 + 32] = 0
            _2996 = mem[64]
            mem[mem[64]] = _1626 + _1634 + _2232 + _2620 - mem[64]
            mem[64] = _1626 + _1634 + _2232 + _2620 + 32
            if u == -1:
                revert with 'NH{q', 17
            u = u + 1
            s = _2996
            t = _602
            continue 
        mem[mem[64]] = 32
        _616 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_616)] = mem[s + 32 len ceil32(_616)]
        if ceil32(_616) > _616:
            mem[mem[64] + _616 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_616) + 32]
    s = 0
    idx = _299 * _295 * _292 / 100000 / 10^18
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _600 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _299 * _295 * _292 / 100000 / 10^18
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[_600]:
                revert with 'NH{q', 50
            mem[t + _600 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1077 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1077] = 1
        mem[_1077 + 32] = '#'
        idx = 1
        s = _600
        t = _289
        while idx < _286:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _1616 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _1617 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]
            _1618 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]
            _1619 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
                _1676 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1676] = 26
                mem[_1676 + 32] = 'SafeMath: division by zero'
                _1811 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1811] = 26
                mem[_1811 + 32] = 'SafeMath: division by zero'
                _1871 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1871] = 1
                mem[_1871 + 32] = '0'
                _1887 = mem[64]
                _1934 = mem[s]
                t = 0
                while t < _1934:
                    mem[_1887 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_1934) <= _1934:
                    _2175 = mem[_1077]
                    s = 0
                    while s < _2175:
                        mem[_1887 + _1934 + s + 32] = mem[_1077 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2175) <= _2175:
                        _2583 = mem[_1871]
                        s = 0
                        while s < _2583:
                            mem[_1887 + _1934 + _2175 + s + 32] = mem[_1871 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2583) <= _2583:
                            _2921 = mem[64]
                            mem[mem[64]] = _1887 + _1934 + _2175 + _2583 - mem[64]
                            mem[64] = _1887 + _1934 + _2175 + _2583 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _2921
                            t = _1616
                            continue 
                        mem[_1887 + _1934 + _2175 + _2583 + 32] = 0
                        _2971 = mem[64]
                        mem[mem[64]] = _1887 + _1934 + _2175 + _2583 - mem[64]
                        mem[64] = _1887 + _1934 + _2175 + _2583 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2971
                        t = _1616
                        continue 
                    mem[_1887 + _1934 + _2175 + 32] = 0
                    _2609 = mem[_1871]
                    s = 0
                    while s < _2609:
                        mem[_1887 + _1934 + _2175 + s + 32] = mem[_1871 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2609) <= _2609:
                        _2922 = mem[64]
                        mem[mem[64]] = _1887 + _1934 + _2175 + _2609 - mem[64]
                        mem[64] = _1887 + _1934 + _2175 + _2609 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2922
                        t = _1616
                        continue 
                    mem[_1887 + _1934 + _2175 + _2609 + 32] = 0
                    _2972 = mem[64]
                    mem[mem[64]] = _1887 + _1934 + _2175 + _2609 - mem[64]
                    mem[64] = _1887 + _1934 + _2175 + _2609 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2972
                    t = _1616
                    continue 
                mem[_1887 + _1934 + 32] = 0
                _2225 = mem[_1077]
                s = 0
                while s < _2225:
                    mem[_1887 + _1934 + s + 32] = mem[_1077 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2225) <= _2225:
                    _2584 = mem[_1871]
                    s = 0
                    while s < _2584:
                        mem[_1887 + _1934 + _2225 + s + 32] = mem[_1871 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2584) <= _2584:
                        _2923 = mem[64]
                        mem[mem[64]] = _1887 + _1934 + _2225 + _2584 - mem[64]
                        mem[64] = _1887 + _1934 + _2225 + _2584 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2923
                        t = _1616
                        continue 
                    mem[_1887 + _1934 + _2225 + _2584 + 32] = 0
                    _2973 = mem[64]
                    mem[mem[64]] = _1887 + _1934 + _2225 + _2584 - mem[64]
                    mem[64] = _1887 + _1934 + _2225 + _2584 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2973
                    t = _1616
                    continue 
                mem[_1887 + _1934 + _2225 + 32] = 0
                _2610 = mem[_1871]
                s = 0
                while s < _2610:
                    mem[_1887 + _1934 + _2225 + s + 32] = mem[_1871 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2610) <= _2610:
                    _2924 = mem[64]
                    mem[mem[64]] = _1887 + _1934 + _2225 + _2610 - mem[64]
                    mem[64] = _1887 + _1934 + _2225 + _2610 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2924
                    t = _1616
                    continue 
                mem[_1887 + _1934 + _2225 + _2610 + 32] = 0
                _2974 = mem[64]
                mem[mem[64]] = _1887 + _1934 + _2225 + _2610 - mem[64]
                mem[64] = _1887 + _1934 + _2225 + _2610 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2974
                t = _1616
                continue 
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] and mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] > -1 / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
                revert with 'NH{q', 17
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
                revert with 'NH{q', 18
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] != mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
                _1825 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1825] = 26
                mem[_1825 + 32] = 'SafeMath: division by zero'
                _1886 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1886] = 26
                mem[_1886 + 32] = 'SafeMath: division by zero'
                _1947 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1947] = 1
                mem[_1947 + 32] = '0'
                _1952 = mem[64]
                _1957 = mem[s]
                t = 0
                while t < _1957:
                    mem[_1952 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_1957) <= _1957:
                    _2174 = mem[_1077]
                    s = 0
                    while s < _2174:
                        mem[_1952 + _1957 + s + 32] = mem[_1077 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2174) <= _2174:
                        _2581 = mem[_1947]
                        s = 0
                        while s < _2581:
                            mem[_1952 + _1957 + _2174 + s + 32] = mem[_1947 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2581) <= _2581:
                            _2917 = mem[64]
                            mem[mem[64]] = _1952 + _1957 + _2174 + _2581 - mem[64]
                            mem[64] = _1952 + _1957 + _2174 + _2581 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _2917
                            t = _1616
                            continue 
                        mem[_1952 + _1957 + _2174 + _2581 + 32] = 0
                        _2967 = mem[64]
                        mem[mem[64]] = _1952 + _1957 + _2174 + _2581 - mem[64]
                        mem[64] = _1952 + _1957 + _2174 + _2581 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2967
                        t = _1616
                        continue 
                    mem[_1952 + _1957 + _2174 + 32] = 0
                    _2607 = mem[_1947]
                    s = 0
                    while s < _2607:
                        mem[_1952 + _1957 + _2174 + s + 32] = mem[_1947 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2607) <= _2607:
                        _2918 = mem[64]
                        mem[mem[64]] = _1952 + _1957 + _2174 + _2607 - mem[64]
                        mem[64] = _1952 + _1957 + _2174 + _2607 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2918
                        t = _1616
                        continue 
                    mem[_1952 + _1957 + _2174 + _2607 + 32] = 0
                    _2968 = mem[64]
                    mem[mem[64]] = _1952 + _1957 + _2174 + _2607 - mem[64]
                    mem[64] = _1952 + _1957 + _2174 + _2607 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2968
                    t = _1616
                    continue 
                mem[_1952 + _1957 + 32] = 0
                _2224 = mem[_1077]
                s = 0
                while s < _2224:
                    mem[_1952 + _1957 + s + 32] = mem[_1077 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2224) <= _2224:
                    _2582 = mem[_1947]
                    s = 0
                    while s < _2582:
                        mem[_1952 + _1957 + _2224 + s + 32] = mem[_1947 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2582) <= _2582:
                        _2919 = mem[64]
                        mem[mem[64]] = _1952 + _1957 + _2224 + _2582 - mem[64]
                        mem[64] = _1952 + _1957 + _2224 + _2582 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2919
                        t = _1616
                        continue 
                    mem[_1952 + _1957 + _2224 + _2582 + 32] = 0
                    _2969 = mem[64]
                    mem[mem[64]] = _1952 + _1957 + _2224 + _2582 - mem[64]
                    mem[64] = _1952 + _1957 + _2224 + _2582 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2969
                    t = _1616
                    continue 
                mem[_1952 + _1957 + _2224 + 32] = 0
                _2608 = mem[_1947]
                s = 0
                while s < _2608:
                    mem[_1952 + _1957 + _2224 + s + 32] = mem[_1947 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2608) <= _2608:
                    _2920 = mem[64]
                    mem[mem[64]] = _1952 + _1957 + _2224 + _2608 - mem[64]
                    mem[64] = _1952 + _1957 + _2224 + _2608 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2920
                    t = _1616
                    continue 
                mem[_1952 + _1957 + _2224 + _2608 + 32] = 0
                _2970 = mem[64]
                mem[mem[64]] = _1952 + _1957 + _2224 + _2608 - mem[64]
                mem[64] = _1952 + _1957 + _2224 + _2608 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2970
                t = _1616
                continue 
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] and mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] > -1 / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
                revert with 'NH{q', 17
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
                revert with 'NH{q', 18
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] != mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]:
                revert with 0, 'SafeMath: multiplication overflow'
            _1933 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1933] = 26
            mem[_1933 + 32] = 'SafeMath: division by zero'
            _1951 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1951] = 26
            mem[_1951 + 32] = 'SafeMath: division by zero'
            if not _1619 * _1618 * _1617 / 100000 / 10^18:
                _1973 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1973] = 1
                mem[_1973 + 32] = '0'
                _1977 = mem[64]
                _1987 = mem[s]
                t = 0
                while t < _1987:
                    mem[_1977 + t + 32] = mem[s + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_1987) <= _1987:
                    _2173 = mem[_1077]
                    s = 0
                    while s < _2173:
                        mem[_1977 + _1987 + s + 32] = mem[_1077 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2173) <= _2173:
                        _2579 = mem[_1973]
                        s = 0
                        while s < _2579:
                            mem[_1977 + _1987 + _2173 + s + 32] = mem[_1973 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2579) <= _2579:
                            _2913 = mem[64]
                            mem[mem[64]] = _1977 + _1987 + _2173 + _2579 - mem[64]
                            mem[64] = _1977 + _1987 + _2173 + _2579 + 32
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _2913
                            t = _1616
                            continue 
                        mem[_1977 + _1987 + _2173 + _2579 + 32] = 0
                        _2963 = mem[64]
                        mem[mem[64]] = _1977 + _1987 + _2173 + _2579 - mem[64]
                        mem[64] = _1977 + _1987 + _2173 + _2579 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2963
                        t = _1616
                        continue 
                    mem[_1977 + _1987 + _2173 + 32] = 0
                    _2605 = mem[_1973]
                    s = 0
                    while s < _2605:
                        mem[_1977 + _1987 + _2173 + s + 32] = mem[_1973 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2605) <= _2605:
                        _2914 = mem[64]
                        mem[mem[64]] = _1977 + _1987 + _2173 + _2605 - mem[64]
                        mem[64] = _1977 + _1987 + _2173 + _2605 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2914
                        t = _1616
                        continue 
                    mem[_1977 + _1987 + _2173 + _2605 + 32] = 0
                    _2964 = mem[64]
                    mem[mem[64]] = _1977 + _1987 + _2173 + _2605 - mem[64]
                    mem[64] = _1977 + _1987 + _2173 + _2605 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2964
                    t = _1616
                    continue 
                mem[_1977 + _1987 + 32] = 0
                _2223 = mem[_1077]
                s = 0
                while s < _2223:
                    mem[_1977 + _1987 + s + 32] = mem[_1077 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2223) <= _2223:
                    _2580 = mem[_1973]
                    s = 0
                    while s < _2580:
                        mem[_1977 + _1987 + _2223 + s + 32] = mem[_1973 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2580) <= _2580:
                        _2915 = mem[64]
                        mem[mem[64]] = _1977 + _1987 + _2223 + _2580 - mem[64]
                        mem[64] = _1977 + _1987 + _2223 + _2580 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2915
                        t = _1616
                        continue 
                    mem[_1977 + _1987 + _2223 + _2580 + 32] = 0
                    _2965 = mem[64]
                    mem[mem[64]] = _1977 + _1987 + _2223 + _2580 - mem[64]
                    mem[64] = _1977 + _1987 + _2223 + _2580 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2965
                    t = _1616
                    continue 
                mem[_1977 + _1987 + _2223 + 32] = 0
                _2606 = mem[_1973]
                s = 0
                while s < _2606:
                    mem[_1977 + _1987 + _2223 + s + 32] = mem[_1973 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2606) <= _2606:
                    _2916 = mem[64]
                    mem[mem[64]] = _1977 + _1987 + _2223 + _2606 - mem[64]
                    mem[64] = _1977 + _1987 + _2223 + _2606 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2916
                    t = _1616
                    continue 
                mem[_1977 + _1987 + _2223 + _2606 + 32] = 0
                _2966 = mem[64]
                mem[mem[64]] = _1977 + _1987 + _2223 + _2606 - mem[64]
                mem[64] = _1977 + _1987 + _2223 + _2606 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2966
                t = _1616
                continue 
            u = 0
            t = _1619 * _1618 * _1617 / 100000 / 10^18
            while t:
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 'NH{q', 65
            _2135 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                t = u
                idx = _1619 * _1618 * _1617 / 100000 / 10^18
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if idx / 10 and 10 > -1 / idx / 10:
                        revert with 'NH{q', 17
                    if idx < 10 * idx / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_2135]:
                        revert with 'NH{q', 50
                    mem[t + _2135 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _2573 = mem[64]
                _2577 = mem[s]
                idx = 0
                while idx < _2577:
                    mem[_2573 + idx + 32] = mem[s + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2577) <= _2577:
                    _2961 = mem[_1077]
                    idx = 0
                    while idx < _2961:
                        mem[_2573 + _2577 + idx + 32] = mem[_1077 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2961) <= _2961:
                        _3097 = mem[_2135]
                        idx = 0
                        while idx < _3097:
                            mem[_2573 + _2577 + _2961 + idx + 32] = mem[_2135 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_3097) <= _3097:
                            _3177 = mem[64]
                            mem[mem[64]] = _2573 + _2577 + _2961 + _3097 - mem[64]
                            mem[64] = _2573 + _2577 + _2961 + _3097 + 32
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            s = _3177
                            t = _1616
                            continue 
                        mem[_2573 + _2577 + _2961 + _3097 + 32] = 0
                        _3193 = mem[64]
                        mem[mem[64]] = _2573 + _2577 + _2961 + _3097 - mem[64]
                        mem[64] = _2573 + _2577 + _2961 + _3097 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _3193
                        t = _1616
                        continue 
                    mem[_2573 + _2577 + _2961 + 32] = 0
                    _3105 = mem[_2135]
                    idx = 0
                    while idx < _3105:
                        mem[_2573 + _2577 + _2961 + idx + 32] = mem[_2135 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3105) <= _3105:
                        _3178 = mem[64]
                        mem[mem[64]] = _2573 + _2577 + _2961 + _3105 - mem[64]
                        mem[64] = _2573 + _2577 + _2961 + _3105 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _3178
                        t = _1616
                        continue 
                    mem[_2573 + _2577 + _2961 + _3105 + 32] = 0
                    _3194 = mem[64]
                    mem[mem[64]] = _2573 + _2577 + _2961 + _3105 - mem[64]
                    mem[64] = _2573 + _2577 + _2961 + _3105 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _3194
                    t = _1616
                    continue 
                mem[_2573 + _2577 + 32] = 0
                _3013 = mem[_1077]
                idx = 0
                while idx < _3013:
                    mem[_2573 + _2577 + idx + 32] = mem[_1077 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3013) <= _3013:
                    _3098 = mem[_2135]
                    idx = 0
                    while idx < _3098:
                        mem[_2573 + _2577 + _3013 + idx + 32] = mem[_2135 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3098) <= _3098:
                        _3179 = mem[64]
                        mem[mem[64]] = _2573 + _2577 + _3013 + _3098 - mem[64]
                        mem[64] = _2573 + _2577 + _3013 + _3098 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _3179
                        t = _1616
                        continue 
                    mem[_2573 + _2577 + _3013 + _3098 + 32] = 0
                    _3195 = mem[64]
                    mem[mem[64]] = _2573 + _2577 + _3013 + _3098 - mem[64]
                    mem[64] = _2573 + _2577 + _3013 + _3098 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _3195
                    t = _1616
                    continue 
                mem[_2573 + _2577 + _3013 + 32] = 0
                _3106 = mem[_2135]
                idx = 0
                while idx < _3106:
                    mem[_2573 + _2577 + _3013 + idx + 32] = mem[_2135 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3106) <= _3106:
                    _3180 = mem[64]
                    mem[mem[64]] = _2573 + _2577 + _3013 + _3106 - mem[64]
                    mem[64] = _2573 + _2577 + _3013 + _3106 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _3180
                    t = _1616
                    continue 
                mem[_2573 + _2577 + _3013 + _3106 + 32] = 0
                _3196 = mem[64]
                mem[mem[64]] = _2573 + _2577 + _3013 + _3106 - mem[64]
                mem[64] = _2573 + _2577 + _3013 + _3106 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _3196
                t = _1616
                continue 
            mem[_2135 + 32 len u] = call.data[calldata.size len u]
            t = u
            idx = _1619 * _1618 * _1617 / 100000 / 10^18
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_2135]:
                    revert with 'NH{q', 50
                mem[t + _2135 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _2574 = mem[64]
            _2578 = mem[s]
            idx = 0
            while idx < _2578:
                mem[_2574 + idx + 32] = mem[s + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2578) <= _2578:
                _2962 = mem[_1077]
                idx = 0
                while idx < _2962:
                    mem[_2574 + _2578 + idx + 32] = mem[_1077 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2962) <= _2962:
                    _3099 = mem[_2135]
                    idx = 0
                    while idx < _3099:
                        mem[_2574 + _2578 + _2962 + idx + 32] = mem[_2135 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3099) <= _3099:
                        _3181 = mem[64]
                        mem[mem[64]] = _2574 + _2578 + _2962 + _3099 - mem[64]
                        mem[64] = _2574 + _2578 + _2962 + _3099 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _3181
                        t = _1616
                        continue 
                    mem[_2574 + _2578 + _2962 + _3099 + 32] = 0
                    _3197 = mem[64]
                    mem[mem[64]] = _2574 + _2578 + _2962 + _3099 - mem[64]
                    mem[64] = _2574 + _2578 + _2962 + _3099 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _3197
                    t = _1616
                    continue 
                mem[_2574 + _2578 + _2962 + 32] = 0
                _3107 = mem[_2135]
                idx = 0
                while idx < _3107:
                    mem[_2574 + _2578 + _2962 + idx + 32] = mem[_2135 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3107) <= _3107:
                    _3182 = mem[64]
                    mem[mem[64]] = _2574 + _2578 + _2962 + _3107 - mem[64]
                    mem[64] = _2574 + _2578 + _2962 + _3107 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _3182
                    t = _1616
                    continue 
                mem[_2574 + _2578 + _2962 + _3107 + 32] = 0
                _3198 = mem[64]
                mem[mem[64]] = _2574 + _2578 + _2962 + _3107 - mem[64]
                mem[64] = _2574 + _2578 + _2962 + _3107 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _3198
                t = _1616
                continue 
            mem[_2574 + _2578 + 32] = 0
            _3014 = mem[_1077]
            idx = 0
            while idx < _3014:
                mem[_2574 + _2578 + idx + 32] = mem[_1077 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_3014) <= _3014:
                _3100 = mem[_2135]
                idx = 0
                while idx < _3100:
                    mem[_2574 + _2578 + _3014 + idx + 32] = mem[_2135 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3100) <= _3100:
                    _3183 = mem[64]
                    mem[mem[64]] = _2574 + _2578 + _3014 + _3100 - mem[64]
                    mem[64] = _2574 + _2578 + _3014 + _3100 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _3183
                    t = _1616
                    continue 
                mem[_2574 + _2578 + _3014 + _3100 + 32] = 0
                _3199 = mem[64]
                mem[mem[64]] = _2574 + _2578 + _3014 + _3100 - mem[64]
                mem[64] = _2574 + _2578 + _3014 + _3100 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _3199
                t = _1616
                continue 
            mem[_2574 + _2578 + _3014 + 32] = 0
            _3108 = mem[_2135]
            idx = 0
            while idx < _3108:
                mem[_2574 + _2578 + _3014 + idx + 32] = mem[_2135 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_3108) <= _3108:
                _3184 = mem[64]
                mem[mem[64]] = _2574 + _2578 + _3014 + _3108 - mem[64]
                mem[64] = _2574 + _2578 + _3014 + _3108 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _3184
                t = _1616
                continue 
            mem[_2574 + _2578 + _3014 + _3108 + 32] = 0
            _3200 = mem[64]
            mem[mem[64]] = _2574 + _2578 + _3014 + _3108 - mem[64]
            mem[64] = _2574 + _2578 + _3014 + _3108 + 32
            if u == -1:
                revert with 'NH{q', 17
            u = u + 1
            s = _3200
            t = _1616
            continue 
        _1615 = mem[64]
        mem[mem[64]] = 32
        _1631 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_1631)] = mem[s + 32 len ceil32(_1631)]
        if ceil32(_1631) <= _1631:
            return 32, mem[mem[64] + 32 len ceil32(_1631) + 32]
        mem[mem[64] + _1631 + 64] = 0
        return memory
          from mem[64]
           len _1615 + ceil32(_1631) + -mem[64] + 64
    mem[_600 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _299 * _295 * _292 / 100000 / 10^18
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if idx / 10 and 10 > -1 / idx / 10:
            revert with 'NH{q', 17
        if idx < 10 * idx / 10:
            revert with 'NH{q', 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 'NH{q', 17
        if t - 1 >= mem[_600]:
            revert with 'NH{q', 50
        mem[t + _600 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _1078 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1078] = 1
    mem[_1078 + 32] = '#'
    idx = 1
    s = _600
    t = _289
    while idx < _286:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _1621 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _1622 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]
        _1623 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]
        _1624 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]
        if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
            _1678 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1678] = 26
            mem[_1678 + 32] = 'SafeMath: division by zero'
            _1812 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1812] = 26
            mem[_1812 + 32] = 'SafeMath: division by zero'
            _1872 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1872] = 1
            mem[_1872 + 32] = '0'
            _1890 = mem[64]
            _1936 = mem[s]
            t = 0
            while t < _1936:
                mem[_1890 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_1936) <= _1936:
                _2178 = mem[_1078]
                s = 0
                while s < _2178:
                    mem[_1890 + _1936 + s + 32] = mem[_1078 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2178) <= _2178:
                    _2591 = mem[_1872]
                    s = 0
                    while s < _2591:
                        mem[_1890 + _1936 + _2178 + s + 32] = mem[_1872 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2591) <= _2591:
                        _2933 = mem[64]
                        mem[mem[64]] = _1890 + _1936 + _2178 + _2591 - mem[64]
                        mem[64] = _1890 + _1936 + _2178 + _2591 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2933
                        t = _1621
                        continue 
                    mem[_1890 + _1936 + _2178 + _2591 + 32] = 0
                    _2985 = mem[64]
                    mem[mem[64]] = _1890 + _1936 + _2178 + _2591 - mem[64]
                    mem[64] = _1890 + _1936 + _2178 + _2591 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2985
                    t = _1621
                    continue 
                mem[_1890 + _1936 + _2178 + 32] = 0
                _2615 = mem[_1872]
                s = 0
                while s < _2615:
                    mem[_1890 + _1936 + _2178 + s + 32] = mem[_1872 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2615) <= _2615:
                    _2934 = mem[64]
                    mem[mem[64]] = _1890 + _1936 + _2178 + _2615 - mem[64]
                    mem[64] = _1890 + _1936 + _2178 + _2615 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2934
                    t = _1621
                    continue 
                mem[_1890 + _1936 + _2178 + _2615 + 32] = 0
                _2986 = mem[64]
                mem[mem[64]] = _1890 + _1936 + _2178 + _2615 - mem[64]
                mem[64] = _1890 + _1936 + _2178 + _2615 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2986
                t = _1621
                continue 
            mem[_1890 + _1936 + 32] = 0
            _2230 = mem[_1078]
            s = 0
            while s < _2230:
                mem[_1890 + _1936 + s + 32] = mem[_1078 + s + 32]
                s = s + 32
                continue 
            if ceil32(_2230) <= _2230:
                _2592 = mem[_1872]
                s = 0
                while s < _2592:
                    mem[_1890 + _1936 + _2230 + s + 32] = mem[_1872 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2592) <= _2592:
                    _2935 = mem[64]
                    mem[mem[64]] = _1890 + _1936 + _2230 + _2592 - mem[64]
                    mem[64] = _1890 + _1936 + _2230 + _2592 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2935
                    t = _1621
                    continue 
                mem[_1890 + _1936 + _2230 + _2592 + 32] = 0
                _2987 = mem[64]
                mem[mem[64]] = _1890 + _1936 + _2230 + _2592 - mem[64]
                mem[64] = _1890 + _1936 + _2230 + _2592 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2987
                t = _1621
                continue 
            mem[_1890 + _1936 + _2230 + 32] = 0
            _2616 = mem[_1872]
            s = 0
            while s < _2616:
                mem[_1890 + _1936 + _2230 + s + 32] = mem[_1872 + s + 32]
                s = s + 32
                continue 
            if ceil32(_2616) <= _2616:
                _2936 = mem[64]
                mem[mem[64]] = _1890 + _1936 + _2230 + _2616 - mem[64]
                mem[64] = _1890 + _1936 + _2230 + _2616 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2936
                t = _1621
                continue 
            mem[_1890 + _1936 + _2230 + _2616 + 32] = 0
            _2988 = mem[64]
            mem[mem[64]] = _1890 + _1936 + _2230 + _2616 - mem[64]
            mem[64] = _1890 + _1936 + _2230 + _2616 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _2988
            t = _1621
            continue 
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] and mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] > -1 / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
            revert with 'NH{q', 17
        if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
            revert with 'NH{q', 18
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] != mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
            _1826 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1826] = 26
            mem[_1826 + 32] = 'SafeMath: division by zero'
            _1889 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1889] = 26
            mem[_1889 + 32] = 'SafeMath: division by zero'
            _1948 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1948] = 1
            mem[_1948 + 32] = '0'
            _1955 = mem[64]
            _1958 = mem[s]
            t = 0
            while t < _1958:
                mem[_1955 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_1958) <= _1958:
                _2177 = mem[_1078]
                s = 0
                while s < _2177:
                    mem[_1955 + _1958 + s + 32] = mem[_1078 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2177) <= _2177:
                    _2589 = mem[_1948]
                    s = 0
                    while s < _2589:
                        mem[_1955 + _1958 + _2177 + s + 32] = mem[_1948 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2589) <= _2589:
                        _2929 = mem[64]
                        mem[mem[64]] = _1955 + _1958 + _2177 + _2589 - mem[64]
                        mem[64] = _1955 + _1958 + _2177 + _2589 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2929
                        t = _1621
                        continue 
                    mem[_1955 + _1958 + _2177 + _2589 + 32] = 0
                    _2981 = mem[64]
                    mem[mem[64]] = _1955 + _1958 + _2177 + _2589 - mem[64]
                    mem[64] = _1955 + _1958 + _2177 + _2589 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2981
                    t = _1621
                    continue 
                mem[_1955 + _1958 + _2177 + 32] = 0
                _2613 = mem[_1948]
                s = 0
                while s < _2613:
                    mem[_1955 + _1958 + _2177 + s + 32] = mem[_1948 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2613) <= _2613:
                    _2930 = mem[64]
                    mem[mem[64]] = _1955 + _1958 + _2177 + _2613 - mem[64]
                    mem[64] = _1955 + _1958 + _2177 + _2613 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2930
                    t = _1621
                    continue 
                mem[_1955 + _1958 + _2177 + _2613 + 32] = 0
                _2982 = mem[64]
                mem[mem[64]] = _1955 + _1958 + _2177 + _2613 - mem[64]
                mem[64] = _1955 + _1958 + _2177 + _2613 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2982
                t = _1621
                continue 
            mem[_1955 + _1958 + 32] = 0
            _2229 = mem[_1078]
            s = 0
            while s < _2229:
                mem[_1955 + _1958 + s + 32] = mem[_1078 + s + 32]
                s = s + 32
                continue 
            if ceil32(_2229) <= _2229:
                _2590 = mem[_1948]
                s = 0
                while s < _2590:
                    mem[_1955 + _1958 + _2229 + s + 32] = mem[_1948 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2590) <= _2590:
                    _2931 = mem[64]
                    mem[mem[64]] = _1955 + _1958 + _2229 + _2590 - mem[64]
                    mem[64] = _1955 + _1958 + _2229 + _2590 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2931
                    t = _1621
                    continue 
                mem[_1955 + _1958 + _2229 + _2590 + 32] = 0
                _2983 = mem[64]
                mem[mem[64]] = _1955 + _1958 + _2229 + _2590 - mem[64]
                mem[64] = _1955 + _1958 + _2229 + _2590 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2983
                t = _1621
                continue 
            mem[_1955 + _1958 + _2229 + 32] = 0
            _2614 = mem[_1948]
            s = 0
            while s < _2614:
                mem[_1955 + _1958 + _2229 + s + 32] = mem[_1948 + s + 32]
                s = s + 32
                continue 
            if ceil32(_2614) <= _2614:
                _2932 = mem[64]
                mem[mem[64]] = _1955 + _1958 + _2229 + _2614 - mem[64]
                mem[64] = _1955 + _1958 + _2229 + _2614 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2932
                t = _1621
                continue 
            mem[_1955 + _1958 + _2229 + _2614 + 32] = 0
            _2984 = mem[64]
            mem[mem[64]] = _1955 + _1958 + _2229 + _2614 - mem[64]
            mem[64] = _1955 + _1958 + _2229 + _2614 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _2984
            t = _1621
            continue 
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] and mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] > -1 / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
            revert with 'NH{q', 17
        if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
            revert with 'NH{q', 18
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] != mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]:
            revert with 0, 'SafeMath: multiplication overflow'
        _1935 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1935] = 26
        mem[_1935 + 32] = 'SafeMath: division by zero'
        _1954 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1954] = 26
        mem[_1954 + 32] = 'SafeMath: division by zero'
        if not _1624 * _1623 * _1622 / 100000 / 10^18:
            _1974 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1974] = 1
            mem[_1974 + 32] = '0'
            _1979 = mem[64]
            _1989 = mem[s]
            t = 0
            while t < _1989:
                mem[_1979 + t + 32] = mem[s + t + 32]
                t = t + 32
                continue 
            if ceil32(_1989) <= _1989:
                _2176 = mem[_1078]
                s = 0
                while s < _2176:
                    mem[_1979 + _1989 + s + 32] = mem[_1078 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2176) <= _2176:
                    _2587 = mem[_1974]
                    s = 0
                    while s < _2587:
                        mem[_1979 + _1989 + _2176 + s + 32] = mem[_1974 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2587) <= _2587:
                        _2925 = mem[64]
                        mem[mem[64]] = _1979 + _1989 + _2176 + _2587 - mem[64]
                        mem[64] = _1979 + _1989 + _2176 + _2587 + 32
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _2925
                        t = _1621
                        continue 
                    mem[_1979 + _1989 + _2176 + _2587 + 32] = 0
                    _2977 = mem[64]
                    mem[mem[64]] = _1979 + _1989 + _2176 + _2587 - mem[64]
                    mem[64] = _1979 + _1989 + _2176 + _2587 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2977
                    t = _1621
                    continue 
                mem[_1979 + _1989 + _2176 + 32] = 0
                _2611 = mem[_1974]
                s = 0
                while s < _2611:
                    mem[_1979 + _1989 + _2176 + s + 32] = mem[_1974 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2611) <= _2611:
                    _2926 = mem[64]
                    mem[mem[64]] = _1979 + _1989 + _2176 + _2611 - mem[64]
                    mem[64] = _1979 + _1989 + _2176 + _2611 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2926
                    t = _1621
                    continue 
                mem[_1979 + _1989 + _2176 + _2611 + 32] = 0
                _2978 = mem[64]
                mem[mem[64]] = _1979 + _1989 + _2176 + _2611 - mem[64]
                mem[64] = _1979 + _1989 + _2176 + _2611 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2978
                t = _1621
                continue 
            mem[_1979 + _1989 + 32] = 0
            _2228 = mem[_1078]
            s = 0
            while s < _2228:
                mem[_1979 + _1989 + s + 32] = mem[_1078 + s + 32]
                s = s + 32
                continue 
            if ceil32(_2228) <= _2228:
                _2588 = mem[_1974]
                s = 0
                while s < _2588:
                    mem[_1979 + _1989 + _2228 + s + 32] = mem[_1974 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2588) <= _2588:
                    _2927 = mem[64]
                    mem[mem[64]] = _1979 + _1989 + _2228 + _2588 - mem[64]
                    mem[64] = _1979 + _1989 + _2228 + _2588 + 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _2927
                    t = _1621
                    continue 
                mem[_1979 + _1989 + _2228 + _2588 + 32] = 0
                _2979 = mem[64]
                mem[mem[64]] = _1979 + _1989 + _2228 + _2588 - mem[64]
                mem[64] = _1979 + _1989 + _2228 + _2588 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2979
                t = _1621
                continue 
            mem[_1979 + _1989 + _2228 + 32] = 0
            _2612 = mem[_1974]
            s = 0
            while s < _2612:
                mem[_1979 + _1989 + _2228 + s + 32] = mem[_1974 + s + 32]
                s = s + 32
                continue 
            if ceil32(_2612) <= _2612:
                _2928 = mem[64]
                mem[mem[64]] = _1979 + _1989 + _2228 + _2612 - mem[64]
                mem[64] = _1979 + _1989 + _2228 + _2612 + 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _2928
                t = _1621
                continue 
            mem[_1979 + _1989 + _2228 + _2612 + 32] = 0
            _2980 = mem[64]
            mem[mem[64]] = _1979 + _1989 + _2228 + _2612 - mem[64]
            mem[64] = _1979 + _1989 + _2228 + _2612 + 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _2980
            t = _1621
            continue 
        u = 0
        t = _1624 * _1623 * _1622 / 100000 / 10^18
        while t:
            if u == -1:
                revert with 'NH{q', 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 'NH{q', 65
        _2136 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            t = u
            idx = _1624 * _1623 * _1622 / 100000 / 10^18
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_2136]:
                    revert with 'NH{q', 50
                mem[t + _2136 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _2575 = mem[64]
            _2585 = mem[s]
            idx = 0
            while idx < _2585:
                mem[_2575 + idx + 32] = mem[s + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2585) <= _2585:
                _2975 = mem[_1078]
                idx = 0
                while idx < _2975:
                    mem[_2575 + _2585 + idx + 32] = mem[_1078 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2975) <= _2975:
                    _3101 = mem[_2136]
                    idx = 0
                    while idx < _3101:
                        mem[_2575 + _2585 + _2975 + idx + 32] = mem[_2136 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3101) <= _3101:
                        _3185 = mem[64]
                        mem[mem[64]] = _2575 + _2585 + _2975 + _3101 - mem[64]
                        mem[64] = _2575 + _2585 + _2975 + _3101 + 32
                        if u == -1:
                            revert with 'NH{q', 17
                        u = u + 1
                        s = _3185
                        t = _1621
                        continue 
                    mem[_2575 + _2585 + _2975 + _3101 + 32] = 0
                    _3201 = mem[64]
                    mem[mem[64]] = _2575 + _2585 + _2975 + _3101 - mem[64]
                    mem[64] = _2575 + _2585 + _2975 + _3101 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _3201
                    t = _1621
                    continue 
                mem[_2575 + _2585 + _2975 + 32] = 0
                _3109 = mem[_2136]
                idx = 0
                while idx < _3109:
                    mem[_2575 + _2585 + _2975 + idx + 32] = mem[_2136 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3109) <= _3109:
                    _3186 = mem[64]
                    mem[mem[64]] = _2575 + _2585 + _2975 + _3109 - mem[64]
                    mem[64] = _2575 + _2585 + _2975 + _3109 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _3186
                    t = _1621
                    continue 
                mem[_2575 + _2585 + _2975 + _3109 + 32] = 0
                _3202 = mem[64]
                mem[mem[64]] = _2575 + _2585 + _2975 + _3109 - mem[64]
                mem[64] = _2575 + _2585 + _2975 + _3109 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _3202
                t = _1621
                continue 
            mem[_2575 + _2585 + 32] = 0
            _3015 = mem[_1078]
            idx = 0
            while idx < _3015:
                mem[_2575 + _2585 + idx + 32] = mem[_1078 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_3015) <= _3015:
                _3102 = mem[_2136]
                idx = 0
                while idx < _3102:
                    mem[_2575 + _2585 + _3015 + idx + 32] = mem[_2136 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3102) <= _3102:
                    _3187 = mem[64]
                    mem[mem[64]] = _2575 + _2585 + _3015 + _3102 - mem[64]
                    mem[64] = _2575 + _2585 + _3015 + _3102 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _3187
                    t = _1621
                    continue 
                mem[_2575 + _2585 + _3015 + _3102 + 32] = 0
                _3203 = mem[64]
                mem[mem[64]] = _2575 + _2585 + _3015 + _3102 - mem[64]
                mem[64] = _2575 + _2585 + _3015 + _3102 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _3203
                t = _1621
                continue 
            mem[_2575 + _2585 + _3015 + 32] = 0
            _3110 = mem[_2136]
            idx = 0
            while idx < _3110:
                mem[_2575 + _2585 + _3015 + idx + 32] = mem[_2136 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_3110) <= _3110:
                _3188 = mem[64]
                mem[mem[64]] = _2575 + _2585 + _3015 + _3110 - mem[64]
                mem[64] = _2575 + _2585 + _3015 + _3110 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _3188
                t = _1621
                continue 
            mem[_2575 + _2585 + _3015 + _3110 + 32] = 0
            _3204 = mem[64]
            mem[mem[64]] = _2575 + _2585 + _3015 + _3110 - mem[64]
            mem[64] = _2575 + _2585 + _3015 + _3110 + 32
            if u == -1:
                revert with 'NH{q', 17
            u = u + 1
            s = _3204
            t = _1621
            continue 
        mem[_2136 + 32 len u] = call.data[calldata.size len u]
        t = u
        idx = _1624 * _1623 * _1622 / 100000 / 10^18
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[_2136]:
                revert with 'NH{q', 50
            mem[t + _2136 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _2576 = mem[64]
        _2586 = mem[s]
        idx = 0
        while idx < _2586:
            mem[_2576 + idx + 32] = mem[s + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_2586) <= _2586:
            _2976 = mem[_1078]
            idx = 0
            while idx < _2976:
                mem[_2576 + _2586 + idx + 32] = mem[_1078 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2976) <= _2976:
                _3103 = mem[_2136]
                idx = 0
                while idx < _3103:
                    mem[_2576 + _2586 + _2976 + idx + 32] = mem[_2136 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3103) <= _3103:
                    _3189 = mem[64]
                    mem[mem[64]] = _2576 + _2586 + _2976 + _3103 - mem[64]
                    mem[64] = _2576 + _2586 + _2976 + _3103 + 32
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    s = _3189
                    t = _1621
                    continue 
                mem[_2576 + _2586 + _2976 + _3103 + 32] = 0
                _3205 = mem[64]
                mem[mem[64]] = _2576 + _2586 + _2976 + _3103 - mem[64]
                mem[64] = _2576 + _2586 + _2976 + _3103 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _3205
                t = _1621
                continue 
            mem[_2576 + _2586 + _2976 + 32] = 0
            _3111 = mem[_2136]
            idx = 0
            while idx < _3111:
                mem[_2576 + _2586 + _2976 + idx + 32] = mem[_2136 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_3111) <= _3111:
                _3190 = mem[64]
                mem[mem[64]] = _2576 + _2586 + _2976 + _3111 - mem[64]
                mem[64] = _2576 + _2586 + _2976 + _3111 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _3190
                t = _1621
                continue 
            mem[_2576 + _2586 + _2976 + _3111 + 32] = 0
            _3206 = mem[64]
            mem[mem[64]] = _2576 + _2586 + _2976 + _3111 - mem[64]
            mem[64] = _2576 + _2586 + _2976 + _3111 + 32
            if u == -1:
                revert with 'NH{q', 17
            u = u + 1
            s = _3206
            t = _1621
            continue 
        mem[_2576 + _2586 + 32] = 0
        _3016 = mem[_1078]
        idx = 0
        while idx < _3016:
            mem[_2576 + _2586 + idx + 32] = mem[_1078 + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_3016) <= _3016:
            _3104 = mem[_2136]
            idx = 0
            while idx < _3104:
                mem[_2576 + _2586 + _3016 + idx + 32] = mem[_2136 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_3104) <= _3104:
                _3191 = mem[64]
                mem[mem[64]] = _2576 + _2586 + _3016 + _3104 - mem[64]
                mem[64] = _2576 + _2586 + _3016 + _3104 + 32
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                s = _3191
                t = _1621
                continue 
            mem[_2576 + _2586 + _3016 + _3104 + 32] = 0
            _3207 = mem[64]
            mem[mem[64]] = _2576 + _2586 + _3016 + _3104 - mem[64]
            mem[64] = _2576 + _2586 + _3016 + _3104 + 32
            if u == -1:
                revert with 'NH{q', 17
            u = u + 1
            s = _3207
            t = _1621
            continue 
        mem[_2576 + _2586 + _3016 + 32] = 0
        _3112 = mem[_2136]
        idx = 0
        while idx < _3112:
            mem[_2576 + _2586 + _3016 + idx + 32] = mem[_2136 + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_3112) <= _3112:
            _3192 = mem[64]
            mem[mem[64]] = _2576 + _2586 + _3016 + _3112 - mem[64]
            mem[64] = _2576 + _2586 + _3016 + _3112 + 32
            if u == -1:
                revert with 'NH{q', 17
            u = u + 1
            s = _3192
            t = _1621
            continue 
        mem[_2576 + _2586 + _3016 + _3112 + 32] = 0
        _3208 = mem[64]
        mem[mem[64]] = _2576 + _2586 + _3016 + _3112 - mem[64]
        mem[64] = _2576 + _2586 + _3016 + _3112 + 32
        if u == -1:
            revert with 'NH{q', 17
        u = u + 1
        s = _3208
        t = _1621
        continue 
    _1620 = mem[64]
    mem[mem[64]] = 32
    _1632 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_1632)] = mem[s + 32 len ceil32(_1632)]
    if ceil32(_1632) <= _1632:
        return 32, mem[mem[64] + 32 len ceil32(_1632) + 32]
    mem[mem[64] + _1632 + 64] = 0
    return memory
      from mem[64]
       len _1620 + ceil32(_1632) + -mem[64] + 64
}



}
