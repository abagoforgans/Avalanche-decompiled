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
mapping of uint256 sub_2be704a5;
uint256 nodePrice;
uint256 sub_338e4796;
uint256 sub_8f418658;
uint256 sub_d3b2baa4;
uint256 sub_957d1491;
uint256 sub_21369b0d;
uint256 sub_c5bcbc56;
uint256 sub_c9c081b1;
uint256 sub_9ce6a9d8;
address gateKeeperAddress;
address tokenAddress;
uint256 totalNodesCreated;
uint256 sub_4588b13b;
uint256 sub_7f940e17;

function sub_21369b0d(?) payable {
    return sub_21369b0d
}

function sub_2bd06359(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2bd06359[arg1]
}

function sub_2be704a5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2be704a5[arg1]
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

function sub_7f940e17(?) payable {
    return sub_7f940e17
}

function sub_8f418658(?) payable {
    return sub_8f418658
}

function sub_957d1491(?) payable {
    return sub_957d1491
}

function sub_9ce6a9d8(?) payable {
    return sub_9ce6a9d8
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

function sub_d3b2baa4(?) payable {
    return sub_d3b2baa4
}

function sub_e5b87faa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e5b87faa[arg1]
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

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    tokenAddress = arg1
}

function setRewards(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    sub_d3b2baa4 = arg1
    sub_957d1491 = arg2
    sub_21369b0d = arg3
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb)
    delegate 0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb.0x732a2ccf with:
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
    require ext_code.size(0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb)
    delegate 0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb.0x732a2ccf with:
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

