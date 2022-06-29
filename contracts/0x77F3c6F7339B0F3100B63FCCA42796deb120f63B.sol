contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
address sub_85c2d7b2Address;
array of struct stor7;
uint256 nodePrice;
uint256 rewardPerNode;
uint256 claimTime;
address gateKeeperAddress;
address tokenAddress;
uint256 totalNodesCreated;
uint256 totalRewardStaked;

function claimTime() {
    return claimTime
}

function gateKeeper() {
    return gateKeeperAddress
}

function rewardPerNode() {
    return rewardPerNode
}

function sub_85c2d7b2(?) {
    return sub_85c2d7b2Address
}

function totalRewardStaked() {
    return totalRewardStaked
}

function totalNodesCreated() {
    return totalNodesCreated
}

function nodePrice() {
    return nodePrice
}

function token() {
    return tokenAddress
}

function sub_3b8bb421(?) payable {
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if stor0 != msg.sender:
                revert with 0, 'NodeManagerV2: NOT AUTHORIZED'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if stor0 != msg.sender:
                revert with 0, 'NodeManagerV2: NOT AUTHORIZED'
    tokenAddress = arg1
}

function _nodesOfUser(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < stor7[arg1].field_0
    if bool(stor7[arg1][arg2].field_0):
        if bool(stor7[arg1][arg2].field_0) == uint255(stor7[arg1][arg2].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor7[arg1][arg2].field_0):
            if bool(stor7[arg1][arg2].field_0) == uint255(stor7[arg1][arg2].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor7[arg1][arg2].field_1):
                if 31 >= uint255(stor7[arg1][arg2].field_1):
                    mem[128] = 256 * Mask(248, 0, stor7[arg1][arg2].field_8)
                else:
                    mem[128] = stor7[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while uint255(stor7[arg1][arg2].field_1) + 96 > idx:
                        mem[idx + 32] = stor7[arg1][(4 * arg2) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor7[arg1][arg2].field_0) == stor7[arg1][arg2].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor7[arg1][arg2].field_1 % 128:
                if 31 >= stor7[arg1][arg2].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor7[arg1][arg2].field_8)
                else:
                    mem[128] = stor7[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while stor7[arg1][arg2].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor7[arg1][(4 * arg2) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, uint255(stor7[arg1][arg2].field_1)), data=mem[128 len ceil32(uint255(stor7[arg1][arg2].field_1))]), 
               stor7[arg1][arg2].field_256,
               stor7[arg1][arg2].field_512,
               stor7[arg1][arg2].field_768
    if bool(stor7[arg1][arg2].field_0) == stor7[arg1][arg2].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor7[arg1][arg2].field_0):
        if bool(stor7[arg1][arg2].field_0) == uint255(stor7[arg1][arg2].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor7[arg1][arg2].field_1):
            if 31 >= uint255(stor7[arg1][arg2].field_1):
                mem[128] = 256 * Mask(248, 0, stor7[arg1][arg2].field_8)
            else:
                mem[128] = stor7[arg1][arg2].field_0
                idx = 128
                s = 0
                while uint255(stor7[arg1][arg2].field_1) + 96 > idx:
                    mem[idx + 32] = stor7[arg1][(4 * arg2) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor7[arg1][arg2].field_0) == stor7[arg1][arg2].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor7[arg1][arg2].field_1 % 128:
            if 31 >= stor7[arg1][arg2].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor7[arg1][arg2].field_8)
            else:
                mem[128] = stor7[arg1][arg2].field_0
                idx = 128
                s = 0
                while stor7[arg1][arg2].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor7[arg1][(4 * arg2) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor7[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(stor7[arg1][arg2].field_1 % 128)]), 
           stor7[arg1][arg2].field_256,
           stor7[arg1][arg2].field_512,
           stor7[arg1][arg2].field_768
}

