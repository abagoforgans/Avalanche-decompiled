contract main {




// =====================  Runtime code  =====================


#
#  - sub_08372dc1(?)
#  - sub_1781d399(?)
#  - sub_276f8dd4(?)
#  - sub_3ec6cb08(?)
#  - sub_4c788bac(?)
#  - sub_7399ebcb(?)
#  - sub_9bc7d477(?)
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
    require arg2 < stor7[arg1].field_0
    if stor7[arg1][arg2].field_0:
        if stor7[arg1][arg2].field_0 == uint255(stor7[arg1][arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor7[arg1][arg2].field_0:
            if stor7[arg1][arg2].field_0 == uint255(stor7[arg1][arg2].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7[arg1][arg2].field_0):
                if 31 >= uint255(stor7[arg1][arg2].field_0) * 0.5:
                    mem[128] = 256 * stor7[arg1][arg2].field_8
                else:
                    mem[128] = stor7[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor7[arg1][arg2].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[arg1][(4 * arg2) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor7[arg1][arg2].field_0 == stor7[arg1][arg2].field_1 < 32:
                revert with 0, 34
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
        return Array(len=2 * Mask(256, -1, stor7[arg1][arg2].field_0), data=mem[128 len ceil32(uint255(stor7[arg1][arg2].field_0) * 0.5)]), 
               stor7[arg1][arg2].field_256,
               stor7[arg1][arg2].field_512,
               stor7[arg1][arg2].field_768
    if stor7[arg1][arg2].field_0 == stor7[arg1][arg2].field_1 < 32:
        revert with 0, 34
    if stor7[arg1][arg2].field_0:
        if stor7[arg1][arg2].field_0 == uint255(stor7[arg1][arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7[arg1][arg2].field_0):
            if 31 >= uint255(stor7[arg1][arg2].field_0) * 0.5:
                mem[128] = 256 * stor7[arg1][arg2].field_8
            else:
                mem[128] = stor7[arg1][arg2].field_0
                idx = 128
                s = 0
                while (uint255(stor7[arg1][arg2].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[arg1][(4 * arg2) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor7[arg1][arg2].field_0 == stor7[arg1][arg2].field_1 < 32:
            revert with 0, 34
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

function sub_44f1e900(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(ceil32(arg1.length)) + 161
    mem[ceil32(ceil32(arg1.length)) + 97] = 1
    mem[ceil32(ceil32(arg1.length)) + 129] = 0x2300000000000000000000000000000000000000000000000000000000000000
    if var40001 < 1:
        revert with 0, 17
    if var44003 >= var44001:
        if var44002 > test266151307():
            revert with 0, 65
        mem[ceil32(ceil32(arg1.length)) + 161] = var44002
        mem[64] = ceil32(ceil32(arg1.length)) + (32 * var44002) + 193
        if not var44002:
            if var61001 < 1:
                revert with 0, 17
            if var65003 >= var65001:
                mem[ceil32(ceil32(arg1.length)) + (32 * var44002) + 193] = 32
                mem[ceil32(ceil32(arg1.length)) + (32 * var44002) + 225] = var44002
                s = 0
                t = ceil32(ceil32(arg1.length)) + 193
                u = ceil32(ceil32(arg1.length)) + (32 * var44002) + 257
                v = ceil32(ceil32(arg1.length)) + (32 * var44002) + (32 * mem[ceil32(ceil32(arg1.length)) + 161]) + 257
                while s < var44002:
                    mem[u] = v + -ceil32(ceil32(arg1.length)) + -(32 * var44002) - 257
                    _1749 = mem[t]
                    _1752 = mem[mem[t]]
                    mem[v] = mem[mem[t]]
                    idx = 0
                    while idx < _1752:
                        mem[idx + v + 32] = mem[idx + _1749 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1752) > _1752:
                        mem[v + _1752 + 32] = 0
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    v = ceil32(_1752) + v + 32
                    continue 
                return memory
                  from mem[64]
                   len v - mem[64]
            if var73001 >= arg1.length:
                if arg1.length < var73011:
                    revert with 0, 17
                if arg1.length - var73011 > test266151307():
                    revert with 0, 65
                mem[ceil32(ceil32(arg1.length)) + (32 * var44002) + 193] = arg1.length - var73011
                mem[64] = ceil32(ceil32(arg1.length)) + (32 * var44002) + floor32(arg1.length + -var73011 + 31) + 225
                if not arg1.length - var73011:
                    idx = var73011
                    s = 0
                    while idx < arg1.length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if s == -1:
                            revert with 0, 17
                        if s >= mem[ceil32(ceil32(arg1.length)) + (32 * var44002) + 193]:
                            revert with 0, 50
                        mem[s + ceil32(ceil32(arg1.length)) + (32 * var44002) + 225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if 1 > !arg1.length:
                        revert with 0, 17
                    if var73010 == -1:
                        revert with 0, 17
                    if var73010 >= mem[ceil32(ceil32(arg1.length)) + 161]:
                        revert with 0, 50
                    mem[(32 * var73010) + ceil32(ceil32(arg1.length)) + 193] = ceil32(ceil32(arg1.length)) + (32 * var44002) + 193
                    if mem[96] < 1:
                        revert with 0, 17
                    if arg1.length + 1 < mem[96] - 1:
                        if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                            revert with 0, 1
                        var73001 = arg1.length + 1
                        var73005 = arg1.length + 1
                        var73010 = var73010 + 1
                        var73011 = arg1.length + 1
                        continue 
                    _3585 = mem[64]
                    mem[mem[64]] = 32
                    _3607 = mem[ceil32(ceil32(arg1.length)) + 161]
                    mem[mem[64] + 32] = mem[ceil32(ceil32(arg1.length)) + 161]
                    idx = 0
                    s = ceil32(ceil32(arg1.length)) + 193
                    t = mem[64] + 64
                    u = mem[64] + (32 * _3607) + 64
                    while idx < _3607:
                        mem[t] = u + -_3585 - 64
                        _4008 = mem[s]
                        _4030 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _4030:
                            mem[v + u + 32] = mem[v + _4008 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_4030) > _4030:
                            mem[u + _4030 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_4030) + u + 32
                        continue 
                else:
                    mem[ceil32(ceil32(arg1.length)) + (32 * var44002) + 225 len arg1.length - var73011] = call.data[calldata.size len arg1.length - var73011]
                    idx = var73011
                    s = 0
                    while idx < arg1.length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if s == -1:
                            revert with 0, 17
                        if s >= mem[ceil32(ceil32(arg1.length)) + (32 * var44002) + 193]:
                            revert with 0, 50
                        mem[s + ceil32(ceil32(arg1.length)) + (32 * var44002) + 225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if 1 > !arg1.length:
                        revert with 0, 17
                    if var73010 == -1:
                        revert with 0, 17
                    if var73010 >= mem[ceil32(ceil32(arg1.length)) + 161]:
                        revert with 0, 50
                    mem[(32 * var73010) + ceil32(ceil32(arg1.length)) + 193] = ceil32(ceil32(arg1.length)) + (32 * var44002) + 193
                    if mem[96] < 1:
                        revert with 0, 17
                    if arg1.length + 1 < mem[96] - 1:
                        if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                            revert with 0, 1
                        var73001 = arg1.length + 1
                        var73005 = arg1.length + 1
                        var73010 = var73010 + 1
                        var73011 = arg1.length + 1
                        continue 
                    _3586 = mem[64]
                    mem[mem[64]] = 32
                    _3608 = mem[ceil32(ceil32(arg1.length)) + 161]
                    mem[mem[64] + 32] = mem[ceil32(ceil32(arg1.length)) + 161]
                    idx = 0
                    s = ceil32(ceil32(arg1.length)) + 193
                    t = mem[64] + 64
                    u = mem[64] + (32 * _3608) + 64
                    while idx < _3608:
                        mem[t] = u + -_3586 - 64
                        _4009 = mem[s]
                        _4032 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _4032:
                            mem[v + u + 32] = mem[v + _4009 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_4032) > _4032:
                            mem[u + _4032 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_4032) + u + 32
                        continue 
            else:
                if var73001 >= arg1.length:
                    revert with 0, 50
                if Mask(8, 248, mem[var73001 + 128]):
                    if var73001 == -1:
                        revert with 0, 17
                    var73001 = var73001 + 1
                    var73005 = var73005
                    var73010 = var73010
                    var73011 = var73011
                    continue 
                if var73001 != -1:
                    if var73001 < var73011:
                        revert with 0, 17
                    if var73001 - var73011 > test266151307():
                        revert with 0, 65
                    mem[ceil32(ceil32(arg1.length)) + (32 * var44002) + 193] = var73001 - var73011
                    mem[64] = ceil32(ceil32(arg1.length)) + (32 * var44002) + floor32(var73001 + -var73011 + 31) + 225
                    if not var73001 - var73011:
                        s = var73011
                        t = 0
                        while s < var73001:
                            if s >= arg1.length:
                                revert with 0, 50
                            if t == -1:
                                revert with 0, 17
                            if t >= var73001 - var73011:
                                revert with 0, 50
                            mem[t + ceil32(ceil32(arg1.length)) + (32 * var44002) + 225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if 1 > !var73001:
                            revert with 0, 17
                        if var73010 == -1:
                            revert with 0, 17
                        if var73010 >= var44002:
                            revert with 0, 50
                        mem[(32 * var73010) + ceil32(ceil32(arg1.length)) + 193] = ceil32(ceil32(arg1.length)) + (32 * var44002) + 193
                        if arg1.length < 1:
                            revert with 0, 17
                        if var73001 + 1 < arg1.length - 1:
                            var73001 = var73001 + 1
                            var73005 = var73001 + 1
                            var73010 = var73010 + 1
                            var73011 = var73001 + 1
                            continue 
                        mem[ceil32(ceil32(arg1.length)) + (32 * var44002) + floor32(var73001 + -var73011 + 31) + 225] = 32
                        mem[ceil32(ceil32(arg1.length)) + (32 * var44002) + floor32(var73001 + -var73011 + 31) + 257] = var44002
                        s = 0
                        t = ceil32(ceil32(arg1.length)) + 193
                        u = mem[64] + 64
                        v = mem[64] + (32 * var44002) + 64
                        while s < var44002:
                            mem[u] = v + -ceil32(ceil32(arg1.length)) + -(32 * var44002) + -floor32(var73001 + -var73011 + 31) - 289
                            _4010 = mem[t]
                            _4034 = mem[mem[t]]
                            mem[v] = mem[mem[t]]
                            idx = 0
                            while idx < _4034:
                                mem[idx + v + 32] = mem[idx + _4010 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_4034) > _4034:
                                mem[v + _4034 + 32] = 0
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            v = ceil32(_4034) + v + 32
                            continue 
                    else:
                        mem[ceil32(ceil32(arg1.length)) + (32 * var44002) + 225 len var73001 - var73011] = call.data[calldata.size len var73001 - var73011]
                        s = var73011
                        t = 0
                        while s < var73001:
                            if s >= arg1.length:
                                revert with 0, 50
                            if t == -1:
                                revert with 0, 17
                            if t >= var73001 - var73011:
                                revert with 0, 50
                            mem[t + ceil32(ceil32(arg1.length)) + (32 * var44002) + 225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if 1 > !var73001:
                            revert with 0, 17
                        if var73010 == -1:
                            revert with 0, 17
                        if var73010 >= var44002:
                            revert with 0, 50
                        mem[(32 * var73010) + ceil32(ceil32(arg1.length)) + 193] = ceil32(ceil32(arg1.length)) + (32 * var44002) + 193
                        if arg1.length < 1:
                            revert with 0, 17
                        if var73001 + 1 < arg1.length - 1:
                            var73001 = var73001 + 1
                            var73005 = var73001 + 1
                            var73010 = var73010 + 1
                            var73011 = var73001 + 1
                            continue 
                        mem[ceil32(ceil32(arg1.length)) + (32 * var44002) + floor32(var73001 + -var73011 + 31) + 225] = 32
                        mem[ceil32(ceil32(arg1.length)) + (32 * var44002) + floor32(var73001 + -var73011 + 31) + 257] = var44002
                        s = 0
                        t = ceil32(ceil32(arg1.length)) + 193
                        u = mem[64] + 64
                        v = mem[64] + (32 * var44002) + 64
                        while s < var44002:
                            mem[u] = v + -ceil32(ceil32(arg1.length)) + -(32 * var44002) + -floor32(var73001 + -var73011 + 31) - 289
                            _4011 = mem[t]
                            _4036 = mem[mem[t]]
                            mem[v] = mem[mem[t]]
                            idx = 0
                            while idx < _4036:
                                mem[idx + v + 32] = mem[idx + _4011 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_4036) > _4036:
                                mem[v + _4036 + 32] = 0
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            v = ceil32(_4036) + v + 32
                            continue 
                    return memory
                      from mem[64]
                       len v - mem[64]
                if arg1.length < var73011:
                    revert with 0, 17
                if arg1.length - var73011 > test266151307():
                    revert with 0, 65
                mem[ceil32(ceil32(arg1.length)) + (32 * var44002) + 193] = arg1.length - var73011
                mem[64] = ceil32(ceil32(arg1.length)) + (32 * var44002) + floor32(arg1.length + -var73011 + 31) + 225
                if not arg1.length - var73011:
                    idx = var73011
                    s = 0
                    while idx < arg1.length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if s == -1:
                            revert with 0, 17
                        if s >= mem[ceil32(ceil32(arg1.length)) + (32 * var44002) + 193]:
                            revert with 0, 50
                        mem[s + ceil32(ceil32(arg1.length)) + (32 * var44002) + 225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if 1 > !arg1.length:
                        revert with 0, 17
                    if var73010 == -1:
                        revert with 0, 17
                    if var73010 >= mem[ceil32(ceil32(arg1.length)) + 161]:
                        revert with 0, 50
                    mem[(32 * var73010) + ceil32(ceil32(arg1.length)) + 193] = ceil32(ceil32(arg1.length)) + (32 * var44002) + 193
                    if mem[96] < 1:
                        revert with 0, 17
                    if arg1.length + 1 < mem[96] - 1:
                        if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                            revert with 0, 1
                        var73001 = arg1.length + 1
                        var73005 = arg1.length + 1
                        var73010 = var73010 + 1
                        var73011 = arg1.length + 1
                        continue 
                    _3589 = mem[64]
                    mem[mem[64]] = 32
                    _3611 = mem[ceil32(ceil32(arg1.length)) + 161]
                    mem[mem[64] + 32] = mem[ceil32(ceil32(arg1.length)) + 161]
                    idx = 0
                    s = ceil32(ceil32(arg1.length)) + 193
                    t = mem[64] + 64
                    u = mem[64] + (32 * _3611) + 64
                    while idx < _3611:
                        mem[t] = u + -_3589 - 64
                        _4012 = mem[s]
                        _4038 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _4038:
                            mem[v + u + 32] = mem[v + _4012 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_4038) > _4038:
                            mem[u + _4038 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_4038) + u + 32
                        continue 
                else:
                    mem[ceil32(ceil32(arg1.length)) + (32 * var44002) + 225 len arg1.length - var73011] = call.data[calldata.size len arg1.length - var73011]
                    idx = var73011
                    s = 0
                    while idx < arg1.length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if s == -1:
                            revert with 0, 17
                        if s >= mem[ceil32(ceil32(arg1.length)) + (32 * var44002) + 193]:
                            revert with 0, 50
                        mem[s + ceil32(ceil32(arg1.length)) + (32 * var44002) + 225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if 1 > !arg1.length:
                        revert with 0, 17
                    if var73010 == -1:
                        revert with 0, 17
                    if var73010 >= mem[ceil32(ceil32(arg1.length)) + 161]:
                        revert with 0, 50
                    mem[(32 * var73010) + ceil32(ceil32(arg1.length)) + 193] = ceil32(ceil32(arg1.length)) + (32 * var44002) + 193
                    if mem[96] < 1:
                        revert with 0, 17
                    if arg1.length + 1 < mem[96] - 1:
                        if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                            revert with 0, 1
                        var73001 = arg1.length + 1
                        var73005 = arg1.length + 1
                        var73010 = var73010 + 1
                        var73011 = arg1.length + 1
                        continue 
                    _3590 = mem[64]
                    mem[mem[64]] = 32
                    _3612 = mem[ceil32(ceil32(arg1.length)) + 161]
                    mem[mem[64] + 32] = mem[ceil32(ceil32(arg1.length)) + 161]
                    idx = 0
                    s = ceil32(ceil32(arg1.length)) + 193
                    t = mem[64] + 64
                    u = mem[64] + (32 * _3612) + 64
                    while idx < _3612:
                        mem[t] = u + -_3590 - 64
                        _4013 = mem[s]
                        _4040 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _4040:
                            mem[v + u + 32] = mem[v + _4013 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_4040) > _4040:
                            mem[u + _4040 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_4040) + u + 32
                        continue 
        else:
            mem[ceil32(ceil32(arg1.length)) + 193] = 96
            s = ceil32(ceil32(arg1.length)) + 193
            idx = var44002
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            if var65001 < 1:
                revert with 0, 17
            if var69003 >= var69001:
                _1759 = mem[64]
                mem[mem[64]] = 32
                _1764 = mem[ceil32(ceil32(arg1.length)) + 161]
                mem[mem[64] + 32] = mem[ceil32(ceil32(arg1.length)) + 161]
                idx = 0
                s = ceil32(ceil32(arg1.length)) + 193
                t = mem[64] + 64
                u = mem[64] + (32 * _1764) + 64
                while idx < _1764:
                    mem[t] = u + -_1759 - 64
                    _2097 = mem[s]
                    _2101 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _2101:
                        mem[v + u + 32] = mem[v + _2097 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2101) > _2101:
                        mem[u + _2101 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_2101) + u + 32
                    continue 
            else:
                if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                    revert with 0, 1
                if var77001 >= mem[96]:
                    _3456 = mem[96]
                    if mem[96] < var77011:
                        revert with 0, 17
                    if mem[96] - var77011 > test266151307():
                        revert with 0, 65
                    _3519 = mem[64]
                    mem[mem[64]] = mem[96] - var77011
                    mem[64] = mem[64] + floor32(_3456 + -var77011 + 31) + 32
                    if not _3456 - var77011:
                        idx = var77011
                        s = 0
                        while idx < _3456:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            if s >= mem[_3519]:
                                revert with 0, 50
                            mem[s + _3519 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if 1 > !_3456:
                            revert with 0, 17
                        if var77010 == -1:
                            revert with 0, 17
                        if var77010 >= mem[ceil32(ceil32(arg1.length)) + 161]:
                            revert with 0, 50
                        mem[(32 * var77010) + ceil32(ceil32(arg1.length)) + 193] = _3519
                        if mem[96] < 1:
                            revert with 0, 17
                        if _3456 + 1 < mem[96] - 1:
                            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                revert with 0, 1
                            var77001 = _3456 + 1
                            var77005 = _3456 + 1
                            var77010 = var77010 + 1
                            var77011 = _3456 + 1
                            continue 
                        _4167 = mem[64]
                        mem[mem[64]] = 32
                        _4179 = mem[ceil32(ceil32(arg1.length)) + 161]
                        mem[mem[64] + 32] = mem[ceil32(ceil32(arg1.length)) + 161]
                        idx = 0
                        s = ceil32(ceil32(arg1.length)) + 193
                        t = mem[64] + 64
                        u = mem[64] + (32 * _4179) + 64
                        while idx < _4179:
                            mem[t] = u + -_4167 - 64
                            _4572 = mem[s]
                            _4585 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            while v < _4585:
                                mem[v + u + 32] = mem[v + _4572 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_4585) > _4585:
                                mem[u + _4585 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_4585) + u + 32
                            continue 
                    else:
                        mem[_3519 + 32 len _3456 - var77011] = call.data[calldata.size len _3456 - var77011]
                        idx = var77011
                        s = 0
                        while idx < _3456:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            if s >= mem[_3519]:
                                revert with 0, 50
                            mem[s + _3519 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if 1 > !_3456:
                            revert with 0, 17
                        if var77010 == -1:
                            revert with 0, 17
                        if var77010 >= mem[ceil32(ceil32(arg1.length)) + 161]:
                            revert with 0, 50
                        mem[(32 * var77010) + ceil32(ceil32(arg1.length)) + 193] = _3519
                        if mem[96] < 1:
                            revert with 0, 17
                        if _3456 + 1 < mem[96] - 1:
                            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                revert with 0, 1
                            var77001 = _3456 + 1
                            var77005 = _3456 + 1
                            var77010 = var77010 + 1
                            var77011 = _3456 + 1
                            continue 
                        _4168 = mem[64]
                        mem[mem[64]] = 32
                        _4180 = mem[ceil32(ceil32(arg1.length)) + 161]
                        mem[mem[64] + 32] = mem[ceil32(ceil32(arg1.length)) + 161]
                        idx = 0
                        s = ceil32(ceil32(arg1.length)) + 193
                        t = mem[64] + 64
                        u = mem[64] + (32 * _4180) + 64
                        while idx < _4180:
                            mem[t] = u + -_4168 - 64
                            _4573 = mem[s]
                            _4587 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            while v < _4587:
                                mem[v + u + 32] = mem[v + _4573 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_4587) > _4587:
                                mem[u + _4587 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_4587) + u + 32
                            continue 
                else:
                    if 0 >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    if var77001 >= mem[96]:
                        revert with 0, 50
                    if Mask(8, 248, mem[var77001 + 128]):
                        if var77001 == -1:
                            revert with 0, 17
                        var77001 = var77001 + 1
                        var77005 = var77005
                        var77010 = var77010
                        var77011 = var77011
                        continue 
                    if var77001 != -1:
                        if var77001 < var77011:
                            revert with 0, 17
                        if var77001 - var77011 > test266151307():
                            revert with 0, 65
                        _3536 = mem[64]
                        mem[mem[64]] = var77001 - var77011
                        mem[64] = mem[64] + floor32(var77001 + -var77011 + 31) + 32
                        if not var77001 - var77011:
                            s = var77011
                            t = 0
                            while s < var77001:
                                if s >= mem[96]:
                                    revert with 0, 50
                                if t == -1:
                                    revert with 0, 17
                                if t >= mem[_3536]:
                                    revert with 0, 50
                                mem[t + _3536 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + 1
                                continue 
                            if 1 > !var77001:
                                revert with 0, 17
                            if var77010 == -1:
                                revert with 0, 17
                            if var77010 >= mem[ceil32(ceil32(arg1.length)) + 161]:
                                revert with 0, 50
                            mem[(32 * var77010) + ceil32(ceil32(arg1.length)) + 193] = _3536
                            if mem[96] < 1:
                                revert with 0, 17
                            if var77001 + 1 < mem[96] - 1:
                                if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                    revert with 0, 1
                                var77001 = var77001 + 1
                                var77005 = var77001 + 1
                                var77010 = var77010 + 1
                                var77011 = var77001 + 1
                                continue 
                            _4169 = mem[64]
                            mem[mem[64]] = 32
                            _4181 = mem[ceil32(ceil32(arg1.length)) + 161]
                            mem[mem[64] + 32] = mem[ceil32(ceil32(arg1.length)) + 161]
                            idx = 0
                            s = ceil32(ceil32(arg1.length)) + 193
                            t = mem[64] + 64
                            u = mem[64] + (32 * _4181) + 64
                            while idx < _4181:
                                mem[t] = u + -_4169 - 64
                                _4574 = mem[s]
                                _4589 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _4589:
                                    mem[v + u + 32] = mem[v + _4574 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_4589) > _4589:
                                    mem[u + _4589 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_4589) + u + 32
                                continue 
                        else:
                            mem[_3536 + 32 len var77001 - var77011] = call.data[calldata.size len var77001 - var77011]
                            s = var77011
                            t = 0
                            while s < var77001:
                                if s >= mem[96]:
                                    revert with 0, 50
                                if t == -1:
                                    revert with 0, 17
                                if t >= mem[_3536]:
                                    revert with 0, 50
                                mem[t + _3536 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + 1
                                continue 
                            if 1 > !var77001:
                                revert with 0, 17
                            if var77010 == -1:
                                revert with 0, 17
                            if var77010 >= mem[ceil32(ceil32(arg1.length)) + 161]:
                                revert with 0, 50
                            mem[(32 * var77010) + ceil32(ceil32(arg1.length)) + 193] = _3536
                            if mem[96] < 1:
                                revert with 0, 17
                            if var77001 + 1 < mem[96] - 1:
                                if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                    revert with 0, 1
                                var77001 = var77001 + 1
                                var77005 = var77001 + 1
                                var77010 = var77010 + 1
                                var77011 = var77001 + 1
                                continue 
                            _4170 = mem[64]
                            mem[mem[64]] = 32
                            _4182 = mem[ceil32(ceil32(arg1.length)) + 161]
                            mem[mem[64] + 32] = mem[ceil32(ceil32(arg1.length)) + 161]
                            idx = 0
                            s = ceil32(ceil32(arg1.length)) + 193
                            t = mem[64] + 64
                            u = mem[64] + (32 * _4182) + 64
                            while idx < _4182:
                                mem[t] = u + -_4170 - 64
                                _4575 = mem[s]
                                _4591 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _4591:
                                    mem[v + u + 32] = mem[v + _4575 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_4591) > _4591:
                                    mem[u + _4591 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_4591) + u + 32
                                continue 
                    else:
                        _3509 = mem[96]
                        if mem[96] < var77011:
                            revert with 0, 17
                        if mem[96] - var77011 > test266151307():
                            revert with 0, 65
                        _3548 = mem[64]
                        mem[mem[64]] = mem[96] - var77011
                        mem[64] = mem[64] + floor32(_3509 + -var77011 + 31) + 32
                        if not _3509 - var77011:
                            idx = var77011
                            s = 0
                            while idx < _3509:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if s == -1:
                                    revert with 0, 17
                                if s >= mem[_3548]:
                                    revert with 0, 50
                                mem[s + _3548 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + 1
                                continue 
                            if 1 > !_3509:
                                revert with 0, 17
                            if var77010 == -1:
                                revert with 0, 17
                            if var77010 >= mem[ceil32(ceil32(arg1.length)) + 161]:
                                revert with 0, 50
                            mem[(32 * var77010) + ceil32(ceil32(arg1.length)) + 193] = _3548
                            if mem[96] < 1:
                                revert with 0, 17
                            if _3509 + 1 < mem[96] - 1:
                                if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                    revert with 0, 1
                                var77001 = _3509 + 1
                                var77005 = _3509 + 1
                                var77010 = var77010 + 1
                                var77011 = _3509 + 1
                                continue 
                            _4171 = mem[64]
                            mem[mem[64]] = 32
                            _4183 = mem[ceil32(ceil32(arg1.length)) + 161]
                            mem[mem[64] + 32] = mem[ceil32(ceil32(arg1.length)) + 161]
                            idx = 0
                            s = ceil32(ceil32(arg1.length)) + 193
                            t = mem[64] + 64
                            u = mem[64] + (32 * _4183) + 64
                            while idx < _4183:
                                mem[t] = u + -_4171 - 64
                                _4576 = mem[s]
                                _4593 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _4593:
                                    mem[v + u + 32] = mem[v + _4576 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_4593) > _4593:
                                    mem[u + _4593 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_4593) + u + 32
                                continue 
                        else:
                            mem[_3548 + 32 len _3509 - var77011] = call.data[calldata.size len _3509 - var77011]
                            idx = var77011
                            s = 0
                            while idx < _3509:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if s == -1:
                                    revert with 0, 17
                                if s >= mem[_3548]:
                                    revert with 0, 50
                                mem[s + _3548 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + 1
                                continue 
                            if 1 > !_3509:
                                revert with 0, 17
                            if var77010 == -1:
                                revert with 0, 17
                            if var77010 >= mem[ceil32(ceil32(arg1.length)) + 161]:
                                revert with 0, 50
                            mem[(32 * var77010) + ceil32(ceil32(arg1.length)) + 193] = _3548
                            if mem[96] < 1:
                                revert with 0, 17
                            if _3509 + 1 < mem[96] - 1:
                                if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                    revert with 0, 1
                                var77001 = _3509 + 1
                                var77005 = _3509 + 1
                                var77010 = var77010 + 1
                                var77011 = _3509 + 1
                                continue 
                            _4172 = mem[64]
                            mem[mem[64]] = 32
                            _4184 = mem[ceil32(ceil32(arg1.length)) + 161]
                            mem[mem[64] + 32] = mem[ceil32(ceil32(arg1.length)) + 161]
                            idx = 0
                            s = ceil32(ceil32(arg1.length)) + 193
                            t = mem[64] + 64
                            u = mem[64] + (32 * _4184) + 64
                            while idx < _4184:
                                mem[t] = u + -_4172 - 64
                                _4577 = mem[s]
                                _4595 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _4595:
                                    mem[v + u + 32] = mem[v + _4577 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_4595) > _4595:
                                    mem[u + _4595 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_4595) + u + 32
                                continue 
        return memory
          from mem[64]
           len u - mem[64]
    idx = var50004
    s = var50004
    t = var50009
    u = var50010
    while idx < arg1.length:
        if 0 >= mem[ceil32(ceil32(arg1.length)) + 97]:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        if -1 == idx:
            if t > test266151307():
                revert with 0, 65
            _1503 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + (32 * t) + 32
            if not t:
                if var76001 < 1:
                    revert with 0, 17
                if var80003 >= var80001:
                    mem[_1503 + (32 * t) + 32] = 32
                    _2951 = mem[_1503]
                    mem[_1503 + (32 * t) + 64] = mem[_1503]
                    idx = 0
                    s = _1503 + 32
                    u = _1503 + (32 * t) + 96
                    v = _1503 + (32 * t) + (32 * mem[_1503]) + 96
                    while idx < _2951:
                        mem[u] = v + -_1503 + -(32 * t) - 96
                        _3437 = mem[s]
                        _3454 = mem[mem[s]]
                        mem[v] = mem[mem[s]]
                        t = 0
                        while t < _3454:
                            mem[t + v + 32] = mem[t + _3437 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_3454) > _3454:
                            mem[v + _3454 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        v = ceil32(_3454) + v + 32
                        continue 
                    return memory
                      from mem[64]
                       len v - mem[64]
                if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                    revert with 0, 1
                if var88001 >= mem[96]:
                    _5123 = mem[96]
                    if mem[96] < var88011:
                        revert with 0, 17
                    if mem[96] - var88011 > test266151307():
                        revert with 0, 65
                    mem[_1503 + (32 * t) + 32] = mem[96] - var88011
                    mem[64] = _1503 + (32 * t) + floor32(_5123 + -var88011 + 31) + 64
                    if not _5123 - var88011:
                        idx = var88011
                        s = 0
                        while idx < _5123:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            if s >= mem[_1503 + (32 * t) + 32]:
                                revert with 0, 50
                            mem[s + _1503 + (32 * t) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if 1 > !_5123:
                            revert with 0, 17
                        if var88010 == -1:
                            revert with 0, 17
                        if var88010 >= mem[_1503]:
                            revert with 0, 50
                        mem[(32 * var88010) + _1503 + 32] = _1503 + (32 * t) + 32
                        if mem[96] < 1:
                            revert with 0, 17
                        if _5123 + 1 < mem[96] - 1:
                            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                revert with 0, 1
                            var88001 = _5123 + 1
                            var88005 = _5123 + 1
                            var88010 = var88010 + 1
                            var88011 = _5123 + 1
                            continue 
                        _5774 = mem[64]
                        mem[mem[64]] = 32
                        _5800 = mem[_1503]
                        mem[mem[64] + 32] = mem[_1503]
                        idx = 0
                        s = _1503 + 32
                        t = mem[64] + 64
                        u = mem[64] + (32 * _5800) + 64
                        while idx < _5800:
                            mem[t] = u + -_5774 - 64
                            _6075 = mem[s]
                            _6124 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            while v < _6124:
                                mem[v + u + 32] = mem[v + _6075 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_6124) > _6124:
                                mem[u + _6124 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_6124) + u + 32
                            continue 
                    else:
                        mem[_1503 + (32 * t) + 64 len _5123 - var88011] = call.data[calldata.size len _5123 - var88011]
                        idx = var88011
                        s = 0
                        while idx < _5123:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            if s >= mem[_1503 + (32 * t) + 32]:
                                revert with 0, 50
                            mem[s + _1503 + (32 * t) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if 1 > !_5123:
                            revert with 0, 17
                        if var88010 == -1:
                            revert with 0, 17
                        if var88010 >= mem[_1503]:
                            revert with 0, 50
                        mem[(32 * var88010) + _1503 + 32] = _1503 + (32 * t) + 32
                        if mem[96] < 1:
                            revert with 0, 17
                        if _5123 + 1 < mem[96] - 1:
                            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                revert with 0, 1
                            var88001 = _5123 + 1
                            var88005 = _5123 + 1
                            var88010 = var88010 + 1
                            var88011 = _5123 + 1
                            continue 
                        _5775 = mem[64]
                        mem[mem[64]] = 32
                        _5801 = mem[_1503]
                        mem[mem[64] + 32] = mem[_1503]
                        idx = 0
                        s = _1503 + 32
                        t = mem[64] + 64
                        u = mem[64] + (32 * _5801) + 64
                        while idx < _5801:
                            mem[t] = u + -_5775 - 64
                            _6076 = mem[s]
                            _6126 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            while v < _6126:
                                mem[v + u + 32] = mem[v + _6076 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_6126) > _6126:
                                mem[u + _6126 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_6126) + u + 32
                            continue 
                else:
                    if 0 >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    if var88001 >= mem[96]:
                        revert with 0, 50
                    if Mask(8, 248, mem[var88001 + 128]):
                        if var88001 == -1:
                            revert with 0, 17
                        var88001 = var88001 + 1
                        var88005 = var88005
                        var88010 = var88010
                        var88011 = var88011
                        continue 
                    if var88001 != -1:
                        if var88001 < var88011:
                            revert with 0, 17
                        if var88001 - var88011 > test266151307():
                            revert with 0, 65
                        mem[_1503 + (32 * t) + 32] = var88001 - var88011
                        mem[64] = _1503 + (32 * t) + floor32(var88001 + -var88011 + 31) + 64
                        if not var88001 - var88011:
                            s = var88011
                            u = 0
                            while s < var88001:
                                if s >= mem[96]:
                                    revert with 0, 50
                                if u == -1:
                                    revert with 0, 17
                                if u >= var88001 - var88011:
                                    revert with 0, 50
                                mem[u + _1503 + (32 * t) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                u = u + 1
                                continue 
                            if 1 > !var88001:
                                revert with 0, 17
                            if var88010 == -1:
                                revert with 0, 17
                            if var88010 >= mem[_1503]:
                                revert with 0, 50
                            mem[(32 * var88010) + _1503 + 32] = _1503 + (32 * t) + 32
                            if mem[96] < 1:
                                revert with 0, 17
                            if var88001 + 1 < mem[96] - 1:
                                if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                    revert with 0, 1
                                var88001 = var88001 + 1
                                var88005 = var88001 + 1
                                var88010 = var88010 + 1
                                var88011 = var88001 + 1
                                continue 
                            _5776 = mem[64]
                            mem[mem[64]] = 32
                            _5802 = mem[_1503]
                            mem[mem[64] + 32] = mem[_1503]
                            idx = 0
                            s = _1503 + 32
                            t = mem[64] + 64
                            u = mem[64] + (32 * _5802) + 64
                            while idx < _5802:
                                mem[t] = u + -_5776 - 64
                                _6077 = mem[s]
                                _6128 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _6128:
                                    mem[v + u + 32] = mem[v + _6077 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_6128) > _6128:
                                    mem[u + _6128 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_6128) + u + 32
                                continue 
                        else:
                            mem[_1503 + (32 * t) + 64 len var88001 - var88011] = call.data[calldata.size len var88001 - var88011]
                            s = var88011
                            u = 0
                            while s < var88001:
                                if s >= mem[96]:
                                    revert with 0, 50
                                if u == -1:
                                    revert with 0, 17
                                if u >= var88001 - var88011:
                                    revert with 0, 50
                                mem[u + _1503 + (32 * t) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                u = u + 1
                                continue 
                            if 1 > !var88001:
                                revert with 0, 17
                            if var88010 == -1:
                                revert with 0, 17
                            if var88010 >= mem[_1503]:
                                revert with 0, 50
                            mem[(32 * var88010) + _1503 + 32] = _1503 + (32 * t) + 32
                            if mem[96] < 1:
                                revert with 0, 17
                            if var88001 + 1 < mem[96] - 1:
                                if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                    revert with 0, 1
                                var88001 = var88001 + 1
                                var88005 = var88001 + 1
                                var88010 = var88010 + 1
                                var88011 = var88001 + 1
                                continue 
                            _5777 = mem[64]
                            mem[mem[64]] = 32
                            _5803 = mem[_1503]
                            mem[mem[64] + 32] = mem[_1503]
                            idx = 0
                            s = _1503 + 32
                            t = mem[64] + 64
                            u = mem[64] + (32 * _5803) + 64
                            while idx < _5803:
                                mem[t] = u + -_5777 - 64
                                _6078 = mem[s]
                                _6130 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _6130:
                                    mem[v + u + 32] = mem[v + _6078 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_6130) > _6130:
                                    mem[u + _6130 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_6130) + u + 32
                                continue 
                    else:
                        _5135 = mem[96]
                        if mem[96] < var88011:
                            revert with 0, 17
                        if mem[96] - var88011 > test266151307():
                            revert with 0, 65
                        mem[_1503 + (32 * t) + 32] = mem[96] - var88011
                        mem[64] = _1503 + (32 * t) + floor32(_5135 + -var88011 + 31) + 64
                        if not _5135 - var88011:
                            idx = var88011
                            s = 0
                            while idx < _5135:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if s == -1:
                                    revert with 0, 17
                                if s >= mem[_1503 + (32 * t) + 32]:
                                    revert with 0, 50
                                mem[s + _1503 + (32 * t) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + 1
                                continue 
                            if 1 > !_5135:
                                revert with 0, 17
                            if var88010 == -1:
                                revert with 0, 17
                            if var88010 >= mem[_1503]:
                                revert with 0, 50
                            mem[(32 * var88010) + _1503 + 32] = _1503 + (32 * t) + 32
                            if mem[96] < 1:
                                revert with 0, 17
                            if _5135 + 1 < mem[96] - 1:
                                if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                    revert with 0, 1
                                var88001 = _5135 + 1
                                var88005 = _5135 + 1
                                var88010 = var88010 + 1
                                var88011 = _5135 + 1
                                continue 
                            _5778 = mem[64]
                            mem[mem[64]] = 32
                            _5804 = mem[_1503]
                            mem[mem[64] + 32] = mem[_1503]
                            idx = 0
                            s = _1503 + 32
                            t = mem[64] + 64
                            u = mem[64] + (32 * _5804) + 64
                            while idx < _5804:
                                mem[t] = u + -_5778 - 64
                                _6079 = mem[s]
                                _6132 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _6132:
                                    mem[v + u + 32] = mem[v + _6079 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_6132) > _6132:
                                    mem[u + _6132 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_6132) + u + 32
                                continue 
                        else:
                            mem[_1503 + (32 * t) + 64 len _5135 - var88011] = call.data[calldata.size len _5135 - var88011]
                            idx = var88011
                            s = 0
                            while idx < _5135:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if s == -1:
                                    revert with 0, 17
                                if s >= mem[_1503 + (32 * t) + 32]:
                                    revert with 0, 50
                                mem[s + _1503 + (32 * t) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + 1
                                continue 
                            if 1 > !_5135:
                                revert with 0, 17
                            if var88010 == -1:
                                revert with 0, 17
                            if var88010 >= mem[_1503]:
                                revert with 0, 50
                            mem[(32 * var88010) + _1503 + 32] = _1503 + (32 * t) + 32
                            if mem[96] < 1:
                                revert with 0, 17
                            if _5135 + 1 < mem[96] - 1:
                                if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                    revert with 0, 1
                                var88001 = _5135 + 1
                                var88005 = _5135 + 1
                                var88010 = var88010 + 1
                                var88011 = _5135 + 1
                                continue 
                            _5779 = mem[64]
                            mem[mem[64]] = 32
                            _5805 = mem[_1503]
                            mem[mem[64] + 32] = mem[_1503]
                            idx = 0
                            s = _1503 + 32
                            t = mem[64] + 64
                            u = mem[64] + (32 * _5805) + 64
                            while idx < _5805:
                                mem[t] = u + -_5779 - 64
                                _6080 = mem[s]
                                _6134 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _6134:
                                    mem[v + u + 32] = mem[v + _6080 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_6134) > _6134:
                                    mem[u + _6134 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_6134) + u + 32
                                continue 
                return memory
                  from mem[64]
                   len u - mem[64]
            mem[_1503 + 32] = 96
            s = _1503 + 32
            idx = t
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            if var80001 < 1:
                revert with 0, 17
            if var84003 >= var84001:
                _3468 = mem[64]
                mem[mem[64]] = 32
                _3489 = mem[_1503]
                mem[mem[64] + 32] = mem[_1503]
                idx = 0
                s = _1503 + 32
                t = mem[64] + 64
                u = mem[64] + (32 * _3489) + 64
                while idx < _3489:
                    mem[t] = u + -_3468 - 64
                    _4027 = mem[s]
                    _4055 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _4055:
                        mem[v + u + 32] = mem[v + _4027 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_4055) > _4055:
                        mem[u + _4055 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_4055) + u + 32
                    continue 
                return memory
                  from mem[64]
                   len u - mem[64]
            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                revert with 0, 1
            if var92001 >= mem[96]:
                _5641 = mem[96]
                if mem[96] < var92011:
                    revert with 0, 17
                if mem[96] - var92011 > test266151307():
                    revert with 0, 65
                _5684 = mem[64]
                mem[mem[64]] = mem[96] - var92011
                mem[64] = mem[64] + floor32(_5641 + -var92011 + 31) + 32
                if not _5641 - var92011:
                    idx = var92011
                    s = 0
                    while idx < _5641:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if s == -1:
                            revert with 0, 17
                        if s >= mem[_5684]:
                            revert with 0, 50
                        mem[s + _5684 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if 1 > !_5641:
                        revert with 0, 17
                    if var92010 == -1:
                        revert with 0, 17
                    if var92010 >= mem[_1503]:
                        revert with 0, 50
                    mem[(32 * var92010) + _1503 + 32] = _5684
                    if mem[96] < 1:
                        revert with 0, 17
                    if _5641 + 1 < mem[96] - 1:
                        if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                            revert with 0, 1
                        var92001 = _5641 + 1
                        var92005 = _5641 + 1
                        var92010 = var92010 + 1
                        var92011 = _5641 + 1
                        continue 
                    mem[mem[64]] = 32
                    _6261 = mem[_1503]
                    mem[mem[64] + 32] = mem[_1503]
                    if var101001 >= _6261:
                        return memory
                          from mem[64]
                           len var101005 - mem[64]
                    # nil
                else:
                    mem[_5684 + 32 len _5641 - var92011] = call.data[calldata.size len _5641 - var92011]
                    idx = var92011
                    s = 0
                    while idx < _5641:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if s == -1:
                            revert with 0, 17
                        if s >= mem[_5684]:
                            revert with 0, 50
                        mem[s + _5684 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if 1 > !_5641:
                        revert with 0, 17
                    if var92010 == -1:
                        revert with 0, 17
                    if var92010 >= mem[_1503]:
                        revert with 0, 50
                    mem[(32 * var92010) + _1503 + 32] = _5684
                    if mem[96] < 1:
                        revert with 0, 17
                    if _5641 + 1 < mem[96] - 1:
                        if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                            revert with 0, 1
                        var92001 = _5641 + 1
                        var92005 = _5641 + 1
                        var92010 = var92010 + 1
                        var92011 = _5641 + 1
                        continue 
                    mem[mem[64]] = 32
                    _6262 = mem[_1503]
                    mem[mem[64] + 32] = mem[_1503]
                    if var102001 >= _6262:
                        return memory
                          from mem[64]
                           len var102005 - mem[64]
                    # nil
            else:
                if 0 >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                if var92001 >= mem[96]:
                    revert with 0, 50
                if Mask(8, 248, mem[var92001 + 128]):
                    if var92001 == -1:
                        revert with 0, 17
                    var92001 = var92001 + 1
                    var92005 = var92005
                    var92010 = var92010
                    var92011 = var92011
                    continue 
                if var92001 != -1:
                    if var92001 < var92011:
                        revert with 0, 17
                    if var92001 - var92011 > test266151307():
                        revert with 0, 65
                    _5708 = mem[64]
                    mem[mem[64]] = var92001 - var92011
                    mem[64] = mem[64] + floor32(var92001 + -var92011 + 31) + 32
                    if not var92001 - var92011:
                        s = var92011
                        t = 0
                        while s < var92001:
                            if s >= mem[96]:
                                revert with 0, 50
                            if t == -1:
                                revert with 0, 17
                            if t >= mem[_5708]:
                                revert with 0, 50
                            mem[t + _5708 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if 1 > !var92001:
                            revert with 0, 17
                        if var92010 == -1:
                            revert with 0, 17
                        if var92010 >= mem[_1503]:
                            revert with 0, 50
                        mem[(32 * var92010) + _1503 + 32] = _5708
                        if mem[96] < 1:
                            revert with 0, 17
                        if var92001 + 1 < mem[96] - 1:
                            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                revert with 0, 1
                            var92001 = var92001 + 1
                            var92005 = var92001 + 1
                            var92010 = var92010 + 1
                            var92011 = var92001 + 1
                            continue 
                        mem[mem[64]] = 32
                        _6263 = mem[_1503]
                        mem[mem[64] + 32] = mem[_1503]
                        if var104001 >= _6263:
                            return memory
                              from mem[64]
                               len var104005 - mem[64]
                        # nil
                    else:
                        mem[_5708 + 32 len var92001 - var92011] = call.data[calldata.size len var92001 - var92011]
                        s = var92011
                        t = 0
                        while s < var92001:
                            if s >= mem[96]:
                                revert with 0, 50
                            if t == -1:
                                revert with 0, 17
                            if t >= mem[_5708]:
                                revert with 0, 50
                            mem[t + _5708 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if 1 > !var92001:
                            revert with 0, 17
                        if var92010 == -1:
                            revert with 0, 17
                        if var92010 >= mem[_1503]:
                            revert with 0, 50
                        mem[(32 * var92010) + _1503 + 32] = _5708
                        if mem[96] < 1:
                            revert with 0, 17
                        if var92001 + 1 < mem[96] - 1:
                            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                revert with 0, 1
                            var92001 = var92001 + 1
                            var92005 = var92001 + 1
                            var92010 = var92010 + 1
                            var92011 = var92001 + 1
                            continue 
                        mem[mem[64]] = 32
                        _6264 = mem[_1503]
                        mem[mem[64] + 32] = mem[_1503]
                        if var105001 >= _6264:
                            return memory
                              from mem[64]
                               len var105005 - mem[64]
                        # nil
                else:
                    _5681 = mem[96]
                    if mem[96] < var92011:
                        revert with 0, 17
                    if mem[96] - var92011 > test266151307():
                        revert with 0, 65
                    _5717 = mem[64]
                    mem[mem[64]] = mem[96] - var92011
                    mem[64] = mem[64] + floor32(_5681 + -var92011 + 31) + 32
                    if not _5681 - var92011:
                        idx = var92011
                        s = 0
                        while idx < _5681:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            if s >= mem[_5717]:
                                revert with 0, 50
                            mem[s + _5717 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if 1 > !_5681:
                            revert with 0, 17
                        if var92010 == -1:
                            revert with 0, 17
                        if var92010 >= mem[_1503]:
                            revert with 0, 50
                        mem[(32 * var92010) + _1503 + 32] = _5717
                        if mem[96] < 1:
                            revert with 0, 17
                        if _5681 + 1 < mem[96] - 1:
                            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                revert with 0, 1
                            var92001 = _5681 + 1
                            var92005 = _5681 + 1
                            var92010 = var92010 + 1
                            var92011 = _5681 + 1
                            continue 
                        mem[mem[64]] = 32
                        _6265 = mem[_1503]
                        mem[mem[64] + 32] = mem[_1503]
                        if var105001 >= _6265:
                            return memory
                              from mem[64]
                               len var105005 - mem[64]
                        # nil
                    else:
                        mem[_5717 + 32 len _5681 - var92011] = call.data[calldata.size len _5681 - var92011]
                        idx = var92011
                        s = 0
                        while idx < _5681:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            if s >= mem[_5717]:
                                revert with 0, 50
                            mem[s + _5717 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if 1 > !_5681:
                            revert with 0, 17
                        if var92010 == -1:
                            revert with 0, 17
                        if var92010 >= mem[_1503]:
                            revert with 0, 50
                        mem[(32 * var92010) + _1503 + 32] = _5717
                        if mem[96] < 1:
                            revert with 0, 17
                        if _5681 + 1 < mem[96] - 1:
                            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                revert with 0, 1
                            var92001 = _5681 + 1
                            var92005 = _5681 + 1
                            var92010 = var92010 + 1
                            var92011 = _5681 + 1
                            continue 
                        mem[mem[64]] = 32
                        _6266 = mem[_1503]
                        mem[mem[64] + 32] = mem[_1503]
                        if var106001 >= _6266:
                            return memory
                              from mem[64]
                               len var106005 - mem[64]
                        # nil
        else:
            if t == -1:
                revert with 0, 17
            if 1 > !idx:
                revert with 0, 17
            if mem[96] < 1:
                revert with 0, 17
            if idx + 1 < mem[96] - 1:
                if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                    revert with 0, 1
                idx = idx + 1
                s = idx + 1
                t = t + 1
                u = idx + 1
                continue 
            if t + 1 > test266151307():
                revert with 0, 65
            _1553 = mem[64]
            mem[mem[64]] = t + 1
            mem[64] = mem[64] + (32 * t + 1) + 32
            if not t + 1:
                if var86001 < 1:
                    revert with 0, 17
                if var90003 >= var90001:
                    mem[_1553 + (32 * t + 1) + 32] = 32
                    _2947 = mem[_1553]
                    mem[_1553 + (32 * t + 1) + 64] = mem[_1553]
                    idx = 0
                    s = _1553 + 32
                    u = _1553 + (32 * t + 1) + 96
                    v = _1553 + (32 * t + 1) + (32 * mem[_1553]) + 96
                    while idx < _2947:
                        mem[u] = v + -_1553 + -(32 * t + 1) - 96
                        _3435 = mem[s]
                        _3451 = mem[mem[s]]
                        mem[v] = mem[mem[s]]
                        t = 0
                        while t < _3451:
                            mem[t + v + 32] = mem[t + _3435 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_3451) > _3451:
                            mem[v + _3451 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        v = ceil32(_3451) + v + 32
                        continue 
                    return memory
                      from mem[64]
                       len v - mem[64]
                if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                    revert with 0, 1
                if var98001 >= mem[96]:
                    _5119 = mem[96]
                    if mem[96] < var98011:
                        revert with 0, 17
                    if mem[96] - var98011 > test266151307():
                        revert with 0, 65
                    mem[_1553 + (32 * t + 1) + 32] = mem[96] - var98011
                    mem[64] = _1553 + (32 * t + 1) + floor32(_5119 + -var98011 + 31) + 64
                    if not _5119 - var98011:
                        idx = var98011
                        s = 0
                        while idx < _5119:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            if s >= mem[_1553 + (32 * t + 1) + 32]:
                                revert with 0, 50
                            mem[s + _1553 + (32 * t + 1) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if 1 > !_5119:
                            revert with 0, 17
                        if var98010 == -1:
                            revert with 0, 17
                        if var98010 >= mem[_1553]:
                            revert with 0, 50
                        mem[(32 * var98010) + _1553 + 32] = _1553 + (32 * t + 1) + 32
                        if mem[96] < 1:
                            revert with 0, 17
                        if _5119 + 1 < mem[96] - 1:
                            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                revert with 0, 1
                            var98001 = _5119 + 1
                            var98005 = _5119 + 1
                            var98010 = var98010 + 1
                            var98011 = _5119 + 1
                            continue 
                        _5764 = mem[64]
                        mem[mem[64]] = 32
                        _5792 = mem[_1553]
                        mem[mem[64] + 32] = mem[_1553]
                        idx = 0
                        s = _1553 + 32
                        t = mem[64] + 64
                        u = mem[64] + (32 * _5792) + 64
                        while idx < _5792:
                            mem[t] = u + -_5764 - 64
                            _6063 = mem[s]
                            _6106 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            while v < _6106:
                                mem[v + u + 32] = mem[v + _6063 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_6106) > _6106:
                                mem[u + _6106 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_6106) + u + 32
                            continue 
                    else:
                        mem[_1553 + (32 * t + 1) + 64 len _5119 - var98011] = call.data[calldata.size len _5119 - var98011]
                        idx = var98011
                        s = 0
                        while idx < _5119:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            if s >= mem[_1553 + (32 * t + 1) + 32]:
                                revert with 0, 50
                            mem[s + _1553 + (32 * t + 1) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if 1 > !_5119:
                            revert with 0, 17
                        if var98010 == -1:
                            revert with 0, 17
                        if var98010 >= mem[_1553]:
                            revert with 0, 50
                        mem[(32 * var98010) + _1553 + 32] = _1553 + (32 * t + 1) + 32
                        if mem[96] < 1:
                            revert with 0, 17
                        if _5119 + 1 < mem[96] - 1:
                            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                revert with 0, 1
                            var98001 = _5119 + 1
                            var98005 = _5119 + 1
                            var98010 = var98010 + 1
                            var98011 = _5119 + 1
                            continue 
                        _5765 = mem[64]
                        mem[mem[64]] = 32
                        _5793 = mem[_1553]
                        mem[mem[64] + 32] = mem[_1553]
                        idx = 0
                        s = _1553 + 32
                        t = mem[64] + 64
                        u = mem[64] + (32 * _5793) + 64
                        while idx < _5793:
                            mem[t] = u + -_5765 - 64
                            _6064 = mem[s]
                            _6108 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            while v < _6108:
                                mem[v + u + 32] = mem[v + _6064 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_6108) > _6108:
                                mem[u + _6108 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_6108) + u + 32
                            continue 
                else:
                    if 0 >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    if var98001 >= mem[96]:
                        revert with 0, 50
                    if Mask(8, 248, mem[var98001 + 128]):
                        if var98001 == -1:
                            revert with 0, 17
                        var98001 = var98001 + 1
                        var98005 = var98005
                        var98010 = var98010
                        var98011 = var98011
                        continue 
                    if var98001 != -1:
                        if var98001 < var98011:
                            revert with 0, 17
                        if var98001 - var98011 > test266151307():
                            revert with 0, 65
                        mem[_1553 + (32 * t + 1) + 32] = var98001 - var98011
                        mem[64] = _1553 + (32 * t + 1) + floor32(var98001 + -var98011 + 31) + 64
                        if not var98001 - var98011:
                            s = var98011
                            u = 0
                            while s < var98001:
                                if s >= mem[96]:
                                    revert with 0, 50
                                if u == -1:
                                    revert with 0, 17
                                if u >= var98001 - var98011:
                                    revert with 0, 50
                                mem[u + _1553 + (32 * t + 1) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                u = u + 1
                                continue 
                            if 1 > !var98001:
                                revert with 0, 17
                            if var98010 == -1:
                                revert with 0, 17
                            if var98010 >= mem[_1553]:
                                revert with 0, 50
                            mem[(32 * var98010) + _1553 + 32] = _1553 + (32 * t + 1) + 32
                            if mem[96] < 1:
                                revert with 0, 17
                            if var98001 + 1 < mem[96] - 1:
                                if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                    revert with 0, 1
                                var98001 = var98001 + 1
                                var98005 = var98001 + 1
                                var98010 = var98010 + 1
                                var98011 = var98001 + 1
                                continue 
                            mem[_1553 + (32 * t + 1) + floor32(var98001 + -var98011 + 31) + 64] = 32
                            _5794 = mem[_1553]
                            mem[_1553 + (32 * t + 1) + floor32(var98001 + -var98011 + 31) + 96] = mem[_1553]
                            idx = 0
                            s = _1553 + 32
                            u = mem[64] + 64
                            v = mem[64] + (32 * mem[_1553]) + 64
                            while idx < _5794:
                                mem[u] = v + -_1553 + -(32 * t + 1) + -floor32(var98001 + -var98011 + 31) - 128
                                _6065 = mem[s]
                                _6110 = mem[mem[s]]
                                mem[v] = mem[mem[s]]
                                t = 0
                                while t < _6110:
                                    mem[t + v + 32] = mem[t + _6065 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(_6110) > _6110:
                                    mem[v + _6110 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                u = u + 32
                                v = ceil32(_6110) + v + 32
                                continue 
                        else:
                            mem[_1553 + (32 * t + 1) + 64 len var98001 - var98011] = call.data[calldata.size len var98001 - var98011]
                            s = var98011
                            u = 0
                            while s < var98001:
                                if s >= mem[96]:
                                    revert with 0, 50
                                if u == -1:
                                    revert with 0, 17
                                if u >= var98001 - var98011:
                                    revert with 0, 50
                                mem[u + _1553 + (32 * t + 1) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                u = u + 1
                                continue 
                            if 1 > !var98001:
                                revert with 0, 17
                            if var98010 == -1:
                                revert with 0, 17
                            if var98010 >= mem[_1553]:
                                revert with 0, 50
                            mem[(32 * var98010) + _1553 + 32] = _1553 + (32 * t + 1) + 32
                            if mem[96] < 1:
                                revert with 0, 17
                            if var98001 + 1 < mem[96] - 1:
                                if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                    revert with 0, 1
                                var98001 = var98001 + 1
                                var98005 = var98001 + 1
                                var98010 = var98010 + 1
                                var98011 = var98001 + 1
                                continue 
                            mem[_1553 + (32 * t + 1) + floor32(var98001 + -var98011 + 31) + 64] = 32
                            _5795 = mem[_1553]
                            mem[_1553 + (32 * t + 1) + floor32(var98001 + -var98011 + 31) + 96] = mem[_1553]
                            idx = 0
                            s = _1553 + 32
                            u = mem[64] + 64
                            v = mem[64] + (32 * mem[_1553]) + 64
                            while idx < _5795:
                                mem[u] = v + -_1553 + -(32 * t + 1) + -floor32(var98001 + -var98011 + 31) - 128
                                _6066 = mem[s]
                                _6112 = mem[mem[s]]
                                mem[v] = mem[mem[s]]
                                t = 0
                                while t < _6112:
                                    mem[t + v + 32] = mem[t + _6066 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(_6112) > _6112:
                                    mem[v + _6112 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                u = u + 32
                                v = ceil32(_6112) + v + 32
                                continue 
                        return memory
                          from mem[64]
                           len v - mem[64]
                    _5134 = mem[96]
                    if mem[96] < var98011:
                        revert with 0, 17
                    if mem[96] - var98011 > test266151307():
                        revert with 0, 65
                    mem[_1553 + (32 * t + 1) + 32] = mem[96] - var98011
                    mem[64] = _1553 + (32 * t + 1) + floor32(_5134 + -var98011 + 31) + 64
                    if not _5134 - var98011:
                        idx = var98011
                        s = 0
                        while idx < _5134:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            if s >= mem[_1553 + (32 * t + 1) + 32]:
                                revert with 0, 50
                            mem[s + _1553 + (32 * t + 1) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if 1 > !_5134:
                            revert with 0, 17
                        if var98010 == -1:
                            revert with 0, 17
                        if var98010 >= mem[_1553]:
                            revert with 0, 50
                        mem[(32 * var98010) + _1553 + 32] = _1553 + (32 * t + 1) + 32
                        if mem[96] < 1:
                            revert with 0, 17
                        if _5134 + 1 < mem[96] - 1:
                            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                revert with 0, 1
                            var98001 = _5134 + 1
                            var98005 = _5134 + 1
                            var98010 = var98010 + 1
                            var98011 = _5134 + 1
                            continue 
                        _5768 = mem[64]
                        mem[mem[64]] = 32
                        _5796 = mem[_1553]
                        mem[mem[64] + 32] = mem[_1553]
                        idx = 0
                        s = _1553 + 32
                        t = mem[64] + 64
                        u = mem[64] + (32 * _5796) + 64
                        while idx < _5796:
                            mem[t] = u + -_5768 - 64
                            _6067 = mem[s]
                            _6114 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            while v < _6114:
                                mem[v + u + 32] = mem[v + _6067 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_6114) > _6114:
                                mem[u + _6114 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_6114) + u + 32
                            continue 
                    else:
                        mem[_1553 + (32 * t + 1) + 64 len _5134 - var98011] = call.data[calldata.size len _5134 - var98011]
                        idx = var98011
                        s = 0
                        while idx < _5134:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            if s >= mem[_1553 + (32 * t + 1) + 32]:
                                revert with 0, 50
                            mem[s + _1553 + (32 * t + 1) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if 1 > !_5134:
                            revert with 0, 17
                        if var98010 == -1:
                            revert with 0, 17
                        if var98010 >= mem[_1553]:
                            revert with 0, 50
                        mem[(32 * var98010) + _1553 + 32] = _1553 + (32 * t + 1) + 32
                        if mem[96] < 1:
                            revert with 0, 17
                        if _5134 + 1 < mem[96] - 1:
                            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                revert with 0, 1
                            var98001 = _5134 + 1
                            var98005 = _5134 + 1
                            var98010 = var98010 + 1
                            var98011 = _5134 + 1
                            continue 
                        _5769 = mem[64]
                        mem[mem[64]] = 32
                        _5797 = mem[_1553]
                        mem[mem[64] + 32] = mem[_1553]
                        idx = 0
                        s = _1553 + 32
                        t = mem[64] + 64
                        u = mem[64] + (32 * _5797) + 64
                        while idx < _5797:
                            mem[t] = u + -_5769 - 64
                            _6068 = mem[s]
                            _6116 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            while v < _6116:
                                mem[v + u + 32] = mem[v + _6068 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_6116) > _6116:
                                mem[u + _6116 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_6116) + u + 32
                            continue 
                return memory
                  from mem[64]
                   len u - mem[64]
            mem[_1553 + 32] = 96
            s = _1553 + 32
            idx = t + 1
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            if var90001 < 1:
                revert with 0, 17
            if var94003 >= var94001:
                _3465 = mem[64]
                mem[mem[64]] = 32
                _3484 = mem[_1553]
                mem[mem[64] + 32] = mem[_1553]
                idx = 0
                s = _1553 + 32
                t = mem[64] + 64
                u = mem[64] + (32 * _3484) + 64
                while idx < _3484:
                    mem[t] = u + -_3465 - 64
                    _4024 = mem[s]
                    _4052 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _4052:
                        mem[v + u + 32] = mem[v + _4024 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_4052) > _4052:
                        mem[u + _4052 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_4052) + u + 32
                    continue 
                return memory
                  from mem[64]
                   len u - mem[64]
            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                revert with 0, 1
            if var102001 >= mem[96]:
                _5639 = mem[96]
                if mem[96] < var102011:
                    revert with 0, 17
                if mem[96] - var102011 > test266151307():
                    revert with 0, 65
                _5683 = mem[64]
                mem[mem[64]] = mem[96] - var102011
                mem[64] = mem[64] + floor32(_5639 + -var102011 + 31) + 32
                if not _5639 - var102011:
                    idx = var102011
                    s = 0
                    while idx < _5639:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if s == -1:
                            revert with 0, 17
                        if s >= mem[_5683]:
                            revert with 0, 50
                        mem[s + _5683 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if 1 > !_5639:
                        revert with 0, 17
                    if var102010 == -1:
                        revert with 0, 17
                    if var102010 >= mem[_1553]:
                        revert with 0, 50
                    mem[(32 * var102010) + _1553 + 32] = _5683
                    if mem[96] < 1:
                        revert with 0, 17
                    if _5639 + 1 < mem[96] - 1:
                        if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                            revert with 0, 1
                        var102001 = _5639 + 1
                        var102005 = _5639 + 1
                        var102010 = var102010 + 1
                        var102011 = _5639 + 1
                        continue 
                    mem[mem[64]] = 32
                    _6255 = mem[_1553]
                    mem[mem[64] + 32] = mem[_1553]
                    if var111001 >= _6255:
                        return memory
                          from mem[64]
                           len var111005 - mem[64]
                    # nil
                else:
                    mem[_5683 + 32 len _5639 - var102011] = call.data[calldata.size len _5639 - var102011]
                    idx = var102011
                    s = 0
                    while idx < _5639:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if s == -1:
                            revert with 0, 17
                        if s >= mem[_5683]:
                            revert with 0, 50
                        mem[s + _5683 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if 1 > !_5639:
                        revert with 0, 17
                    if var102010 == -1:
                        revert with 0, 17
                    if var102010 >= mem[_1553]:
                        revert with 0, 50
                    mem[(32 * var102010) + _1553 + 32] = _5683
                    if mem[96] < 1:
                        revert with 0, 17
                    if _5639 + 1 < mem[96] - 1:
                        if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                            revert with 0, 1
                        var102001 = _5639 + 1
                        var102005 = _5639 + 1
                        var102010 = var102010 + 1
                        var102011 = _5639 + 1
                        continue 
                    mem[mem[64]] = 32
                    _6256 = mem[_1553]
                    mem[mem[64] + 32] = mem[_1553]
                    if var112001 >= _6256:
                        return memory
                          from mem[64]
                           len var112005 - mem[64]
                    # nil
            else:
                if 0 >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                if var102001 >= mem[96]:
                    revert with 0, 50
                if Mask(8, 248, mem[var102001 + 128]):
                    if var102001 == -1:
                        revert with 0, 17
                    var102001 = var102001 + 1
                    var102005 = var102005
                    var102010 = var102010
                    var102011 = var102011
                    continue 
                if var102001 != -1:
                    if var102001 < var102011:
                        revert with 0, 17
                    if var102001 - var102011 > test266151307():
                        revert with 0, 65
                    _5706 = mem[64]
                    mem[mem[64]] = var102001 - var102011
                    mem[64] = mem[64] + floor32(var102001 + -var102011 + 31) + 32
                    if not var102001 - var102011:
                        s = var102011
                        t = 0
                        while s < var102001:
                            if s >= mem[96]:
                                revert with 0, 50
                            if t == -1:
                                revert with 0, 17
                            if t >= mem[_5706]:
                                revert with 0, 50
                            mem[t + _5706 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if 1 > !var102001:
                            revert with 0, 17
                        if var102010 == -1:
                            revert with 0, 17
                        if var102010 >= mem[_1553]:
                            revert with 0, 50
                        mem[(32 * var102010) + _1553 + 32] = _5706
                        if mem[96] < 1:
                            revert with 0, 17
                        if var102001 + 1 < mem[96] - 1:
                            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                revert with 0, 1
                            var102001 = var102001 + 1
                            var102005 = var102001 + 1
                            var102010 = var102010 + 1
                            var102011 = var102001 + 1
                            continue 
                        mem[mem[64]] = 32
                        _6257 = mem[_1553]
                        mem[mem[64] + 32] = mem[_1553]
                        if var114001 >= _6257:
                            return memory
                              from mem[64]
                               len var114005 - mem[64]
                        # nil
                    else:
                        mem[_5706 + 32 len var102001 - var102011] = call.data[calldata.size len var102001 - var102011]
                        s = var102011
                        t = 0
                        while s < var102001:
                            if s >= mem[96]:
                                revert with 0, 50
                            if t == -1:
                                revert with 0, 17
                            if t >= mem[_5706]:
                                revert with 0, 50
                            mem[t + _5706 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if 1 > !var102001:
                            revert with 0, 17
                        if var102010 == -1:
                            revert with 0, 17
                        if var102010 >= mem[_1553]:
                            revert with 0, 50
                        mem[(32 * var102010) + _1553 + 32] = _5706
                        if mem[96] < 1:
                            revert with 0, 17
                        if var102001 + 1 < mem[96] - 1:
                            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                revert with 0, 1
                            var102001 = var102001 + 1
                            var102005 = var102001 + 1
                            var102010 = var102010 + 1
                            var102011 = var102001 + 1
                            continue 
                        mem[mem[64]] = 32
                        _6258 = mem[_1553]
                        mem[mem[64] + 32] = mem[_1553]
                        if var115001 >= _6258:
                            return memory
                              from mem[64]
                               len var115005 - mem[64]
                        # nil
                else:
                    _5674 = mem[96]
                    if mem[96] < var102011:
                        revert with 0, 17
                    if mem[96] - var102011 > test266151307():
                        revert with 0, 65
                    _5714 = mem[64]
                    mem[mem[64]] = mem[96] - var102011
                    mem[64] = mem[64] + floor32(_5674 + -var102011 + 31) + 32
                    if not _5674 - var102011:
                        idx = var102011
                        s = 0
                        while idx < _5674:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            if s >= mem[_5714]:
                                revert with 0, 50
                            mem[s + _5714 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if 1 > !_5674:
                            revert with 0, 17
                        if var102010 == -1:
                            revert with 0, 17
                        if var102010 >= mem[_1553]:
                            revert with 0, 50
                        mem[(32 * var102010) + _1553 + 32] = _5714
                        if mem[96] < 1:
                            revert with 0, 17
                        if _5674 + 1 < mem[96] - 1:
                            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                revert with 0, 1
                            var102001 = _5674 + 1
                            var102005 = _5674 + 1
                            var102010 = var102010 + 1
                            var102011 = _5674 + 1
                            continue 
                        mem[mem[64]] = 32
                        _6259 = mem[_1553]
                        mem[mem[64] + 32] = mem[_1553]
                        if var115001 >= _6259:
                            return memory
                              from mem[64]
                               len var115005 - mem[64]
                        # nil
                    else:
                        mem[_5714 + 32 len _5674 - var102011] = call.data[calldata.size len _5674 - var102011]
                        idx = var102011
                        s = 0
                        while idx < _5674:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            if s >= mem[_5714]:
                                revert with 0, 50
                            mem[s + _5714 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if 1 > !_5674:
                            revert with 0, 17
                        if var102010 == -1:
                            revert with 0, 17
                        if var102010 >= mem[_1553]:
                            revert with 0, 50
                        mem[(32 * var102010) + _1553 + 32] = _5714
                        if mem[96] < 1:
                            revert with 0, 17
                        if _5674 + 1 < mem[96] - 1:
                            if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                                revert with 0, 1
                            var102001 = _5674 + 1
                            var102005 = _5674 + 1
                            var102010 = var102010 + 1
                            var102011 = _5674 + 1
                            continue 
                        mem[mem[64]] = 32
                        _6260 = mem[_1553]
                        mem[mem[64] + 32] = mem[_1553]
                        if var116001 >= _6260:
                            return memory
                              from mem[64]
                               len var116005 - mem[64]
                        # nil
    if t > test266151307():
        revert with 0, 65
    _1485 = mem[64]
    mem[mem[64]] = t
    mem[64] = mem[64] + (32 * t) + 32
    if not t:
        if var72001 < 1:
            revert with 0, 17
        if var76003 >= var76001:
            mem[_1485 + (32 * t) + 32] = 32
            _2943 = mem[_1485]
            mem[_1485 + (32 * t) + 64] = mem[_1485]
            idx = 0
            s = _1485 + 32
            u = _1485 + (32 * t) + 96
            v = _1485 + (32 * t) + (32 * mem[_1485]) + 96
            while idx < _2943:
                mem[u] = v + -_1485 + -(32 * t) - 96
                _3433 = mem[s]
                _3448 = mem[mem[s]]
                mem[v] = mem[mem[s]]
                t = 0
                while t < _3448:
                    mem[t + v + 32] = mem[t + _3433 + 32]
                    t = t + 32
                    continue 
                if ceil32(_3448) > _3448:
                    mem[v + _3448 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = u + 32
                v = ceil32(_3448) + v + 32
                continue 
            return memory
              from mem[64]
               len v - mem[64]
        if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
            revert with 0, 1
        if var84001 >= mem[96]:
            _5115 = mem[96]
            if mem[96] < var84011:
                revert with 0, 17
            if mem[96] - var84011 > test266151307():
                revert with 0, 65
            mem[_1485 + (32 * t) + 32] = mem[96] - var84011
            mem[64] = _1485 + (32 * t) + floor32(_5115 + -var84011 + 31) + 64
            if not _5115 - var84011:
                idx = var84011
                s = 0
                while idx < _5115:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if s == -1:
                        revert with 0, 17
                    if s >= mem[_1485 + (32 * t) + 32]:
                        revert with 0, 50
                    mem[s + _1485 + (32 * t) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if 1 > !_5115:
                    revert with 0, 17
                if var84010 == -1:
                    revert with 0, 17
                if var84010 >= mem[_1485]:
                    revert with 0, 50
                mem[(32 * var84010) + _1485 + 32] = _1485 + (32 * t) + 32
                if mem[96] < 1:
                    revert with 0, 17
                if _5115 + 1 < mem[96] - 1:
                    if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                        revert with 0, 1
                    var84001 = _5115 + 1
                    var84005 = _5115 + 1
                    var84010 = var84010 + 1
                    var84011 = _5115 + 1
                    continue 
                _5754 = mem[64]
                mem[mem[64]] = 32
                _5784 = mem[_1485]
                mem[mem[64] + 32] = mem[_1485]
                idx = 0
                s = _1485 + 32
                t = mem[64] + 64
                u = mem[64] + (32 * _5784) + 64
                while idx < _5784:
                    mem[t] = u + -_5754 - 64
                    _6051 = mem[s]
                    _6088 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _6088:
                        mem[v + u + 32] = mem[v + _6051 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_6088) > _6088:
                        mem[u + _6088 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_6088) + u + 32
                    continue 
            else:
                mem[_1485 + (32 * t) + 64 len _5115 - var84011] = call.data[calldata.size len _5115 - var84011]
                idx = var84011
                s = 0
                while idx < _5115:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if s == -1:
                        revert with 0, 17
                    if s >= mem[_1485 + (32 * t) + 32]:
                        revert with 0, 50
                    mem[s + _1485 + (32 * t) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if 1 > !_5115:
                    revert with 0, 17
                if var84010 == -1:
                    revert with 0, 17
                if var84010 >= mem[_1485]:
                    revert with 0, 50
                mem[(32 * var84010) + _1485 + 32] = _1485 + (32 * t) + 32
                if mem[96] < 1:
                    revert with 0, 17
                if _5115 + 1 < mem[96] - 1:
                    if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                        revert with 0, 1
                    var84001 = _5115 + 1
                    var84005 = _5115 + 1
                    var84010 = var84010 + 1
                    var84011 = _5115 + 1
                    continue 
                _5755 = mem[64]
                mem[mem[64]] = 32
                _5785 = mem[_1485]
                mem[mem[64] + 32] = mem[_1485]
                idx = 0
                s = _1485 + 32
                t = mem[64] + 64
                u = mem[64] + (32 * _5785) + 64
                while idx < _5785:
                    mem[t] = u + -_5755 - 64
                    _6052 = mem[s]
                    _6090 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _6090:
                        mem[v + u + 32] = mem[v + _6052 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_6090) > _6090:
                        mem[u + _6090 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_6090) + u + 32
                    continue 
        else:
            if 0 >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            if var84001 >= mem[96]:
                revert with 0, 50
            if Mask(8, 248, mem[var84001 + 128]):
                if var84001 == -1:
                    revert with 0, 17
                var84001 = var84001 + 1
                var84005 = var84005
                var84010 = var84010
                var84011 = var84011
                continue 
            if var84001 != -1:
                if var84001 < var84011:
                    revert with 0, 17
                if var84001 - var84011 > test266151307():
                    revert with 0, 65
                mem[_1485 + (32 * t) + 32] = var84001 - var84011
                mem[64] = _1485 + (32 * t) + floor32(var84001 + -var84011 + 31) + 64
                if not var84001 - var84011:
                    s = var84011
                    u = 0
                    while s < var84001:
                        if s >= mem[96]:
                            revert with 0, 50
                        if u == -1:
                            revert with 0, 17
                        if u >= var84001 - var84011:
                            revert with 0, 50
                        mem[u + _1485 + (32 * t) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        u = u + 1
                        continue 
                    if 1 > !var84001:
                        revert with 0, 17
                    if var84010 == -1:
                        revert with 0, 17
                    if var84010 >= mem[_1485]:
                        revert with 0, 50
                    mem[(32 * var84010) + _1485 + 32] = _1485 + (32 * t) + 32
                    if mem[96] < 1:
                        revert with 0, 17
                    if var84001 + 1 < mem[96] - 1:
                        if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                            revert with 0, 1
                        var84001 = var84001 + 1
                        var84005 = var84001 + 1
                        var84010 = var84010 + 1
                        var84011 = var84001 + 1
                        continue 
                    _5756 = mem[64]
                    mem[mem[64]] = 32
                    _5786 = mem[_1485]
                    mem[mem[64] + 32] = mem[_1485]
                    idx = 0
                    s = _1485 + 32
                    t = mem[64] + 64
                    u = mem[64] + (32 * _5786) + 64
                    while idx < _5786:
                        mem[t] = u + -_5756 - 64
                        _6053 = mem[s]
                        _6092 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _6092:
                            mem[v + u + 32] = mem[v + _6053 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_6092) > _6092:
                            mem[u + _6092 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_6092) + u + 32
                        continue 
                else:
                    mem[_1485 + (32 * t) + 64 len var84001 - var84011] = call.data[calldata.size len var84001 - var84011]
                    s = var84011
                    u = 0
                    while s < var84001:
                        if s >= mem[96]:
                            revert with 0, 50
                        if u == -1:
                            revert with 0, 17
                        if u >= var84001 - var84011:
                            revert with 0, 50
                        mem[u + _1485 + (32 * t) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        u = u + 1
                        continue 
                    if 1 > !var84001:
                        revert with 0, 17
                    if var84010 == -1:
                        revert with 0, 17
                    if var84010 >= mem[_1485]:
                        revert with 0, 50
                    mem[(32 * var84010) + _1485 + 32] = _1485 + (32 * t) + 32
                    if mem[96] < 1:
                        revert with 0, 17
                    if var84001 + 1 < mem[96] - 1:
                        if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                            revert with 0, 1
                        var84001 = var84001 + 1
                        var84005 = var84001 + 1
                        var84010 = var84010 + 1
                        var84011 = var84001 + 1
                        continue 
                    _5757 = mem[64]
                    mem[mem[64]] = 32
                    _5787 = mem[_1485]
                    mem[mem[64] + 32] = mem[_1485]
                    idx = 0
                    s = _1485 + 32
                    t = mem[64] + 64
                    u = mem[64] + (32 * _5787) + 64
                    while idx < _5787:
                        mem[t] = u + -_5757 - 64
                        _6054 = mem[s]
                        _6094 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _6094:
                            mem[v + u + 32] = mem[v + _6054 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_6094) > _6094:
                            mem[u + _6094 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_6094) + u + 32
                        continue 
            else:
                _5133 = mem[96]
                if mem[96] < var84011:
                    revert with 0, 17
                if mem[96] - var84011 > test266151307():
                    revert with 0, 65
                mem[_1485 + (32 * t) + 32] = mem[96] - var84011
                mem[64] = _1485 + (32 * t) + floor32(_5133 + -var84011 + 31) + 64
                if not _5133 - var84011:
                    idx = var84011
                    s = 0
                    while idx < _5133:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if s == -1:
                            revert with 0, 17
                        if s >= mem[_1485 + (32 * t) + 32]:
                            revert with 0, 50
                        mem[s + _1485 + (32 * t) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if 1 > !_5133:
                        revert with 0, 17
                    if var84010 == -1:
                        revert with 0, 17
                    if var84010 >= mem[_1485]:
                        revert with 0, 50
                    mem[(32 * var84010) + _1485 + 32] = _1485 + (32 * t) + 32
                    if mem[96] < 1:
                        revert with 0, 17
                    if _5133 + 1 < mem[96] - 1:
                        if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                            revert with 0, 1
                        var84001 = _5133 + 1
                        var84005 = _5133 + 1
                        var84010 = var84010 + 1
                        var84011 = _5133 + 1
                        continue 
                    _5758 = mem[64]
                    mem[mem[64]] = 32
                    _5788 = mem[_1485]
                    mem[mem[64] + 32] = mem[_1485]
                    idx = 0
                    s = _1485 + 32
                    t = mem[64] + 64
                    u = mem[64] + (32 * _5788) + 64
                    while idx < _5788:
                        mem[t] = u + -_5758 - 64
                        _6055 = mem[s]
                        _6096 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _6096:
                            mem[v + u + 32] = mem[v + _6055 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_6096) > _6096:
                            mem[u + _6096 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_6096) + u + 32
                        continue 
                else:
                    mem[_1485 + (32 * t) + 64 len _5133 - var84011] = call.data[calldata.size len _5133 - var84011]
                    idx = var84011
                    s = 0
                    while idx < _5133:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if s == -1:
                            revert with 0, 17
                        if s >= mem[_1485 + (32 * t) + 32]:
                            revert with 0, 50
                        mem[s + _1485 + (32 * t) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if 1 > !_5133:
                        revert with 0, 17
                    if var84010 == -1:
                        revert with 0, 17
                    if var84010 >= mem[_1485]:
                        revert with 0, 50
                    mem[(32 * var84010) + _1485 + 32] = _1485 + (32 * t) + 32
                    if mem[96] < 1:
                        revert with 0, 17
                    if _5133 + 1 < mem[96] - 1:
                        if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                            revert with 0, 1
                        var84001 = _5133 + 1
                        var84005 = _5133 + 1
                        var84010 = var84010 + 1
                        var84011 = _5133 + 1
                        continue 
                    _5759 = mem[64]
                    mem[mem[64]] = 32
                    _5789 = mem[_1485]
                    mem[mem[64] + 32] = mem[_1485]
                    idx = 0
                    s = _1485 + 32
                    t = mem[64] + 64
                    u = mem[64] + (32 * _5789) + 64
                    while idx < _5789:
                        mem[t] = u + -_5759 - 64
                        _6056 = mem[s]
                        _6098 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _6098:
                            mem[v + u + 32] = mem[v + _6056 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_6098) > _6098:
                            mem[u + _6098 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_6098) + u + 32
                        continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[_1485 + 32] = 96
    s = _1485 + 32
    idx = t
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    if var76001 < 1:
        revert with 0, 17
    if var80003 >= var80001:
        _3462 = mem[64]
        mem[mem[64]] = 32
        _3479 = mem[_1485]
        mem[mem[64] + 32] = mem[_1485]
        idx = 0
        s = _1485 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _3479) + 64
        while idx < _3479:
            mem[t] = u + -_3462 - 64
            _4021 = mem[s]
            _4049 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _4049:
                mem[v + u + 32] = mem[v + _4021 + 32]
                v = v + 32
                continue 
            if ceil32(_4049) > _4049:
                mem[u + _4049 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_4049) + u + 32
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
        revert with 0, 1
    if var88001 >= mem[96]:
        _5637 = mem[96]
        if mem[96] < var88011:
            revert with 0, 17
        if mem[96] - var88011 > test266151307():
            revert with 0, 65
        _5682 = mem[64]
        mem[mem[64]] = mem[96] - var88011
        mem[64] = mem[64] + floor32(_5637 + -var88011 + 31) + 32
        if not _5637 - var88011:
            idx = var88011
            s = 0
            while idx < _5637:
                if idx >= mem[96]:
                    revert with 0, 50
                if s == -1:
                    revert with 0, 17
                if s >= mem[_5682]:
                    revert with 0, 50
                mem[s + _5682 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            if 1 > !_5637:
                revert with 0, 17
            if var88010 == -1:
                revert with 0, 17
            if var88010 >= mem[_1485]:
                revert with 0, 50
            mem[(32 * var88010) + _1485 + 32] = _5682
            if mem[96] < 1:
                revert with 0, 17
            if _5637 + 1 < mem[96] - 1:
                if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                    revert with 0, 1
                var88001 = _5637 + 1
                var88005 = _5637 + 1
                var88010 = var88010 + 1
                var88011 = _5637 + 1
                continue 
            mem[mem[64]] = 32
            _6249 = mem[_1485]
            mem[mem[64] + 32] = mem[_1485]
            if var97001 >= _6249:
                return memory
                  from mem[64]
                   len var97005 - mem[64]
            # nil
        else:
            mem[_5682 + 32 len _5637 - var88011] = call.data[calldata.size len _5637 - var88011]
            idx = var88011
            s = 0
            while idx < _5637:
                if idx >= mem[96]:
                    revert with 0, 50
                if s == -1:
                    revert with 0, 17
                if s >= mem[_5682]:
                    revert with 0, 50
                mem[s + _5682 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            if 1 > !_5637:
                revert with 0, 17
            if var88010 == -1:
                revert with 0, 17
            if var88010 >= mem[_1485]:
                revert with 0, 50
            mem[(32 * var88010) + _1485 + 32] = _5682
            if mem[96] < 1:
                revert with 0, 17
            if _5637 + 1 < mem[96] - 1:
                if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                    revert with 0, 1
                var88001 = _5637 + 1
                var88005 = _5637 + 1
                var88010 = var88010 + 1
                var88011 = _5637 + 1
                continue 
            mem[mem[64]] = 32
            _6250 = mem[_1485]
            mem[mem[64] + 32] = mem[_1485]
            if var98001 >= _6250:
                return memory
                  from mem[64]
                   len var98005 - mem[64]
            # nil
    else:
        if 0 >= mem[ceil32(ceil32(arg1.length)) + 97]:
            revert with 0, 50
        if var88001 >= mem[96]:
            revert with 0, 50
        if Mask(8, 248, mem[var88001 + 128]):
            if var88001 == -1:
                revert with 0, 17
            var88001 = var88001 + 1
            var88005 = var88005
            var88010 = var88010
            var88011 = var88011
            continue 
        if var88001 != -1:
            if var88001 < var88011:
                revert with 0, 17
            if var88001 - var88011 > test266151307():
                revert with 0, 65
            _5704 = mem[64]
            mem[mem[64]] = var88001 - var88011
            mem[64] = mem[64] + floor32(var88001 + -var88011 + 31) + 32
            if not var88001 - var88011:
                s = var88011
                t = 0
                while s < var88001:
                    if s >= mem[96]:
                        revert with 0, 50
                    if t == -1:
                        revert with 0, 17
                    if t >= mem[_5704]:
                        revert with 0, 50
                    mem[t + _5704 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + 1
                    continue 
                if 1 > !var88001:
                    revert with 0, 17
                if var88010 == -1:
                    revert with 0, 17
                if var88010 >= mem[_1485]:
                    revert with 0, 50
                mem[(32 * var88010) + _1485 + 32] = _5704
                if mem[96] < 1:
                    revert with 0, 17
                if var88001 + 1 < mem[96] - 1:
                    if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                        revert with 0, 1
                    var88001 = var88001 + 1
                    var88005 = var88001 + 1
                    var88010 = var88010 + 1
                    var88011 = var88001 + 1
                    continue 
                mem[mem[64]] = 32
                _6251 = mem[_1485]
                mem[mem[64] + 32] = mem[_1485]
                if var100001 >= _6251:
                    return memory
                      from mem[64]
                       len var100005 - mem[64]
                # nil
            else:
                mem[_5704 + 32 len var88001 - var88011] = call.data[calldata.size len var88001 - var88011]
                s = var88011
                t = 0
                while s < var88001:
                    if s >= mem[96]:
                        revert with 0, 50
                    if t == -1:
                        revert with 0, 17
                    if t >= mem[_5704]:
                        revert with 0, 50
                    mem[t + _5704 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + 1
                    continue 
                if 1 > !var88001:
                    revert with 0, 17
                if var88010 == -1:
                    revert with 0, 17
                if var88010 >= mem[_1485]:
                    revert with 0, 50
                mem[(32 * var88010) + _1485 + 32] = _5704
                if mem[96] < 1:
                    revert with 0, 17
                if var88001 + 1 < mem[96] - 1:
                    if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                        revert with 0, 1
                    var88001 = var88001 + 1
                    var88005 = var88001 + 1
                    var88010 = var88010 + 1
                    var88011 = var88001 + 1
                    continue 
                mem[mem[64]] = 32
                _6252 = mem[_1485]
                mem[mem[64] + 32] = mem[_1485]
                if var101001 >= _6252:
                    return memory
                      from mem[64]
                       len var101005 - mem[64]
                # nil
        else:
            _5667 = mem[96]
            if mem[96] < var88011:
                revert with 0, 17
            if mem[96] - var88011 > test266151307():
                revert with 0, 65
            _5711 = mem[64]
            mem[mem[64]] = mem[96] - var88011
            mem[64] = mem[64] + floor32(_5667 + -var88011 + 31) + 32
            if not _5667 - var88011:
                idx = var88011
                s = 0
                while idx < _5667:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if s == -1:
                        revert with 0, 17
                    if s >= mem[_5711]:
                        revert with 0, 50
                    mem[s + _5711 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if 1 > !_5667:
                    revert with 0, 17
                if var88010 == -1:
                    revert with 0, 17
                if var88010 >= mem[_1485]:
                    revert with 0, 50
                mem[(32 * var88010) + _1485 + 32] = _5711
                if mem[96] < 1:
                    revert with 0, 17
                if _5667 + 1 < mem[96] - 1:
                    if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                        revert with 0, 1
                    var88001 = _5667 + 1
                    var88005 = _5667 + 1
                    var88010 = var88010 + 1
                    var88011 = _5667 + 1
                    continue 
                mem[mem[64]] = 32
                _6253 = mem[_1485]
                mem[mem[64] + 32] = mem[_1485]
                if var101001 >= _6253:
                    return memory
                      from mem[64]
                       len var101005 - mem[64]
                # nil
            else:
                mem[_5711 + 32 len _5667 - var88011] = call.data[calldata.size len _5667 - var88011]
                idx = var88011
                s = 0
                while idx < _5667:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if s == -1:
                        revert with 0, 17
                    if s >= mem[_5711]:
                        revert with 0, 50
                    mem[s + _5711 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if 1 > !_5667:
                    revert with 0, 17
                if var88010 == -1:
                    revert with 0, 17
                if var88010 >= mem[_1485]:
                    revert with 0, 50
                mem[(32 * var88010) + _1485 + 32] = _5711
                if mem[96] < 1:
                    revert with 0, 17
                if _5667 + 1 < mem[96] - 1:
                    if mem[ceil32(ceil32(arg1.length)) + 97] != 1:
                        revert with 0, 1
                    var88001 = _5667 + 1
                    var88005 = _5667 + 1
                    var88010 = var88010 + 1
                    var88011 = _5667 + 1
                    continue 
                mem[mem[64]] = 32
                _6254 = mem[_1485]
                mem[mem[64] + 32] = mem[_1485]
                if var102001 >= _6254:
                    return memory
                      from mem[64]
                       len var102005 - mem[64]
                # nil
}



}