function sub_a07dcb8f(?) payable {
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
    uint256(stor4[address(arg1)].field_0)++
    if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0):
        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=arg2.length, data=arg2[all])
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
        if arg2.length:
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
            idx = 0
            while stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32 > idx:
                uint256(stor4[address(arg1)][(4 * uint256(stor4[address(arg1)].field_0)) + idx].field_0) = 0
                idx = idx + 1
                continue 
    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = arg3
    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
    uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
    require ext_code.size(0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb)
    delegate 0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb.0xbc2b405c with:
         gas gas_remaining wei
        args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 == arg3:
        if totalNodesCreated == -1:
            revert with 0, 17
        totalNodesCreated++
        if sub_2bd06359[address(arg1)] > -2:
            revert with 0, 17
        if sub_2bd06359[address(arg1)] + 1 < sub_2bd06359[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_2bd06359[address(arg1)]++
    else:
        if 1 == arg3:
            if sub_4588b13b == -1:
                revert with 0, 17
            sub_4588b13b++
            if sub_e5b87faa[address(arg1)] > -2:
                revert with 0, 17
            if sub_e5b87faa[address(arg1)] + 1 < sub_e5b87faa[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            sub_e5b87faa[address(arg1)]++
        else:
            if 2 == arg3:
                if sub_7f940e17 == -1:
                    revert with 0, 17
                sub_7f940e17++
                if sub_2be704a5[address(arg1)] > -2:
                    revert with 0, 17
                if sub_2be704a5[address(arg1)] + 1 < sub_2be704a5[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_2be704a5[address(arg1)]++
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
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _27:
        mem[u] = t + -_26 - 64
        _45 = mem[s]
        _46 = mem[mem[s]]
        mem[t] = 128
        _48 = mem[_46]
        mem[t + 128] = mem[_46]
        v = 0
        while v < _48:
            mem[v + t + 160] = mem[_46 + v + 32]
            v = v + 32
            continue 
        if ceil32(_48) > _48:
            mem[t + _48 + 160] = 0
        mem[t + 32] = mem[_45 + 32]
        mem[t + 64] = mem[_45 + 64]
        mem[t + 96] = mem[_45 + 96]
        idx = idx + 1
        s = s + 32
        t = ceil32(_48) + t + 160
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
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
        if sub_2bd06359[address(arg1)] >= sub_c5bcbc56:
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
        if sub_2bd06359[address(arg1)] >= sub_c5bcbc56:
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
    require ext_code.size(0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb)
    delegate 0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb.0xbc2b405c with:
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

function sub_67f97035(?) payable {
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
            _403 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                mem[_423] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_423 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_423 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _423 + 32
                            u = sha3(mem[0])
                            while _423 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_403] = _423
                    mem[_403 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_403 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_403 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _403
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_403] = _423
                    mem[_403 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_403 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_403 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _403
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_423 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_403] = _423
                    mem[_403 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_403 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_403 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _403
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_423 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _423 + 32
                u = sha3(mem[0])
                while _423 + stor4[address(arg1)][u].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_403] = _423
                mem[_403 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_403 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_403 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _403
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            _428 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_428] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_403] = _428
                    mem[_403 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_403 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_403 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _403
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                    mem[_428 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_403] = _428
                    mem[_403 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_403 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_403 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _403
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_428 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _428 + 32
                u = sha3(mem[0])
                while _428 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_403] = _428
                mem[_403 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_403 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_403 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _403
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[address(arg1)][idx].field_1 % 128:
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_428 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_428 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _428 + 32
                    u = sha3(mem[0])
                    while _428 + stor4[address(arg1)][idx].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_403] = _428
            mem[_403 + 32] = uint256(stor4[address(arg1)][idx].field_256)
            mem[_403 + 64] = uint256(stor4[address(arg1)][idx].field_512)
            mem[_403 + 96] = uint256(stor4[address(arg1)][idx].field_768)
            mem[s] = _403
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
        if sub_e5b87faa[address(arg1)] >= sub_c9c081b1:
            revert with 0, 'Node V2 limit has been reached'
        idx = 0
        while idx < sub_338e4796:
            mem[32] = 4
            if 0 >= uint256(stor4[address(arg1)].field_0):
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            if uint256(stor4[address(arg1)].field_256) != 0:
                idx = idx
                continue 
            if 0 >= uint256(stor4[address(arg1)].field_0):
                revert with 0, 'index > node of user length'
            if var69001 < 1:
                revert with 0, 17
            if var73002 < var73001:
                if 1 > !var77002:
                    revert with 0, 17
                s = var79003 + 1
                t = var79005
                u = var79006
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
                            else:
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
                        else:
                            if bool(stor4[address(arg1)][u].field_0) == stor4[address(arg1)][u].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor[(4 * s) + sha3(t)].field_1 % 128:
                                uint256(stor4[address(arg1)][u].field_0) = 0
                                v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                    uint256(stor[v].field_0) = 0
                                    v = v + 1
                                    continue 
                            else:
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
                    else:
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
                            else:
                                if 31 >= uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][u].field_0) = uint256(stor[(4 * s) + sha3(t)].field_0)
                                    v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                    while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > v:
                                        uint256(stor[v].field_0) = 0
                                        v = v + 1
                                        continue 
                                else:
                                    uint256(stor4[address(arg1)][u].field_0) = Mask(254, 1, uint256(stor[(4 * s) + sha3(t)].field_0)) + 1
                                    if not Mask(256, -1, uint256(stor[(4 * s) + sha3(t)].field_0)):
                                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > v:
                                            uint256(stor[v].field_0) = 0
                                            v = v + 1
                                            continue 
                                    else:
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
                        else:
                            if bool(stor4[address(arg1)][u].field_0) == stor4[address(arg1)][u].field_1 % 128 < 32:
                                revert with 0, 34
                            if not uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                                uint256(stor4[address(arg1)][u].field_0) = 0
                                v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                    uint256(stor[v].field_0) = 0
                                    v = v + 1
                                    continue 
                            else:
                                if 31 >= uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][u].field_0) = uint256(stor[(4 * s) + sha3(t)].field_0)
                                    v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                    while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                        uint256(stor[v].field_0) = 0
                                        v = v + 1
                                        continue 
                                else:
                                    uint256(stor4[address(arg1)][u].field_0) = Mask(254, 1, uint256(stor[(4 * s) + sha3(t)].field_0)) + 1
                                    if not Mask(256, -1, uint256(stor[(4 * s) + sha3(t)].field_0)):
                                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                            uint256(stor[v].field_0) = 0
                                            v = v + 1
                                            continue 
                                    else:
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
                        if 31 < uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                        if 31 < stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
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
                    if sub_2bd06359[address(arg1)]:
                        if sub_2bd06359[address(arg1)] < 1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 5
                        sub_2bd06359[address(arg1)]--
                    idx = idx + 1
                    continue 
                revert with 0, 50
            if not uint256(stor4[address(arg1)].field_0):
                revert with 0, 49
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                if 31 < uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                    while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                    revert with 0, 34
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                if 31 < stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
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
            if sub_2bd06359[address(arg1)]:
                if sub_2bd06359[address(arg1)] < 1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 5
                sub_2bd06359[address(arg1)]--
            idx = idx + 1
            continue 
        mem[0] = address(arg1)
        mem[32] = 4
        _1175 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1175] = 96
        mem[_1175 + 32] = 1
        mem[_1175 + 64] = block.timestamp
        mem[_1175 + 96] = block.timestamp
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
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 1
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
            require ext_code.size(0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb)
            delegate 0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb.0xbc2b405c with:
                 gas gas_remaining wei
                args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_338e4796 > totalNodesCreated:
                revert with 0, 'SafeMath: subtraction overflow', 0
        else:
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                revert with 0, 34
            if mem[96]:
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 1
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
                require ext_code.size(0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb)
                delegate 0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb.0xbc2b405c with:
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
                require ext_code.size(0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb)
                delegate 0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb.0xbc2b405c with:
                     gas gas_remaining wei
                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_338e4796 > totalNodesCreated:
                    var55001 = 32
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
            _405 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _425 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                mem[_425] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_425 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_425 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _425 + 32
                            u = sha3(mem[0])
                            while _425 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_405] = _425
                    mem[_405 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_405 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_405 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _405
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_405] = _425
                    mem[_405 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_405 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_405 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _405
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_425 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_405] = _425
                    mem[_405 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_405 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_405 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _405
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_425 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _425 + 32
                u = sha3(mem[0])
                while _425 + stor4[address(arg1)][u].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_405] = _425
                mem[_405 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_405 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_405 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _405
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            _431 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_431] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_405] = _431
                    mem[_405 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_405 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_405 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _405
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                    mem[_431 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_405] = _431
                    mem[_405 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_405 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_405 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _405
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_431 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _431 + 32
                u = sha3(mem[0])
                while _431 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_405] = _431
                mem[_405 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_405 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_405 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _405
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[address(arg1)][idx].field_1 % 128:
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_431 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_431 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _431 + 32
                    u = sha3(mem[0])
                    while _431 + stor4[address(arg1)][idx].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_405] = _431
            mem[_405 + 32] = uint256(stor4[address(arg1)][idx].field_256)
            mem[_405 + 64] = uint256(stor4[address(arg1)][idx].field_512)
            mem[_405 + 96] = uint256(stor4[address(arg1)][idx].field_768)
            mem[s] = _405
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
        if sub_e5b87faa[address(arg1)] >= sub_c9c081b1:
            revert with 0, 'Node V2 limit has been reached'
        idx = 0
        while idx < sub_338e4796:
            mem[32] = 4
            if 0 >= uint256(stor4[address(arg1)].field_0):
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            if uint256(stor4[address(arg1)].field_256) != 0:
                idx = idx
                continue 
            if 0 >= uint256(stor4[address(arg1)].field_0):
                revert with 0, 'index > node of user length'
            if var70001 < 1:
                revert with 0, 17
            if var74002 < var74001:
                if 1 > !var78002:
                    revert with 0, 17
                s = var80003 + 1
                t = var80005
                u = var80006
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
                            else:
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
                        else:
                            if bool(stor4[address(arg1)][u].field_0) == stor4[address(arg1)][u].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor[(4 * s) + sha3(t)].field_1 % 128:
                                uint256(stor4[address(arg1)][u].field_0) = 0
                                v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                    uint256(stor[v].field_0) = 0
                                    v = v + 1
                                    continue 
                            else:
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
                    else:
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
                            else:
                                if 31 >= uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][u].field_0) = uint256(stor[(4 * s) + sha3(t)].field_0)
                                    v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                    while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > v:
                                        uint256(stor[v].field_0) = 0
                                        v = v + 1
                                        continue 
                                else:
                                    uint256(stor4[address(arg1)][u].field_0) = Mask(254, 1, uint256(stor[(4 * s) + sha3(t)].field_0)) + 1
                                    if not Mask(256, -1, uint256(stor[(4 * s) + sha3(t)].field_0)):
                                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > v:
                                            uint256(stor[v].field_0) = 0
                                            v = v + 1
                                            continue 
                                    else:
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
                        else:
                            if bool(stor4[address(arg1)][u].field_0) == stor4[address(arg1)][u].field_1 % 128 < 32:
                                revert with 0, 34
                            if not uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                                uint256(stor4[address(arg1)][u].field_0) = 0
                                v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                    uint256(stor[v].field_0) = 0
                                    v = v + 1
                                    continue 
                            else:
                                if 31 >= uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][u].field_0) = uint256(stor[(4 * s) + sha3(t)].field_0)
                                    v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                    while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                        uint256(stor[v].field_0) = 0
                                        v = v + 1
                                        continue 
                                else:
                                    uint256(stor4[address(arg1)][u].field_0) = Mask(254, 1, uint256(stor[(4 * s) + sha3(t)].field_0)) + 1
                                    if not Mask(256, -1, uint256(stor[(4 * s) + sha3(t)].field_0)):
                                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                            uint256(stor[v].field_0) = 0
                                            v = v + 1
                                            continue 
                                    else:
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
                        if 31 < uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                        if 31 < stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
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
                    if sub_2bd06359[address(arg1)]:
                        if sub_2bd06359[address(arg1)] < 1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 5
                        sub_2bd06359[address(arg1)]--
                    idx = idx + 1
                    continue 
                revert with 0, 50
            if not uint256(stor4[address(arg1)].field_0):
                revert with 0, 49
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                if 31 < uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                    while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                    revert with 0, 34
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                if 31 < stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
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
            if sub_2bd06359[address(arg1)]:
                if sub_2bd06359[address(arg1)] < 1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 5
                sub_2bd06359[address(arg1)]--
            idx = idx + 1
            continue 
        mem[0] = address(arg1)
        mem[32] = 4
        _1181 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1181] = 96
        mem[_1181 + 32] = 1
        mem[_1181 + 64] = block.timestamp
        mem[_1181 + 96] = block.timestamp
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
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 1
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
            require ext_code.size(0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb)
            delegate 0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb.0xbc2b405c with:
                 gas gas_remaining wei
                args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_338e4796 > totalNodesCreated:
                revert with 0, 'SafeMath: subtraction overflow', 0
        else:
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                revert with 0, 34
            if mem[96]:
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 1
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
                require ext_code.size(0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb)
                delegate 0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb.0xbc2b405c with:
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
                require ext_code.size(0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb)
                delegate 0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb.0xbc2b405c with:
                     gas gas_remaining wei
                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_338e4796 > totalNodesCreated:
                    var56001 = 32
                    revert with 0, 'SafeMath: subtraction overflow', 0
    ('le', ('stor', ('name', 'sub_338e4796', 9)), ('stor', ('name', 'totalNodesCreated', 19)))
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