function migrate() {
    mem[100] = msg.sender
    require ext_code.size(sub_85c2d7b2Address)
    staticcall sub_85c2d7b2Address._isNodeOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NodeManagerV2: NOT NODE OWNER'
    if stor1[address(msg.sender)]:
        revert with 0, 'NodeManagerV2: ALREADY MIGRATED'
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(sub_85c2d7b2Address)
    staticcall sub_85c2d7b2Address._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 'NodeManagerV2: CLAIM REWARDS BEFORE MIGRATING'
    mem[0] = msg.sender
    mem[32] = 1
    stor1[address(msg.sender)] = 1
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    require ext_code.size(sub_85c2d7b2Address)
    staticcall sub_85c2d7b2Address._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[0] = msg.sender
        mem[32] = 7
        _129 = mem[64]
        mem[64] = mem[64] + 128
        _130 = mem[64]
        mem[64] = mem[64] + 64
        mem[_130] = 6
        mem[_130 + 32] = 'NodeV1'
        mem[_129] = _130
        if idx and 11 > -1 / idx:
            revert with 'NH{q', 17
        if 11 * idx > -2:
            revert with 'NH{q', 17
        if idx and 11 > -1 / idx:
            revert with 'NH{q', 17
        if 11 * idx > -11:
            revert with 'NH{q', 17
        mem[mem[64]] = 0xc92819ce00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(sub_85c2d7b2Address)
        staticcall sub_85c2d7b2Address._getNodesCreationTime(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _133 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _134 = mem[_133]
        require mem[_133] <= test266151307()
        require _133 + mem[_133] + 31 < _133 + return_data.size
        _135 = mem[_133 + mem[_133]]
        if mem[_133 + mem[_133]] > test266151307():
            revert with 'NH{q', 65
        if _133 + ceil32(return_data.size) + ceil32(ceil32(mem[_133 + mem[_133]])) + 1 > test266151307() or ceil32(ceil32(mem[_133 + mem[_133]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _133 + ceil32(return_data.size) + ceil32(ceil32(mem[_133 + mem[_133]])) + 1
        mem[_133 + ceil32(return_data.size)] = _135
        require _134 + _135 + 32 <= return_data.size
        s = 0
        while s < _135:
            mem[_133 + ceil32(return_data.size) + s + 32] = mem[_133 + _134 + s + 32]
            s = s + 32
            continue 
        if ceil32(_135) <= _135:
            _147 = mem[64]
            mem[mem[64]] = 10
            mem[64] = mem[64] + 64
            mem[_147 + 32 len 10] = call.data[calldata.size len 10]
            if var202002 <= 9:
                if var214003 > (-11 * idx) - 2:
                    revert with 'NH{q', 17
                # nil
            else:
                if 0 < mem[_147]:
                    if mem[_147] >= 0:
                        if 0 >= mem[_147]:
                            revert with 'NH{q', 50
                    revert with 'NH{q', 17
                mem[_129 + 32] = 0
                mem[_129 + 64] = block.timestamp
                mem[_129 + 96] = 0
                stor7[address(msg.sender)].field_0++
                mem[0] = sha3(address(msg.sender), 7)
                _720 = mem[_129]
                _721 = mem[mem[_129]]
                if bool(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0):
                    if bool(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0) == uint255(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = (4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))
                    if not _721:
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = 0
                        s = sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7)))
                        while sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))) + (uint255(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = (2 * _721) + 1
                        t = sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7)))
                        s = _720 + 32
                        while _720 + _721 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))) + (Mask(251, 0, _721 + 31) >> 5)
                        while sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))) + (uint255(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0) == stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))
                    if not _721:
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = 0
                        s = sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7)))
                        while sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))) + (stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_256 = 0
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_512 = block.timestamp
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_768 = 0
                        if sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))) + (stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) == -1:
                            revert with 'NH{q', 17
                        s = sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))) + (stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) + 1
                        continue 
                    stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = (2 * _721) + 1
                    t = sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7)))
                    s = _720 + 32
                    while _720 + _721 + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))) + (Mask(251, 0, _721 + 31) >> 5)
                    while sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))) + (stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_256 = 0
                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_512 = block.timestamp
                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_768 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[_133 + ceil32(return_data.size) + _135 + 32] = 0
            _148 = mem[64]
            mem[mem[64]] = 10
            mem[64] = mem[64] + 64
            mem[_148 + 32 len 10] = call.data[calldata.size len 10]
            if var203002 <= 9:
                if var215003 > (-11 * idx) - 2:
                    revert with 'NH{q', 17
                # nil
            else:
                if 0 < mem[_148]:
                    if mem[_148] >= 0:
                        if 0 >= mem[_148]:
                            revert with 'NH{q', 50
                    revert with 'NH{q', 17
                mem[_129 + 32] = 0
                mem[_129 + 64] = block.timestamp
                mem[_129 + 96] = 0
                stor7[address(msg.sender)].field_0++
                mem[0] = sha3(address(msg.sender), 7)
                _723 = mem[_129]
                _724 = mem[mem[_129]]
                if bool(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0):
                    if bool(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0) == uint255(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = (4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))
                    if not _724:
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = 0
                        s = sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7)))
                        while sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))) + (uint255(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_256 = 0
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_512 = block.timestamp
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_768 = 0
                        if sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))) + (uint255(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_1) + 31 / 32) == -1:
                            revert with 'NH{q', 17
                        s = sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))) + (uint255(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_1) + 31 / 32) + 1
                        continue 
                    stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = (2 * _724) + 1
                    t = sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7)))
                    s = _723 + 32
                    while _723 + _724 + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))) + (Mask(251, 0, _724 + 31) >> 5)
                    while sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))) + (uint255(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    if bool(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0) == stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))
                    if not _724:
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = 0
                        s = sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7)))
                        while sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))) + (stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = (2 * _724) + 1
                        t = sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7)))
                        s = _723 + 32
                        while _723 + _724 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))) + (Mask(251, 0, _724 + 31) >> 5)
                        while sha3((4 * stor7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 7))) + (stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_256 = 0
                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_512 = block.timestamp
                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_768 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}

