contract main {




// =====================  Runtime code  =====================


#
#  - sub_276f8dd4(?)
#  - sub_3ec6cb08(?)
#  - sub_4c788bac(?)
#  - sub_7399ebcb(?)
#  - sub_e69c3292(?)
#
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

function sub_ba370651(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return bool(stor1[arg1][arg2])
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

function _nodesOfUser(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < stor7[arg1].field_0
    if stor7[arg1][arg2].field_0:
        if stor7[arg1][arg2].field_0 == stor7[arg1][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor7[arg1][arg2].field_0:
            if stor7[arg1][arg2].field_0 == stor7[arg1][arg2].field_1 < 32:
                revert with 'NH{q', 34
            if stor7[arg1][arg2].field_1:
                if 31 >= stor7[arg1][arg2].field_1:
                    mem[128] = 256 * stor7[arg1][arg2].field_8
                else:
                    mem[128] = stor7[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while stor7[arg1][arg2].field_1 + 96 > idx:
                        mem[idx + 32] = stor7[arg1][(4 * arg2) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor7[arg1][arg2].field_0 == stor7[arg1][arg2].field_1 < 32:
                revert with 'NH{q', 34
            if stor7[arg1][arg2].field_1:
                if 31 >= stor7[arg1][arg2].field_1:
                    mem[128] = 256 * stor7[arg1][arg2].field_8
                else:
                    mem[128] = stor7[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while stor7[arg1][arg2].field_1 + 96 > idx:
                        mem[idx + 32] = stor7[arg1][(4 * arg2) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor7[arg1][arg2].field_1), data=mem[128 len ceil32(stor7[arg1][arg2].field_1)]), 
               stor7[arg1][arg2].field_256,
               stor7[arg1][arg2].field_512,
               stor7[arg1][arg2].field_768
    if stor7[arg1][arg2].field_0 == stor7[arg1][arg2].field_1 < 32:
        revert with 'NH{q', 34
    if stor7[arg1][arg2].field_0:
        if stor7[arg1][arg2].field_0 == stor7[arg1][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor7[arg1][arg2].field_1:
            if 31 >= stor7[arg1][arg2].field_1:
                mem[128] = 256 * stor7[arg1][arg2].field_8
            else:
                mem[128] = stor7[arg1][arg2].field_0
                idx = 128
                s = 0
                while stor7[arg1][arg2].field_1 + 96 > idx:
                    mem[idx + 32] = stor7[arg1][(4 * arg2) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor7[arg1][arg2].field_0 == stor7[arg1][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor7[arg1][arg2].field_1:
            if 31 >= stor7[arg1][arg2].field_1:
                mem[128] = 256 * stor7[arg1][arg2].field_8
            else:
                mem[128] = stor7[arg1][arg2].field_0
                idx = 128
                s = 0
                while stor7[arg1][arg2].field_1 + 96 > idx:
                    mem[idx + 32] = stor7[arg1][(4 * arg2) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor7[arg1][arg2].field_0, data=mem[128 len ceil32(stor7[arg1][arg2].field_1)]), 
           stor7[arg1][arg2].field_256,
           stor7[arg1][arg2].field_512,
           stor7[arg1][arg2].field_768
}

function sub_1781d399(?) {
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
        revert with 0, 'NodeManagerV2: NOT A NODE OWNER'
    if stor1[address(msg.sender)][0]:
        revert with 0, 'NodeManagerV2: ALREADY MIGRATED'
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(sub_85c2d7b2Address)
    staticcall sub_85c2d7b2Address._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= 1:
        if ext_call.return_data[0] - 1 < 0:
            revert with 0, 'NodeManagerV2: NOT ENOUGH NODES TO MIGRATE THIS TEIR'
        mem[0] = 0
        mem[32] = sha3(address(msg.sender), 1)
        stor1[address(msg.sender)][0] = 1
        mem[(2 * ceil32(return_data.size)) + 96] = 0xc92819ce00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        require ext_code.size(sub_85c2d7b2Address)
        staticcall sub_85c2d7b2Address._getNodesCreationTime(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _22 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _23 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
        require _22 + _23 + 32 <= return_data.size
        mem[(4 * ceil32(return_data.size)) + 128 len ceil32(_23)] = mem[(2 * ceil32(return_data.size)) + _22 + 128 len ceil32(_23)]
        if ceil32(_23) <= _23:
            mem[mem[64]] = 0x334de3a200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(sub_85c2d7b2Address)
            staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_81] <= test266151307()
            require _81 + mem[_81] + 31 < _81 + return_data.size
            if mem[_81 + mem[_81]] > test266151307():
                revert with 'NH{q', 65
            if _81 + ceil32(return_data.size) + ceil32(ceil32(mem[_81 + mem[_81]])) + 1 > test266151307() or ceil32(ceil32(mem[_81 + mem[_81]])) + 1 < 0:
                revert with 'NH{q', 65
            require mem[_81] + mem[_81 + mem[_81]] + 32 <= return_data.size
            if 0 >= ext_call.return_data[0] - 1:
            if 0 < mem[_81 + mem[_81]]:
                if 0 >= mem[_81 + mem[_81]]:
                    revert with 'NH{q', 50
        else:
            mem[(4 * ceil32(return_data.size)) + _23 + 128] = 0
            mem[mem[64]] = 0x334de3a200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(sub_85c2d7b2Address)
            staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _82 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_82] <= test266151307()
            require _82 + mem[_82] + 31 < _82 + return_data.size
            if mem[_82 + mem[_82]] > test266151307():
                revert with 'NH{q', 65
            if _82 + ceil32(return_data.size) + ceil32(ceil32(mem[_82 + mem[_82]])) + 1 > test266151307() or ceil32(ceil32(mem[_82 + mem[_82]])) + 1 < 0:
                revert with 'NH{q', 65
            require mem[_82] + mem[_82 + mem[_82]] + 32 <= return_data.size
            if 0 >= ext_call.return_data[0] - 1:
            if 0 < mem[_82 + mem[_82]]:
                if 0 >= mem[_82 + mem[_82]]:
                    revert with 'NH{q', 50
    revert with 'NH{q', 17
}

function sub_e7998529(?) {
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
        revert with 0, 'NodeManagerV2: NOT A NODE OWNER'
    if stor1[address(msg.sender)][4]:
        revert with 0, 'NodeManagerV2: ALREADY MIGRATED'
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(sub_85c2d7b2Address)
    staticcall sub_85c2d7b2Address._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - 1 < 80:
        revert with 0, 'NodeManagerV2: NOT ENOUGH NODES TO MIGRATE THIS TEIR'
    mem[0] = 4
    mem[32] = sha3(address(msg.sender), 1)
    stor1[address(msg.sender)][4] = 1
    mem[(2 * ceil32(return_data.size)) + 96] = 0xc92819ce00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    require ext_code.size(sub_85c2d7b2Address)
    staticcall sub_85c2d7b2Address._getNodesCreationTime(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _22 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _23 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require _22 + _23 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 128 len ceil32(_23)] = mem[(2 * ceil32(return_data.size)) + _22 + 128 len ceil32(_23)]
    if ceil32(_23) <= _23:
        mem[mem[64]] = 0x334de3a200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(sub_85c2d7b2Address)
        staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _81 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_81] <= test266151307()
        require _81 + mem[_81] + 31 < _81 + return_data.size
        if mem[_81 + mem[_81]] > test266151307():
            revert with 'NH{q', 65
        if _81 + ceil32(return_data.size) + ceil32(ceil32(mem[_81 + mem[_81]])) + 1 > test266151307() or ceil32(ceil32(mem[_81 + mem[_81]])) + 1 < 0:
            revert with 'NH{q', 65
        require mem[_81] + mem[_81 + mem[_81]] + 32 <= return_data.size
        if ceil32(mem[_81 + mem[_81]]) <= mem[_81 + mem[_81]]:
            if var236001 >= ext_call.return_data[0] - 1:
            if var236001 > -2:
                revert with 'NH{q', 17
            # nil
        else:
            if var237001 >= ext_call.return_data[0] - 1:
            if var237001 > -2:
                revert with 'NH{q', 17
            # nil
    else:
        mem[(4 * ceil32(return_data.size)) + _23 + 128] = 0
        mem[mem[64]] = 0x334de3a200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(sub_85c2d7b2Address)
        staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _82 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_82] <= test266151307()
        require _82 + mem[_82] + 31 < _82 + return_data.size
        if mem[_82 + mem[_82]] > test266151307():
            revert with 'NH{q', 65
        if _82 + ceil32(return_data.size) + ceil32(ceil32(mem[_82 + mem[_82]])) + 1 > test266151307() or ceil32(ceil32(mem[_82 + mem[_82]])) + 1 < 0:
            revert with 'NH{q', 65
        require mem[_82] + mem[_82 + mem[_82]] + 32 <= return_data.size
        if ceil32(mem[_82 + mem[_82]]) <= mem[_82 + mem[_82]]:
            if var237001 >= ext_call.return_data[0] - 1:
            if var237001 > -2:
                revert with 'NH{q', 17
            # nil
        else:
            if var238001 >= ext_call.return_data[0] - 1:
            if var238001 > -2:
                revert with 'NH{q', 17
            # nil
}

function sub_efa45240(?) {
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
        revert with 0, 'NodeManagerV2: NOT A NODE OWNER'
    if stor1[address(msg.sender)][3]:
        revert with 0, 'NodeManagerV2: ALREADY MIGRATED'
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(sub_85c2d7b2Address)
    staticcall sub_85c2d7b2Address._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - 1 < 60:
        revert with 0, 'NodeManagerV2: NOT ENOUGH NODES TO MIGRATE THIS TEIR'
    mem[0] = 3
    mem[32] = sha3(address(msg.sender), 1)
    stor1[address(msg.sender)][3] = 1
    mem[(2 * ceil32(return_data.size)) + 96] = 0xc92819ce00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    require ext_code.size(sub_85c2d7b2Address)
    staticcall sub_85c2d7b2Address._getNodesCreationTime(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _22 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _23 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require _22 + _23 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 128 len ceil32(_23)] = mem[(2 * ceil32(return_data.size)) + _22 + 128 len ceil32(_23)]
    if ceil32(_23) <= _23:
        mem[mem[64]] = 0x334de3a200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(sub_85c2d7b2Address)
        staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _81 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_81] <= test266151307()
        require _81 + mem[_81] + 31 < _81 + return_data.size
        if mem[_81 + mem[_81]] > test266151307():
            revert with 'NH{q', 65
        if _81 + ceil32(return_data.size) + ceil32(ceil32(mem[_81 + mem[_81]])) + 1 > test266151307() or ceil32(ceil32(mem[_81 + mem[_81]])) + 1 < 0:
            revert with 'NH{q', 65
        require mem[_81] + mem[_81 + mem[_81]] + 32 <= return_data.size
        if ceil32(mem[_81 + mem[_81]]) <= mem[_81 + mem[_81]]:
            if var236001 >= ext_call.return_data[0] - 1:
            if var236001 > -2:
                revert with 'NH{q', 17
            # nil
        else:
            if var237001 >= ext_call.return_data[0] - 1:
            if var237001 > -2:
                revert with 'NH{q', 17
            # nil
    else:
        mem[(4 * ceil32(return_data.size)) + _23 + 128] = 0
        mem[mem[64]] = 0x334de3a200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(sub_85c2d7b2Address)
        staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _82 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_82] <= test266151307()
        require _82 + mem[_82] + 31 < _82 + return_data.size
        if mem[_82 + mem[_82]] > test266151307():
            revert with 'NH{q', 65
        if _82 + ceil32(return_data.size) + ceil32(ceil32(mem[_82 + mem[_82]])) + 1 > test266151307() or ceil32(ceil32(mem[_82 + mem[_82]])) + 1 < 0:
            revert with 'NH{q', 65
        require mem[_82] + mem[_82 + mem[_82]] + 32 <= return_data.size
        if ceil32(mem[_82 + mem[_82]]) <= mem[_82 + mem[_82]]:
            if var237001 >= ext_call.return_data[0] - 1:
            if var237001 > -2:
                revert with 'NH{q', 17
            # nil
        else:
            if var238001 >= ext_call.return_data[0] - 1:
            if var238001 > -2:
                revert with 'NH{q', 17
            # nil
}

function sub_f743b53a(?) {
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
        revert with 0, 'NodeManagerV2: NOT A NODE OWNER'
    if stor1[address(msg.sender)][2]:
        revert with 0, 'NodeManagerV2: ALREADY MIGRATED'
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(sub_85c2d7b2Address)
    staticcall sub_85c2d7b2Address._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - 1 < 40:
        revert with 0, 'NodeManagerV2: NOT ENOUGH NODES TO MIGRATE THIS TEIR'
    mem[0] = 2
    mem[32] = sha3(address(msg.sender), 1)
    stor1[address(msg.sender)][2] = 1
    mem[(2 * ceil32(return_data.size)) + 96] = 0xc92819ce00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    require ext_code.size(sub_85c2d7b2Address)
    staticcall sub_85c2d7b2Address._getNodesCreationTime(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _22 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _23 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require _22 + _23 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 128 len ceil32(_23)] = mem[(2 * ceil32(return_data.size)) + _22 + 128 len ceil32(_23)]
    if ceil32(_23) <= _23:
        mem[mem[64]] = 0x334de3a200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(sub_85c2d7b2Address)
        staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _81 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_81] <= test266151307()
        require _81 + mem[_81] + 31 < _81 + return_data.size
        if mem[_81 + mem[_81]] > test266151307():
            revert with 'NH{q', 65
        if _81 + ceil32(return_data.size) + ceil32(ceil32(mem[_81 + mem[_81]])) + 1 > test266151307() or ceil32(ceil32(mem[_81 + mem[_81]])) + 1 < 0:
            revert with 'NH{q', 65
        require mem[_81] + mem[_81 + mem[_81]] + 32 <= return_data.size
        if ceil32(mem[_81 + mem[_81]]) <= mem[_81 + mem[_81]]:
            if var236001 >= ext_call.return_data[0] - 1:
            if var236001 > -2:
                revert with 'NH{q', 17
            # nil
        else:
            if var237001 >= ext_call.return_data[0] - 1:
            if var237001 > -2:
                revert with 'NH{q', 17
            # nil
    else:
        mem[(4 * ceil32(return_data.size)) + _23 + 128] = 0
        mem[mem[64]] = 0x334de3a200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(sub_85c2d7b2Address)
        staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _82 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_82] <= test266151307()
        require _82 + mem[_82] + 31 < _82 + return_data.size
        if mem[_82 + mem[_82]] > test266151307():
            revert with 'NH{q', 65
        if _82 + ceil32(return_data.size) + ceil32(ceil32(mem[_82 + mem[_82]])) + 1 > test266151307() or ceil32(ceil32(mem[_82 + mem[_82]])) + 1 < 0:
            revert with 'NH{q', 65
        require mem[_82] + mem[_82 + mem[_82]] + 32 <= return_data.size
        if ceil32(mem[_82 + mem[_82]]) <= mem[_82 + mem[_82]]:
            if var237001 >= ext_call.return_data[0] - 1:
            if var237001 > -2:
                revert with 'NH{q', 17
            # nil
        else:
            if var238001 >= ext_call.return_data[0] - 1:
            if var238001 > -2:
                revert with 'NH{q', 17
            # nil
}

function sub_9bc7d477(?) {
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
            revert with 0, 'NodeManagerV2: NOT A NODE OWNER'
        if stor1[address(arg1)][0]:
            revert with 0, 'NodeManagerV2: ALREADY MIGRATED'
        mem[ceil32(return_data.size) + 100] = address(arg1)
        require ext_code.size(sub_85c2d7b2Address)
        staticcall sub_85c2d7b2Address._getNodeNumberOf(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= 1:
            if ext_call.return_data[0] - 1 < 0:
                revert with 0, 'NodeManagerV2: NOT ENOUGH NODES TO MIGRATE THIS TEIR'
            mem[0] = 0
            mem[32] = sha3(address(arg1), 1)
            stor1[address(arg1)][0] = 1
            mem[(2 * ceil32(return_data.size)) + 96] = 0xc92819ce00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
            require ext_code.size(sub_85c2d7b2Address)
            staticcall sub_85c2d7b2Address._getNodesCreationTime(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _65 = mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _69 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96])) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96]
            require _65 + _69 + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 128 len ceil32(_69)] = mem[(2 * ceil32(return_data.size)) + _65 + 128 len ceil32(_69)]
            if ceil32(_69) <= _69:
                mem[mem[64]] = 0x334de3a200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(sub_85c2d7b2Address)
                staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _243 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_243] <= test266151307()
                require _243 + mem[_243] + 31 < _243 + return_data.size
                if mem[_243 + mem[_243]] > test266151307():
                    revert with 'NH{q', 65
                if _243 + ceil32(return_data.size) + ceil32(ceil32(mem[_243 + mem[_243]])) + 1 > test266151307() or ceil32(ceil32(mem[_243 + mem[_243]])) + 1 < 0:
                    revert with 'NH{q', 65
                require mem[_243] + mem[_243 + mem[_243]] + 32 <= return_data.size
                if 0 >= ext_call.return_data[0] - 1:
                if 0 < mem[_243 + mem[_243]]:
                    if 0 >= mem[_243 + mem[_243]]:
                        revert with 'NH{q', 50
            else:
                mem[(4 * ceil32(return_data.size)) + _69 + 128] = 0
                mem[mem[64]] = 0x334de3a200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(sub_85c2d7b2Address)
                staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _246 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_246] <= test266151307()
                require _246 + mem[_246] + 31 < _246 + return_data.size
                if mem[_246 + mem[_246]] > test266151307():
                    revert with 'NH{q', 65
                if _246 + ceil32(return_data.size) + ceil32(ceil32(mem[_246 + mem[_246]])) + 1 > test266151307() or ceil32(ceil32(mem[_246 + mem[_246]])) + 1 < 0:
                    revert with 'NH{q', 65
                require mem[_246] + mem[_246 + mem[_246]] + 32 <= return_data.size
                if 0 >= ext_call.return_data[0] - 1:
                if 0 < mem[_246 + mem[_246]]:
                    if 0 >= mem[_246 + mem[_246]]:
                        revert with 'NH{q', 50
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
                revert with 0, 'NodeManagerV2: NOT A NODE OWNER'
            if stor1[address(arg1)][0]:
                revert with 0, 'NodeManagerV2: ALREADY MIGRATED'
            mem[ceil32(return_data.size) + 100] = address(arg1)
            require ext_code.size(sub_85c2d7b2Address)
            staticcall sub_85c2d7b2Address._getNodeNumberOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= 1:
                if ext_call.return_data[0] - 1 < 0:
                    revert with 0, 'NodeManagerV2: NOT ENOUGH NODES TO MIGRATE THIS TEIR'
                mem[0] = 0
                mem[32] = sha3(address(arg1), 1)
                stor1[address(arg1)][0] = 1
                mem[(2 * ceil32(return_data.size)) + 96] = 0xc92819ce00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
                require ext_code.size(sub_85c2d7b2Address)
                staticcall sub_85c2d7b2Address._getNodesCreationTime(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _67 = mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _70 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96])) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96]
                require _67 + _70 + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + 128 len ceil32(_70)] = mem[(2 * ceil32(return_data.size)) + _67 + 128 len ceil32(_70)]
                if ceil32(_70) <= _70:
                    mem[mem[64]] = 0x334de3a200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    require ext_code.size(sub_85c2d7b2Address)
                    staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _244 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_244] <= test266151307()
                    require _244 + mem[_244] + 31 < _244 + return_data.size
                    if mem[_244 + mem[_244]] > test266151307():
                        revert with 'NH{q', 65
                    if _244 + ceil32(return_data.size) + ceil32(ceil32(mem[_244 + mem[_244]])) + 1 > test266151307() or ceil32(ceil32(mem[_244 + mem[_244]])) + 1 < 0:
                        revert with 'NH{q', 65
                    require mem[_244] + mem[_244 + mem[_244]] + 32 <= return_data.size
                    if 0 >= ext_call.return_data[0] - 1:
                    if 0 < mem[_244 + mem[_244]]:
                        if 0 >= mem[_244 + mem[_244]]:
                            revert with 'NH{q', 50
                else:
                    mem[(4 * ceil32(return_data.size)) + _70 + 128] = 0
                    mem[mem[64]] = 0x334de3a200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    require ext_code.size(sub_85c2d7b2Address)
                    staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _247 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_247] <= test266151307()
                    require _247 + mem[_247] + 31 < _247 + return_data.size
                    if mem[_247 + mem[_247]] > test266151307():
                        revert with 'NH{q', 65
                    if _247 + ceil32(return_data.size) + ceil32(ceil32(mem[_247 + mem[_247]])) + 1 > test266151307() or ceil32(ceil32(mem[_247 + mem[_247]])) + 1 < 0:
                        revert with 'NH{q', 65
                    require mem[_247] + mem[_247 + mem[_247]] + 32 <= return_data.size
                    if 0 >= ext_call.return_data[0] - 1:
                    if 0 < mem[_247 + mem[_247]]:
                        if 0 >= mem[_247 + mem[_247]]:
                            revert with 'NH{q', 50
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
                revert with 0, 'NodeManagerV2: NOT A NODE OWNER'
            if stor1[address(arg1)][0]:
                revert with 0, 'NodeManagerV2: ALREADY MIGRATED'
            mem[ceil32(return_data.size) + 100] = address(arg1)
            require ext_code.size(sub_85c2d7b2Address)
            staticcall sub_85c2d7b2Address._getNodeNumberOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= 1:
                if ext_call.return_data[0] - 1 < 0:
                    revert with 0, 'NodeManagerV2: NOT ENOUGH NODES TO MIGRATE THIS TEIR'
                mem[0] = 0
                mem[32] = sha3(address(arg1), 1)
                stor1[address(arg1)][0] = 1
                mem[(2 * ceil32(return_data.size)) + 96] = 0xc92819ce00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
                require ext_code.size(sub_85c2d7b2Address)
                staticcall sub_85c2d7b2Address._getNodesCreationTime(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _68 = mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _71 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96])) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96]
                require _68 + _71 + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + 128 len ceil32(_71)] = mem[(2 * ceil32(return_data.size)) + _68 + 128 len ceil32(_71)]
                if ceil32(_71) <= _71:
                    mem[mem[64]] = 0x334de3a200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    require ext_code.size(sub_85c2d7b2Address)
                    staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _245 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_245] <= test266151307()
                    require _245 + mem[_245] + 31 < _245 + return_data.size
                    if mem[_245 + mem[_245]] > test266151307():
                        revert with 'NH{q', 65
                    if _245 + ceil32(return_data.size) + ceil32(ceil32(mem[_245 + mem[_245]])) + 1 > test266151307() or ceil32(ceil32(mem[_245 + mem[_245]])) + 1 < 0:
                        revert with 'NH{q', 65
                    require mem[_245] + mem[_245 + mem[_245]] + 32 <= return_data.size
                    if 0 >= ext_call.return_data[0] - 1:
                    if 0 < mem[_245 + mem[_245]]:
                        if 0 >= mem[_245 + mem[_245]]:
                            revert with 'NH{q', 50
                else:
                    mem[(4 * ceil32(return_data.size)) + _71 + 128] = 0
                    mem[mem[64]] = 0x334de3a200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    require ext_code.size(sub_85c2d7b2Address)
                    staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _248 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_248] <= test266151307()
                    require _248 + mem[_248] + 31 < _248 + return_data.size
                    if mem[_248 + mem[_248]] > test266151307():
                        revert with 'NH{q', 65
                    if _248 + ceil32(return_data.size) + ceil32(ceil32(mem[_248 + mem[_248]])) + 1 > test266151307() or ceil32(ceil32(mem[_248 + mem[_248]])) + 1 < 0:
                        revert with 'NH{q', 65
                    require mem[_248] + mem[_248 + mem[_248]] + 32 <= return_data.size
                    if 0 >= ext_call.return_data[0] - 1:
                    if 0 < mem[_248 + mem[_248]]:
                        if 0 >= mem[_248 + mem[_248]]:
                            revert with 'NH{q', 50
    revert with 'NH{q', 17
}



}