function sub_bcadb538(?) payable {
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
            _403 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                mem[_423] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_423 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_423 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _423 + 32
                            u = sha3(mem[0])
                            while _423 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_403] = _423
                    mem[_403 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_403 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_403 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _403
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_403] = _423
                    mem[_403 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_403 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_403 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _403
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_423 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_403] = _423
                    mem[_403 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_403 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_403 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _403
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_423 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _423 + 32
                u = sha3(mem[0])
                while _423 + stor4[address(arg1)][u].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_403] = _423
                mem[_403 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_403 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_403 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _403
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            _428 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_428] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_403] = _428
                    mem[_403 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_403 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_403 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _403
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                    mem[_428 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_403] = _428
                    mem[_403 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_403 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_403 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _403
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_428 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _428 + 32
                u = sha3(mem[0])
                while _428 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_403] = _428
                mem[_403 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_403 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_403 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _403
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[address(arg1)][idx].field_1 % 128:
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_428 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_428 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _428 + 32
                    u = sha3(mem[0])
                    while _428 + stor4[address(arg1)][idx].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_403] = _428
            mem[_403 + 32] = uint256(stor4[address(arg1)][idx].field_256)
            mem[_403 + 64] = uint256(stor4[address(arg1)][idx].field_512)
            mem[_403 + 96] = uint256(stor4[address(arg1)][idx].field_768)
            mem[s] = _403
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
        if sub_e5b87faa[address(arg1)] < sub_8f418658:
            revert with 0, 'don't have enough nodes'
        if sub_2be704a5[address(arg1)] >= sub_9ce6a9d8:
            revert with 0, 'Node V3 limit has been reached'
        idx = 0
        while idx < sub_8f418658:
            mem[32] = 4
            if 0 >= uint256(stor4[address(arg1)].field_0):
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            if uint256(stor4[address(arg1)].field_256) != 1:
                idx = idx
                continue 
            if 0 >= uint256(stor4[address(arg1)].field_0):
                revert with 0, 'index > node of user length'
            if var69001 < 1:
                revert with 0, 17
            if var73002 < var73001:
                if 1 > !var77002:
                    revert with 0, 17
                s = var79003 + 1
                t = var79005
                u = var79006
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
                            else:
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
                        else:
                            if bool(stor4[address(arg1)][u].field_0) == stor4[address(arg1)][u].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor[(4 * s) + sha3(t)].field_1 % 128:
                                uint256(stor4[address(arg1)][u].field_0) = 0
                                v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                    uint256(stor[v].field_0) = 0
                                    v = v + 1
                                    continue 
                            else:
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
                    else:
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
                            else:
                                if 31 >= uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][u].field_0) = uint256(stor[(4 * s) + sha3(t)].field_0)
                                    v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                    while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > v:
                                        uint256(stor[v].field_0) = 0
                                        v = v + 1
                                        continue 
                                else:
                                    uint256(stor4[address(arg1)][u].field_0) = Mask(254, 1, uint256(stor[(4 * s) + sha3(t)].field_0)) + 1
                                    if not Mask(256, -1, uint256(stor[(4 * s) + sha3(t)].field_0)):
                                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > v:
                                            uint256(stor[v].field_0) = 0
                                            v = v + 1
                                            continue 
                                    else:
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
                        else:
                            if bool(stor4[address(arg1)][u].field_0) == stor4[address(arg1)][u].field_1 % 128 < 32:
                                revert with 0, 34
                            if not uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                                uint256(stor4[address(arg1)][u].field_0) = 0
                                v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                    uint256(stor[v].field_0) = 0
                                    v = v + 1
                                    continue 
                            else:
                                if 31 >= uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][u].field_0) = uint256(stor[(4 * s) + sha3(t)].field_0)
                                    v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                    while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                        uint256(stor[v].field_0) = 0
                                        v = v + 1
                                        continue 
                                else:
                                    uint256(stor4[address(arg1)][u].field_0) = Mask(254, 1, uint256(stor[(4 * s) + sha3(t)].field_0)) + 1
                                    if not Mask(256, -1, uint256(stor[(4 * s) + sha3(t)].field_0)):
                                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                            uint256(stor[v].field_0) = 0
                                            v = v + 1
                                            continue 
                                    else:
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
                        if 31 < uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                        if 31 < stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
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
                    mem[32] = 6
                    if sub_e5b87faa[address(arg1)]:
                        if sub_e5b87faa[address(arg1)] < 1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 6
                        sub_e5b87faa[address(arg1)]--
                    idx = idx + 1
                    continue 
                revert with 0, 50
            if not uint256(stor4[address(arg1)].field_0):
                revert with 0, 49
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                if 31 < uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                    while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                    revert with 0, 34
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                if 31 < stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
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
            mem[32] = 6
            if sub_e5b87faa[address(arg1)]:
                if sub_e5b87faa[address(arg1)] < 1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 6
                sub_e5b87faa[address(arg1)]--
            idx = idx + 1
            continue 
        mem[0] = address(arg1)
        mem[32] = 4
        _1175 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1175] = 96
        mem[_1175 + 32] = 2
        mem[_1175 + 64] = block.timestamp
        mem[_1175 + 96] = block.timestamp
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
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 2
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
            require ext_code.size(0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb)
            delegate 0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb.0xbc2b405c with:
                 gas gas_remaining wei
                args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_8f418658 > totalNodesCreated:
                revert with 0, 'SafeMath: subtraction overflow', 0
        else:
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                revert with 0, 34
            if mem[96]:
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 2
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
                require ext_code.size(0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb)
                delegate 0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb.0xbc2b405c with:
                     gas gas_remaining wei
                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_8f418658 > totalNodesCreated:
                    revert with 0, 'SafeMath: subtraction overflow', 0
            else:
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                idx = 0
                while stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32 > idx:
                    uint256(stor4[address(arg1)][(4 * uint256(stor4[address(arg1)].field_0)) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 2
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
                require ext_code.size(0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb)
                delegate 0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb.0xbc2b405c with:
                     gas gas_remaining wei
                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_8f418658 > totalNodesCreated:
                    var55001 = 32
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
            _405 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _425 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) + 32
                mem[_425] = uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5
                if bool(stor4[address(arg1)][idx].field_0):
                    if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                        if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                            mem[_425 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                            mem[_425 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                            t = _425 + 32
                            u = sha3(mem[0])
                            while _425 + (uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_405] = _425
                    mem[_405 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_405 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_405 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _405
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[address(arg1)][idx].field_1 % 128:
                    mem[_405] = _425
                    mem[_405 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_405 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_405 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _405
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_425 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_405] = _425
                    mem[_405 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_405 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_405 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _405
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_425 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _425 + 32
                u = sha3(mem[0])
                while _425 + stor4[address(arg1)][u].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_405] = _425
                mem[_405 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_405 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_405 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _405
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            _431 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_1 % 128) + 32
            mem[_431] = stor4[address(arg1)][idx].field_1 % 128
            if bool(stor4[address(arg1)][idx].field_0):
                if bool(stor4[address(arg1)][idx].field_0) == uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor4[address(arg1)][idx].field_0)):
                    mem[_405] = _431
                    mem[_405 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_405 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_405 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _405
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(stor4[address(arg1)][idx].field_0)) * 0.5:
                    mem[_431 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                    mem[_405] = _431
                    mem[_405 + 32] = uint256(stor4[address(arg1)][idx].field_256)
                    mem[_405 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                    mem[_405 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                    mem[s] = _405
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                mem[_431 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                t = _431 + 32
                u = sha3(mem[0])
                while _431 + (uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_405] = _431
                mem[_405 + 32] = uint256(stor4[address(arg1)][u].field_256)
                mem[_405 + 64] = uint256(stor4[address(arg1)][u].field_512)
                mem[_405 + 96] = uint256(stor4[address(arg1)][u].field_768)
                mem[t] = _405
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_0) == stor4[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[address(arg1)][idx].field_1 % 128:
                if 31 >= stor4[address(arg1)][idx].field_1 % 128:
                    mem[_431 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_8)
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4))
                    mem[_431 + 32] = uint256(stor4[address(arg1)][idx].field_0)
                    t = _431 + 32
                    u = sha3(mem[0])
                    while _431 + stor4[address(arg1)][idx].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_405] = _431
            mem[_405 + 32] = uint256(stor4[address(arg1)][idx].field_256)
            mem[_405 + 64] = uint256(stor4[address(arg1)][idx].field_512)
            mem[_405 + 96] = uint256(stor4[address(arg1)][idx].field_768)
            mem[s] = _405
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
        if sub_e5b87faa[address(arg1)] < sub_8f418658:
            revert with 0, 'don't have enough nodes'
        if sub_2be704a5[address(arg1)] >= sub_9ce6a9d8:
            revert with 0, 'Node V3 limit has been reached'
        idx = 0
        while idx < sub_8f418658:
            mem[32] = 4
            if 0 >= uint256(stor4[address(arg1)].field_0):
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            if uint256(stor4[address(arg1)].field_256) != 1:
                idx = idx
                continue 
            if 0 >= uint256(stor4[address(arg1)].field_0):
                revert with 0, 'index > node of user length'
            if var70001 < 1:
                revert with 0, 17
            if var74002 < var74001:
                if 1 > !var78002:
                    revert with 0, 17
                s = var80003 + 1
                t = var80005
                u = var80006
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
                            else:
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
                        else:
                            if bool(stor4[address(arg1)][u].field_0) == stor4[address(arg1)][u].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor[(4 * s) + sha3(t)].field_1 % 128:
                                uint256(stor4[address(arg1)][u].field_0) = 0
                                v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                    uint256(stor[v].field_0) = 0
                                    v = v + 1
                                    continue 
                            else:
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
                    else:
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
                            else:
                                if 31 >= uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][u].field_0) = uint256(stor[(4 * s) + sha3(t)].field_0)
                                    v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                    while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > v:
                                        uint256(stor[v].field_0) = 0
                                        v = v + 1
                                        continue 
                                else:
                                    uint256(stor4[address(arg1)][u].field_0) = Mask(254, 1, uint256(stor[(4 * s) + sha3(t)].field_0)) + 1
                                    if not Mask(256, -1, uint256(stor[(4 * s) + sha3(t)].field_0)):
                                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][u].field_0)) * 0.5) + 31 / 32) > v:
                                            uint256(stor[v].field_0) = 0
                                            v = v + 1
                                            continue 
                                    else:
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
                        else:
                            if bool(stor4[address(arg1)][u].field_0) == stor4[address(arg1)][u].field_1 % 128 < 32:
                                revert with 0, 34
                            if not uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                                uint256(stor4[address(arg1)][u].field_0) = 0
                                v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                    uint256(stor[v].field_0) = 0
                                    v = v + 1
                                    continue 
                            else:
                                if 31 >= uint255(uint256(stor[(4 * s) + sha3(t)].field_0)) * 0.5:
                                    uint256(stor4[address(arg1)][u].field_0) = uint256(stor[(4 * s) + sha3(t)].field_0)
                                    v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                    while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                        uint256(stor[v].field_0) = 0
                                        v = v + 1
                                        continue 
                                else:
                                    uint256(stor4[address(arg1)][u].field_0) = Mask(254, 1, uint256(stor[(4 * s) + sha3(t)].field_0)) + 1
                                    if not Mask(256, -1, uint256(stor[(4 * s) + sha3(t)].field_0)):
                                        v = sha3((4 * u) + sha3(sha3(address(arg1), 4)))
                                        while sha3((4 * u) + sha3(sha3(address(arg1), 4))) + (stor4[address(arg1)][u].field_1 % 128 + 31 / 32) > v:
                                            uint256(stor[v].field_0) = 0
                                            v = v + 1
                                            continue 
                                    else:
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
                        if 31 < uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                            s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                            while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                        if 31 < stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
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
                    mem[32] = 6
                    if sub_e5b87faa[address(arg1)]:
                        if sub_e5b87faa[address(arg1)] < 1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 6
                        sub_e5b87faa[address(arg1)]--
                    idx = idx + 1
                    continue 
                revert with 0, 50
            if not uint256(stor4[address(arg1)].field_0):
                revert with 0, 49
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0):
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                if 31 < uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5:
                    s = sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4)))
                    while sha3((4 * uint256(stor4[address(arg1)].field_0) - 1) + sha3(sha3(address(arg1), 4))) + ((uint255(uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128 < 32:
                    revert with 0, 34
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_0) = 0
                if 31 < stor4[address(arg1)][uint256(stor4[address(arg1)].field_0) - 1].field_1 % 128:
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
            mem[32] = 6
            if sub_e5b87faa[address(arg1)]:
                if sub_e5b87faa[address(arg1)] < 1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 6
                sub_e5b87faa[address(arg1)]--
            idx = idx + 1
            continue 
        mem[0] = address(arg1)
        mem[32] = 4
        _1181 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1181] = 96
        mem[_1181 + 32] = 2
        mem[_1181 + 64] = block.timestamp
        mem[_1181 + 96] = block.timestamp
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
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 2
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
            uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
            require ext_code.size(0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb)
            delegate 0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb.0xbc2b405c with:
                 gas gas_remaining wei
                args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_8f418658 > totalNodesCreated:
                revert with 0, 'SafeMath: subtraction overflow', 0
        else:
            if bool(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) == stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 < 32:
                revert with 0, 34
            if mem[96]:
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 2
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
                require ext_code.size(0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb)
                delegate 0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb.0xbc2b405c with:
                     gas gas_remaining wei
                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_8f418658 > totalNodesCreated:
                    revert with 0, 'SafeMath: subtraction overflow', 0
            else:
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_0) = 0
                idx = 0
                while stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_1 % 128 + 31 / 32 > idx:
                    uint256(stor4[address(arg1)][(4 * uint256(stor4[address(arg1)].field_0)) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_256) = 2
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_512) = block.timestamp
                uint256(stor4[address(arg1)][uint256(stor4[address(arg1)].field_0)].field_768) = block.timestamp
                require ext_code.size(0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb)
                delegate 0xf8c1056673ef7b06bfbc7a4d827e8a47f91bd0fb.0xbc2b405c with:
                     gas gas_remaining wei
                    args 0, address(arg1), uint256(stor4[address(arg1)].field_0)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_8f418658 > totalNodesCreated:
                    var56001 = 32
                    revert with 0, 'SafeMath: subtraction overflow', 0
    ('le', ('stor', ('name', 'sub_8f418658', 10)), ('stor', ('name', 'totalNodesCreated', 19)))
    if totalNodesCreated < sub_8f418658:
        revert with 0, 17
    totalNodesCreated -= sub_8f418658
    if sub_7f940e17 == -1:
        revert with 0, 17
    sub_7f940e17++
    if sub_2be704a5[address(arg1)] > -2:
        revert with 0, 17
    if sub_2be704a5[address(arg1)] + 1 < sub_2be704a5[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_2be704a5[address(arg1)]++
}



}
