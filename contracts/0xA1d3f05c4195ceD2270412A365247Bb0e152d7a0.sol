contract main {




// =====================  Runtime code  =====================


#
#  - sub_63a574cc(?)
#
address stor0;
mapping of uint8 stor1;
address stor2;
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

function sub_67425d9f(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    if arg2 >= arg1.length:
        return 0
    if arg2 >= arg1.length:
        revert with 'NH{q', 50
    return arg2
}

function sub_79cd9055(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if 0 >= arg1.length:
        return 0
    if arg1.length >= 0:
        if 0 >= arg1.length:
            revert with 'NH{q', 50
    revert with 'NH{q', 17
}

function indexOf(string arg1, string arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307() or ceil32(ceil32(arg2.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if arg2.length != 1:
        revert with 'NH{q', 1
    if arg3 >= arg1.length:
        return 0
    if 0 >= arg2.length:
        revert with 'NH{q', 50
    if arg3 >= arg1.length:
        revert with 'NH{q', 50
    return arg3
}

function getSlice(uint256 arg1, uint256 arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[arg3.length + 128] = 0
    if arg2 < arg1:
        revert with 'NH{q', 17
    if arg2 - arg1 > -2:
        revert with 'NH{q', 17
    if arg2 + -arg1 + 1 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(ceil32(arg3.length)) + 97] = arg2 + -arg1 + 1
    if not arg2 + -arg1 + 1:
        if arg2 < arg1:
            revert with 'NH{q', 17
        if var104002 <= arg2 - arg1:
            if var116003 > -arg1 - 1:
                revert with 'NH{q', 17
            # nil
        else:
            mem[ceil32(ceil32(arg3.length)) + floor32(arg2 + -arg1 + 32) + 129] = 32
            mem[ceil32(ceil32(arg3.length)) + floor32(arg2 + -arg1 + 32) + 161] = arg2 + -arg1 + 1
            mem[ceil32(ceil32(arg3.length)) + floor32(arg2 + -arg1 + 32) + 193 len floor32(arg2 + -arg1 + 32)] = mem[ceil32(ceil32(arg3.length)) + 129 len floor32(arg2 + -arg1 + 32)]
            if floor32(arg2 + -arg1 + 32) > arg2 + -arg1 + 1:
                mem[ceil32(ceil32(arg3.length)) + floor32(arg2 + -arg1 + 32) + arg2 + -arg1 + 194] = 0
            return 32, mem[ceil32(ceil32(arg3.length)) + floor32(arg2 + -arg1 + 32) + 161 len (3 * floor32(arg2 + -arg1 + 32)) + 32]
    else:
        mem[ceil32(ceil32(arg3.length)) + 129 len arg2 + -arg1 + 1] = call.data[calldata.size len arg2 + -arg1 + 1]
        if arg2 < arg1:
            revert with 'NH{q', 17
        if var105002 <= arg2 - arg1:
            if var117003 > -arg1 - 1:
                revert with 'NH{q', 17
            # nil
        else:
            mem[ceil32(ceil32(arg3.length)) + floor32(arg2 + -arg1 + 32) + 129] = 32
            mem[ceil32(ceil32(arg3.length)) + floor32(arg2 + -arg1 + 32) + 161] = arg2 + -arg1 + 1
            mem[ceil32(ceil32(arg3.length)) + floor32(arg2 + -arg1 + 32) + 193 len floor32(arg2 + -arg1 + 32)] = mem[ceil32(ceil32(arg3.length)) + 129 len floor32(arg2 + -arg1 + 32)]
            if floor32(arg2 + -arg1 + 32) > arg2 + -arg1 + 1:
                mem[ceil32(ceil32(arg3.length)) + floor32(arg2 + -arg1 + 32) + arg2 + -arg1 + 194] = 0
            return 32, mem[ceil32(ceil32(arg3.length)) + floor32(arg2 + -arg1 + 32) + 161 len (3 * floor32(arg2 + -arg1 + 32)) + 32]
}

function sub_5ec782a2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if arg2 and 11 > -1 / arg2:
        revert with 'NH{q', 17
    if 11 * arg2 > -2:
        revert with 'NH{q', 17
    if arg2 and 11 > -1 / arg2:
        revert with 'NH{q', 17
    if 11 * arg2 > -11:
        revert with 'NH{q', 17
    mem[96] = 0xc92819ce00000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(stor2)
    staticcall stor2._getNodesCreationTime(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _17 = mem[64]
        mem[mem[64]] = 10
        mem[64] = mem[64] + 64
        mem[_17 + 32 len 10] = call.data[calldata.size len 10]
        if var153002 <= 9:
            if var165003 > (-11 * arg2) - 2:
                revert with 'NH{q', 17
            # nil
        else:
            mem[_17 + 64] = 32
            mem[_17 + 96] = mem[_17]
            mem[_17 + 128 len ceil32(mem[_17])] = mem[_17 + 32 len ceil32(mem[_17])]
            if ceil32(mem[_17]) > mem[_17]:
                mem[_17 + mem[_17] + 128] = 0
            return memory
              from mem[64]
               len _17 + ceil32(mem[_17]) + -mem[64] + 128
    else:
        mem[ceil32(return_data.size) + _5 + 128] = 0
        _18 = mem[64]
        mem[mem[64]] = 10
        mem[64] = mem[64] + 64
        mem[_18 + 32 len 10] = call.data[calldata.size len 10]
        if var154002 <= 9:
            if var166003 > (-11 * arg2) - 2:
                revert with 'NH{q', 17
            # nil
        else:
            mem[_18 + 64] = 32
            mem[_18 + 96] = mem[_18]
            mem[_18 + 128 len ceil32(mem[_18])] = mem[_18 + 32 len ceil32(mem[_18])]
            if ceil32(mem[_18]) > mem[_18]:
                mem[_18 + mem[_18] + 128] = 0
            return memory
              from mem[64]
               len _18 + ceil32(mem[_18]) + -mem[64] + 128
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

function migrate() {
    mem[100] = msg.sender
    require ext_code.size(stor2)
    staticcall stor2._isNodeOwner(address arg1) with:
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
    require ext_code.size(stor2)
    staticcall stor2._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 'NodeManagerV2: CLAIM REWARDS BEFORE MIGRATING'
    stor1[address(msg.sender)] = 1
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    require ext_code.size(stor2)
    staticcall stor2._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if var309001 >= ext_call.return_data[0]:
    mem[0] = msg.sender
    mem[32] = 7
    mem[(4 * ceil32(return_data.size)) + 224] = 0x334de3a200000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 228] = msg.sender
    require ext_code.size(stor2)
    staticcall stor2._getNodesNames(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224])) + 225 > test266151307() or ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224])) + 1 < 0:
        revert with 'NH{q', 65
    require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, msg.sender) >> 32 + 224] + 32 <= return_data.size
    if var309001 > -2:
        revert with 'NH{q', 17
    # nil
}