function sub_63a574cc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if msg.sender == tokenAddress:
        mem[100] = address(arg1)
        require ext_code.size(sub_85c2d7b2Address)
        staticcall sub_85c2d7b2Address._isNodeOwner(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'NodeManagerV2: NOT NODE OWNER'
        if stor1[address(arg1)]:
            revert with 0, 'NodeManagerV2: ALREADY MIGRATED'
        mem[ceil32(return_data.size) + 100] = address(arg1)
        require ext_code.size(sub_85c2d7b2Address)
        staticcall sub_85c2d7b2Address._getRewardAmountOf(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'NodeManagerV2: CLAIM REWARDS BEFORE MIGRATING'
        mem[0] = address(arg1)
        mem[32] = 1
        stor1[address(arg1)] = 1
        mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
        require ext_code.size(sub_85c2d7b2Address)
        staticcall sub_85c2d7b2Address._getNodeNumberOf(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[0] = address(arg1)
            mem[32] = 7
            _385 = mem[64]
            mem[64] = mem[64] + 128
            _386 = mem[64]
            mem[64] = mem[64] + 64
            mem[_386] = 6
            mem[_386 + 32] = 'NodeV1'
            mem[_385] = _386
            if idx and 11 > -1 / idx:
                revert with 'NH{q', 17
            if 11 * idx > -2:
                revert with 'NH{q', 17
            if idx and 11 > -1 / idx:
                revert with 'NH{q', 17
            if 11 * idx > -11:
                revert with 'NH{q', 17
            mem[mem[64]] = 0xc92819ce00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(sub_85c2d7b2Address)
            staticcall sub_85c2d7b2Address._getNodesCreationTime(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _399 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _402 = mem[_399]
            require mem[_399] <= test266151307()
            require _399 + mem[_399] + 31 < _399 + return_data.size
            _405 = mem[_399 + mem[_399]]
            if mem[_399 + mem[_399]] > test266151307():
                revert with 'NH{q', 65
            if _399 + ceil32(return_data.size) + ceil32(ceil32(mem[_399 + mem[_399]])) + 1 > test266151307() or ceil32(ceil32(mem[_399 + mem[_399]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _399 + ceil32(return_data.size) + ceil32(ceil32(mem[_399 + mem[_399]])) + 1
            mem[_399 + ceil32(return_data.size)] = _405
            require _402 + _405 + 32 <= return_data.size
            s = 0
            while s < _405:
                mem[_399 + ceil32(return_data.size) + s + 32] = mem[_399 + _402 + s + 32]
                s = s + 32
                continue 
            if ceil32(_405) <= _405:
                _441 = mem[64]
                mem[mem[64]] = 10
                mem[64] = mem[64] + 64
                mem[_441 + 32 len 10] = call.data[calldata.size len 10]
                if var217002 <= 9:
                    if var229003 > (-11 * idx) - 2:
                        revert with 'NH{q', 17
                    # nil
                else:
                    if 0 < mem[_441]:
                        if mem[_441] >= 0:
                            if 0 >= mem[_441]:
                                revert with 'NH{q', 50
                        revert with 'NH{q', 17
                    mem[_385 + 32] = 0
                    mem[_385 + 64] = block.timestamp
                    mem[_385 + 96] = 0
                    stor7[address(arg1)].field_0++
                    mem[0] = sha3(address(arg1), 7)
                    _2158 = mem[_385]
                    _2159 = mem[mem[_385]]
                    if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0):
                        if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0) == uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = (4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))
                        if not _2159:
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                            while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = (2 * _2159) + 1
                            t = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                            s = _2158 + 32
                            while _2158 + _2159 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (Mask(251, 0, _2159 + 31) >> 5)
                            while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0) == stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))
                        if not _2159:
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                            while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = block.timestamp
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
                            if sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) == -1:
                                revert with 'NH{q', 17
                            s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) + 1
                            continue 
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = (2 * _2159) + 1
                        t = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                        s = _2158 + 32
                        while _2158 + _2159 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (Mask(251, 0, _2159 + 31) >> 5)
                        while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = block.timestamp
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                mem[_399 + ceil32(return_data.size) + _405 + 32] = 0
                _444 = mem[64]
                mem[mem[64]] = 10
                mem[64] = mem[64] + 64
                mem[_444 + 32 len 10] = call.data[calldata.size len 10]
                if var218002 <= 9:
                    if var230003 > (-11 * idx) - 2:
                        revert with 'NH{q', 17
                    # nil
                else:
                    if 0 < mem[_444]:
                        if mem[_444] >= 0:
                            if 0 >= mem[_444]:
                                revert with 'NH{q', 50
                        revert with 'NH{q', 17
                    mem[_385 + 32] = 0
                    mem[_385 + 64] = block.timestamp
                    mem[_385 + 96] = 0
                    stor7[address(arg1)].field_0++
                    mem[0] = sha3(address(arg1), 7)
                    _2161 = mem[_385]
                    _2162 = mem[mem[_385]]
                    if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0):
                        if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0) == uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = (4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))
                        if not _2162:
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                            while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = block.timestamp
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
                            if sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) == -1:
                                revert with 'NH{q', 17
                            s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) + 1
                            continue 
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = (2 * _2162) + 1
                        t = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                        s = _2161 + 32
                        while _2161 + _2162 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (Mask(251, 0, _2162 + 31) >> 5)
                        while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0) == stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))
                        if not _2162:
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                            while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = (2 * _2162) + 1
                            t = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                            s = _2161 + 32
                            while _2161 + _2162 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (Mask(251, 0, _2162 + 31) >> 5)
                            while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = block.timestamp
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
    else:
        if msg.sender == gateKeeperAddress:
            mem[100] = address(arg1)
            require ext_code.size(sub_85c2d7b2Address)
            staticcall sub_85c2d7b2Address._isNodeOwner(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'NodeManagerV2: NOT NODE OWNER'
            if stor1[address(arg1)]:
                revert with 0, 'NodeManagerV2: ALREADY MIGRATED'
            mem[ceil32(return_data.size) + 100] = address(arg1)
            require ext_code.size(sub_85c2d7b2Address)
            staticcall sub_85c2d7b2Address._getRewardAmountOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'NodeManagerV2: CLAIM REWARDS BEFORE MIGRATING'
            mem[0] = address(arg1)
            mem[32] = 1
            stor1[address(arg1)] = 1
            mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
            require ext_code.size(sub_85c2d7b2Address)
            staticcall sub_85c2d7b2Address._getNodeNumberOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[0] = address(arg1)
                mem[32] = 7
                _388 = mem[64]
                mem[64] = mem[64] + 128
                _389 = mem[64]
                mem[64] = mem[64] + 64
                mem[_389] = 6
                mem[_389 + 32] = 'NodeV1'
                mem[_388] = _389
                if idx and 11 > -1 / idx:
                    revert with 'NH{q', 17
                if 11 * idx > -2:
                    revert with 'NH{q', 17
                if idx and 11 > -1 / idx:
                    revert with 'NH{q', 17
                if 11 * idx > -11:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0xc92819ce00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(sub_85c2d7b2Address)
                staticcall sub_85c2d7b2Address._getNodesCreationTime(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _400 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _403 = mem[_400]
                require mem[_400] <= test266151307()
                require _400 + mem[_400] + 31 < _400 + return_data.size
                _406 = mem[_400 + mem[_400]]
                if mem[_400 + mem[_400]] > test266151307():
                    revert with 'NH{q', 65
                if _400 + ceil32(return_data.size) + ceil32(ceil32(mem[_400 + mem[_400]])) + 1 > test266151307() or ceil32(ceil32(mem[_400 + mem[_400]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _400 + ceil32(return_data.size) + ceil32(ceil32(mem[_400 + mem[_400]])) + 1
                mem[_400 + ceil32(return_data.size)] = _406
                require _403 + _406 + 32 <= return_data.size
                s = 0
                while s < _406:
                    mem[_400 + ceil32(return_data.size) + s + 32] = mem[_400 + _403 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_406) <= _406:
                    _442 = mem[64]
                    mem[mem[64]] = 10
                    mem[64] = mem[64] + 64
                    mem[_442 + 32 len 10] = call.data[calldata.size len 10]
                    if var218002 <= 9:
                        if var230003 > (-11 * idx) - 2:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        if 0 < mem[_442]:
                            if mem[_442] >= 0:
                                if 0 >= mem[_442]:
                                    revert with 'NH{q', 50
                            revert with 'NH{q', 17
                        mem[_388 + 32] = 0
                        mem[_388 + 64] = block.timestamp
                        mem[_388 + 96] = 0
                        stor7[address(arg1)].field_0++
                        mem[0] = sha3(address(arg1), 7)
                        _2164 = mem[_388]
                        _2165 = mem[mem[_388]]
                        if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0):
                            if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0) == uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))
                            if not _2165:
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                                s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                                while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = (2 * _2165) + 1
                                t = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                                s = _2164 + 32
                                while _2164 + _2165 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (Mask(251, 0, _2165 + 31) >> 5)
                                while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0) == stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))
                            if not _2165:
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                                s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                                while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = 0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = block.timestamp
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
                                if sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) == -1:
                                    revert with 'NH{q', 17
                                s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) + 1
                                continue 
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = (2 * _2165) + 1
                            t = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                            s = _2164 + 32
                            while _2164 + _2165 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (Mask(251, 0, _2165 + 31) >> 5)
                            while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = block.timestamp
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_400 + ceil32(return_data.size) + _406 + 32] = 0
                    _445 = mem[64]
                    mem[mem[64]] = 10
                    mem[64] = mem[64] + 64
                    mem[_445 + 32 len 10] = call.data[calldata.size len 10]
                    if var219002 <= 9:
                        if var231003 > (-11 * idx) - 2:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        if 0 < mem[_445]:
                            if mem[_445] >= 0:
                                if 0 >= mem[_445]:
                                    revert with 'NH{q', 50
                            revert with 'NH{q', 17
                        mem[_388 + 32] = 0
                        mem[_388 + 64] = block.timestamp
                        mem[_388 + 96] = 0
                        stor7[address(arg1)].field_0++
                        mem[0] = sha3(address(arg1), 7)
                        _2167 = mem[_388]
                        _2168 = mem[mem[_388]]
                        if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0):
                            if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0) == uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))
                            if not _2168:
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                                s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                                while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = 0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = block.timestamp
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
                                if sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) == -1:
                                    revert with 'NH{q', 17
                                s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) + 1
                                continue 
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = (2 * _2168) + 1
                            t = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                            s = _2167 + 32
                            while _2167 + _2168 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (Mask(251, 0, _2168 + 31) >> 5)
                            while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0) == stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))
                            if not _2168:
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                                s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                                while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = (2 * _2168) + 1
                                t = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                                s = _2167 + 32
                                while _2167 + _2168 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (Mask(251, 0, _2168 + 31) >> 5)
                                while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = block.timestamp
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
        else:
            if stor0 != msg.sender:
                revert with 0, 'NodeManagerV2: NOT AUTHORIZED'
            mem[100] = address(arg1)
            require ext_code.size(sub_85c2d7b2Address)
            staticcall sub_85c2d7b2Address._isNodeOwner(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'NodeManagerV2: NOT NODE OWNER'
            if stor1[address(arg1)]:
                revert with 0, 'NodeManagerV2: ALREADY MIGRATED'
            mem[ceil32(return_data.size) + 100] = address(arg1)
            require ext_code.size(sub_85c2d7b2Address)
            staticcall sub_85c2d7b2Address._getRewardAmountOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'NodeManagerV2: CLAIM REWARDS BEFORE MIGRATING'
            mem[0] = address(arg1)
            mem[32] = 1
            stor1[address(arg1)] = 1
            mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
            require ext_code.size(sub_85c2d7b2Address)
            staticcall sub_85c2d7b2Address._getNodeNumberOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[0] = address(arg1)
                mem[32] = 7
                _391 = mem[64]
                mem[64] = mem[64] + 128
                _392 = mem[64]
                mem[64] = mem[64] + 64
                mem[_392] = 6
                mem[_392 + 32] = 'NodeV1'
                mem[_391] = _392
                if idx and 11 > -1 / idx:
                    revert with 'NH{q', 17
                if 11 * idx > -2:
                    revert with 'NH{q', 17
                if idx and 11 > -1 / idx:
                    revert with 'NH{q', 17
                if 11 * idx > -11:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0xc92819ce00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(sub_85c2d7b2Address)
                staticcall sub_85c2d7b2Address._getNodesCreationTime(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _401 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _404 = mem[_401]
                require mem[_401] <= test266151307()
                require _401 + mem[_401] + 31 < _401 + return_data.size
                _407 = mem[_401 + mem[_401]]
                if mem[_401 + mem[_401]] > test266151307():
                    revert with 'NH{q', 65
                if _401 + ceil32(return_data.size) + ceil32(ceil32(mem[_401 + mem[_401]])) + 1 > test266151307() or ceil32(ceil32(mem[_401 + mem[_401]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _401 + ceil32(return_data.size) + ceil32(ceil32(mem[_401 + mem[_401]])) + 1
                mem[_401 + ceil32(return_data.size)] = _407
                require _404 + _407 + 32 <= return_data.size
                s = 0
                while s < _407:
                    mem[_401 + ceil32(return_data.size) + s + 32] = mem[_401 + _404 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_407) <= _407:
                    _443 = mem[64]
                    mem[mem[64]] = 10
                    mem[64] = mem[64] + 64
                    mem[_443 + 32 len 10] = call.data[calldata.size len 10]
                    if var219002 <= 9:
                        if var231003 > (-11 * idx) - 2:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        if 0 < mem[_443]:
                            if mem[_443] >= 0:
                                if 0 >= mem[_443]:
                                    revert with 'NH{q', 50
                            revert with 'NH{q', 17
                        mem[_391 + 32] = 0
                        mem[_391 + 64] = block.timestamp
                        mem[_391 + 96] = 0
                        stor7[address(arg1)].field_0++
                        mem[0] = sha3(address(arg1), 7)
                        _2170 = mem[_391]
                        _2171 = mem[mem[_391]]
                        if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0):
                            if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0) == uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))
                            if not _2171:
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                                s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                                while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = (2 * _2171) + 1
                                t = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                                s = _2170 + 32
                                while _2170 + _2171 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (Mask(251, 0, _2171 + 31) >> 5)
                                while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0) == stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))
                            if not _2171:
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                                s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                                while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = 0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = block.timestamp
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
                                if sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) == -1:
                                    revert with 'NH{q', 17
                                s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) + 1
                                continue 
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = (2 * _2171) + 1
                            t = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                            s = _2170 + 32
                            while _2170 + _2171 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (Mask(251, 0, _2171 + 31) >> 5)
                            while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = block.timestamp
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_401 + ceil32(return_data.size) + _407 + 32] = 0
                    _446 = mem[64]
                    mem[mem[64]] = 10
                    mem[64] = mem[64] + 64
                    mem[_446 + 32 len 10] = call.data[calldata.size len 10]
                    if var220002 <= 9:
                        if var232003 > (-11 * idx) - 2:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        if 0 < mem[_446]:
                            if mem[_446] >= 0:
                                if 0 >= mem[_446]:
                                    revert with 'NH{q', 50
                            revert with 'NH{q', 17
                        mem[_391 + 32] = 0
                        mem[_391 + 64] = block.timestamp
                        mem[_391 + 96] = 0
                        stor7[address(arg1)].field_0++
                        mem[0] = sha3(address(arg1), 7)
                        _2173 = mem[_391]
                        _2174 = mem[mem[_391]]
                        if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0):
                            if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0) == uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))
                            if not _2174:
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                                s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                                while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = 0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = block.timestamp
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
                                if sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) == -1:
                                    revert with 'NH{q', 17
                                s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) + 1
                                continue 
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = (2 * _2174) + 1
                            t = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                            s = _2173 + 32
                            while _2173 + _2174 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (Mask(251, 0, _2174 + 31) >> 5)
                            while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (uint255(stor7[address(arg1)][stor7[address(arg1)].field_0].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0) == stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))
                            if not _2174:
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                                s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                                while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = (2 * _2174) + 1
                                t = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7)))
                                s = _2173 + 32
                                while _2173 + _2174 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (Mask(251, 0, _2174 + 31) >> 5)
                                while sha3((4 * stor7[address(arg1)].field_0) + sha3(sha3(address(arg1), 7))) + (stor7[address(arg1)][stor7[address(arg1)].field_0].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = block.timestamp
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
}



}
