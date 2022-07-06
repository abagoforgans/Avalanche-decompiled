contract main {




// =====================  Runtime code  =====================


#
#  - cashoutNodeReward(address arg1, uint256 arg2)
#  - getNodeReward(address arg1, uint256 arg2)
#
uint8 stor0; offset 160
address owner;
mapping of struct stor1;
uint8 rewardPerNode; offset 160
address tokenAddress;
uint256 nodePrice;
uint16 sub_ddf0185f;
uint256 totalNodesCreated;
uint256 totalStaked;
uint256 totalClaimed;

function isNodeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)].field_256)
}

function paused() payable {
    return bool(stor0)
}

function rewardPerNode() payable {
    return rewardPerNode
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function getNodePrice() payable {
    return nodePrice
}

function totalNodesCreated() payable {
    return totalNodesCreated
}

function totalClaimed() payable {
    return totalClaimed
}

function sub_ddf0185f(?) payable {
    return sub_ddf0185f
}

function nodePrice() payable {
    return nodePrice
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_da5f051c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nodePrice = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_8e4c08aa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerNode = uint8(arg1)
}

function updateTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function sub_5757aa84(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg1) <= 0:
        revert with 0, 'Must be more than 0'
    if uint16(arg1) >= 1000:
        revert with 0, 'Must be less than 1000'
    sub_ddf0185f = uint16(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_5c6dc219(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if tokenAddress != msg.sender:
            revert with 0, 'NOT_GUARD'
    if stor0:
        revert with 0, 'Pausable: paused'
    if sub_ddf0185f <= stor1[address(arg1)].field_0:
        revert with 0, 'Max nodes exceeded'
    stor1[address(arg1)].field_256 = 1
    stor1[address(arg1)].field_0++
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = block.timestamp
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_256 = block.timestamp
    emit 0xe410d169: address(arg1), block.timestamp
    if totalNodesCreated == -1:
        revert with 0, 17
    totalNodesCreated++
}

function cashoutAllNodesRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if tokenAddress != msg.sender:
            revert with 0, 'NOT_GUARD'
    if not stor1[address(arg1)].field_256:
        revert with 0, 'NOT_OWNER'
    if stor0:
        revert with 0, 'Pausable: paused'
    if not stor1[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 1)
        stor1[address(arg1)][idx].field_256 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = (2 * idx) + sha3(sha3(address(arg1), 1))
        continue 
}

function getAllNodes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 1
    mem[64] = (32 * stor1[address(arg1)].field_0) + 128
    mem[96] = stor1[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor1[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 1)
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = stor1[address(arg1)][idx].field_0
        mem[_12 + 32] = stor1[address(arg1)][idx].field_256
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _14:
        _19 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_19 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _13 + (64 * _14) + -mem[64] + 64
}

function getAllNodesRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
    idx = 0
    s = 0
    t = 0
    while idx < stor1[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp < stor1[address(arg1)][idx].field_256:
            revert with 0, 17
        if rewardPerNode and 10^18 > -1 / rewardPerNode:
            revert with 0, 17
        if 10^18 * rewardPerNode / 1440 and block.timestamp - stor1[address(arg1)][idx].field_256 / 60 > -1 / 10^18 * rewardPerNode / 1440:
            revert with 0, 17
        if s > !(10^18 * rewardPerNode / 1440 * block.timestamp - stor1[address(arg1)][idx].field_256 / 60):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (10^18 * rewardPerNode / 1440 * block.timestamp - stor1[address(arg1)][idx].field_256 / 60)
        t = (2 * idx) + sha3(sha3(address(arg1), 1))
        continue 
    return (s * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0 * stor1[address(arg1)].field_0)
}

function getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(arg1)].field_256:
        revert with 0, 'NOT_OWNER'
    mem[32] = 1
    mem[96] = 0
    mem[128] = 0
    if not stor1[address(arg1)].field_0:
        revert with 0, 50
    mem[0] = sha3(address(arg1), 1)
    if not stor1[address(arg1)].field_0:
        mem[160] = 1
        mem[192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[64] = 288
        mem[224] = 1
        mem[256] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = 160
        t = 96
        while idx < stor1[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 1)
            _44 = mem[64]
            mem[64] = mem[64] + 64
            mem[_44] = stor1[address(arg1)][idx].field_0
            mem[_44 + 32] = stor1[address(arg1)][idx].field_256
            if not stor1[address(arg1)][idx].field_0:
                _47 = mem[64]
                mem[64] = mem[64] + 64
                mem[_47] = 1
                mem[_47 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _48 = mem[64]
                _51 = mem[s]
                t = 0
                while t < _51:
                    mem[t + _48 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_51) <= _51:
                    _147 = mem[224]
                    s = 0
                    while s < _147:
                        mem[s + _48 + _51 + 32] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(_147) <= _147:
                        _299 = mem[_47]
                        s = 0
                        while s < _299:
                            mem[s + _48 + _51 + _147 + 32] = mem[s + _47 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_299) <= _299:
                            _435 = mem[64]
                            mem[mem[64]] = _299 + _48 + _51 + _147 - mem[64]
                            mem[64] = _299 + _48 + _51 + _147 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _435
                            t = _44
                            continue 
                        mem[_48 + _51 + _147 + _299 + 32] = 0
                        _441 = mem[64]
                        mem[mem[64]] = _299 + _48 + _51 + _147 - mem[64]
                        mem[64] = _299 + _48 + _51 + _147 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _441
                        t = _44
                        continue 
                    mem[_48 + _51 + _147 + 32] = 0
                    _303 = mem[_47]
                    s = 0
                    while s < _303:
                        mem[s + _48 + _51 + _147 + 32] = mem[s + _47 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_303) <= _303:
                        _436 = mem[64]
                        mem[mem[64]] = _303 + _48 + _51 + _147 - mem[64]
                        mem[64] = _303 + _48 + _51 + _147 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _436
                        t = _44
                        continue 
                    mem[_48 + _51 + _147 + _303 + 32] = 0
                    _442 = mem[64]
                    mem[mem[64]] = _303 + _48 + _51 + _147 - mem[64]
                    mem[64] = _303 + _48 + _51 + _147 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _442
                    t = _44
                    continue 
                mem[_48 + _51 + 32] = 0
                _149 = mem[224]
                s = 0
                while s < _149:
                    mem[s + _48 + _51 + 32] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(_149) <= _149:
                    _300 = mem[_47]
                    s = 0
                    while s < _300:
                        mem[s + _48 + _51 + _149 + 32] = mem[s + _47 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_300) <= _300:
                        _437 = mem[64]
                        mem[mem[64]] = _300 + _48 + _51 + _149 - mem[64]
                        mem[64] = _300 + _48 + _51 + _149 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _437
                        t = _44
                        continue 
                    mem[_48 + _51 + _149 + _300 + 32] = 0
                    _443 = mem[64]
                    mem[mem[64]] = _300 + _48 + _51 + _149 - mem[64]
                    mem[64] = _300 + _48 + _51 + _149 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _443
                    t = _44
                    continue 
                mem[_48 + _51 + _149 + 32] = 0
                _304 = mem[_47]
                s = 0
                while s < _304:
                    mem[s + _48 + _51 + _149 + 32] = mem[s + _47 + 32]
                    s = s + 32
                    continue 
                if ceil32(_304) <= _304:
                    _438 = mem[64]
                    mem[mem[64]] = _304 + _48 + _51 + _149 - mem[64]
                    mem[64] = _304 + _48 + _51 + _149 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _438
                    t = _44
                    continue 
                mem[_48 + _51 + _149 + _304 + 32] = 0
                _444 = mem[64]
                mem[mem[64]] = _304 + _48 + _51 + _149 - mem[64]
                mem[64] = _304 + _48 + _51 + _149 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _444
                t = _44
                continue 
            u = 0
            t = stor1[address(arg1)][idx].field_0
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _146 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = stor1[address(arg1)][idx].field_0
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_146]:
                        revert with 0, 50
                    mem[v + _146 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _293 = mem[64]
                _297 = mem[s]
                t = 0
                while t < _297:
                    mem[t + _293 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_297) <= _297:
                    _427 = mem[224]
                    s = 0
                    while s < _427:
                        mem[s + _293 + _297 + 32] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(_427) <= _427:
                        _633 = mem[_146]
                        s = 0
                        while s < _633:
                            mem[s + _293 + _297 + _427 + 32] = mem[s + _146 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_633) <= _633:
                            _817 = mem[64]
                            mem[mem[64]] = _633 + _293 + _297 + _427 - mem[64]
                            mem[64] = _633 + _293 + _297 + _427 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _817
                            t = _44
                            continue 
                        mem[_293 + _297 + _427 + _633 + 32] = 0
                        _833 = mem[64]
                        mem[mem[64]] = _633 + _293 + _297 + _427 - mem[64]
                        mem[64] = _633 + _293 + _297 + _427 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _833
                        t = _44
                        continue 
                    mem[_293 + _297 + _427 + 32] = 0
                    _641 = mem[_146]
                    s = 0
                    while s < _641:
                        mem[s + _293 + _297 + _427 + 32] = mem[s + _146 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_641) <= _641:
                        _818 = mem[64]
                        mem[mem[64]] = _641 + _293 + _297 + _427 - mem[64]
                        mem[64] = _641 + _293 + _297 + _427 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _818
                        t = _44
                        continue 
                    mem[_293 + _297 + _427 + _641 + 32] = 0
                    _834 = mem[64]
                    mem[mem[64]] = _641 + _293 + _297 + _427 - mem[64]
                    mem[64] = _641 + _293 + _297 + _427 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _834
                    t = _44
                    continue 
                mem[_293 + _297 + 32] = 0
                _433 = mem[224]
                s = 0
                while s < _433:
                    mem[s + _293 + _297 + 32] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(_433) <= _433:
                    _634 = mem[_146]
                    s = 0
                    while s < _634:
                        mem[s + _293 + _297 + _433 + 32] = mem[s + _146 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_634) <= _634:
                        _819 = mem[64]
                        mem[mem[64]] = _634 + _293 + _297 + _433 - mem[64]
                        mem[64] = _634 + _293 + _297 + _433 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _819
                        t = _44
                        continue 
                    mem[_293 + _297 + _433 + _634 + 32] = 0
                    _835 = mem[64]
                    mem[mem[64]] = _634 + _293 + _297 + _433 - mem[64]
                    mem[64] = _634 + _293 + _297 + _433 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _835
                    t = _44
                    continue 
                mem[_293 + _297 + _433 + 32] = 0
                _642 = mem[_146]
                s = 0
                while s < _642:
                    mem[s + _293 + _297 + _433 + 32] = mem[s + _146 + 32]
                    s = s + 32
                    continue 
                if ceil32(_642) <= _642:
                    _820 = mem[64]
                    mem[mem[64]] = _642 + _293 + _297 + _433 - mem[64]
                    mem[64] = _642 + _293 + _297 + _433 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _820
                    t = _44
                    continue 
                mem[_293 + _297 + _433 + _642 + 32] = 0
                _836 = mem[64]
                mem[mem[64]] = _642 + _293 + _297 + _433 - mem[64]
                mem[64] = _642 + _293 + _297 + _433 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _836
                t = _44
                continue 
            mem[_146 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = stor1[address(arg1)][idx].field_0
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_146]:
                    revert with 0, 50
                mem[v + _146 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _294 = mem[64]
            _298 = mem[s]
            t = 0
            while t < _298:
                mem[t + _294 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_298) <= _298:
                _428 = mem[224]
                s = 0
                while s < _428:
                    mem[s + _294 + _298 + 32] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(_428) <= _428:
                    _635 = mem[_146]
                    s = 0
                    while s < _635:
                        mem[s + _294 + _298 + _428 + 32] = mem[s + _146 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_635) <= _635:
                        _821 = mem[64]
                        mem[mem[64]] = _635 + _294 + _298 + _428 - mem[64]
                        mem[64] = _635 + _294 + _298 + _428 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _821
                        t = _44
                        continue 
                    mem[_294 + _298 + _428 + _635 + 32] = 0
                    _837 = mem[64]
                    mem[mem[64]] = _635 + _294 + _298 + _428 - mem[64]
                    mem[64] = _635 + _294 + _298 + _428 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _837
                    t = _44
                    continue 
                mem[_294 + _298 + _428 + 32] = 0
                _643 = mem[_146]
                s = 0
                while s < _643:
                    mem[s + _294 + _298 + _428 + 32] = mem[s + _146 + 32]
                    s = s + 32
                    continue 
                if ceil32(_643) <= _643:
                    _822 = mem[64]
                    mem[mem[64]] = _643 + _294 + _298 + _428 - mem[64]
                    mem[64] = _643 + _294 + _298 + _428 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _822
                    t = _44
                    continue 
                mem[_294 + _298 + _428 + _643 + 32] = 0
                _838 = mem[64]
                mem[mem[64]] = _643 + _294 + _298 + _428 - mem[64]
                mem[64] = _643 + _294 + _298 + _428 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _838
                t = _44
                continue 
            mem[_294 + _298 + 32] = 0
            _434 = mem[224]
            s = 0
            while s < _434:
                mem[s + _294 + _298 + 32] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(_434) <= _434:
                _636 = mem[_146]
                s = 0
                while s < _636:
                    mem[s + _294 + _298 + _434 + 32] = mem[s + _146 + 32]
                    s = s + 32
                    continue 
                if ceil32(_636) <= _636:
                    _823 = mem[64]
                    mem[mem[64]] = _636 + _294 + _298 + _434 - mem[64]
                    mem[64] = _636 + _294 + _298 + _434 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _823
                    t = _44
                    continue 
                mem[_294 + _298 + _434 + _636 + 32] = 0
                _839 = mem[64]
                mem[mem[64]] = _636 + _294 + _298 + _434 - mem[64]
                mem[64] = _636 + _294 + _298 + _434 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _839
                t = _44
                continue 
            mem[_294 + _298 + _434 + 32] = 0
            _644 = mem[_146]
            s = 0
            while s < _644:
                mem[s + _294 + _298 + _434 + 32] = mem[s + _146 + 32]
                s = s + 32
                continue 
            if ceil32(_644) <= _644:
                _824 = mem[64]
                mem[mem[64]] = _644 + _294 + _298 + _434 - mem[64]
                mem[64] = _644 + _294 + _298 + _434 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _824
                t = _44
                continue 
            mem[_294 + _298 + _434 + _644 + 32] = 0
            _840 = mem[64]
            mem[mem[64]] = _644 + _294 + _298 + _434 - mem[64]
            mem[64] = _644 + _294 + _298 + _434 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _840
            t = _44
            continue 
        _42 = mem[64]
        mem[mem[64]] = 32
        _46 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_46)] = mem[s + 32 len ceil32(_46)]
        if ceil32(_46) <= _46:
            return 32, mem[mem[64] + 32 len ceil32(_46) + 32]
        mem[mem[64] + _46 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_46) + _42 + -mem[64] + 64
    s = 0
    idx = stor1[address(arg1)].field_0
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[160] = s
    mem[64] = ceil32(s) + 192
    if not s:
        t = s
        idx = stor1[address(arg1)].field_0
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[160]:
                revert with 0, 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _144 = mem[64]
        mem[64] = mem[64] + 64
        mem[_144] = 1
        mem[_144 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = 160
        u = 96
        while idx < stor1[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 1)
            _287 = mem[64]
            mem[64] = mem[64] + 64
            mem[_287] = stor1[address(arg1)][idx].field_0
            mem[_287 + 32] = stor1[address(arg1)][idx].field_256
            if not stor1[address(arg1)][idx].field_0:
                _301 = mem[64]
                mem[64] = mem[64] + 64
                mem[_301] = 1
                mem[_301 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _305 = mem[64]
                _308 = mem[s]
                u = 0
                while u < _308:
                    mem[u + _305 + 32] = mem[u + s + 32]
                    u = u + 32
                    continue 
                if ceil32(_308) <= _308:
                    _425 = mem[_144]
                    s = 0
                    while s < _425:
                        mem[s + _305 + _308 + 32] = mem[s + _144 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_425) <= _425:
                        _627 = mem[_301]
                        s = 0
                        while s < _627:
                            mem[s + _305 + _308 + _425 + 32] = mem[s + _301 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_627) <= _627:
                            _807 = mem[64]
                            mem[mem[64]] = _627 + _305 + _308 + _425 - mem[64]
                            mem[64] = _627 + _305 + _308 + _425 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _807
                            u = _287
                            continue 
                        mem[_305 + _308 + _425 + _627 + 32] = 0
                        _825 = mem[64]
                        mem[mem[64]] = _627 + _305 + _308 + _425 - mem[64]
                        mem[64] = _627 + _305 + _308 + _425 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _825
                        u = _287
                        continue 
                    mem[_305 + _308 + _425 + 32] = 0
                    _637 = mem[_301]
                    s = 0
                    while s < _637:
                        mem[s + _305 + _308 + _425 + 32] = mem[s + _301 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_637) <= _637:
                        _808 = mem[64]
                        mem[mem[64]] = _637 + _305 + _308 + _425 - mem[64]
                        mem[64] = _637 + _305 + _308 + _425 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _808
                        u = _287
                        continue 
                    mem[_305 + _308 + _425 + _637 + 32] = 0
                    _826 = mem[64]
                    mem[mem[64]] = _637 + _305 + _308 + _425 - mem[64]
                    mem[64] = _637 + _305 + _308 + _425 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _826
                    u = _287
                    continue 
                mem[_305 + _308 + 32] = 0
                _430 = mem[_144]
                s = 0
                while s < _430:
                    mem[s + _305 + _308 + 32] = mem[s + _144 + 32]
                    s = s + 32
                    continue 
                if ceil32(_430) <= _430:
                    _628 = mem[_301]
                    s = 0
                    while s < _628:
                        mem[s + _305 + _308 + _430 + 32] = mem[s + _301 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_628) <= _628:
                        _809 = mem[64]
                        mem[mem[64]] = _628 + _305 + _308 + _430 - mem[64]
                        mem[64] = _628 + _305 + _308 + _430 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _809
                        u = _287
                        continue 
                    mem[_305 + _308 + _430 + _628 + 32] = 0
                    _827 = mem[64]
                    mem[mem[64]] = _628 + _305 + _308 + _430 - mem[64]
                    mem[64] = _628 + _305 + _308 + _430 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _827
                    u = _287
                    continue 
                mem[_305 + _308 + _430 + 32] = 0
                _638 = mem[_301]
                s = 0
                while s < _638:
                    mem[s + _305 + _308 + _430 + 32] = mem[s + _301 + 32]
                    s = s + 32
                    continue 
                if ceil32(_638) <= _638:
                    _810 = mem[64]
                    mem[mem[64]] = _638 + _305 + _308 + _430 - mem[64]
                    mem[64] = _638 + _305 + _308 + _430 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _810
                    u = _287
                    continue 
                mem[_305 + _308 + _430 + _638 + 32] = 0
                _828 = mem[64]
                mem[mem[64]] = _638 + _305 + _308 + _430 - mem[64]
                mem[64] = _638 + _305 + _308 + _430 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _828
                u = _287
                continue 
            u = 0
            t = stor1[address(arg1)][idx].field_0
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _423 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = stor1[address(arg1)][idx].field_0
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_423]:
                        revert with 0, 50
                    mem[v + _423 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _621 = mem[64]
                _625 = mem[s]
                t = 0
                while t < _625:
                    mem[t + _621 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_625) <= _625:
                    _801 = mem[_144]
                    s = 0
                    while s < _801:
                        mem[s + _621 + _625 + 32] = mem[s + _144 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_801) <= _801:
                        _921 = mem[_423]
                        s = 0
                        while s < _921:
                            mem[s + _621 + _625 + _801 + 32] = mem[s + _423 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_921) <= _921:
                            _1001 = mem[64]
                            mem[mem[64]] = _921 + _621 + _625 + _801 - mem[64]
                            mem[64] = _921 + _621 + _625 + _801 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1001
                            u = _287
                            continue 
                        mem[_621 + _625 + _801 + _921 + 32] = 0
                        _1017 = mem[64]
                        mem[mem[64]] = _921 + _621 + _625 + _801 - mem[64]
                        mem[64] = _921 + _621 + _625 + _801 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1017
                        u = _287
                        continue 
                    mem[_621 + _625 + _801 + 32] = 0
                    _929 = mem[_423]
                    s = 0
                    while s < _929:
                        mem[s + _621 + _625 + _801 + 32] = mem[s + _423 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_929) <= _929:
                        _1002 = mem[64]
                        mem[mem[64]] = _929 + _621 + _625 + _801 - mem[64]
                        mem[64] = _929 + _621 + _625 + _801 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1002
                        u = _287
                        continue 
                    mem[_621 + _625 + _801 + _929 + 32] = 0
                    _1018 = mem[64]
                    mem[mem[64]] = _929 + _621 + _625 + _801 - mem[64]
                    mem[64] = _929 + _621 + _625 + _801 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1018
                    u = _287
                    continue 
                mem[_621 + _625 + 32] = 0
                _805 = mem[_144]
                s = 0
                while s < _805:
                    mem[s + _621 + _625 + 32] = mem[s + _144 + 32]
                    s = s + 32
                    continue 
                if ceil32(_805) <= _805:
                    _922 = mem[_423]
                    s = 0
                    while s < _922:
                        mem[s + _621 + _625 + _805 + 32] = mem[s + _423 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_922) <= _922:
                        _1003 = mem[64]
                        mem[mem[64]] = _922 + _621 + _625 + _805 - mem[64]
                        mem[64] = _922 + _621 + _625 + _805 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1003
                        u = _287
                        continue 
                    mem[_621 + _625 + _805 + _922 + 32] = 0
                    _1019 = mem[64]
                    mem[mem[64]] = _922 + _621 + _625 + _805 - mem[64]
                    mem[64] = _922 + _621 + _625 + _805 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1019
                    u = _287
                    continue 
                mem[_621 + _625 + _805 + 32] = 0
                _930 = mem[_423]
                s = 0
                while s < _930:
                    mem[s + _621 + _625 + _805 + 32] = mem[s + _423 + 32]
                    s = s + 32
                    continue 
                if ceil32(_930) <= _930:
                    _1004 = mem[64]
                    mem[mem[64]] = _930 + _621 + _625 + _805 - mem[64]
                    mem[64] = _930 + _621 + _625 + _805 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1004
                    u = _287
                    continue 
                mem[_621 + _625 + _805 + _930 + 32] = 0
                _1020 = mem[64]
                mem[mem[64]] = _930 + _621 + _625 + _805 - mem[64]
                mem[64] = _930 + _621 + _625 + _805 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1020
                u = _287
                continue 
            mem[_423 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = stor1[address(arg1)][idx].field_0
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_423]:
                    revert with 0, 50
                mem[v + _423 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _622 = mem[64]
            _626 = mem[s]
            t = 0
            while t < _626:
                mem[t + _622 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_626) <= _626:
                _802 = mem[_144]
                s = 0
                while s < _802:
                    mem[s + _622 + _626 + 32] = mem[s + _144 + 32]
                    s = s + 32
                    continue 
                if ceil32(_802) <= _802:
                    _923 = mem[_423]
                    s = 0
                    while s < _923:
                        mem[s + _622 + _626 + _802 + 32] = mem[s + _423 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_923) <= _923:
                        _1005 = mem[64]
                        mem[mem[64]] = _923 + _622 + _626 + _802 - mem[64]
                        mem[64] = _923 + _622 + _626 + _802 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1005
                        u = _287
                        continue 
                    mem[_622 + _626 + _802 + _923 + 32] = 0
                    _1021 = mem[64]
                    mem[mem[64]] = _923 + _622 + _626 + _802 - mem[64]
                    mem[64] = _923 + _622 + _626 + _802 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1021
                    u = _287
                    continue 
                mem[_622 + _626 + _802 + 32] = 0
                _931 = mem[_423]
                s = 0
                while s < _931:
                    mem[s + _622 + _626 + _802 + 32] = mem[s + _423 + 32]
                    s = s + 32
                    continue 
                if ceil32(_931) <= _931:
                    _1006 = mem[64]
                    mem[mem[64]] = _931 + _622 + _626 + _802 - mem[64]
                    mem[64] = _931 + _622 + _626 + _802 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1006
                    u = _287
                    continue 
                mem[_622 + _626 + _802 + _931 + 32] = 0
                _1022 = mem[64]
                mem[mem[64]] = _931 + _622 + _626 + _802 - mem[64]
                mem[64] = _931 + _622 + _626 + _802 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1022
                u = _287
                continue 
            mem[_622 + _626 + 32] = 0
            _806 = mem[_144]
            s = 0
            while s < _806:
                mem[s + _622 + _626 + 32] = mem[s + _144 + 32]
                s = s + 32
                continue 
            if ceil32(_806) <= _806:
                _924 = mem[_423]
                s = 0
                while s < _924:
                    mem[s + _622 + _626 + _806 + 32] = mem[s + _423 + 32]
                    s = s + 32
                    continue 
                if ceil32(_924) <= _924:
                    _1007 = mem[64]
                    mem[mem[64]] = _924 + _622 + _626 + _806 - mem[64]
                    mem[64] = _924 + _622 + _626 + _806 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1007
                    u = _287
                    continue 
                mem[_622 + _626 + _806 + _924 + 32] = 0
                _1023 = mem[64]
                mem[mem[64]] = _924 + _622 + _626 + _806 - mem[64]
                mem[64] = _924 + _622 + _626 + _806 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1023
                u = _287
                continue 
            mem[_622 + _626 + _806 + 32] = 0
            _932 = mem[_423]
            s = 0
            while s < _932:
                mem[s + _622 + _626 + _806 + 32] = mem[s + _423 + 32]
                s = s + 32
                continue 
            if ceil32(_932) <= _932:
                _1008 = mem[64]
                mem[mem[64]] = _932 + _622 + _626 + _806 - mem[64]
                mem[64] = _932 + _622 + _626 + _806 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1008
                u = _287
                continue 
            mem[_622 + _626 + _806 + _932 + 32] = 0
            _1024 = mem[64]
            mem[mem[64]] = _932 + _622 + _626 + _806 - mem[64]
            mem[64] = _932 + _622 + _626 + _806 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1024
            u = _287
            continue 
        mem[mem[64]] = 32
        _295 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_295)] = mem[s + 32 len ceil32(_295)]
        if ceil32(_295) > _295:
            mem[mem[64] + _295 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_295) + 32]
    mem[192 len s] = call.data[calldata.size len s]
    t = s
    idx = stor1[address(arg1)].field_0
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[160]:
            revert with 0, 50
        mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _145 = mem[64]
    mem[64] = mem[64] + 64
    mem[_145] = 1
    mem[_145 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = 160
    u = 96
    while idx < stor1[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 1)
        _291 = mem[64]
        mem[64] = mem[64] + 64
        mem[_291] = stor1[address(arg1)][idx].field_0
        mem[_291 + 32] = stor1[address(arg1)][idx].field_256
        if not stor1[address(arg1)][idx].field_0:
            _302 = mem[64]
            mem[64] = mem[64] + 64
            mem[_302] = 1
            mem[_302 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _306 = mem[64]
            _310 = mem[s]
            u = 0
            while u < _310:
                mem[u + _306 + 32] = mem[u + s + 32]
                u = u + 32
                continue 
            if ceil32(_310) <= _310:
                _426 = mem[_145]
                s = 0
                while s < _426:
                    mem[s + _306 + _310 + 32] = mem[s + _145 + 32]
                    s = s + 32
                    continue 
                if ceil32(_426) <= _426:
                    _631 = mem[_302]
                    s = 0
                    while s < _631:
                        mem[s + _306 + _310 + _426 + 32] = mem[s + _302 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_631) <= _631:
                        _813 = mem[64]
                        mem[mem[64]] = _631 + _306 + _310 + _426 - mem[64]
                        mem[64] = _631 + _306 + _310 + _426 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _813
                        u = _291
                        continue 
                    mem[_306 + _310 + _426 + _631 + 32] = 0
                    _829 = mem[64]
                    mem[mem[64]] = _631 + _306 + _310 + _426 - mem[64]
                    mem[64] = _631 + _306 + _310 + _426 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _829
                    u = _291
                    continue 
                mem[_306 + _310 + _426 + 32] = 0
                _639 = mem[_302]
                s = 0
                while s < _639:
                    mem[s + _306 + _310 + _426 + 32] = mem[s + _302 + 32]
                    s = s + 32
                    continue 
                if ceil32(_639) <= _639:
                    _814 = mem[64]
                    mem[mem[64]] = _639 + _306 + _310 + _426 - mem[64]
                    mem[64] = _639 + _306 + _310 + _426 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _814
                    u = _291
                    continue 
                mem[_306 + _310 + _426 + _639 + 32] = 0
                _830 = mem[64]
                mem[mem[64]] = _639 + _306 + _310 + _426 - mem[64]
                mem[64] = _639 + _306 + _310 + _426 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _830
                u = _291
                continue 
            mem[_306 + _310 + 32] = 0
            _432 = mem[_145]
            s = 0
            while s < _432:
                mem[s + _306 + _310 + 32] = mem[s + _145 + 32]
                s = s + 32
                continue 
            if ceil32(_432) <= _432:
                _632 = mem[_302]
                s = 0
                while s < _632:
                    mem[s + _306 + _310 + _432 + 32] = mem[s + _302 + 32]
                    s = s + 32
                    continue 
                if ceil32(_632) <= _632:
                    _815 = mem[64]
                    mem[mem[64]] = _632 + _306 + _310 + _432 - mem[64]
                    mem[64] = _632 + _306 + _310 + _432 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _815
                    u = _291
                    continue 
                mem[_306 + _310 + _432 + _632 + 32] = 0
                _831 = mem[64]
                mem[mem[64]] = _632 + _306 + _310 + _432 - mem[64]
                mem[64] = _632 + _306 + _310 + _432 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _831
                u = _291
                continue 
            mem[_306 + _310 + _432 + 32] = 0
            _640 = mem[_302]
            s = 0
            while s < _640:
                mem[s + _306 + _310 + _432 + 32] = mem[s + _302 + 32]
                s = s + 32
                continue 
            if ceil32(_640) <= _640:
                _816 = mem[64]
                mem[mem[64]] = _640 + _306 + _310 + _432 - mem[64]
                mem[64] = _640 + _306 + _310 + _432 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _816
                u = _291
                continue 
            mem[_306 + _310 + _432 + _640 + 32] = 0
            _832 = mem[64]
            mem[mem[64]] = _640 + _306 + _310 + _432 - mem[64]
            mem[64] = _640 + _306 + _310 + _432 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _832
            u = _291
            continue 
        u = 0
        t = stor1[address(arg1)][idx].field_0
        while t:
            if u == -1:
                revert with 0, 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _424 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = stor1[address(arg1)][idx].field_0
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_424]:
                    revert with 0, 50
                mem[v + _424 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _623 = mem[64]
            _629 = mem[s]
            t = 0
            while t < _629:
                mem[t + _623 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_629) <= _629:
                _803 = mem[_145]
                s = 0
                while s < _803:
                    mem[s + _623 + _629 + 32] = mem[s + _145 + 32]
                    s = s + 32
                    continue 
                if ceil32(_803) <= _803:
                    _925 = mem[_424]
                    s = 0
                    while s < _925:
                        mem[s + _623 + _629 + _803 + 32] = mem[s + _424 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_925) <= _925:
                        _1009 = mem[64]
                        mem[mem[64]] = _925 + _623 + _629 + _803 - mem[64]
                        mem[64] = _925 + _623 + _629 + _803 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1009
                        u = _291
                        continue 
                    mem[_623 + _629 + _803 + _925 + 32] = 0
                    _1025 = mem[64]
                    mem[mem[64]] = _925 + _623 + _629 + _803 - mem[64]
                    mem[64] = _925 + _623 + _629 + _803 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1025
                    u = _291
                    continue 
                mem[_623 + _629 + _803 + 32] = 0
                _933 = mem[_424]
                s = 0
                while s < _933:
                    mem[s + _623 + _629 + _803 + 32] = mem[s + _424 + 32]
                    s = s + 32
                    continue 
                if ceil32(_933) <= _933:
                    _1010 = mem[64]
                    mem[mem[64]] = _933 + _623 + _629 + _803 - mem[64]
                    mem[64] = _933 + _623 + _629 + _803 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1010
                    u = _291
                    continue 
                mem[_623 + _629 + _803 + _933 + 32] = 0
                _1026 = mem[64]
                mem[mem[64]] = _933 + _623 + _629 + _803 - mem[64]
                mem[64] = _933 + _623 + _629 + _803 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1026
                u = _291
                continue 
            mem[_623 + _629 + 32] = 0
            _811 = mem[_145]
            s = 0
            while s < _811:
                mem[s + _623 + _629 + 32] = mem[s + _145 + 32]
                s = s + 32
                continue 
            if ceil32(_811) <= _811:
                _926 = mem[_424]
                s = 0
                while s < _926:
                    mem[s + _623 + _629 + _811 + 32] = mem[s + _424 + 32]
                    s = s + 32
                    continue 
                if ceil32(_926) <= _926:
                    _1011 = mem[64]
                    mem[mem[64]] = _926 + _623 + _629 + _811 - mem[64]
                    mem[64] = _926 + _623 + _629 + _811 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1011
                    u = _291
                    continue 
                mem[_623 + _629 + _811 + _926 + 32] = 0
                _1027 = mem[64]
                mem[mem[64]] = _926 + _623 + _629 + _811 - mem[64]
                mem[64] = _926 + _623 + _629 + _811 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1027
                u = _291
                continue 
            mem[_623 + _629 + _811 + 32] = 0
            _934 = mem[_424]
            s = 0
            while s < _934:
                mem[s + _623 + _629 + _811 + 32] = mem[s + _424 + 32]
                s = s + 32
                continue 
            if ceil32(_934) <= _934:
                _1012 = mem[64]
                mem[mem[64]] = _934 + _623 + _629 + _811 - mem[64]
                mem[64] = _934 + _623 + _629 + _811 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1012
                u = _291
                continue 
            mem[_623 + _629 + _811 + _934 + 32] = 0
            _1028 = mem[64]
            mem[mem[64]] = _934 + _623 + _629 + _811 - mem[64]
            mem[64] = _934 + _623 + _629 + _811 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1028
            u = _291
            continue 
        mem[_424 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = stor1[address(arg1)][idx].field_0
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_424]:
                revert with 0, 50
            mem[v + _424 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _624 = mem[64]
        _630 = mem[s]
        t = 0
        while t < _630:
            mem[t + _624 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_630) <= _630:
            _804 = mem[_145]
            s = 0
            while s < _804:
                mem[s + _624 + _630 + 32] = mem[s + _145 + 32]
                s = s + 32
                continue 
            if ceil32(_804) <= _804:
                _927 = mem[_424]
                s = 0
                while s < _927:
                    mem[s + _624 + _630 + _804 + 32] = mem[s + _424 + 32]
                    s = s + 32
                    continue 
                if ceil32(_927) <= _927:
                    _1013 = mem[64]
                    mem[mem[64]] = _927 + _624 + _630 + _804 - mem[64]
                    mem[64] = _927 + _624 + _630 + _804 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1013
                    u = _291
                    continue 
                mem[_624 + _630 + _804 + _927 + 32] = 0
                _1029 = mem[64]
                mem[mem[64]] = _927 + _624 + _630 + _804 - mem[64]
                mem[64] = _927 + _624 + _630 + _804 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1029
                u = _291
                continue 
            mem[_624 + _630 + _804 + 32] = 0
            _935 = mem[_424]
            s = 0
            while s < _935:
                mem[s + _624 + _630 + _804 + 32] = mem[s + _424 + 32]
                s = s + 32
                continue 
            if ceil32(_935) <= _935:
                _1014 = mem[64]
                mem[mem[64]] = _935 + _624 + _630 + _804 - mem[64]
                mem[64] = _935 + _624 + _630 + _804 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1014
                u = _291
                continue 
            mem[_624 + _630 + _804 + _935 + 32] = 0
            _1030 = mem[64]
            mem[mem[64]] = _935 + _624 + _630 + _804 - mem[64]
            mem[64] = _935 + _624 + _630 + _804 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1030
            u = _291
            continue 
        mem[_624 + _630 + 32] = 0
        _812 = mem[_145]
        s = 0
        while s < _812:
            mem[s + _624 + _630 + 32] = mem[s + _145 + 32]
            s = s + 32
            continue 
        if ceil32(_812) <= _812:
            _928 = mem[_424]
            s = 0
            while s < _928:
                mem[s + _624 + _630 + _812 + 32] = mem[s + _424 + 32]
                s = s + 32
                continue 
            if ceil32(_928) <= _928:
                _1015 = mem[64]
                mem[mem[64]] = _928 + _624 + _630 + _812 - mem[64]
                mem[64] = _928 + _624 + _630 + _812 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1015
                u = _291
                continue 
            mem[_624 + _630 + _812 + _928 + 32] = 0
            _1031 = mem[64]
            mem[mem[64]] = _928 + _624 + _630 + _812 - mem[64]
            mem[64] = _928 + _624 + _630 + _812 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1031
            u = _291
            continue 
        mem[_624 + _630 + _812 + 32] = 0
        _936 = mem[_424]
        s = 0
        while s < _936:
            mem[s + _624 + _630 + _812 + 32] = mem[s + _424 + 32]
            s = s + 32
            continue 
        if ceil32(_936) <= _936:
            _1016 = mem[64]
            mem[mem[64]] = _936 + _624 + _630 + _812 - mem[64]
            mem[64] = _936 + _624 + _630 + _812 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1016
            u = _291
            continue 
        mem[_624 + _630 + _812 + _936 + 32] = 0
        _1032 = mem[64]
        mem[mem[64]] = _936 + _624 + _630 + _812 - mem[64]
        mem[64] = _936 + _624 + _630 + _812 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _1032
        u = _291
        continue 
    mem[mem[64]] = 32
    _296 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_296)] = mem[s + 32 len ceil32(_296)]
    if ceil32(_296) > _296:
        mem[mem[64] + _296 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_296) + 32]
}

function getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(arg1)].field_256:
        revert with 0, 'NOT_OWNER'
    mem[32] = 1
    mem[96] = 0
    mem[128] = 0
    if not stor1[address(arg1)].field_0:
        revert with 0, 50
    mem[0] = sha3(address(arg1), 1)
    if not stor1[address(arg1)].field_256:
        mem[160] = 1
        mem[192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[64] = 288
        mem[224] = 1
        mem[256] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = 160
        t = 96
        while idx < stor1[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 1)
            _44 = mem[64]
            mem[64] = mem[64] + 64
            mem[_44] = stor1[address(arg1)][idx].field_0
            mem[_44 + 32] = stor1[address(arg1)][idx].field_256
            if not stor1[address(arg1)][idx].field_256:
                _47 = mem[64]
                mem[64] = mem[64] + 64
                mem[_47] = 1
                mem[_47 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _48 = mem[64]
                _51 = mem[s]
                t = 0
                while t < _51:
                    mem[t + _48 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_51) <= _51:
                    _147 = mem[224]
                    s = 0
                    while s < _147:
                        mem[s + _48 + _51 + 32] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(_147) <= _147:
                        _299 = mem[_47]
                        s = 0
                        while s < _299:
                            mem[s + _48 + _51 + _147 + 32] = mem[s + _47 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_299) <= _299:
                            _435 = mem[64]
                            mem[mem[64]] = _299 + _48 + _51 + _147 - mem[64]
                            mem[64] = _299 + _48 + _51 + _147 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _435
                            t = _44
                            continue 
                        mem[_48 + _51 + _147 + _299 + 32] = 0
                        _441 = mem[64]
                        mem[mem[64]] = _299 + _48 + _51 + _147 - mem[64]
                        mem[64] = _299 + _48 + _51 + _147 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _441
                        t = _44
                        continue 
                    mem[_48 + _51 + _147 + 32] = 0
                    _303 = mem[_47]
                    s = 0
                    while s < _303:
                        mem[s + _48 + _51 + _147 + 32] = mem[s + _47 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_303) <= _303:
                        _436 = mem[64]
                        mem[mem[64]] = _303 + _48 + _51 + _147 - mem[64]
                        mem[64] = _303 + _48 + _51 + _147 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _436
                        t = _44
                        continue 
                    mem[_48 + _51 + _147 + _303 + 32] = 0
                    _442 = mem[64]
                    mem[mem[64]] = _303 + _48 + _51 + _147 - mem[64]
                    mem[64] = _303 + _48 + _51 + _147 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _442
                    t = _44
                    continue 
                mem[_48 + _51 + 32] = 0
                _149 = mem[224]
                s = 0
                while s < _149:
                    mem[s + _48 + _51 + 32] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(_149) <= _149:
                    _300 = mem[_47]
                    s = 0
                    while s < _300:
                        mem[s + _48 + _51 + _149 + 32] = mem[s + _47 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_300) <= _300:
                        _437 = mem[64]
                        mem[mem[64]] = _300 + _48 + _51 + _149 - mem[64]
                        mem[64] = _300 + _48 + _51 + _149 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _437
                        t = _44
                        continue 
                    mem[_48 + _51 + _149 + _300 + 32] = 0
                    _443 = mem[64]
                    mem[mem[64]] = _300 + _48 + _51 + _149 - mem[64]
                    mem[64] = _300 + _48 + _51 + _149 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _443
                    t = _44
                    continue 
                mem[_48 + _51 + _149 + 32] = 0
                _304 = mem[_47]
                s = 0
                while s < _304:
                    mem[s + _48 + _51 + _149 + 32] = mem[s + _47 + 32]
                    s = s + 32
                    continue 
                if ceil32(_304) <= _304:
                    _438 = mem[64]
                    mem[mem[64]] = _304 + _48 + _51 + _149 - mem[64]
                    mem[64] = _304 + _48 + _51 + _149 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _438
                    t = _44
                    continue 
                mem[_48 + _51 + _149 + _304 + 32] = 0
                _444 = mem[64]
                mem[mem[64]] = _304 + _48 + _51 + _149 - mem[64]
                mem[64] = _304 + _48 + _51 + _149 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _444
                t = _44
                continue 
            u = 0
            t = stor1[address(arg1)][idx].field_256
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _146 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = stor1[address(arg1)][idx].field_256
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_146]:
                        revert with 0, 50
                    mem[v + _146 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _293 = mem[64]
                _297 = mem[s]
                t = 0
                while t < _297:
                    mem[t + _293 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_297) <= _297:
                    _427 = mem[224]
                    s = 0
                    while s < _427:
                        mem[s + _293 + _297 + 32] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(_427) <= _427:
                        _633 = mem[_146]
                        s = 0
                        while s < _633:
                            mem[s + _293 + _297 + _427 + 32] = mem[s + _146 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_633) <= _633:
                            _817 = mem[64]
                            mem[mem[64]] = _633 + _293 + _297 + _427 - mem[64]
                            mem[64] = _633 + _293 + _297 + _427 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _817
                            t = _44
                            continue 
                        mem[_293 + _297 + _427 + _633 + 32] = 0
                        _833 = mem[64]
                        mem[mem[64]] = _633 + _293 + _297 + _427 - mem[64]
                        mem[64] = _633 + _293 + _297 + _427 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _833
                        t = _44
                        continue 
                    mem[_293 + _297 + _427 + 32] = 0
                    _641 = mem[_146]
                    s = 0
                    while s < _641:
                        mem[s + _293 + _297 + _427 + 32] = mem[s + _146 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_641) <= _641:
                        _818 = mem[64]
                        mem[mem[64]] = _641 + _293 + _297 + _427 - mem[64]
                        mem[64] = _641 + _293 + _297 + _427 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _818
                        t = _44
                        continue 
                    mem[_293 + _297 + _427 + _641 + 32] = 0
                    _834 = mem[64]
                    mem[mem[64]] = _641 + _293 + _297 + _427 - mem[64]
                    mem[64] = _641 + _293 + _297 + _427 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _834
                    t = _44
                    continue 
                mem[_293 + _297 + 32] = 0
                _433 = mem[224]
                s = 0
                while s < _433:
                    mem[s + _293 + _297 + 32] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(_433) <= _433:
                    _634 = mem[_146]
                    s = 0
                    while s < _634:
                        mem[s + _293 + _297 + _433 + 32] = mem[s + _146 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_634) <= _634:
                        _819 = mem[64]
                        mem[mem[64]] = _634 + _293 + _297 + _433 - mem[64]
                        mem[64] = _634 + _293 + _297 + _433 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _819
                        t = _44
                        continue 
                    mem[_293 + _297 + _433 + _634 + 32] = 0
                    _835 = mem[64]
                    mem[mem[64]] = _634 + _293 + _297 + _433 - mem[64]
                    mem[64] = _634 + _293 + _297 + _433 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _835
                    t = _44
                    continue 
                mem[_293 + _297 + _433 + 32] = 0
                _642 = mem[_146]
                s = 0
                while s < _642:
                    mem[s + _293 + _297 + _433 + 32] = mem[s + _146 + 32]
                    s = s + 32
                    continue 
                if ceil32(_642) <= _642:
                    _820 = mem[64]
                    mem[mem[64]] = _642 + _293 + _297 + _433 - mem[64]
                    mem[64] = _642 + _293 + _297 + _433 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _820
                    t = _44
                    continue 
                mem[_293 + _297 + _433 + _642 + 32] = 0
                _836 = mem[64]
                mem[mem[64]] = _642 + _293 + _297 + _433 - mem[64]
                mem[64] = _642 + _293 + _297 + _433 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _836
                t = _44
                continue 
            mem[_146 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = stor1[address(arg1)][idx].field_256
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_146]:
                    revert with 0, 50
                mem[v + _146 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _294 = mem[64]
            _298 = mem[s]
            t = 0
            while t < _298:
                mem[t + _294 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_298) <= _298:
                _428 = mem[224]
                s = 0
                while s < _428:
                    mem[s + _294 + _298 + 32] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(_428) <= _428:
                    _635 = mem[_146]
                    s = 0
                    while s < _635:
                        mem[s + _294 + _298 + _428 + 32] = mem[s + _146 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_635) <= _635:
                        _821 = mem[64]
                        mem[mem[64]] = _635 + _294 + _298 + _428 - mem[64]
                        mem[64] = _635 + _294 + _298 + _428 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _821
                        t = _44
                        continue 
                    mem[_294 + _298 + _428 + _635 + 32] = 0
                    _837 = mem[64]
                    mem[mem[64]] = _635 + _294 + _298 + _428 - mem[64]
                    mem[64] = _635 + _294 + _298 + _428 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _837
                    t = _44
                    continue 
                mem[_294 + _298 + _428 + 32] = 0
                _643 = mem[_146]
                s = 0
                while s < _643:
                    mem[s + _294 + _298 + _428 + 32] = mem[s + _146 + 32]
                    s = s + 32
                    continue 
                if ceil32(_643) <= _643:
                    _822 = mem[64]
                    mem[mem[64]] = _643 + _294 + _298 + _428 - mem[64]
                    mem[64] = _643 + _294 + _298 + _428 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _822
                    t = _44
                    continue 
                mem[_294 + _298 + _428 + _643 + 32] = 0
                _838 = mem[64]
                mem[mem[64]] = _643 + _294 + _298 + _428 - mem[64]
                mem[64] = _643 + _294 + _298 + _428 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _838
                t = _44
                continue 
            mem[_294 + _298 + 32] = 0
            _434 = mem[224]
            s = 0
            while s < _434:
                mem[s + _294 + _298 + 32] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(_434) <= _434:
                _636 = mem[_146]
                s = 0
                while s < _636:
                    mem[s + _294 + _298 + _434 + 32] = mem[s + _146 + 32]
                    s = s + 32
                    continue 
                if ceil32(_636) <= _636:
                    _823 = mem[64]
                    mem[mem[64]] = _636 + _294 + _298 + _434 - mem[64]
                    mem[64] = _636 + _294 + _298 + _434 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _823
                    t = _44
                    continue 
                mem[_294 + _298 + _434 + _636 + 32] = 0
                _839 = mem[64]
                mem[mem[64]] = _636 + _294 + _298 + _434 - mem[64]
                mem[64] = _636 + _294 + _298 + _434 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _839
                t = _44
                continue 
            mem[_294 + _298 + _434 + 32] = 0
            _644 = mem[_146]
            s = 0
            while s < _644:
                mem[s + _294 + _298 + _434 + 32] = mem[s + _146 + 32]
                s = s + 32
                continue 
            if ceil32(_644) <= _644:
                _824 = mem[64]
                mem[mem[64]] = _644 + _294 + _298 + _434 - mem[64]
                mem[64] = _644 + _294 + _298 + _434 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _824
                t = _44
                continue 
            mem[_294 + _298 + _434 + _644 + 32] = 0
            _840 = mem[64]
            mem[mem[64]] = _644 + _294 + _298 + _434 - mem[64]
            mem[64] = _644 + _294 + _298 + _434 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _840
            t = _44
            continue 
        _42 = mem[64]
        mem[mem[64]] = 32
        _46 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_46)] = mem[s + 32 len ceil32(_46)]
        if ceil32(_46) <= _46:
            return 32, mem[mem[64] + 32 len ceil32(_46) + 32]
        mem[mem[64] + _46 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_46) + _42 + -mem[64] + 64
    s = 0
    idx = stor1[address(arg1)].field_256
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[160] = s
    mem[64] = ceil32(s) + 192
    if not s:
        t = s
        idx = stor1[address(arg1)].field_256
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[160]:
                revert with 0, 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _144 = mem[64]
        mem[64] = mem[64] + 64
        mem[_144] = 1
        mem[_144 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = 160
        u = 96
        while idx < stor1[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 1)
            _287 = mem[64]
            mem[64] = mem[64] + 64
            mem[_287] = stor1[address(arg1)][idx].field_0
            mem[_287 + 32] = stor1[address(arg1)][idx].field_256
            if not stor1[address(arg1)][idx].field_256:
                _301 = mem[64]
                mem[64] = mem[64] + 64
                mem[_301] = 1
                mem[_301 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _305 = mem[64]
                _308 = mem[s]
                u = 0
                while u < _308:
                    mem[u + _305 + 32] = mem[u + s + 32]
                    u = u + 32
                    continue 
                if ceil32(_308) <= _308:
                    _425 = mem[_144]
                    s = 0
                    while s < _425:
                        mem[s + _305 + _308 + 32] = mem[s + _144 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_425) <= _425:
                        _627 = mem[_301]
                        s = 0
                        while s < _627:
                            mem[s + _305 + _308 + _425 + 32] = mem[s + _301 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_627) <= _627:
                            _807 = mem[64]
                            mem[mem[64]] = _627 + _305 + _308 + _425 - mem[64]
                            mem[64] = _627 + _305 + _308 + _425 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _807
                            u = _287
                            continue 
                        mem[_305 + _308 + _425 + _627 + 32] = 0
                        _825 = mem[64]
                        mem[mem[64]] = _627 + _305 + _308 + _425 - mem[64]
                        mem[64] = _627 + _305 + _308 + _425 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _825
                        u = _287
                        continue 
                    mem[_305 + _308 + _425 + 32] = 0
                    _637 = mem[_301]
                    s = 0
                    while s < _637:
                        mem[s + _305 + _308 + _425 + 32] = mem[s + _301 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_637) <= _637:
                        _808 = mem[64]
                        mem[mem[64]] = _637 + _305 + _308 + _425 - mem[64]
                        mem[64] = _637 + _305 + _308 + _425 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _808
                        u = _287
                        continue 
                    mem[_305 + _308 + _425 + _637 + 32] = 0
                    _826 = mem[64]
                    mem[mem[64]] = _637 + _305 + _308 + _425 - mem[64]
                    mem[64] = _637 + _305 + _308 + _425 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _826
                    u = _287
                    continue 
                mem[_305 + _308 + 32] = 0
                _430 = mem[_144]
                s = 0
                while s < _430:
                    mem[s + _305 + _308 + 32] = mem[s + _144 + 32]
                    s = s + 32
                    continue 
                if ceil32(_430) <= _430:
                    _628 = mem[_301]
                    s = 0
                    while s < _628:
                        mem[s + _305 + _308 + _430 + 32] = mem[s + _301 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_628) <= _628:
                        _809 = mem[64]
                        mem[mem[64]] = _628 + _305 + _308 + _430 - mem[64]
                        mem[64] = _628 + _305 + _308 + _430 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _809
                        u = _287
                        continue 
                    mem[_305 + _308 + _430 + _628 + 32] = 0
                    _827 = mem[64]
                    mem[mem[64]] = _628 + _305 + _308 + _430 - mem[64]
                    mem[64] = _628 + _305 + _308 + _430 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _827
                    u = _287
                    continue 
                mem[_305 + _308 + _430 + 32] = 0
                _638 = mem[_301]
                s = 0
                while s < _638:
                    mem[s + _305 + _308 + _430 + 32] = mem[s + _301 + 32]
                    s = s + 32
                    continue 
                if ceil32(_638) <= _638:
                    _810 = mem[64]
                    mem[mem[64]] = _638 + _305 + _308 + _430 - mem[64]
                    mem[64] = _638 + _305 + _308 + _430 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _810
                    u = _287
                    continue 
                mem[_305 + _308 + _430 + _638 + 32] = 0
                _828 = mem[64]
                mem[mem[64]] = _638 + _305 + _308 + _430 - mem[64]
                mem[64] = _638 + _305 + _308 + _430 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _828
                u = _287
                continue 
            u = 0
            t = stor1[address(arg1)][idx].field_256
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _423 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = stor1[address(arg1)][idx].field_256
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_423]:
                        revert with 0, 50
                    mem[v + _423 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _621 = mem[64]
                _625 = mem[s]
                t = 0
                while t < _625:
                    mem[t + _621 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_625) <= _625:
                    _801 = mem[_144]
                    s = 0
                    while s < _801:
                        mem[s + _621 + _625 + 32] = mem[s + _144 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_801) <= _801:
                        _921 = mem[_423]
                        s = 0
                        while s < _921:
                            mem[s + _621 + _625 + _801 + 32] = mem[s + _423 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_921) <= _921:
                            _1001 = mem[64]
                            mem[mem[64]] = _921 + _621 + _625 + _801 - mem[64]
                            mem[64] = _921 + _621 + _625 + _801 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1001
                            u = _287
                            continue 
                        mem[_621 + _625 + _801 + _921 + 32] = 0
                        _1017 = mem[64]
                        mem[mem[64]] = _921 + _621 + _625 + _801 - mem[64]
                        mem[64] = _921 + _621 + _625 + _801 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1017
                        u = _287
                        continue 
                    mem[_621 + _625 + _801 + 32] = 0
                    _929 = mem[_423]
                    s = 0
                    while s < _929:
                        mem[s + _621 + _625 + _801 + 32] = mem[s + _423 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_929) <= _929:
                        _1002 = mem[64]
                        mem[mem[64]] = _929 + _621 + _625 + _801 - mem[64]
                        mem[64] = _929 + _621 + _625 + _801 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1002
                        u = _287
                        continue 
                    mem[_621 + _625 + _801 + _929 + 32] = 0
                    _1018 = mem[64]
                    mem[mem[64]] = _929 + _621 + _625 + _801 - mem[64]
                    mem[64] = _929 + _621 + _625 + _801 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1018
                    u = _287
                    continue 
                mem[_621 + _625 + 32] = 0
                _805 = mem[_144]
                s = 0
                while s < _805:
                    mem[s + _621 + _625 + 32] = mem[s + _144 + 32]
                    s = s + 32
                    continue 
                if ceil32(_805) <= _805:
                    _922 = mem[_423]
                    s = 0
                    while s < _922:
                        mem[s + _621 + _625 + _805 + 32] = mem[s + _423 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_922) <= _922:
                        _1003 = mem[64]
                        mem[mem[64]] = _922 + _621 + _625 + _805 - mem[64]
                        mem[64] = _922 + _621 + _625 + _805 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1003
                        u = _287
                        continue 
                    mem[_621 + _625 + _805 + _922 + 32] = 0
                    _1019 = mem[64]
                    mem[mem[64]] = _922 + _621 + _625 + _805 - mem[64]
                    mem[64] = _922 + _621 + _625 + _805 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1019
                    u = _287
                    continue 
                mem[_621 + _625 + _805 + 32] = 0
                _930 = mem[_423]
                s = 0
                while s < _930:
                    mem[s + _621 + _625 + _805 + 32] = mem[s + _423 + 32]
                    s = s + 32
                    continue 
                if ceil32(_930) <= _930:
                    _1004 = mem[64]
                    mem[mem[64]] = _930 + _621 + _625 + _805 - mem[64]
                    mem[64] = _930 + _621 + _625 + _805 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1004
                    u = _287
                    continue 
                mem[_621 + _625 + _805 + _930 + 32] = 0
                _1020 = mem[64]
                mem[mem[64]] = _930 + _621 + _625 + _805 - mem[64]
                mem[64] = _930 + _621 + _625 + _805 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1020
                u = _287
                continue 
            mem[_423 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = stor1[address(arg1)][idx].field_256
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_423]:
                    revert with 0, 50
                mem[v + _423 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _622 = mem[64]
            _626 = mem[s]
            t = 0
            while t < _626:
                mem[t + _622 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_626) <= _626:
                _802 = mem[_144]
                s = 0
                while s < _802:
                    mem[s + _622 + _626 + 32] = mem[s + _144 + 32]
                    s = s + 32
                    continue 
                if ceil32(_802) <= _802:
                    _923 = mem[_423]
                    s = 0
                    while s < _923:
                        mem[s + _622 + _626 + _802 + 32] = mem[s + _423 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_923) <= _923:
                        _1005 = mem[64]
                        mem[mem[64]] = _923 + _622 + _626 + _802 - mem[64]
                        mem[64] = _923 + _622 + _626 + _802 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1005
                        u = _287
                        continue 
                    mem[_622 + _626 + _802 + _923 + 32] = 0
                    _1021 = mem[64]
                    mem[mem[64]] = _923 + _622 + _626 + _802 - mem[64]
                    mem[64] = _923 + _622 + _626 + _802 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1021
                    u = _287
                    continue 
                mem[_622 + _626 + _802 + 32] = 0
                _931 = mem[_423]
                s = 0
                while s < _931:
                    mem[s + _622 + _626 + _802 + 32] = mem[s + _423 + 32]
                    s = s + 32
                    continue 
                if ceil32(_931) <= _931:
                    _1006 = mem[64]
                    mem[mem[64]] = _931 + _622 + _626 + _802 - mem[64]
                    mem[64] = _931 + _622 + _626 + _802 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1006
                    u = _287
                    continue 
                mem[_622 + _626 + _802 + _931 + 32] = 0
                _1022 = mem[64]
                mem[mem[64]] = _931 + _622 + _626 + _802 - mem[64]
                mem[64] = _931 + _622 + _626 + _802 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1022
                u = _287
                continue 
            mem[_622 + _626 + 32] = 0
            _806 = mem[_144]
            s = 0
            while s < _806:
                mem[s + _622 + _626 + 32] = mem[s + _144 + 32]
                s = s + 32
                continue 
            if ceil32(_806) <= _806:
                _924 = mem[_423]
                s = 0
                while s < _924:
                    mem[s + _622 + _626 + _806 + 32] = mem[s + _423 + 32]
                    s = s + 32
                    continue 
                if ceil32(_924) <= _924:
                    _1007 = mem[64]
                    mem[mem[64]] = _924 + _622 + _626 + _806 - mem[64]
                    mem[64] = _924 + _622 + _626 + _806 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1007
                    u = _287
                    continue 
                mem[_622 + _626 + _806 + _924 + 32] = 0
                _1023 = mem[64]
                mem[mem[64]] = _924 + _622 + _626 + _806 - mem[64]
                mem[64] = _924 + _622 + _626 + _806 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1023
                u = _287
                continue 
            mem[_622 + _626 + _806 + 32] = 0
            _932 = mem[_423]
            s = 0
            while s < _932:
                mem[s + _622 + _626 + _806 + 32] = mem[s + _423 + 32]
                s = s + 32
                continue 
            if ceil32(_932) <= _932:
                _1008 = mem[64]
                mem[mem[64]] = _932 + _622 + _626 + _806 - mem[64]
                mem[64] = _932 + _622 + _626 + _806 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1008
                u = _287
                continue 
            mem[_622 + _626 + _806 + _932 + 32] = 0
            _1024 = mem[64]
            mem[mem[64]] = _932 + _622 + _626 + _806 - mem[64]
            mem[64] = _932 + _622 + _626 + _806 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1024
            u = _287
            continue 
        mem[mem[64]] = 32
        _295 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_295)] = mem[s + 32 len ceil32(_295)]
        if ceil32(_295) > _295:
            mem[mem[64] + _295 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_295) + 32]
    mem[192 len s] = call.data[calldata.size len s]
    t = s
    idx = stor1[address(arg1)].field_256
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[160]:
            revert with 0, 50
        mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _145 = mem[64]
    mem[64] = mem[64] + 64
    mem[_145] = 1
    mem[_145 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = 160
    u = 96
    while idx < stor1[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 1)
        _291 = mem[64]
        mem[64] = mem[64] + 64
        mem[_291] = stor1[address(arg1)][idx].field_0
        mem[_291 + 32] = stor1[address(arg1)][idx].field_256
        if not stor1[address(arg1)][idx].field_256:
            _302 = mem[64]
            mem[64] = mem[64] + 64
            mem[_302] = 1
            mem[_302 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _306 = mem[64]
            _310 = mem[s]
            u = 0
            while u < _310:
                mem[u + _306 + 32] = mem[u + s + 32]
                u = u + 32
                continue 
            if ceil32(_310) <= _310:
                _426 = mem[_145]
                s = 0
                while s < _426:
                    mem[s + _306 + _310 + 32] = mem[s + _145 + 32]
                    s = s + 32
                    continue 
                if ceil32(_426) <= _426:
                    _631 = mem[_302]
                    s = 0
                    while s < _631:
                        mem[s + _306 + _310 + _426 + 32] = mem[s + _302 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_631) <= _631:
                        _813 = mem[64]
                        mem[mem[64]] = _631 + _306 + _310 + _426 - mem[64]
                        mem[64] = _631 + _306 + _310 + _426 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _813
                        u = _291
                        continue 
                    mem[_306 + _310 + _426 + _631 + 32] = 0
                    _829 = mem[64]
                    mem[mem[64]] = _631 + _306 + _310 + _426 - mem[64]
                    mem[64] = _631 + _306 + _310 + _426 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _829
                    u = _291
                    continue 
                mem[_306 + _310 + _426 + 32] = 0
                _639 = mem[_302]
                s = 0
                while s < _639:
                    mem[s + _306 + _310 + _426 + 32] = mem[s + _302 + 32]
                    s = s + 32
                    continue 
                if ceil32(_639) <= _639:
                    _814 = mem[64]
                    mem[mem[64]] = _639 + _306 + _310 + _426 - mem[64]
                    mem[64] = _639 + _306 + _310 + _426 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _814
                    u = _291
                    continue 
                mem[_306 + _310 + _426 + _639 + 32] = 0
                _830 = mem[64]
                mem[mem[64]] = _639 + _306 + _310 + _426 - mem[64]
                mem[64] = _639 + _306 + _310 + _426 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _830
                u = _291
                continue 
            mem[_306 + _310 + 32] = 0
            _432 = mem[_145]
            s = 0
            while s < _432:
                mem[s + _306 + _310 + 32] = mem[s + _145 + 32]
                s = s + 32
                continue 
            if ceil32(_432) <= _432:
                _632 = mem[_302]
                s = 0
                while s < _632:
                    mem[s + _306 + _310 + _432 + 32] = mem[s + _302 + 32]
                    s = s + 32
                    continue 
                if ceil32(_632) <= _632:
                    _815 = mem[64]
                    mem[mem[64]] = _632 + _306 + _310 + _432 - mem[64]
                    mem[64] = _632 + _306 + _310 + _432 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _815
                    u = _291
                    continue 
                mem[_306 + _310 + _432 + _632 + 32] = 0
                _831 = mem[64]
                mem[mem[64]] = _632 + _306 + _310 + _432 - mem[64]
                mem[64] = _632 + _306 + _310 + _432 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _831
                u = _291
                continue 
            mem[_306 + _310 + _432 + 32] = 0
            _640 = mem[_302]
            s = 0
            while s < _640:
                mem[s + _306 + _310 + _432 + 32] = mem[s + _302 + 32]
                s = s + 32
                continue 
            if ceil32(_640) <= _640:
                _816 = mem[64]
                mem[mem[64]] = _640 + _306 + _310 + _432 - mem[64]
                mem[64] = _640 + _306 + _310 + _432 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _816
                u = _291
                continue 
            mem[_306 + _310 + _432 + _640 + 32] = 0
            _832 = mem[64]
            mem[mem[64]] = _640 + _306 + _310 + _432 - mem[64]
            mem[64] = _640 + _306 + _310 + _432 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _832
            u = _291
            continue 
        u = 0
        t = stor1[address(arg1)][idx].field_256
        while t:
            if u == -1:
                revert with 0, 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _424 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = stor1[address(arg1)][idx].field_256
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_424]:
                    revert with 0, 50
                mem[v + _424 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _623 = mem[64]
            _629 = mem[s]
            t = 0
            while t < _629:
                mem[t + _623 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_629) <= _629:
                _803 = mem[_145]
                s = 0
                while s < _803:
                    mem[s + _623 + _629 + 32] = mem[s + _145 + 32]
                    s = s + 32
                    continue 
                if ceil32(_803) <= _803:
                    _925 = mem[_424]
                    s = 0
                    while s < _925:
                        mem[s + _623 + _629 + _803 + 32] = mem[s + _424 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_925) <= _925:
                        _1009 = mem[64]
                        mem[mem[64]] = _925 + _623 + _629 + _803 - mem[64]
                        mem[64] = _925 + _623 + _629 + _803 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1009
                        u = _291
                        continue 
                    mem[_623 + _629 + _803 + _925 + 32] = 0
                    _1025 = mem[64]
                    mem[mem[64]] = _925 + _623 + _629 + _803 - mem[64]
                    mem[64] = _925 + _623 + _629 + _803 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1025
                    u = _291
                    continue 
                mem[_623 + _629 + _803 + 32] = 0
                _933 = mem[_424]
                s = 0
                while s < _933:
                    mem[s + _623 + _629 + _803 + 32] = mem[s + _424 + 32]
                    s = s + 32
                    continue 
                if ceil32(_933) <= _933:
                    _1010 = mem[64]
                    mem[mem[64]] = _933 + _623 + _629 + _803 - mem[64]
                    mem[64] = _933 + _623 + _629 + _803 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1010
                    u = _291
                    continue 
                mem[_623 + _629 + _803 + _933 + 32] = 0
                _1026 = mem[64]
                mem[mem[64]] = _933 + _623 + _629 + _803 - mem[64]
                mem[64] = _933 + _623 + _629 + _803 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1026
                u = _291
                continue 
            mem[_623 + _629 + 32] = 0
            _811 = mem[_145]
            s = 0
            while s < _811:
                mem[s + _623 + _629 + 32] = mem[s + _145 + 32]
                s = s + 32
                continue 
            if ceil32(_811) <= _811:
                _926 = mem[_424]
                s = 0
                while s < _926:
                    mem[s + _623 + _629 + _811 + 32] = mem[s + _424 + 32]
                    s = s + 32
                    continue 
                if ceil32(_926) <= _926:
                    _1011 = mem[64]
                    mem[mem[64]] = _926 + _623 + _629 + _811 - mem[64]
                    mem[64] = _926 + _623 + _629 + _811 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1011
                    u = _291
                    continue 
                mem[_623 + _629 + _811 + _926 + 32] = 0
                _1027 = mem[64]
                mem[mem[64]] = _926 + _623 + _629 + _811 - mem[64]
                mem[64] = _926 + _623 + _629 + _811 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1027
                u = _291
                continue 
            mem[_623 + _629 + _811 + 32] = 0
            _934 = mem[_424]
            s = 0
            while s < _934:
                mem[s + _623 + _629 + _811 + 32] = mem[s + _424 + 32]
                s = s + 32
                continue 
            if ceil32(_934) <= _934:
                _1012 = mem[64]
                mem[mem[64]] = _934 + _623 + _629 + _811 - mem[64]
                mem[64] = _934 + _623 + _629 + _811 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1012
                u = _291
                continue 
            mem[_623 + _629 + _811 + _934 + 32] = 0
            _1028 = mem[64]
            mem[mem[64]] = _934 + _623 + _629 + _811 - mem[64]
            mem[64] = _934 + _623 + _629 + _811 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1028
            u = _291
            continue 
        mem[_424 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = stor1[address(arg1)][idx].field_256
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_424]:
                revert with 0, 50
            mem[v + _424 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _624 = mem[64]
        _630 = mem[s]
        t = 0
        while t < _630:
            mem[t + _624 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_630) <= _630:
            _804 = mem[_145]
            s = 0
            while s < _804:
                mem[s + _624 + _630 + 32] = mem[s + _145 + 32]
                s = s + 32
                continue 
            if ceil32(_804) <= _804:
                _927 = mem[_424]
                s = 0
                while s < _927:
                    mem[s + _624 + _630 + _804 + 32] = mem[s + _424 + 32]
                    s = s + 32
                    continue 
                if ceil32(_927) <= _927:
                    _1013 = mem[64]
                    mem[mem[64]] = _927 + _624 + _630 + _804 - mem[64]
                    mem[64] = _927 + _624 + _630 + _804 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1013
                    u = _291
                    continue 
                mem[_624 + _630 + _804 + _927 + 32] = 0
                _1029 = mem[64]
                mem[mem[64]] = _927 + _624 + _630 + _804 - mem[64]
                mem[64] = _927 + _624 + _630 + _804 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1029
                u = _291
                continue 
            mem[_624 + _630 + _804 + 32] = 0
            _935 = mem[_424]
            s = 0
            while s < _935:
                mem[s + _624 + _630 + _804 + 32] = mem[s + _424 + 32]
                s = s + 32
                continue 
            if ceil32(_935) <= _935:
                _1014 = mem[64]
                mem[mem[64]] = _935 + _624 + _630 + _804 - mem[64]
                mem[64] = _935 + _624 + _630 + _804 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1014
                u = _291
                continue 
            mem[_624 + _630 + _804 + _935 + 32] = 0
            _1030 = mem[64]
            mem[mem[64]] = _935 + _624 + _630 + _804 - mem[64]
            mem[64] = _935 + _624 + _630 + _804 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1030
            u = _291
            continue 
        mem[_624 + _630 + 32] = 0
        _812 = mem[_145]
        s = 0
        while s < _812:
            mem[s + _624 + _630 + 32] = mem[s + _145 + 32]
            s = s + 32
            continue 
        if ceil32(_812) <= _812:
            _928 = mem[_424]
            s = 0
            while s < _928:
                mem[s + _624 + _630 + _812 + 32] = mem[s + _424 + 32]
                s = s + 32
                continue 
            if ceil32(_928) <= _928:
                _1015 = mem[64]
                mem[mem[64]] = _928 + _624 + _630 + _812 - mem[64]
                mem[64] = _928 + _624 + _630 + _812 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1015
                u = _291
                continue 
            mem[_624 + _630 + _812 + _928 + 32] = 0
            _1031 = mem[64]
            mem[mem[64]] = _928 + _624 + _630 + _812 - mem[64]
            mem[64] = _928 + _624 + _630 + _812 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1031
            u = _291
            continue 
        mem[_624 + _630 + _812 + 32] = 0
        _936 = mem[_424]
        s = 0
        while s < _936:
            mem[s + _624 + _630 + _812 + 32] = mem[s + _424 + 32]
            s = s + 32
            continue 
        if ceil32(_936) <= _936:
            _1016 = mem[64]
            mem[mem[64]] = _936 + _624 + _630 + _812 - mem[64]
            mem[64] = _936 + _624 + _630 + _812 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1016
            u = _291
            continue 
        mem[_624 + _630 + _812 + _936 + 32] = 0
        _1032 = mem[64]
        mem[mem[64]] = _936 + _624 + _630 + _812 - mem[64]
        mem[64] = _936 + _624 + _630 + _812 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _1032
        u = _291
        continue 
    mem[mem[64]] = 32
    _296 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_296)] = mem[s + 32 len ceil32(_296)]
    if ceil32(_296) > _296:
        mem[mem[64] + _296 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_296) + 32]
}



}
