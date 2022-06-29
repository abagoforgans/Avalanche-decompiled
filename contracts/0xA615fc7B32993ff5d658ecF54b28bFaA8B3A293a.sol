contract main {




// =====================  Runtime code  =====================


#
#  - sub_276f8dd4(?)
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

function sub_3ec6cb08(?) {
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
    if stor1[address(msg.sender)][1]:
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
    if ext_call.return_data[0] - 1 >= 39:
        revert with 0, 'NodeManagerV2: NOT ENOUGH NODES TO MIGRATE THIS TEIR'
    stor1[address(msg.sender)][1] = 1
    if var240001 >= 39:
    mem[(2 * ceil32(return_data.size)) + 224] = 0x334de3a200000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
    require ext_code.size(sub_85c2d7b2Address)
    staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224])) + 225 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224])) + 1 < 0:
        revert with 'NH{q', 65
    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224] + 32 <= return_data.size
    if var240001 > -2:
        revert with 'NH{q', 17
    # nil
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
        revert with 0, 'NodeManagerV2: NOT NODE OWNER'
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
    if ext_call.return_data[0] - 1 >= 99:
        revert with 0, 'NodeManagerV2: NOT ENOUGH NODES TO MIGRATE THIS TEIR'
    stor1[address(msg.sender)][4] = 1
    if var240001 >= 99:
    mem[(2 * ceil32(return_data.size)) + 224] = 0x334de3a200000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
    require ext_code.size(sub_85c2d7b2Address)
    staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224])) + 225 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224])) + 1 < 0:
        revert with 'NH{q', 65
    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224] + 32 <= return_data.size
    if var240001 > -2:
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
        revert with 0, 'NodeManagerV2: NOT NODE OWNER'
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
    if ext_call.return_data[0] - 1 >= 79:
        revert with 0, 'NodeManagerV2: NOT ENOUGH NODES TO MIGRATE THIS TEIR'
    stor1[address(msg.sender)][3] = 1
    if var240001 >= 79:
    mem[(2 * ceil32(return_data.size)) + 224] = 0x334de3a200000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
    require ext_code.size(sub_85c2d7b2Address)
    staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224])) + 225 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224])) + 1 < 0:
        revert with 'NH{q', 65
    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224] + 32 <= return_data.size
    if var240001 > -2:
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
        revert with 0, 'NodeManagerV2: NOT NODE OWNER'
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
    if ext_call.return_data[0] - 1 >= 59:
        revert with 0, 'NodeManagerV2: NOT ENOUGH NODES TO MIGRATE THIS TEIR'
    stor1[address(msg.sender)][2] = 1
    if var240001 >= 59:
    mem[(2 * ceil32(return_data.size)) + 224] = 0x334de3a200000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
    require ext_code.size(sub_85c2d7b2Address)
    staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224])) + 225 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224])) + 1 < 0:
        revert with 'NH{q', 65
    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224] + 32 <= return_data.size
    if var240001 > -2:
        revert with 'NH{q', 17
    # nil
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
        revert with 0, 'NodeManagerV2: NOT NODE OWNER'
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
        if ext_call.return_data[0] - 1 >= 19:
            revert with 0, 'NodeManagerV2: NOT ENOUGH NODES TO MIGRATE THIS TEIR'
        stor1[address(msg.sender)][0] = 1
        mem[(2 * ceil32(return_data.size)) + 224] = 0x334de3a200000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
        require ext_code.size(sub_85c2d7b2Address)
        staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224])) + 225 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224])) + 1 < 0:
            revert with 'NH{q', 65
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224] + 32 <= return_data.size
        if 0 < mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224]:
            if 0 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224]:
                revert with 'NH{q', 50
    revert with 'NH{q', 17
}

function sub_9bc7d477(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
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
        if ext_call.return_data[0] - 1 >= 19:
            revert with 0, 'NodeManagerV2: NOT ENOUGH NODES TO MIGRATE THIS TEIR'
        stor1[address(arg1)][0] = 1
        mem[(2 * ceil32(return_data.size)) + 224] = 0x334de3a200000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = address(arg1)
        require ext_code.size(sub_85c2d7b2Address)
        staticcall sub_85c2d7b2Address._getNodesNames(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], address(arg1) << 64 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], address(arg1) << 64 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], address(arg1) << 64 + 224] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], address(arg1) << 64 + 224])) + 225 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], address(arg1) << 64 + 224])) + 1 < 0:
            revert with 'NH{q', 65
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], address(arg1) << 64 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], address(arg1) << 64 + 224] + 32 <= return_data.size
        if 0 < mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], address(arg1) << 64 + 224]:
            if 0 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], address(arg1) << 64 + 224]:
                revert with 'NH{q', 50
    revert with 'NH{q', 17
}



}