function sub_771f13dd(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    require arg2 == arg2
    require arg3 == arg3
    if arg2 > -2:
        revert with 'NH{q', 17
    if var99002 >= arg2 + 1:
        return Array(len=arg1.length, data=arg1[all])
    mem[64] = ceil32(ceil32(arg1.length)) + 161
    mem[ceil32(ceil32(arg1.length)) + 97] = 1
    mem[ceil32(ceil32(arg1.length)) + 129] = '#'
    if mem[var105002] != 1:
        revert with 'NH{q', 1
    if var109001 >= arg1.length:
        if arg3 < 1:
            revert with 'NH{q', 17
        if var109013 == arg3 - 1:
            if var109015 > -2:
                revert with 'NH{q', 17
            if arg1.length < var109015 + 1:
                revert with 'NH{q', 17
            if arg1.length + -var109015 - 1 > -2:
                revert with 'NH{q', 17
            if arg1.length - var109015 > test266151307():
                revert with 'NH{q', 65
            if arg1.length < var109015 + 1:
                revert with 'NH{q', 17
            # nil
        else:
            if var109013 != arg2:
                if var109013 == -1:
                    revert with 'NH{q', 17
                if arg2 > -2:
                    revert with 'NH{q', 17
                if var109013 >= arg2:
                    return Array(len=arg1.length, data=arg1[all])
                mem[64] = ceil32(ceil32(arg1.length)) + 225
                mem[ceil32(ceil32(arg1.length)) + 161] = 1
                mem[ceil32(ceil32(arg1.length)) + 193] = '#'
                var109001 = 1
                var109002 = ceil32(ceil32(arg1.length)) + 161
                var109005 = 1
                var109006 = ceil32(ceil32(arg1.length)) + 161
                var109010 = 1
                var109013 = var109013 + 1
                var109014 = 0
                var109015 = 1
                continue 
            if var109015 > -2:
                revert with 'NH{q', 17
            if 0 < var109015 + 1:
                revert with 'NH{q', 17
            if -var109015 - 1 > -2:
                revert with 'NH{q', 17
            if -var109015 > test266151307():
                revert with 'NH{q', 65
            if 0 < var109015 + 1:
                revert with 'NH{q', 17
            # nil
    else:
        if 0 >= mem[var109002]:
            revert with 'NH{q', 50
        if var109001 >= arg1.length:
            revert with 'NH{q', 50
        if arg3 < 1:
            revert with 'NH{q', 17
        if var109013 == arg3 - 1:
            if var109015 > -2:
                revert with 'NH{q', 17
            if arg1.length < var109015 + 1:
                revert with 'NH{q', 17
            if arg1.length + -var109015 - 1 > -2:
                revert with 'NH{q', 17
            if arg1.length - var109015 > test266151307():
                revert with 'NH{q', 65
            if arg1.length < var109015 + 1:
                revert with 'NH{q', 17
            # nil
        else:
            if var109013 == arg2:
                if var109015 > -2:
                    revert with 'NH{q', 17
                if var109001 < var109015 + 1:
                    revert with 'NH{q', 17
                if var109001 + -var109015 - 1 > -2:
                    revert with 'NH{q', 17
                if var109001 - var109015 > test266151307():
                    revert with 'NH{q', 65
                if var109001 < var109015 + 1:
                    revert with 'NH{q', 17
                # nil
            else:
                if var109001 > -2:
                    revert with 'NH{q', 17
                if var109013 == -1:
                    revert with 'NH{q', 17
                if arg2 > -2:
                    revert with 'NH{q', 17
                if var109013 >= arg2:
                    return Array(len=arg1.length, data=arg1[all])
                mem[64] = ceil32(ceil32(arg1.length)) + 225
                mem[ceil32(ceil32(arg1.length)) + 161] = 1
                mem[ceil32(ceil32(arg1.length)) + 193] = '#'
                var109001 = var109001 + 1
                var109002 = ceil32(ceil32(arg1.length)) + 161
                var109005 = var109001 + 1
                var109006 = ceil32(ceil32(arg1.length)) + 161
                var109010 = var109001 + 1
                var109013 = var109013 + 1
                var109014 = var109001
                var109015 = var109001 + 1
                continue 
}

function sub_d6a2d7b0(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = 0x334de3a200000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(stor2)
    staticcall stor2._getNodesNames(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        if arg2 > -2:
            revert with 'NH{q', 17
        if var126002 >= arg2 + 1:
            _1115 = mem[64]
            mem[mem[64]] = 32
            _1121 = mem[96 len 4], address(arg1) << 64
            mem[mem[64] + 32] = mem[96 len 4], address(arg1) << 64
            mem[mem[64] + 64 len ceil32(mem[96 len 4], address(arg1) << 64)] = mem[128 len ceil32(mem[96 len 4], address(arg1) << 64)]
            if ceil32(mem[96 len 4], address(arg1) << 64) <= mem[96 len 4], address(arg1) << 64:
                return memory
                  from mem[64]
                   len ceil32(mem[96 len 4], address(arg1) << 64) + 64
            mem[mem[64] + mem[96 len 4], address(arg1) << 64 + 64] = 0
            return memory
              from mem[64]
               len _1115 + ceil32(_1121) + -mem[64] + 64
        _1407 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1407] = 1
        mem[_1407 + 32] = '#'
        if mem[var132002] != 1:
            revert with 'NH{q', 1
        if var136001 >= _5:
            if arg3 < 1:
                revert with 'NH{q', 17
            if var136013 == arg3 - 1:
                if var136015 > -2:
                    revert with 'NH{q', 17
                if _5 < var136015 + 1:
                    revert with 'NH{q', 17
                if _5 + -var136015 - 1 > -2:
                    revert with 'NH{q', 17
                if _5 - var136015 > test266151307():
                    revert with 'NH{q', 65
                # nil
            else:
                if var136013 == arg2:
                    if var136015 > -2:
                        revert with 'NH{q', 17
                    if 0 < var136015 + 1:
                        revert with 'NH{q', 17
                    if -var136015 - 1 > -2:
                        revert with 'NH{q', 17
                    if -var136015 > test266151307():
                        revert with 'NH{q', 65
                    # nil
                else:
                    if var136013 == -1:
                        revert with 'NH{q', 17
                    if arg2 > -2:
                        revert with 'NH{q', 17
                    if var136013 < arg2:
                        _1957 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1957] = 1
                        mem[_1957 + 32] = '#'
                        var136001 = 1
                        var136002 = _1957
                        var136005 = 1
                        var136006 = _1957
                        var136010 = 1
                        var136013 = var136013 + 1
                        var136014 = 0
                        var136015 = 1
                        continue 
                    _1965 = mem[64]
                    mem[mem[64]] = 32
                    _1975 = mem[96 len 4], address(arg1) << 64
                    mem[mem[64] + 32] = mem[96 len 4], address(arg1) << 64
                    mem[mem[64] + 64 len ceil32(mem[96 len 4], address(arg1) << 64)] = mem[128 len ceil32(mem[96 len 4], address(arg1) << 64)]
                    if ceil32(mem[96 len 4], address(arg1) << 64) <= mem[96 len 4], address(arg1) << 64:
                        return memory
                          from mem[64]
                           len ceil32(mem[96 len 4], address(arg1) << 64) + 64
                    mem[mem[64] + mem[96 len 4], address(arg1) << 64 + 64] = 0
                    return memory
                      from mem[64]
                       len _1965 + ceil32(_1975) + -mem[64] + 64
        else:
            if 0 >= mem[var136002]:
                revert with 'NH{q', 50
            if var136001 >= _5:
                revert with 'NH{q', 50
            if arg3 < 1:
                revert with 'NH{q', 17
            if var136013 == arg3 - 1:
                if var136015 > -2:
                    revert with 'NH{q', 17
                if _5 < var136015 + 1:
                    revert with 'NH{q', 17
                if _5 + -var136015 - 1 > -2:
                    revert with 'NH{q', 17
                if _5 - var136015 > test266151307():
                    revert with 'NH{q', 65
                # nil
            else:
                if var136013 == arg2:
                    if var136015 > -2:
                        revert with 'NH{q', 17
                    if var136001 < var136015 + 1:
                        revert with 'NH{q', 17
                    if var136001 + -var136015 - 1 > -2:
                        revert with 'NH{q', 17
                    if var136001 - var136015 > test266151307():
                        revert with 'NH{q', 65
                    # nil
                else:
                    if var136001 > -2:
                        revert with 'NH{q', 17
                    if var136013 == -1:
                        revert with 'NH{q', 17
                    if arg2 > -2:
                        revert with 'NH{q', 17
                    if var136013 < arg2:
                        _1967 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1967] = 1
                        mem[_1967 + 32] = '#'
                        var136001 = var136001 + 1
                        var136002 = _1967
                        var136005 = var136001 + 1
                        var136006 = _1967
                        var136010 = var136001 + 1
                        var136013 = var136013 + 1
                        var136014 = var136001
                        var136015 = var136001 + 1
                        continue 
                    _1976 = mem[64]
                    mem[mem[64]] = 32
                    _1979 = mem[96 len 4], address(arg1) << 64
                    mem[mem[64] + 32] = mem[96 len 4], address(arg1) << 64
                    mem[mem[64] + 64 len ceil32(mem[96 len 4], address(arg1) << 64)] = mem[128 len ceil32(mem[96 len 4], address(arg1) << 64)]
                    if ceil32(mem[96 len 4], address(arg1) << 64) <= mem[96 len 4], address(arg1) << 64:
                        return memory
                          from mem[64]
                           len ceil32(mem[96 len 4], address(arg1) << 64) + 64
                    mem[mem[64] + mem[96 len 4], address(arg1) << 64 + 64] = 0
                    return memory
                      from mem[64]
                       len _1976 + ceil32(_1979) + -mem[64] + 64
    else:
        mem[ceil32(return_data.size) + _5 + 128] = 0
        if arg2 > -2:
            revert with 'NH{q', 17
        if var127002 >= arg2 + 1:
            _1116 = mem[64]
            mem[mem[64]] = 32
            _1124 = mem[96 len 4], address(arg1) << 64
            mem[mem[64] + 32] = mem[96 len 4], address(arg1) << 64
            mem[mem[64] + 64 len ceil32(mem[96 len 4], address(arg1) << 64)] = mem[128 len ceil32(mem[96 len 4], address(arg1) << 64)]
            if ceil32(mem[96 len 4], address(arg1) << 64) <= mem[96 len 4], address(arg1) << 64:
                return memory
                  from mem[64]
                   len ceil32(mem[96 len 4], address(arg1) << 64) + 64
            mem[mem[64] + mem[96 len 4], address(arg1) << 64 + 64] = 0
            return memory
              from mem[64]
               len _1116 + ceil32(_1124) + -mem[64] + 64
        _1408 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1408] = 1
        mem[_1408 + 32] = '#'
        if mem[var133002] != 1:
            revert with 'NH{q', 1
        if var137001 >= _5:
            if arg3 < 1:
                revert with 'NH{q', 17
            if var137013 == arg3 - 1:
                if var137015 > -2:
                    revert with 'NH{q', 17
                if _5 < var137015 + 1:
                    revert with 'NH{q', 17
                if _5 + -var137015 - 1 > -2:
                    revert with 'NH{q', 17
                if _5 - var137015 > test266151307():
                    revert with 'NH{q', 65
                # nil
            else:
                if var137013 == arg2:
                    if var137015 > -2:
                        revert with 'NH{q', 17
                    if 0 < var137015 + 1:
                        revert with 'NH{q', 17
                    if -var137015 - 1 > -2:
                        revert with 'NH{q', 17
                    if -var137015 > test266151307():
                        revert with 'NH{q', 65
                    # nil
                else:
                    if var137013 == -1:
                        revert with 'NH{q', 17
                    if arg2 > -2:
                        revert with 'NH{q', 17
                    if var137013 < arg2:
                        _1959 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1959] = 1
                        mem[_1959 + 32] = '#'
                        var137001 = 1
                        var137002 = _1959
                        var137005 = 1
                        var137006 = _1959
                        var137010 = 1
                        var137013 = var137013 + 1
                        var137014 = 0
                        var137015 = 1
                        continue 
                    _1966 = mem[64]
                    mem[mem[64]] = 32
                    _1977 = mem[96 len 4], address(arg1) << 64
                    mem[mem[64] + 32] = mem[96 len 4], address(arg1) << 64
                    mem[mem[64] + 64 len ceil32(mem[96 len 4], address(arg1) << 64)] = mem[128 len ceil32(mem[96 len 4], address(arg1) << 64)]
                    if ceil32(mem[96 len 4], address(arg1) << 64) <= mem[96 len 4], address(arg1) << 64:
                        return memory
                          from mem[64]
                           len ceil32(mem[96 len 4], address(arg1) << 64) + 64
                    mem[mem[64] + mem[96 len 4], address(arg1) << 64 + 64] = 0
                    return memory
                      from mem[64]
                       len _1966 + ceil32(_1977) + -mem[64] + 64
        else:
            if 0 >= mem[var137002]:
                revert with 'NH{q', 50
            if var137001 >= _5:
                revert with 'NH{q', 50
            if arg3 < 1:
                revert with 'NH{q', 17
            if var137013 == arg3 - 1:
                if var137015 > -2:
                    revert with 'NH{q', 17
                if _5 < var137015 + 1:
                    revert with 'NH{q', 17
                if _5 + -var137015 - 1 > -2:
                    revert with 'NH{q', 17
                if _5 - var137015 > test266151307():
                    revert with 'NH{q', 65
                # nil
            else:
                if var137013 == arg2:
                    if var137015 > -2:
                        revert with 'NH{q', 17
                    if var137001 < var137015 + 1:
                        revert with 'NH{q', 17
                    if var137001 + -var137015 - 1 > -2:
                        revert with 'NH{q', 17
                    if var137001 - var137015 > test266151307():
                        revert with 'NH{q', 65
                    # nil
                else:
                    if var137001 > -2:
                        revert with 'NH{q', 17
                    if var137013 == -1:
                        revert with 'NH{q', 17
                    if arg2 > -2:
                        revert with 'NH{q', 17
                    if var137013 < arg2:
                        _1969 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1969] = 1
                        mem[_1969 + 32] = '#'
                        var137001 = var137001 + 1
                        var137002 = _1969
                        var137005 = var137001 + 1
                        var137006 = _1969
                        var137010 = var137001 + 1
                        var137013 = var137013 + 1
                        var137014 = var137001
                        var137015 = var137001 + 1
                        continue 
                    _1978 = mem[64]
                    mem[mem[64]] = 32
                    _1980 = mem[96 len 4], address(arg1) << 64
                    mem[mem[64] + 32] = mem[96 len 4], address(arg1) << 64
                    mem[mem[64] + 64 len ceil32(mem[96 len 4], address(arg1) << 64)] = mem[128 len ceil32(mem[96 len 4], address(arg1) << 64)]
                    if ceil32(mem[96 len 4], address(arg1) << 64) <= mem[96 len 4], address(arg1) << 64:
                        return memory
                          from mem[64]
                           len ceil32(mem[96 len 4], address(arg1) << 64) + 64
                    mem[mem[64] + mem[96 len 4], address(arg1) << 64 + 64] = 0
                    return memory
                      from mem[64]
                       len _1978 + ceil32(_1980) + -mem[64] + 64
}



}
