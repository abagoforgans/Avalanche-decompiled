contract main {




// =====================  Runtime code  =====================


#
#  - sub_2f7c8e57(?)
#  - _cashoutNodeReward(address arg1, uint256 arg2)
#  - sub_a56e7d30(?)
#  - sub_ec56348e(?)
#
uint256 sub_2ba44c90;
array of struct sub_09e1f796;
uint32 sub_ebbbb74a;
array of struct stor7;
array of struct stor8;
mapping of uint256 sub_2bd06359;
mapping of uint256 sub_e5b87faa;
mapping of uint256 sub_2be704a5;
uint256 sub_3c816345;
uint256 sub_338e4796;
uint256 sub_8f418658;
uint256 sub_48fb6112;
uint256 sub_de2c12d5;
uint256 sub_e6d1d444;
uint256 sub_e0633ef4;
uint256 sub_a23af6ae;
uint256 sub_e52f4e1b;
uint256 claimTime;
uint256 sub_c5bcbc56;
uint256 sub_c9c081b1;
uint256 sub_9ce6a9d8;
address gateKeeperAddress;
uint8 stor26; offset 160
address tokenAddress;
uint256 lastIndexProcessed;
uint256 sub_ccfdcf80;
uint256 sub_4588b13b;
uint256 sub_7f940e17;
uint256 totalRewardStaked;
uint256 sub_da05ed90;
uint256 sub_aa34b8ac;
uint256 sub_a4e7674f;

function sub_09e1f796(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_09e1f796.length
    return sub_09e1f796[arg1].field_0, sub_09e1f796[arg1].field_0, sub_09e1f796[arg1].field_0, bool(sub_09e1f796[arg1].field_80)
}

function claimTime() payable {
    return claimTime
}

function sub_2ba44c90(?) payable {
    return sub_2ba44c90
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

function sub_3c816345(?) payable {
    return sub_3c816345
}

function sub_4588b13b(?) payable {
    return sub_4588b13b
}

function gateKeeper() payable {
    return gateKeeperAddress
}

function sub_48fb6112(?) payable {
    return sub_48fb6112
}

function distribution() payable {
    return bool(stor26)
}

function lastIndexProcessed() payable {
    return lastIndexProcessed
}

function sub_7f940e17(?) payable {
    return sub_7f940e17
}

function totalRewardStaked() payable {
    return totalRewardStaked
}

function sub_8f418658(?) payable {
    return sub_8f418658
}

function sub_9ce6a9d8(?) payable {
    return sub_9ce6a9d8
}

function sub_a23af6ae(?) payable {
    return sub_a23af6ae
}

function sub_a4e7674f(?) payable {
    return sub_a4e7674f
}

function sub_aa34b8ac(?) payable {
    return sub_aa34b8ac
}

function sub_c5bcbc56(?) payable {
    return sub_c5bcbc56
}

function sub_c9c081b1(?) payable {
    return sub_c9c081b1
}

function sub_ccfdcf80(?) payable {
    return sub_ccfdcf80
}

function sub_da05ed90(?) payable {
    return sub_da05ed90
}

function sub_de2c12d5(?) payable {
    return sub_de2c12d5
}

function sub_e0633ef4(?) payable {
    return sub_e0633ef4
}

function sub_e52f4e1b(?) payable {
    return sub_e52f4e1b
}

function sub_e5b87faa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e5b87faa[arg1]
}

function sub_e6d1d444(?) payable {
    return sub_e6d1d444
}

function sub_ebbbb74a(?) payable {
    return sub_ebbbb74a
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_8b015ecf(?) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    sub_da05ed90 = arg1
}

function _changeClaimTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    claimTime = arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    tokenAddress = arg1
}

function sub_080227c1(?) payable {
    require calldata.size - 4 >= 32
    if 0 >= arg1:
        revert with 0, 'ERROR: Wrong node level'
    if arg1 > 3:
        revert with 0, 'ERROR: Wrong node level'
    if not -arg1 + 1:
        return sub_ccfdcf80
    if -arg1 + 2:
        return sub_7f940e17
    return sub_4588b13b
}

function sub_8994a021(?) payable {
    require calldata.size - 4 >= 32
    if 0 >= arg1:
        revert with 0, 'ERROR: Wrong node level'
    if arg1 > 3:
        revert with 0, 'ERROR: Wrong node level'
    if not -arg1 + 1:
        return sub_48fb6112
    if -arg1 + 2:
        return sub_a23af6ae
    return sub_e6d1d444
}

function getNodePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0 >= arg1:
        revert with 0, 'ERROR: Wrong node level'
    if arg1 > 3:
        revert with 0, 'ERROR: Wrong node level'
    if not -arg1 + 1:
        return sub_3c816345
    if -arg1 + 2:
        return sub_8f418658
    return sub_338e4796
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegate 0xc0e972b6b76fcefa4963e1422ee0f258dc1222c2.0x732a2ccf with:
         gas gas_remaining wei
        args 3, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function _isNodeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegate 0xc0e972b6b76fcefa4963e1422ee0f258dc1222c2.0x732a2ccf with:
         gas gas_remaining wei
        args 3, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] > 0)
}

function sub_5db9f700(?) payable {
    require calldata.size - 4 >= 64
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    if 0 >= arg1:
        revert with 0, 'ERROR: Wrong node level'
    if arg1 > 3:
        revert with 0, 'ERROR: Wrong node level'
    if not -arg1 + 1:
        sub_48fb6112 = arg2
    else:
        if -arg1 + 2:
            sub_a23af6ae = arg2
        else:
            sub_e6d1d444 = arg2
}

function sub_f2d52dfc(?) payable {
    require calldata.size - 4 >= 64
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    if 0 >= arg1:
        revert with 0, 'ERROR: Wrong node level'
    if arg1 > 3:
        revert with 0, 'ERROR: Wrong node level'
    if not -arg1 + 1:
        sub_3c816345 = arg2
    else:
        if -arg1 + 2:
            sub_8f418658 = arg2
        else:
            sub_338e4796 = arg2
}

function sub_30589d84(?) payable {
    require calldata.size - 4 >= 64
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    sub_09e1f796.length++
    sub_09e1f796[sub_09e1f796.length].field_0 = uint16(sub_09e1f796.length)
    sub_09e1f796[sub_09e1f796.length].field_16 = arg1
    sub_09e1f796[sub_09e1f796.length].field_48 = arg2
    sub_09e1f796[sub_09e1f796.length].field_80 = 0
    if sub_2ba44c90 > -2:
        revert with 'NH{q', 17
    sub_2ba44c90++
}

function sub_511acf34(?) payable {
    require calldata.size - 4 >= 32
    if 0 >= arg1:
        revert with 0, 'ERROR: Wrong node level'
    if arg1 > 3:
        revert with 0, 'ERROR: Wrong node level'
    if not -arg1 + 1:
        return sub_3c816345
    if not -arg1 + 2:
        if sub_338e4796 > !sub_3c816345:
            revert with 'NH{q', 17
        return (sub_338e4796 + sub_3c816345)
    if sub_8f418658 > !sub_338e4796:
        revert with 'NH{q', 17
    if sub_8f418658 + sub_338e4796 > !sub_3c816345:
        revert with 'NH{q', 17
    return (sub_8f418658 + sub_338e4796 + sub_3c816345)
}

function sub_a5835a04(?) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
    idx = 0
    while idx < sub_09e1f796.length:
        mem[0] = 1
        if sub_09e1f796[idx].field_0 - arg1:
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_09e1f796.length:
            revert with 'NH{q', 50
        sub_09e1f796[idx].field_80 = 1
        if sub_2ba44c90 < 1:
            revert with 'NH{q', 17
        sub_2ba44c90--
    revert with 0, 'No package removed'
}

function sub_6921f4dc(?) payable {
    require calldata.size - 4 >= 32
    delegate 0xc0e972b6b76fcefa4963e1422ee0f258dc1222c2.0x732a2ccf with:
         gas gas_remaining wei
        args 3, msg.sender
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    if 0 >= arg1:
        revert with 0, 'ERROR: Wrong node level'
    if arg1 > 3:
        revert with 0, 'ERROR: Wrong node level'
    if not -arg1 + 1:
        return sub_2bd06359[address(msg.sender)]
    if -arg1 + 2:
        return sub_2be704a5[address(msg.sender)]
    return sub_e5b87faa[address(msg.sender)]
}

function sub_a9f26f77(?) payable {
    mem[0] = msg.sender
    mem[32] = 8
    mem[64] = (32 * stor8[msg.sender].field_0) + 128
    mem[96] = stor8[msg.sender].field_0
    s = 128
    idx = 0
    while idx < stor8[msg.sender].field_0:
        mem[0] = sha3(msg.sender, 8)
        _14 = mem[64]
        mem[64] = mem[64] + 128
        mem[_14] = stor8[msg.sender][idx].field_0
        mem[_14 + 32] = stor8[msg.sender][idx].field_32
        mem[_14 + 64] = stor8[msg.sender][idx].field_64
        mem[_14 + 96] = stor8[msg.sender][idx].field_256
        mem[s] = _14
        s = s + 32
        idx = idx + 1
        continue 
    _15 = mem[64]
    mem[mem[64]] = 32
    _16 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _16:
        _23 = mem[s]
        mem[t] = mem[mem[s] + 28 len 4]
        mem[t + 32] = mem[_23 + 60 len 4]
        mem[t + 64] = mem[_23 + 92 len 4]
        mem[t + 96] = mem[_23 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _15 + (128 * _16) + -mem[64] + 64
}

function sub_f11ca8bb(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == uint32(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint32(arg3)
    require arg4 == uint32(arg4)
    require arg6 == bool(arg6)
    if block.timestamp < uint32(arg4):
        revert with 'NH{q', 17
    if not -uint8(arg2) + 2:
        if block.timestamp - uint32(arg4) and sub_e0633ef4 > -1 / block.timestamp - uint32(arg4):
            revert with 'NH{q', 17
        if (block.timestamp * sub_e0633ef4) - (uint32(arg4) * sub_e0633ef4) > !arg5:
            revert with 'NH{q', 17
        return ((block.timestamp * sub_e0633ef4) - (uint32(arg4) * sub_e0633ef4) + arg5)
    if -uint8(arg2) + 3:
        if block.timestamp - uint32(arg4) and sub_de2c12d5 > -1 / block.timestamp - uint32(arg4):
            revert with 'NH{q', 17
        if (block.timestamp * sub_de2c12d5) - (uint32(arg4) * sub_de2c12d5) > !arg5:
            revert with 'NH{q', 17
        return ((block.timestamp * sub_de2c12d5) - (uint32(arg4) * sub_de2c12d5) + arg5)
    if block.timestamp - uint32(arg4) and sub_e52f4e1b > -1 / block.timestamp - uint32(arg4):
        revert with 'NH{q', 17
    if (block.timestamp * sub_e52f4e1b) - (uint32(arg4) * sub_e52f4e1b) > !arg5:
        revert with 'NH{q', 17
    return ((block.timestamp * sub_e52f4e1b) - (uint32(arg4) * sub_e52f4e1b) + arg5)
}

function sub_67200fd7(?) payable {
    mem[0] = msg.sender
    mem[32] = 7
    mem[64] = (32 * stor7[msg.sender].field_0) + 128
    mem[96] = stor7[msg.sender].field_0
    s = 128
    idx = 0
    while idx < stor7[msg.sender].field_0:
        mem[0] = sha3(msg.sender, 7)
        _18 = mem[64]
        mem[64] = mem[64] + 256
        mem[_18] = stor7[msg.sender][idx].field_0
        mem[_18 + 32] = stor7[msg.sender][idx].field_256
        mem[_18 + 64] = stor7[msg.sender][idx].field_512
        mem[_18 + 96] = stor7[msg.sender][idx].field_520
        mem[_18 + 128] = stor7[msg.sender][idx].field_552
        mem[_18 + 160] = stor7[msg.sender][idx].field_768
        mem[_18 + 192] = stor7[msg.sender][idx].field_1024
        mem[_18 + 224] = bool(stor7[msg.sender][idx].field_1280)
        mem[s] = _18
        s = s + 32
        idx = idx + 1
        continue 
    _19 = mem[64]
    mem[mem[64]] = 32
    _20 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _20:
        _31 = mem[s]
        mem[t] = mem[mem[s] + 28 len 4]
        mem[t + 32] = mem[_31 + 32]
        mem[t + 64] = mem[_31 + 95 len 1]
        mem[t + 96] = mem[_31 + 124 len 4]
        mem[t + 128] = mem[_31 + 156 len 4]
        mem[t + 160] = mem[_31 + 160]
        mem[t + 192] = mem[_31 + 192]
        mem[t + 224] = bool(mem[_31 + 224])
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _19 + (256 * _20) + -mem[64] + 64
}

function sub_748e48b8(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if msg.sender == tokenAddress:
        if sub_2bd06359[address(arg1)] > !arg3:
            revert with 'NH{q', 17
        if sub_2bd06359[address(arg1)] + arg3 >= sub_c5bcbc56:
            revert with 0, 'Node V1 limit has been reached'
        idx = 0
        while idx < arg3:
            _39 = mem[64]
            mem[64] = mem[64] + 256
            mem[_39] = sub_ebbbb74a
            mem[_39 + 32] = arg2
            mem[_39 + 64] = 1
            mem[_39 + 96] = uint32(block.timestamp)
            mem[_39 + 128] = uint32(block.timestamp)
            mem[_39 + 160] = 0
            mem[_39 + 192] = 0
            mem[_39 + 224] = 0
            stor7[address(arg1)].field_0++
            mem[0] = sha3(address(arg1), 7)
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = sub_ebbbb74a
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = arg2
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = 1
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_520 = uint32(block.timestamp)
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_552 = uint32(block.timestamp)
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_1024 = 0
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_1280 = 0
            if sub_ebbbb74a > 4294967294:
                revert with 'NH{q', 17
            sub_ebbbb74a = uint32(sub_ebbbb74a + 1)
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
        if sub_2bd06359[address(arg1)] > !arg3:
            revert with 'NH{q', 17
        if sub_2bd06359[address(arg1)] + arg3 >= sub_c5bcbc56:
            revert with 0, 'Node V1 limit has been reached'
        idx = 0
        while idx < arg3:
            _51 = mem[64]
            mem[64] = mem[64] + 256
            mem[_51] = sub_ebbbb74a
            mem[_51 + 32] = arg2
            mem[_51 + 64] = 1
            mem[_51 + 96] = uint32(block.timestamp)
            mem[_51 + 128] = uint32(block.timestamp)
            mem[_51 + 160] = 0
            mem[_51 + 192] = 0
            mem[_51 + 224] = 0
            stor7[address(arg1)].field_0++
            mem[0] = sha3(address(arg1), 7)
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = sub_ebbbb74a
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = arg2
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = 1
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_520 = uint32(block.timestamp)
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_552 = uint32(block.timestamp)
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_1024 = 0
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_1280 = 0
            if sub_ebbbb74a > 4294967294:
                revert with 'NH{q', 17
            sub_ebbbb74a = uint32(sub_ebbbb74a + 1)
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    require ext_code.size(0xc0e972b6b76fcefa4963e1422ee0f258dc1222c2)
    delegate 0xc0e972b6b76fcefa4963e1422ee0f258dc1222c2.0xbc2b405c with:
         gas gas_remaining wei
        args 3, address(arg1), stor7[address(arg1)].field_0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_2bd06359[address(arg1)] > !arg3:
        revert with 'NH{q', 17
    sub_2bd06359[address(arg1)] += arg3
    if sub_ccfdcf80 > !arg3:
        revert with 'NH{q', 17
    sub_ccfdcf80 += arg3
}

function sub_9053da72(?) payable {
    if sub_2ba44c90 > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_2ba44c90
    if not sub_2ba44c90:
        mem[64] = (32 * sub_2ba44c90) + (32 * sub_09e1f796.length) + 160
        mem[(32 * sub_2ba44c90) + 128] = sub_09e1f796.length
        s = (32 * sub_2ba44c90) + 160
        idx = 0
        while idx < sub_09e1f796.length:
            mem[0] = 1
            _37 = mem[64]
            mem[64] = mem[64] + 128
            mem[_37] = sub_09e1f796[idx].field_0
            mem[_37 + 32] = sub_09e1f796[idx].field_16
            mem[_37 + 64] = sub_09e1f796[idx].field_48
            mem[_37 + 96] = bool(sub_09e1f796[idx].field_80)
            mem[s] = _37
            s = s + 32
            idx = idx + 1
            continue 
        _67 = mem[(32 * sub_2ba44c90) + 128]
        idx = 0
        s = 0
        while idx < _67:
            if idx >= mem[(32 * sub_2ba44c90) + 128]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + (32 * sub_2ba44c90) + 160] + 96]:
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                _67 = mem[(32 * sub_2ba44c90) + 128]
                idx = idx + 1
                s = s
                continue 
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = mem[(32 * idx) + (32 * sub_2ba44c90) + 160]
            if not s - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            _67 = mem[(32 * sub_2ba44c90) + 128]
            idx = idx + 1
            s = s + 1
            continue 
        _71 = mem[64]
        mem[mem[64]] = 32
        _75 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _75:
            _96 = mem[s]
            mem[t] = mem[mem[s] + 30 len 2]
            mem[t + 32] = mem[_96 + 60 len 4]
            mem[t + 64] = mem[_96 + 92 len 4]
            mem[t + 96] = bool(mem[_96 + 96])
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _71 + (128 * _75) + -mem[64] + 64
    mem[64] = (32 * sub_2ba44c90) + 256
    mem[(32 * sub_2ba44c90) + 128] = 0
    mem[(32 * sub_2ba44c90) + 160] = 0
    mem[(32 * sub_2ba44c90) + 192] = 0
    mem[(32 * sub_2ba44c90) + 224] = 0
    mem[128] = (32 * sub_2ba44c90) + 128
    s = 128
    idx = sub_2ba44c90
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * sub_2ba44c90) + 128] = 0
        mem[(32 * sub_2ba44c90) + 160] = 0
        mem[(32 * sub_2ba44c90) + 192] = 0
        mem[(32 * sub_2ba44c90) + 224] = 0
        mem[s + 32] = (32 * sub_2ba44c90) + 128
        s = s + 32
        idx = idx - 1
        continue 
    _39 = mem[64]
    mem[64] = mem[64] + (32 * sub_09e1f796.length) + 32
    mem[_39] = sub_09e1f796.length
    s = _39 + 32
    idx = 0
    while idx < sub_09e1f796.length:
        mem[0] = 1
        _70 = mem[64]
        mem[64] = mem[64] + 128
        mem[_70] = sub_09e1f796[idx].field_0
        mem[_70 + 32] = sub_09e1f796[idx].field_16
        mem[_70 + 64] = sub_09e1f796[idx].field_48
        mem[_70 + 96] = bool(sub_09e1f796[idx].field_80)
        mem[s] = _70
        s = s + 32
        idx = idx + 1
        continue 
    _95 = mem[_39]
    idx = 0
    s = 0
    while idx < _95:
        if idx >= mem[_39]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _39 + 32] + 96]:
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            _95 = mem[_39]
            idx = idx + 1
            s = s
            continue 
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = mem[(32 * idx) + _39 + 32]
        if not s - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        _95 = mem[_39]
        idx = idx + 1
        s = s + 1
        continue 
    _103 = mem[64]
    mem[mem[64]] = 32
    _106 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _106:
        _114 = mem[s]
        mem[t] = mem[mem[s] + 30 len 2]
        mem[t + 32] = mem[_114 + 60 len 4]
        mem[t + 64] = mem[_114 + 92 len 4]
        mem[t + 96] = bool(mem[_114 + 96])
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _103 + (128 * _106) + -mem[64] + 64
}

function sub_d5426589(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = 3
    mem[132] = address(arg1)
    delegate 0xc0e972b6b76fcefa4963e1422ee0f258dc1222c2.0x732a2ccf with:
         gas gas_remaining wei
        args 3, address(arg1)
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    mem[64] = ceil32(return_data.size) + (32 * stor7[address(arg1)].field_0) + 128
    mem[ceil32(return_data.size) + 96] = stor7[address(arg1)].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < stor7[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 7)
        _26 = mem[64]
        mem[64] = mem[64] + 256
        mem[_26] = stor7[address(arg1)][idx].field_0
        mem[_26 + 32] = stor7[address(arg1)][idx].field_256
        mem[_26 + 64] = stor7[address(arg1)][idx].field_512
        mem[_26 + 96] = stor7[address(arg1)][idx].field_520
        mem[_26 + 128] = stor7[address(arg1)][idx].field_552
        mem[_26 + 160] = stor7[address(arg1)][idx].field_768
        mem[_26 + 192] = stor7[address(arg1)][idx].field_1024
        mem[_26 + 224] = bool(stor7[address(arg1)][idx].field_1280)
        mem[s] = _26
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 224]:
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if block.timestamp < mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4]:
            revert with 'NH{q', 17
        if not -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 95 len 1] + 2:
            if block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] and sub_e0633ef4 > -1 / block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4]:
                revert with 'NH{q', 17
            if (block.timestamp * sub_e0633ef4) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_e0633ef4) > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
                revert with 'NH{q', 17
            if s > !((block.timestamp * sub_e0633ef4) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_e0633ef4) + mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]):
                revert with 'NH{q', 17
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (block.timestamp * sub_e0633ef4) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_e0633ef4) + mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]
            continue 
        if -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 95 len 1] + 3:
            if block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] and sub_de2c12d5 > -1 / block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4]:
                revert with 'NH{q', 17
            if (block.timestamp * sub_de2c12d5) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_de2c12d5) > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
                revert with 'NH{q', 17
            if s > !((block.timestamp * sub_de2c12d5) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_de2c12d5) + mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]):
                revert with 'NH{q', 17
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (block.timestamp * sub_de2c12d5) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_de2c12d5) + mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]
            continue 
        if block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] and sub_e52f4e1b > -1 / block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4]:
            revert with 'NH{q', 17
        if (block.timestamp * sub_e52f4e1b) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_e52f4e1b) > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
            revert with 'NH{q', 17
        if s > !((block.timestamp * sub_e52f4e1b) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_e52f4e1b) + mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]):
            revert with 'NH{q', 17
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (block.timestamp * sub_e52f4e1b) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_e52f4e1b) + mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]
        continue 
    return s
}

function sub_048cf8d1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[100] = 3
    mem[132] = address(arg1)
    delegate 0xc0e972b6b76fcefa4963e1422ee0f258dc1222c2.0x732a2ccf with:
         gas gas_remaining wei
        args 3, address(arg1)
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    mem[64] = ceil32(return_data.size) + (32 * stor7[address(arg1)].field_0) + 128
    mem[ceil32(return_data.size) + 96] = stor7[address(arg1)].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < stor7[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 7)
        _28 = mem[64]
        mem[64] = mem[64] + 256
        mem[_28] = stor7[address(arg1)][idx].field_0
        mem[_28 + 32] = stor7[address(arg1)][idx].field_256
        mem[_28 + 64] = stor7[address(arg1)][idx].field_512
        mem[_28 + 96] = stor7[address(arg1)][idx].field_520
        mem[_28 + 128] = stor7[address(arg1)][idx].field_552
        mem[_28 + 160] = stor7[address(arg1)][idx].field_768
        mem[_28 + 192] = stor7[address(arg1)][idx].field_1024
        mem[_28 + 224] = bool(stor7[address(arg1)][idx].field_1280)
        mem[s] = _28
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] > !claimTime:
            revert with 'NH{q', 17
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 224]:
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if block.timestamp < mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] + claimTime:
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 95 len 1] != arg2:
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if block.timestamp < mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4]:
            revert with 'NH{q', 17
        if not -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 95 len 1] + 2:
            if block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] and sub_e0633ef4 > -1 / block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4]:
                revert with 'NH{q', 17
            if (block.timestamp * sub_e0633ef4) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_e0633ef4) > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
                revert with 'NH{q', 17
            if s > !((block.timestamp * sub_e0633ef4) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_e0633ef4) + mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]):
                revert with 'NH{q', 17
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (block.timestamp * sub_e0633ef4) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_e0633ef4) + mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]
            continue 
        if -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 95 len 1] + 3:
            if block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] and sub_de2c12d5 > -1 / block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4]:
                revert with 'NH{q', 17
            if (block.timestamp * sub_de2c12d5) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_de2c12d5) > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
                revert with 'NH{q', 17
            if s > !((block.timestamp * sub_de2c12d5) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_de2c12d5) + mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]):
                revert with 'NH{q', 17
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (block.timestamp * sub_de2c12d5) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_de2c12d5) + mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]
            continue 
        if block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] and sub_e52f4e1b > -1 / block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4]:
            revert with 'NH{q', 17
        if (block.timestamp * sub_e52f4e1b) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_e52f4e1b) > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
            revert with 'NH{q', 17
        if s > !((block.timestamp * sub_e52f4e1b) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_e52f4e1b) + mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]):
            revert with 'NH{q', 17
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (block.timestamp * sub_e52f4e1b) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4] * sub_e52f4e1b) + mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]
        continue 
    return s
}

function sub_d3ac7645(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if msg.sender == tokenAddress:
        idx = 0
        while idx < stor7[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 7)
            if stor7[address(arg1)][idx].field_552 > !claimTime:
                revert with 'NH{q', 17
            if not stor7[address(arg1)][idx].field_1280:
                if block.timestamp >= stor7[address(arg1)][idx].field_552 + claimTime:
                    if arg2 == stor7[address(arg1)][idx].field_512:
                        _27 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_27] = stor7[address(arg1)][idx].field_0
                        mem[_27 + 32] = stor7[address(arg1)][idx].field_256
                        mem[_27 + 64] = stor7[address(arg1)][idx].field_512
                        mem[_27 + 96] = stor7[address(arg1)][idx].field_520
                        mem[_27 + 128] = stor7[address(arg1)][idx].field_552
                        mem[_27 + 160] = stor7[address(arg1)][idx].field_768
                        mem[_27 + 192] = stor7[address(arg1)][idx].field_1024
                        mem[_27 + 224] = bool(stor7[address(arg1)][idx].field_1280)
                        if block.timestamp < stor7[address(arg1)][idx].field_552:
                            revert with 'NH{q', 17
                        if not -stor7[address(arg1)][idx].field_512 + 2:
                            if block.timestamp - stor7[address(arg1)][idx].field_552 and sub_e0633ef4 > -1 / block.timestamp - stor7[address(arg1)][idx].field_552:
                                revert with 'NH{q', 17
                            if (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)][idx].field_552 * sub_e0633ef4) > !stor7[address(arg1)][idx].field_768:
                                revert with 'NH{q', 17
                            stor7[address(arg1)][idx].field_552 = uint32(block.timestamp)
                            stor7[address(arg1)][idx].field_768 = 0
                            if stor7[address(arg1)][idx].field_1024 > !((block.timestamp * sub_e0633ef4) - (stor7[address(arg1)][idx].field_552 * sub_e0633ef4) + stor7[address(arg1)][idx].field_768):
                                revert with 'NH{q', 17
                            stor7[address(arg1)][idx].field_1024 = stor7[address(arg1)][idx].field_1024 + (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)][idx].field_552 * sub_e0633ef4) + stor7[address(arg1)][idx].field_768
                        else:
                            if -stor7[address(arg1)][idx].field_512 + 3:
                                if block.timestamp - stor7[address(arg1)][idx].field_552 and sub_de2c12d5 > -1 / block.timestamp - stor7[address(arg1)][idx].field_552:
                                    revert with 'NH{q', 17
                                if (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)][idx].field_552 * sub_de2c12d5) > !stor7[address(arg1)][idx].field_768:
                                    revert with 'NH{q', 17
                                stor7[address(arg1)][idx].field_552 = uint32(block.timestamp)
                                stor7[address(arg1)][idx].field_768 = 0
                                if stor7[address(arg1)][idx].field_1024 > !((block.timestamp * sub_de2c12d5) - (stor7[address(arg1)][idx].field_552 * sub_de2c12d5) + stor7[address(arg1)][idx].field_768):
                                    revert with 'NH{q', 17
                                stor7[address(arg1)][idx].field_1024 = stor7[address(arg1)][idx].field_1024 + (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)][idx].field_552 * sub_de2c12d5) + stor7[address(arg1)][idx].field_768
                            else:
                                if block.timestamp - stor7[address(arg1)][idx].field_552 and sub_e52f4e1b > -1 / block.timestamp - stor7[address(arg1)][idx].field_552:
                                    revert with 'NH{q', 17
                                if (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)][idx].field_552 * sub_e52f4e1b) > !stor7[address(arg1)][idx].field_768:
                                    revert with 'NH{q', 17
                                stor7[address(arg1)][idx].field_552 = uint32(block.timestamp)
                                stor7[address(arg1)][idx].field_768 = 0
                                if stor7[address(arg1)][idx].field_1024 > !((block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)][idx].field_552 * sub_e52f4e1b) + stor7[address(arg1)][idx].field_768):
                                    revert with 'NH{q', 17
                                stor7[address(arg1)][idx].field_1024 = stor7[address(arg1)][idx].field_1024 + (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)][idx].field_552 * sub_e52f4e1b) + stor7[address(arg1)][idx].field_768
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
        idx = 0
        while idx < stor7[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 7)
            if stor7[address(arg1)][idx].field_552 > !claimTime:
                revert with 'NH{q', 17
            if not stor7[address(arg1)][idx].field_1280:
                if block.timestamp >= stor7[address(arg1)][idx].field_552 + claimTime:
                    if arg2 == stor7[address(arg1)][idx].field_512:
                        _28 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_28] = stor7[address(arg1)][idx].field_0
                        mem[_28 + 32] = stor7[address(arg1)][idx].field_256
                        mem[_28 + 64] = stor7[address(arg1)][idx].field_512
                        mem[_28 + 96] = stor7[address(arg1)][idx].field_520
                        mem[_28 + 128] = stor7[address(arg1)][idx].field_552
                        mem[_28 + 160] = stor7[address(arg1)][idx].field_768
                        mem[_28 + 192] = stor7[address(arg1)][idx].field_1024
                        mem[_28 + 224] = bool(stor7[address(arg1)][idx].field_1280)
                        if block.timestamp < stor7[address(arg1)][idx].field_552:
                            revert with 'NH{q', 17
                        if not -stor7[address(arg1)][idx].field_512 + 2:
                            if block.timestamp - stor7[address(arg1)][idx].field_552 and sub_e0633ef4 > -1 / block.timestamp - stor7[address(arg1)][idx].field_552:
                                revert with 'NH{q', 17
                            if (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)][idx].field_552 * sub_e0633ef4) > !stor7[address(arg1)][idx].field_768:
                                revert with 'NH{q', 17
                            stor7[address(arg1)][idx].field_552 = uint32(block.timestamp)
                            stor7[address(arg1)][idx].field_768 = 0
                            if stor7[address(arg1)][idx].field_1024 > !((block.timestamp * sub_e0633ef4) - (stor7[address(arg1)][idx].field_552 * sub_e0633ef4) + stor7[address(arg1)][idx].field_768):
                                revert with 'NH{q', 17
                            stor7[address(arg1)][idx].field_1024 = stor7[address(arg1)][idx].field_1024 + (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)][idx].field_552 * sub_e0633ef4) + stor7[address(arg1)][idx].field_768
                        else:
                            if -stor7[address(arg1)][idx].field_512 + 3:
                                if block.timestamp - stor7[address(arg1)][idx].field_552 and sub_de2c12d5 > -1 / block.timestamp - stor7[address(arg1)][idx].field_552:
                                    revert with 'NH{q', 17
                                if (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)][idx].field_552 * sub_de2c12d5) > !stor7[address(arg1)][idx].field_768:
                                    revert with 'NH{q', 17
                                stor7[address(arg1)][idx].field_552 = uint32(block.timestamp)
                                stor7[address(arg1)][idx].field_768 = 0
                                if stor7[address(arg1)][idx].field_1024 > !((block.timestamp * sub_de2c12d5) - (stor7[address(arg1)][idx].field_552 * sub_de2c12d5) + stor7[address(arg1)][idx].field_768):
                                    revert with 'NH{q', 17
                                stor7[address(arg1)][idx].field_1024 = stor7[address(arg1)][idx].field_1024 + (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)][idx].field_552 * sub_de2c12d5) + stor7[address(arg1)][idx].field_768
                            else:
                                if block.timestamp - stor7[address(arg1)][idx].field_552 and sub_e52f4e1b > -1 / block.timestamp - stor7[address(arg1)][idx].field_552:
                                    revert with 'NH{q', 17
                                if (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)][idx].field_552 * sub_e52f4e1b) > !stor7[address(arg1)][idx].field_768:
                                    revert with 'NH{q', 17
                                stor7[address(arg1)][idx].field_552 = uint32(block.timestamp)
                                stor7[address(arg1)][idx].field_768 = 0
                                if stor7[address(arg1)][idx].field_1024 > !((block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)][idx].field_552 * sub_e52f4e1b) + stor7[address(arg1)][idx].field_768):
                                    revert with 'NH{q', 17
                                stor7[address(arg1)][idx].field_1024 = stor7[address(arg1)][idx].field_1024 + (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)][idx].field_552 * sub_e52f4e1b) + stor7[address(arg1)][idx].field_768
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 3
    mem[132] = arg1
    delegate 0xc0e972b6b76fcefa4963e1422ee0f258dc1222c2.0x732a2ccf with:
         gas gas_remaining wei
        args 3, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'LAST CLAIME TIME: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 7
    mem[64] = ceil32(return_data.size) + (32 * stor7[address(arg1)].field_0) + 128
    mem[ceil32(return_data.size) + 96] = stor7[address(arg1)].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < stor7[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 7)
        _135 = mem[64]
        mem[64] = mem[64] + 256
        mem[_135] = stor7[address(arg1)][idx].field_0
        mem[_135 + 32] = stor7[address(arg1)][idx].field_256
        mem[_135 + 64] = stor7[address(arg1)][idx].field_512
        mem[_135 + 96] = stor7[address(arg1)][idx].field_520
        mem[_135 + 128] = stor7[address(arg1)][idx].field_552
        mem[_135 + 160] = stor7[address(arg1)][idx].field_768
        mem[_135 + 192] = stor7[address(arg1)][idx].field_1024
        mem[_135 + 224] = bool(stor7[address(arg1)][idx].field_1280)
        mem[s] = _135
        s = s + 32
        idx = idx + 1
        continue 
    _132 = mem[ceil32(return_data.size) + 96]
    _133 = mem[64]
    mem[64] = mem[64] + 256
    mem[_133] = 0
    mem[_133 + 32] = 0
    mem[_133 + 64] = 0
    mem[_133 + 96] = 0
    mem[_133 + 128] = 0
    mem[_133 + 160] = 0
    mem[_133 + 192] = 0
    mem[_133 + 224] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    _138 = mem[mem[ceil32(return_data.size) + 128] + 128]
    if not -mem[mem[ceil32(return_data.size) + 128] + 156 len 4]:
        _139 = mem[64]
        mem[64] = mem[64] + 64
        mem[_139] = 1
        mem[_139 + 32] = '0'
        _140 = mem[64]
        mem[64] = mem[64] + 64
        mem[_140] = 1
        mem[_140 + 32] = '#'
        idx = 1
        s = _139
        t = _133
        while idx < _132:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _258 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _259 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]
            if not -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4]:
                _261 = mem[64]
                mem[64] = mem[64] + 64
                mem[_261] = 1
                mem[_261 + 32] = '0'
                _262 = mem[64]
                _265 = mem[s]
                t = 0
                while t < _265:
                    mem[t + _262 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_265) <= _265:
                    _433 = mem[_140]
                    s = 0
                    while s < _433:
                        mem[s + _262 + _265 + 32] = mem[s + _140 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_433) <= _433:
                        _633 = mem[_261]
                        s = 0
                        while s < _633:
                            mem[s + _262 + _265 + _433 + 32] = mem[s + _261 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_633) <= _633:
                            _819 = mem[64]
                            mem[mem[64]] = _633 + _262 + _265 + _433 - mem[64]
                            mem[64] = _633 + _262 + _265 + _433 + 32
                            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _819
                            t = _258
                            continue 
                        mem[_633 + _262 + _265 + _433 + 32] = 0
                        _820 = mem[64]
                        mem[mem[64]] = _633 + _262 + _265 + _433 - mem[64]
                        mem[64] = _633 + _262 + _265 + _433 + 32
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _820
                        t = _258
                        continue 
                    mem[_433 + _262 + _265 + 32] = 0
                    _634 = mem[_261]
                    s = 0
                    while s < _634:
                        mem[s + _262 + _265 + _433 + 32] = mem[s + _261 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_634) <= _634:
                        _821 = mem[64]
                        mem[mem[64]] = _634 + _262 + _265 + _433 - mem[64]
                        mem[64] = _634 + _262 + _265 + _433 + 32
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _821
                        t = _258
                        continue 
                    mem[_634 + _262 + _265 + _433 + 32] = 0
                    _822 = mem[64]
                    mem[mem[64]] = _634 + _262 + _265 + _433 - mem[64]
                    mem[64] = _634 + _262 + _265 + _433 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _822
                    t = _258
                    continue 
                mem[_265 + _262 + 32] = 0
                _434 = mem[_140]
                s = 0
                while s < _434:
                    mem[s + _262 + _265 + 32] = mem[s + _140 + 32]
                    s = s + 32
                    continue 
                if ceil32(_434) <= _434:
                    _635 = mem[_261]
                    s = 0
                    while s < _635:
                        mem[s + _262 + _265 + _434 + 32] = mem[s + _261 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_635) <= _635:
                        _823 = mem[64]
                        mem[mem[64]] = _635 + _262 + _265 + _434 - mem[64]
                        mem[64] = _635 + _262 + _265 + _434 + 32
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _823
                        t = _258
                        continue 
                    mem[_635 + _262 + _265 + _434 + 32] = 0
                    _824 = mem[64]
                    mem[mem[64]] = _635 + _262 + _265 + _434 - mem[64]
                    mem[64] = _635 + _262 + _265 + _434 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _824
                    t = _258
                    continue 
                mem[_434 + _262 + _265 + 32] = 0
                _636 = mem[_261]
                s = 0
                while s < _636:
                    mem[s + _262 + _265 + _434 + 32] = mem[s + _261 + 32]
                    s = s + 32
                    continue 
                if ceil32(_636) <= _636:
                    _825 = mem[64]
                    mem[mem[64]] = _636 + _262 + _265 + _434 - mem[64]
                    mem[64] = _636 + _262 + _265 + _434 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _825
                    t = _258
                    continue 
                mem[_636 + _262 + _265 + _434 + 32] = 0
                _826 = mem[64]
                mem[mem[64]] = _636 + _262 + _265 + _434 - mem[64]
                mem[64] = _636 + _262 + _265 + _434 + 32
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _826
                t = _258
                continue 
            u = 0
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4]
            while t:
                if not u - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 'NH{q', 65
            _432 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = uint32(_259)
                while t:
                    if v < 1:
                        revert with 'NH{q', 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 'NH{q', 17
                    if t < 10 * t / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 'NH{q', 17
                    if v - 1 >= mem[_432]:
                        revert with 'NH{q', 50
                    mem[v + _432 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _627 = mem[64]
                _631 = mem[s]
                t = 0
                while t < _631:
                    mem[t + _627 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_631) <= _631:
                    _811 = mem[_140]
                    s = 0
                    while s < _811:
                        mem[s + _627 + _631 + 32] = mem[s + _140 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_811) <= _811:
                        _1019 = mem[_432]
                        s = 0
                        while s < _1019:
                            mem[s + _627 + _631 + _811 + 32] = mem[s + _432 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1019) <= _1019:
                            _1207 = mem[64]
                            mem[mem[64]] = _1019 + _627 + _631 + _811 - mem[64]
                            mem[64] = _1019 + _627 + _631 + _811 + 32
                            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _1207
                            t = _258
                            continue 
                        mem[_1019 + _627 + _631 + _811 + 32] = 0
                        _1208 = mem[64]
                        mem[mem[64]] = _1019 + _627 + _631 + _811 - mem[64]
                        mem[64] = _1019 + _627 + _631 + _811 + 32
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1208
                        t = _258
                        continue 
                    mem[_811 + _627 + _631 + 32] = 0
                    _1020 = mem[_432]
                    s = 0
                    while s < _1020:
                        mem[s + _627 + _631 + _811 + 32] = mem[s + _432 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1020) <= _1020:
                        _1209 = mem[64]
                        mem[mem[64]] = _1020 + _627 + _631 + _811 - mem[64]
                        mem[64] = _1020 + _627 + _631 + _811 + 32
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1209
                        t = _258
                        continue 
                    mem[_1020 + _627 + _631 + _811 + 32] = 0
                    _1210 = mem[64]
                    mem[mem[64]] = _1020 + _627 + _631 + _811 - mem[64]
                    mem[64] = _1020 + _627 + _631 + _811 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1210
                    t = _258
                    continue 
                mem[_631 + _627 + 32] = 0
                _812 = mem[_140]
                s = 0
                while s < _812:
                    mem[s + _627 + _631 + 32] = mem[s + _140 + 32]
                    s = s + 32
                    continue 
                if ceil32(_812) <= _812:
                    _1021 = mem[_432]
                    s = 0
                    while s < _1021:
                        mem[s + _627 + _631 + _812 + 32] = mem[s + _432 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1021) <= _1021:
                        _1211 = mem[64]
                        mem[mem[64]] = _1021 + _627 + _631 + _812 - mem[64]
                        mem[64] = _1021 + _627 + _631 + _812 + 32
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1211
                        t = _258
                        continue 
                    mem[_1021 + _627 + _631 + _812 + 32] = 0
                    _1212 = mem[64]
                    mem[mem[64]] = _1021 + _627 + _631 + _812 - mem[64]
                    mem[64] = _1021 + _627 + _631 + _812 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1212
                    t = _258
                    continue 
                mem[_812 + _627 + _631 + 32] = 0
                _1022 = mem[_432]
                s = 0
                while s < _1022:
                    mem[s + _627 + _631 + _812 + 32] = mem[s + _432 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1022) <= _1022:
                    _1213 = mem[64]
                    mem[mem[64]] = _1022 + _627 + _631 + _812 - mem[64]
                    mem[64] = _1022 + _627 + _631 + _812 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1213
                    t = _258
                    continue 
                mem[_1022 + _627 + _631 + _812 + 32] = 0
                _1214 = mem[64]
                mem[mem[64]] = _1022 + _627 + _631 + _812 - mem[64]
                mem[64] = _1022 + _627 + _631 + _812 + 32
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1214
                t = _258
                continue 
            mem[_432 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = uint32(_259)
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_432]:
                    revert with 'NH{q', 50
                mem[v + _432 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _628 = mem[64]
            _632 = mem[s]
            t = 0
            while t < _632:
                mem[t + _628 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_632) <= _632:
                _813 = mem[_140]
                s = 0
                while s < _813:
                    mem[s + _628 + _632 + 32] = mem[s + _140 + 32]
                    s = s + 32
                    continue 
                if ceil32(_813) <= _813:
                    _1023 = mem[_432]
                    idx = 0
                    while idx < _1023:
                        mem[idx + _628 + _632 + _813 + 32] = mem[idx + _432 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1023) <= _1023:
                        _1215 = mem[64]
                        mem[mem[64]] = _1023 + _628 + _632 + _813 - mem[64]
                        mem[64] = _1023 + _628 + _632 + _813 + 32
                        if not ceil32(_813) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        s = ceil32(_813) + 1
                        s = _1215
                        t = _258
                        continue 
                    mem[_1023 + _628 + _632 + _813 + 32] = 0
                    _1216 = mem[64]
                    mem[mem[64]] = _1023 + _628 + _632 + _813 - mem[64]
                    mem[64] = _1023 + _628 + _632 + _813 + 32
                    if not ceil32(_813) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    s = ceil32(_813) + 1
                    s = _1216
                    t = _258
                    continue 
                mem[_813 + _628 + _632 + 32] = 0
                _1024 = mem[_432]
                idx = 0
                while idx < _1024:
                    mem[idx + _628 + _632 + _813 + 32] = mem[idx + _432 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1024) <= _1024:
                    _1217 = mem[64]
                    mem[mem[64]] = _1024 + _628 + _632 + _813 - mem[64]
                    mem[64] = _1024 + _628 + _632 + _813 + 32
                    if not ceil32(_813) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    s = ceil32(_813) + 1
                    s = _1217
                    t = _258
                    continue 
                mem[_1024 + _628 + _632 + _813 + 32] = 0
                _1218 = mem[64]
                mem[mem[64]] = _1024 + _628 + _632 + _813 - mem[64]
                mem[64] = _1024 + _628 + _632 + _813 + 32
                if not ceil32(_813) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                s = ceil32(_813) + 1
                s = _1218
                t = _258
                continue 
            mem[_632 + _628 + 32] = 0
            _814 = mem[_140]
            s = 0
            while s < _814:
                mem[s + _628 + _632 + 32] = mem[s + _140 + 32]
                s = s + 32
                continue 
            if ceil32(_814) <= _814:
                _1025 = mem[_432]
                idx = 0
                while idx < _1025:
                    mem[idx + _628 + _632 + _814 + 32] = mem[idx + _432 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1025) <= _1025:
                    _1219 = mem[64]
                    mem[mem[64]] = _1025 + _628 + _632 + _814 - mem[64]
                    mem[64] = _1025 + _628 + _632 + _814 + 32
                    if not ceil32(_814) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    s = ceil32(_814) + 1
                    s = _1219
                    t = _258
                    continue 
                mem[_1025 + _628 + _632 + _814 + 32] = 0
                _1220 = mem[64]
                mem[mem[64]] = _1025 + _628 + _632 + _814 - mem[64]
                mem[64] = _1025 + _628 + _632 + _814 + 32
                if not ceil32(_814) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                s = ceil32(_814) + 1
                s = _1220
                t = _258
                continue 
            mem[_814 + _628 + _632 + 32] = 0
            _1026 = mem[_432]
            idx = 0
            while idx < _1026:
                mem[idx + _628 + _632 + _814 + 32] = mem[idx + _432 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1026) <= _1026:
                _1221 = mem[64]
                mem[mem[64]] = _1026 + _628 + _632 + _814 - mem[64]
                mem[64] = _1026 + _628 + _632 + _814 + 32
                if not ceil32(_814) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                s = ceil32(_814) + 1
                s = _1221
                t = _258
                continue 
            mem[_1026 + _628 + _632 + _814 + 32] = 0
            _1222 = mem[64]
            mem[mem[64]] = _1026 + _628 + _632 + _814 - mem[64]
            mem[64] = _1026 + _628 + _632 + _814 + 32
            if not ceil32(_814) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            s = ceil32(_814) + 1
            s = _1222
            t = _258
            continue 
        _257 = mem[64]
        mem[mem[64]] = 32
        _260 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_260)] = mem[s + 32 len ceil32(_260)]
        if ceil32(_260) <= _260:
            return 32, mem[mem[64] + 32 len ceil32(_260) + 32]
        mem[_260 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_260) + _257 + -mem[64] + 64
    s = 0
    idx = mem[mem[ceil32(return_data.size) + 128] + 156 len 4]
    while idx:
        if not s - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _256 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = uint32(_138)
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[_256]:
                revert with 'NH{q', 50
            mem[t + _256 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _430 = mem[64]
        mem[64] = mem[64] + 64
        mem[_430] = 1
        mem[_430 + 32] = '#'
        idx = 1
        s = _256
        u = _133
        while idx < _132:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _622 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _623 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]
            if not -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4]:
                _637 = mem[64]
                mem[64] = mem[64] + 64
                mem[_637] = 1
                mem[_637 + 32] = '0'
                _639 = mem[64]
                _642 = mem[s]
                u = 0
                while u < _642:
                    mem[u + _639 + 32] = mem[u + s + 32]
                    u = u + 32
                    continue 
                if ceil32(_642) <= _642:
                    _807 = mem[_430]
                    s = 0
                    while s < _807:
                        mem[s + _639 + _642 + 32] = mem[s + _430 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_807) <= _807:
                        _1009 = mem[_637]
                        s = 0
                        while s < _1009:
                            mem[s + _639 + _642 + _807 + 32] = mem[s + _637 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1009) <= _1009:
                            _1191 = mem[64]
                            mem[mem[64]] = _1009 + _639 + _642 + _807 - mem[64]
                            mem[64] = _1009 + _639 + _642 + _807 + 32
                            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _1191
                            u = _622
                            continue 
                        mem[_1009 + _639 + _642 + _807 + 32] = 0
                        _1192 = mem[64]
                        mem[mem[64]] = _1009 + _639 + _642 + _807 - mem[64]
                        mem[64] = _1009 + _639 + _642 + _807 + 32
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1192
                        u = _622
                        continue 
                    mem[_807 + _639 + _642 + 32] = 0
                    _1010 = mem[_637]
                    s = 0
                    while s < _1010:
                        mem[s + _639 + _642 + _807 + 32] = mem[s + _637 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1010) <= _1010:
                        _1193 = mem[64]
                        mem[mem[64]] = _1010 + _639 + _642 + _807 - mem[64]
                        mem[64] = _1010 + _639 + _642 + _807 + 32
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1193
                        u = _622
                        continue 
                    mem[_1010 + _639 + _642 + _807 + 32] = 0
                    _1194 = mem[64]
                    mem[mem[64]] = _1010 + _639 + _642 + _807 - mem[64]
                    mem[64] = _1010 + _639 + _642 + _807 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1194
                    u = _622
                    continue 
                mem[_642 + _639 + 32] = 0
                _808 = mem[_430]
                s = 0
                while s < _808:
                    mem[s + _639 + _642 + 32] = mem[s + _430 + 32]
                    s = s + 32
                    continue 
                if ceil32(_808) <= _808:
                    _1011 = mem[_637]
                    s = 0
                    while s < _1011:
                        mem[s + _639 + _642 + _808 + 32] = mem[s + _637 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1011) <= _1011:
                        _1195 = mem[64]
                        mem[mem[64]] = _1011 + _639 + _642 + _808 - mem[64]
                        mem[64] = _1011 + _639 + _642 + _808 + 32
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1195
                        u = _622
                        continue 
                    mem[_1011 + _639 + _642 + _808 + 32] = 0
                    _1196 = mem[64]
                    mem[mem[64]] = _1011 + _639 + _642 + _808 - mem[64]
                    mem[64] = _1011 + _639 + _642 + _808 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1196
                    u = _622
                    continue 
                mem[_808 + _639 + _642 + 32] = 0
                _1012 = mem[_637]
                s = 0
                while s < _1012:
                    mem[s + _639 + _642 + _808 + 32] = mem[s + _637 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1012) <= _1012:
                    _1197 = mem[64]
                    mem[mem[64]] = _1012 + _639 + _642 + _808 - mem[64]
                    mem[64] = _1012 + _639 + _642 + _808 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1197
                    u = _622
                    continue 
                mem[_1012 + _639 + _642 + _808 + 32] = 0
                _1198 = mem[64]
                mem[mem[64]] = _1012 + _639 + _642 + _808 - mem[64]
                mem[64] = _1012 + _639 + _642 + _808 + 32
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1198
                u = _622
                continue 
            u = 0
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4]
            while t:
                if not u - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 'NH{q', 65
            _805 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = uint32(_623)
                while t:
                    if v < 1:
                        revert with 'NH{q', 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 'NH{q', 17
                    if t < 10 * t / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 'NH{q', 17
                    if v - 1 >= mem[_805]:
                        revert with 'NH{q', 50
                    mem[v + _805 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _1003 = mem[64]
                _1007 = mem[s]
                t = 0
                while t < _1007:
                    mem[t + _1003 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_1007) <= _1007:
                    _1183 = mem[_430]
                    s = 0
                    while s < _1183:
                        mem[s + _1003 + _1007 + 32] = mem[s + _430 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1183) <= _1183:
                        _1303 = mem[_805]
                        s = 0
                        while s < _1303:
                            mem[s + _1003 + _1007 + _1183 + 32] = mem[s + _805 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1303) <= _1303:
                            _1383 = mem[64]
                            mem[mem[64]] = _1303 + _1003 + _1007 + _1183 - mem[64]
                            mem[64] = _1303 + _1003 + _1007 + _1183 + 32
                            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _1383
                            u = _622
                            continue 
                        mem[_1303 + _1003 + _1007 + _1183 + 32] = 0
                        _1384 = mem[64]
                        mem[mem[64]] = _1303 + _1003 + _1007 + _1183 - mem[64]
                        mem[64] = _1303 + _1003 + _1007 + _1183 + 32
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1384
                        u = _622
                        continue 
                    mem[_1183 + _1003 + _1007 + 32] = 0
                    _1304 = mem[_805]
                    s = 0
                    while s < _1304:
                        mem[s + _1003 + _1007 + _1183 + 32] = mem[s + _805 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1304) <= _1304:
                        _1385 = mem[64]
                        mem[mem[64]] = _1304 + _1003 + _1007 + _1183 - mem[64]
                        mem[64] = _1304 + _1003 + _1007 + _1183 + 32
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1385
                        u = _622
                        continue 
                    mem[_1304 + _1003 + _1007 + _1183 + 32] = 0
                    _1386 = mem[64]
                    mem[mem[64]] = _1304 + _1003 + _1007 + _1183 - mem[64]
                    mem[64] = _1304 + _1003 + _1007 + _1183 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1386
                    u = _622
                    continue 
                mem[_1007 + _1003 + 32] = 0
                _1184 = mem[_430]
                s = 0
                while s < _1184:
                    mem[s + _1003 + _1007 + 32] = mem[s + _430 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1184) <= _1184:
                    _1305 = mem[_805]
                    s = 0
                    while s < _1305:
                        mem[s + _1003 + _1007 + _1184 + 32] = mem[s + _805 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1305) <= _1305:
                        _1387 = mem[64]
                        mem[mem[64]] = _1305 + _1003 + _1007 + _1184 - mem[64]
                        mem[64] = _1305 + _1003 + _1007 + _1184 + 32
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1387
                        u = _622
                        continue 
                    mem[_1305 + _1003 + _1007 + _1184 + 32] = 0
                    _1388 = mem[64]
                    mem[mem[64]] = _1305 + _1003 + _1007 + _1184 - mem[64]
                    mem[64] = _1305 + _1003 + _1007 + _1184 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1388
                    u = _622
                    continue 
                mem[_1184 + _1003 + _1007 + 32] = 0
                _1306 = mem[_805]
                s = 0
                while s < _1306:
                    mem[s + _1003 + _1007 + _1184 + 32] = mem[s + _805 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1306) <= _1306:
                    _1389 = mem[64]
                    mem[mem[64]] = _1306 + _1003 + _1007 + _1184 - mem[64]
                    mem[64] = _1306 + _1003 + _1007 + _1184 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1389
                    u = _622
                    continue 
                mem[_1306 + _1003 + _1007 + _1184 + 32] = 0
                _1390 = mem[64]
                mem[mem[64]] = _1306 + _1003 + _1007 + _1184 - mem[64]
                mem[64] = _1306 + _1003 + _1007 + _1184 + 32
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1390
                u = _622
                continue 
            mem[_805 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = uint32(_623)
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_805]:
                    revert with 'NH{q', 50
                mem[v + _805 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _1004 = mem[64]
            _1008 = mem[s]
            t = 0
            while t < _1008:
                mem[t + _1004 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_1008) <= _1008:
                _1185 = mem[_430]
                s = 0
                while s < _1185:
                    mem[s + _1004 + _1008 + 32] = mem[s + _430 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1185) <= _1185:
                    _1307 = mem[_805]
                    idx = 0
                    while idx < _1307:
                        mem[idx + _1004 + _1008 + _1185 + 32] = mem[idx + _805 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1307) <= _1307:
                        _1391 = mem[64]
                        mem[mem[64]] = _1307 + _1004 + _1008 + _1185 - mem[64]
                        mem[64] = _1307 + _1004 + _1008 + _1185 + 32
                        if not ceil32(_1185) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        s = ceil32(_1185) + 1
                        s = _1391
                        u = _622
                        continue 
                    mem[_1307 + _1004 + _1008 + _1185 + 32] = 0
                    _1392 = mem[64]
                    mem[mem[64]] = _1307 + _1004 + _1008 + _1185 - mem[64]
                    mem[64] = _1307 + _1004 + _1008 + _1185 + 32
                    if not ceil32(_1185) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    s = ceil32(_1185) + 1
                    s = _1392
                    u = _622
                    continue 
                mem[_1185 + _1004 + _1008 + 32] = 0
                _1308 = mem[_805]
                idx = 0
                while idx < _1308:
                    mem[idx + _1004 + _1008 + _1185 + 32] = mem[idx + _805 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1308) <= _1308:
                    _1393 = mem[64]
                    mem[mem[64]] = _1308 + _1004 + _1008 + _1185 - mem[64]
                    mem[64] = _1308 + _1004 + _1008 + _1185 + 32
                    if not ceil32(_1185) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    s = ceil32(_1185) + 1
                    s = _1393
                    u = _622
                    continue 
                mem[_1308 + _1004 + _1008 + _1185 + 32] = 0
                _1394 = mem[64]
                mem[mem[64]] = _1308 + _1004 + _1008 + _1185 - mem[64]
                mem[64] = _1308 + _1004 + _1008 + _1185 + 32
                if not ceil32(_1185) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                s = ceil32(_1185) + 1
                s = _1394
                u = _622
                continue 
            mem[_1008 + _1004 + 32] = 0
            _1186 = mem[_430]
            s = 0
            while s < _1186:
                mem[s + _1004 + _1008 + 32] = mem[s + _430 + 32]
                s = s + 32
                continue 
            if ceil32(_1186) <= _1186:
                _1309 = mem[_805]
                idx = 0
                while idx < _1309:
                    mem[idx + _1004 + _1008 + _1186 + 32] = mem[idx + _805 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1309) <= _1309:
                    _1395 = mem[64]
                    mem[mem[64]] = _1309 + _1004 + _1008 + _1186 - mem[64]
                    mem[64] = _1309 + _1004 + _1008 + _1186 + 32
                    if not ceil32(_1186) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    s = ceil32(_1186) + 1
                    s = _1395
                    u = _622
                    continue 
                mem[_1309 + _1004 + _1008 + _1186 + 32] = 0
                _1396 = mem[64]
                mem[mem[64]] = _1309 + _1004 + _1008 + _1186 - mem[64]
                mem[64] = _1309 + _1004 + _1008 + _1186 + 32
                if not ceil32(_1186) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                s = ceil32(_1186) + 1
                s = _1396
                u = _622
                continue 
            mem[_1186 + _1004 + _1008 + 32] = 0
            _1310 = mem[_805]
            idx = 0
            while idx < _1310:
                mem[idx + _1004 + _1008 + _1186 + 32] = mem[idx + _805 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1310) <= _1310:
                _1397 = mem[64]
                mem[mem[64]] = _1310 + _1004 + _1008 + _1186 - mem[64]
                mem[64] = _1310 + _1004 + _1008 + _1186 + 32
                if not ceil32(_1186) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                s = ceil32(_1186) + 1
                s = _1397
                u = _622
                continue 
            mem[_1310 + _1004 + _1008 + _1186 + 32] = 0
            _1398 = mem[64]
            mem[mem[64]] = _1310 + _1004 + _1008 + _1186 - mem[64]
            mem[64] = _1310 + _1004 + _1008 + _1186 + 32
            if not ceil32(_1186) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            s = ceil32(_1186) + 1
            s = _1398
            u = _622
            continue 
        _621 = mem[64]
        mem[mem[64]] = 32
        _629 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_629)] = mem[s + 32 len ceil32(_629)]
        if ceil32(_629) <= _629:
            return 32, mem[mem[64] + 32 len ceil32(_629) + 32]
        mem[_629 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_629) + _621 + -mem[64] + 64
    mem[_256 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = uint32(_138)
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 'NH{q', 17
        if idx < 10 * idx / 10:
            revert with 'NH{q', 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 'NH{q', 17
        if t - 1 >= mem[_256]:
            revert with 'NH{q', 50
        mem[t + _256 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _431 = mem[64]
    mem[64] = mem[64] + 64
    mem[_431] = 1
    mem[_431 + 32] = '#'
    idx = 1
    s = _256
    u = _133
    while idx < _132:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _625 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _626 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]
        if not -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4]:
            _638 = mem[64]
            mem[64] = mem[64] + 64
            mem[_638] = 1
            mem[_638 + 32] = '0'
            _640 = mem[64]
            _644 = mem[s]
            u = 0
            while u < _644:
                mem[u + _640 + 32] = mem[u + s + 32]
                u = u + 32
                continue 
            if ceil32(_644) <= _644:
                _809 = mem[_431]
                s = 0
                while s < _809:
                    mem[s + _640 + _644 + 32] = mem[s + _431 + 32]
                    s = s + 32
                    continue 
                if ceil32(_809) <= _809:
                    _1015 = mem[_638]
                    s = 0
                    while s < _1015:
                        mem[s + _640 + _644 + _809 + 32] = mem[s + _638 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1015) <= _1015:
                        _1199 = mem[64]
                        mem[mem[64]] = _1015 + _640 + _644 + _809 - mem[64]
                        mem[64] = _1015 + _640 + _644 + _809 + 32
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1199
                        u = _625
                        continue 
                    mem[_1015 + _640 + _644 + _809 + 32] = 0
                    _1200 = mem[64]
                    mem[mem[64]] = _1015 + _640 + _644 + _809 - mem[64]
                    mem[64] = _1015 + _640 + _644 + _809 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1200
                    u = _625
                    continue 
                mem[_809 + _640 + _644 + 32] = 0
                _1016 = mem[_638]
                s = 0
                while s < _1016:
                    mem[s + _640 + _644 + _809 + 32] = mem[s + _638 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1016) <= _1016:
                    _1201 = mem[64]
                    mem[mem[64]] = _1016 + _640 + _644 + _809 - mem[64]
                    mem[64] = _1016 + _640 + _644 + _809 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1201
                    u = _625
                    continue 
                mem[_1016 + _640 + _644 + _809 + 32] = 0
                _1202 = mem[64]
                mem[mem[64]] = _1016 + _640 + _644 + _809 - mem[64]
                mem[64] = _1016 + _640 + _644 + _809 + 32
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1202
                u = _625
                continue 
            mem[_644 + _640 + 32] = 0
            _810 = mem[_431]
            s = 0
            while s < _810:
                mem[s + _640 + _644 + 32] = mem[s + _431 + 32]
                s = s + 32
                continue 
            if ceil32(_810) <= _810:
                _1017 = mem[_638]
                s = 0
                while s < _1017:
                    mem[s + _640 + _644 + _810 + 32] = mem[s + _638 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1017) <= _1017:
                    _1203 = mem[64]
                    mem[mem[64]] = _1017 + _640 + _644 + _810 - mem[64]
                    mem[64] = _1017 + _640 + _644 + _810 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1203
                    u = _625
                    continue 
                mem[_1017 + _640 + _644 + _810 + 32] = 0
                _1204 = mem[64]
                mem[mem[64]] = _1017 + _640 + _644 + _810 - mem[64]
                mem[64] = _1017 + _640 + _644 + _810 + 32
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1204
                u = _625
                continue 
            mem[_810 + _640 + _644 + 32] = 0
            _1018 = mem[_638]
            s = 0
            while s < _1018:
                mem[s + _640 + _644 + _810 + 32] = mem[s + _638 + 32]
                s = s + 32
                continue 
            if ceil32(_1018) <= _1018:
                _1205 = mem[64]
                mem[mem[64]] = _1018 + _640 + _644 + _810 - mem[64]
                mem[64] = _1018 + _640 + _644 + _810 + 32
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1205
                u = _625
                continue 
            mem[_1018 + _640 + _644 + _810 + 32] = 0
            _1206 = mem[64]
            mem[mem[64]] = _1018 + _640 + _644 + _810 - mem[64]
            mem[64] = _1018 + _640 + _644 + _810 + 32
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1206
            u = _625
            continue 
        u = 0
        t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 156 len 4]
        while t:
            if not u - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 'NH{q', 65
        _806 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = uint32(_626)
            while t:
                if v < 1:
                    revert with 'NH{q', 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 'NH{q', 17
                if t < 10 * t / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 'NH{q', 17
                if v - 1 >= mem[_806]:
                    revert with 'NH{q', 50
                mem[v + _806 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _1005 = mem[64]
            _1013 = mem[s]
            t = 0
            while t < _1013:
                mem[t + _1005 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_1013) <= _1013:
                _1187 = mem[_431]
                s = 0
                while s < _1187:
                    mem[s + _1005 + _1013 + 32] = mem[s + _431 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1187) <= _1187:
                    _1311 = mem[_806]
                    s = 0
                    while s < _1311:
                        mem[s + _1005 + _1013 + _1187 + 32] = mem[s + _806 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1311) <= _1311:
                        _1399 = mem[64]
                        mem[mem[64]] = _1311 + _1005 + _1013 + _1187 - mem[64]
                        mem[64] = _1311 + _1005 + _1013 + _1187 + 32
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1399
                        u = _625
                        continue 
                    mem[_1311 + _1005 + _1013 + _1187 + 32] = 0
                    _1400 = mem[64]
                    mem[mem[64]] = _1311 + _1005 + _1013 + _1187 - mem[64]
                    mem[64] = _1311 + _1005 + _1013 + _1187 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1400
                    u = _625
                    continue 
                mem[_1187 + _1005 + _1013 + 32] = 0
                _1312 = mem[_806]
                s = 0
                while s < _1312:
                    mem[s + _1005 + _1013 + _1187 + 32] = mem[s + _806 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1312) <= _1312:
                    _1401 = mem[64]
                    mem[mem[64]] = _1312 + _1005 + _1013 + _1187 - mem[64]
                    mem[64] = _1312 + _1005 + _1013 + _1187 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1401
                    u = _625
                    continue 
                mem[_1312 + _1005 + _1013 + _1187 + 32] = 0
                _1402 = mem[64]
                mem[mem[64]] = _1312 + _1005 + _1013 + _1187 - mem[64]
                mem[64] = _1312 + _1005 + _1013 + _1187 + 32
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1402
                u = _625
                continue 
            mem[_1013 + _1005 + 32] = 0
            _1188 = mem[_431]
            s = 0
            while s < _1188:
                mem[s + _1005 + _1013 + 32] = mem[s + _431 + 32]
                s = s + 32
                continue 
            if ceil32(_1188) <= _1188:
                _1313 = mem[_806]
                s = 0
                while s < _1313:
                    mem[s + _1005 + _1013 + _1188 + 32] = mem[s + _806 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1313) <= _1313:
                    _1403 = mem[64]
                    mem[mem[64]] = _1313 + _1005 + _1013 + _1188 - mem[64]
                    mem[64] = _1313 + _1005 + _1013 + _1188 + 32
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1403
                    u = _625
                    continue 
                mem[_1313 + _1005 + _1013 + _1188 + 32] = 0
                _1404 = mem[64]
                mem[mem[64]] = _1313 + _1005 + _1013 + _1188 - mem[64]
                mem[64] = _1313 + _1005 + _1013 + _1188 + 32
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1404
                u = _625
                continue 
            mem[_1188 + _1005 + _1013 + 32] = 0
            _1314 = mem[_806]
            s = 0
            while s < _1314:
                mem[s + _1005 + _1013 + _1188 + 32] = mem[s + _806 + 32]
                s = s + 32
                continue 
            if ceil32(_1314) <= _1314:
                _1405 = mem[64]
                mem[mem[64]] = _1314 + _1005 + _1013 + _1188 - mem[64]
                mem[64] = _1314 + _1005 + _1013 + _1188 + 32
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1405
                u = _625
                continue 
            mem[_1314 + _1005 + _1013 + _1188 + 32] = 0
            _1406 = mem[64]
            mem[mem[64]] = _1314 + _1005 + _1013 + _1188 - mem[64]
            mem[64] = _1314 + _1005 + _1013 + _1188 + 32
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1406
            u = _625
            continue 
        mem[_806 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = uint32(_626)
        while t:
            if v < 1:
                revert with 'NH{q', 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 'NH{q', 17
            if t < 10 * t / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 'NH{q', 17
            if v - 1 >= mem[_806]:
                revert with 'NH{q', 50
            mem[v + _806 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _1006 = mem[64]
        _1014 = mem[s]
        t = 0
        while t < _1014:
            mem[t + _1006 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_1014) <= _1014:
            _1189 = mem[_431]
            s = 0
            while s < _1189:
                mem[s + _1006 + _1014 + 32] = mem[s + _431 + 32]
                s = s + 32
                continue 
            if ceil32(_1189) <= _1189:
                _1315 = mem[_806]
                idx = 0
                while idx < _1315:
                    mem[idx + _1006 + _1014 + _1189 + 32] = mem[idx + _806 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1315) <= _1315:
                    _1407 = mem[64]
                    mem[mem[64]] = _1315 + _1006 + _1014 + _1189 - mem[64]
                    mem[64] = _1315 + _1006 + _1014 + _1189 + 32
                    if not ceil32(_1189) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    s = ceil32(_1189) + 1
                    s = _1407
                    u = _625
                    continue 
                mem[_1315 + _1006 + _1014 + _1189 + 32] = 0
                _1408 = mem[64]
                mem[mem[64]] = _1315 + _1006 + _1014 + _1189 - mem[64]
                mem[64] = _1315 + _1006 + _1014 + _1189 + 32
                if not ceil32(_1189) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                s = ceil32(_1189) + 1
                s = _1408
                u = _625
                continue 
            mem[_1189 + _1006 + _1014 + 32] = 0
            _1316 = mem[_806]
            idx = 0
            while idx < _1316:
                mem[idx + _1006 + _1014 + _1189 + 32] = mem[idx + _806 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1316) <= _1316:
                _1409 = mem[64]
                mem[mem[64]] = _1316 + _1006 + _1014 + _1189 - mem[64]
                mem[64] = _1316 + _1006 + _1014 + _1189 + 32
                if not ceil32(_1189) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                s = ceil32(_1189) + 1
                s = _1409
                u = _625
                continue 
            mem[_1316 + _1006 + _1014 + _1189 + 32] = 0
            _1410 = mem[64]
            mem[mem[64]] = _1316 + _1006 + _1014 + _1189 - mem[64]
            mem[64] = _1316 + _1006 + _1014 + _1189 + 32
            if not ceil32(_1189) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            s = ceil32(_1189) + 1
            s = _1410
            u = _625
            continue 
        mem[_1014 + _1006 + 32] = 0
        _1190 = mem[_431]
        s = 0
        while s < _1190:
            mem[s + _1006 + _1014 + 32] = mem[s + _431 + 32]
            s = s + 32
            continue 
        if ceil32(_1190) <= _1190:
            _1317 = mem[_806]
            idx = 0
            while idx < _1317:
                mem[idx + _1006 + _1014 + _1190 + 32] = mem[idx + _806 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1317) <= _1317:
                _1411 = mem[64]
                mem[mem[64]] = _1317 + _1006 + _1014 + _1190 - mem[64]
                mem[64] = _1317 + _1006 + _1014 + _1190 + 32
                if not ceil32(_1190) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                s = ceil32(_1190) + 1
                s = _1411
                u = _625
                continue 
            mem[_1317 + _1006 + _1014 + _1190 + 32] = 0
            _1412 = mem[64]
            mem[mem[64]] = _1317 + _1006 + _1014 + _1190 - mem[64]
            mem[64] = _1317 + _1006 + _1014 + _1190 + 32
            if not ceil32(_1190) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            s = ceil32(_1190) + 1
            s = _1412
            u = _625
            continue 
        mem[_1190 + _1006 + _1014 + 32] = 0
        _1318 = mem[_806]
        idx = 0
        while idx < _1318:
            mem[idx + _1006 + _1014 + _1190 + 32] = mem[idx + _806 + 32]
            idx = idx + 32
            continue 
        if ceil32(_1318) <= _1318:
            _1413 = mem[64]
            mem[mem[64]] = _1318 + _1006 + _1014 + _1190 - mem[64]
            mem[64] = _1318 + _1006 + _1014 + _1190 + 32
            if not ceil32(_1190) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            s = ceil32(_1190) + 1
            s = _1413
            u = _625
            continue 
        mem[_1318 + _1006 + _1014 + _1190 + 32] = 0
        _1414 = mem[64]
        mem[mem[64]] = _1318 + _1006 + _1014 + _1190 - mem[64]
        mem[64] = _1318 + _1006 + _1014 + _1190 + 32
        if not ceil32(_1190) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        s = ceil32(_1190) + 1
        s = _1414
        u = _625
        continue 
    _624 = mem[64]
    mem[mem[64]] = 32
    _630 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_630)] = mem[s + 32 len ceil32(_630)]
    var41001 = ceil32(_630)
    if ceil32(_630) <= _630:
        return 32, mem[mem[64] + 32 len ceil32(_630) + 32]
    mem[_630 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_630) + _624 + -mem[64] + 64
}

function sub_85b4be6a(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    if msg.sender == tokenAddress:
        if not -uint8(arg2) + 2:
            if sub_aa34b8ac and arg4 > -1 / sub_aa34b8ac:
                revert with 'NH{q', 17
            if sub_e5b87faa[address(arg1)] > !arg4:
                revert with 'NH{q', 17
            if sub_e5b87faa[address(arg1)] + arg4 >= sub_c9c081b1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERROR: node limit reached, can't upgrade'
            if sub_aa34b8ac * arg4 > sub_2bd06359[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERROR: don't have enough previous tier nodes'
            if sub_338e4796 and arg4 > -1 / sub_338e4796:
                revert with 'NH{q', 17
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_338e4796 * arg4:
                revert with 0, 'ERROR: DO NOT HAVE ENOUGH TOKEN'
            idx = 0
            s = 0
            while idx < sub_aa34b8ac * arg4:
                if not -stor7[address(arg1)].field_0:
                    revert with 0, 'ERROR: don't have enough previous tier nodes'
                if 0 >= stor7[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 7)
                _307 = mem[64]
                mem[64] = mem[64] + 256
                mem[_307] = stor7[address(arg1)].field_0
                mem[_307 + 32] = stor7[address(arg1)].field_256
                mem[_307 + 64] = stor7[address(arg1)].field_512
                mem[_307 + 96] = stor7[address(arg1)].field_520
                mem[_307 + 128] = stor7[address(arg1)].field_552
                mem[_307 + 160] = stor7[address(arg1)].field_768
                mem[_307 + 192] = stor7[address(arg1)].field_1024
                mem[_307 + 224] = bool(stor7[address(arg1)].field_1280)
                if uint8(arg2) < 1:
                    revert with 'NH{q', 17
                if stor7[address(arg1)].field_512 != uint8(uint8(arg2) - 1):
                    idx = idx
                    s = s
                    continue 
                if stor7[address(arg1)].field_1280:
                    idx = idx
                    s = s
                    continue 
                if block.timestamp < stor7[address(arg1)].field_552:
                    revert with 'NH{q', 17
                if not -stor7[address(arg1)].field_512 + 2:
                    if block.timestamp - stor7[address(arg1)].field_552 and sub_e0633ef4 > -1 / block.timestamp - stor7[address(arg1)].field_552:
                        revert with 'NH{q', 17
                    if (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) > !stor7[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if s > !((block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) + stor7[address(arg1)].field_768):
                        revert with 'NH{q', 17
                    if s + (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) + stor7[address(arg1)].field_768 > !stor7[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if 0 >= stor7[address(arg1)].field_0:
                        revert with 0, 'index > node of user length'
                    if stor7[address(arg1)].field_0 < 1:
                        revert with 'NH{q', 17
                    if var91002 < stor7[address(arg1)].field_0 - 1:
                        if 1 > !var95002:
                            revert with 'NH{q', 17
                        t = var97003 + 1
                        u = var97006
                        while t < stor7[address(arg1)].field_0:
                            if u >= stor7[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(arg1), 7)
                            stor7[address(arg1)][u].field_0 = stor7[address(arg1)][t].field_0
                            stor7[address(arg1)][u].field_256 = stor7[address(arg1)][t].field_256
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                            stor7[address(arg1)][u].field_552 = stor7[address(arg1)][t].field_552
                            stor7[address(arg1)][u].field_584 = 0
                            stor7[address(arg1)][u].field_584 = 0
                            stor7[address(arg1)][u].field_768 = stor7[address(arg1)][t].field_768
                            stor7[address(arg1)][u].field_1024 = stor7[address(arg1)][t].field_1024
                            stor7[address(arg1)][u].field_1280 = uint8(bool(stor7[address(arg1)][t].field_1280))
                            if not u - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor7[address(arg1)].field_0 < 1:
                                revert with 'NH{q', 17
                            if u + 1 < stor7[address(arg1)].field_0 - 1:
                                if 1 > !(u + 1):
                                    revert with 'NH{q', 17
                                t = u + 2
                                u = u + 1
                                continue 
                            if not stor7[address(arg1)].field_0:
                                revert with 'NH{q', 49
                            mem[0] = sha3(address(arg1), 7)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)].field_0--
                            if idx > -2:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) + (2 * stor7[address(arg1)].field_768)
                            continue 
                        revert with 'NH{q', 50
                    if not stor7[address(arg1)].field_0:
                        revert with 'NH{q', 49
                    mem[0] = sha3(address(arg1), 7)
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)].field_0--
                    if idx > -2:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) + (2 * stor7[address(arg1)].field_768)
                    continue 
                if -stor7[address(arg1)].field_512 + 3:
                    if block.timestamp - stor7[address(arg1)].field_552 and sub_de2c12d5 > -1 / block.timestamp - stor7[address(arg1)].field_552:
                        revert with 'NH{q', 17
                    if (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) > !stor7[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if s > !((block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) + stor7[address(arg1)].field_768):
                        revert with 'NH{q', 17
                    if s + (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) + stor7[address(arg1)].field_768 > !stor7[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if 0 >= stor7[address(arg1)].field_0:
                        revert with 0, 'index > node of user length'
                    if stor7[address(arg1)].field_0 < 1:
                        revert with 'NH{q', 17
                    if var91002 < stor7[address(arg1)].field_0 - 1:
                        if 1 > !var95002:
                            revert with 'NH{q', 17
                        t = var97003 + 1
                        u = var97006
                        while t < stor7[address(arg1)].field_0:
                            if u >= stor7[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(arg1), 7)
                            stor7[address(arg1)][u].field_0 = stor7[address(arg1)][t].field_0
                            stor7[address(arg1)][u].field_256 = stor7[address(arg1)][t].field_256
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                            stor7[address(arg1)][u].field_552 = stor7[address(arg1)][t].field_552
                            stor7[address(arg1)][u].field_584 = 0
                            stor7[address(arg1)][u].field_584 = 0
                            stor7[address(arg1)][u].field_768 = stor7[address(arg1)][t].field_768
                            stor7[address(arg1)][u].field_1024 = stor7[address(arg1)][t].field_1024
                            stor7[address(arg1)][u].field_1280 = uint8(bool(stor7[address(arg1)][t].field_1280))
                            if not u - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor7[address(arg1)].field_0 < 1:
                                revert with 'NH{q', 17
                            if u + 1 < stor7[address(arg1)].field_0 - 1:
                                if 1 > !(u + 1):
                                    revert with 'NH{q', 17
                                t = u + 2
                                u = u + 1
                                continue 
                            if not stor7[address(arg1)].field_0:
                                revert with 'NH{q', 49
                            mem[0] = sha3(address(arg1), 7)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)].field_0--
                            if idx > -2:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) + (2 * stor7[address(arg1)].field_768)
                            continue 
                        revert with 'NH{q', 50
                    if not stor7[address(arg1)].field_0:
                        revert with 'NH{q', 49
                    mem[0] = sha3(address(arg1), 7)
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)].field_0--
                    if idx > -2:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) + (2 * stor7[address(arg1)].field_768)
                    continue 
                if block.timestamp - stor7[address(arg1)].field_552 and sub_e52f4e1b > -1 / block.timestamp - stor7[address(arg1)].field_552:
                    revert with 'NH{q', 17
                if (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) > !stor7[address(arg1)].field_768:
                    revert with 'NH{q', 17
                if s > !((block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) + stor7[address(arg1)].field_768):
                    revert with 'NH{q', 17
                if s + (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) + stor7[address(arg1)].field_768 > !stor7[address(arg1)].field_768:
                    revert with 'NH{q', 17
                if 0 >= stor7[address(arg1)].field_0:
                    revert with 0, 'index > node of user length'
                if stor7[address(arg1)].field_0 < 1:
                    revert with 'NH{q', 17
                if var92002 < stor7[address(arg1)].field_0 - 1:
                    if 1 > !var96002:
                        revert with 'NH{q', 17
                    t = var98003 + 1
                    u = var98006
                    while t < stor7[address(arg1)].field_0:
                        if u >= stor7[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 7)
                        stor7[address(arg1)][u].field_0 = stor7[address(arg1)][t].field_0
                        stor7[address(arg1)][u].field_256 = stor7[address(arg1)][t].field_256
                        stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                        stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                        stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                        stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                        stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                        stor7[address(arg1)][u].field_552 = stor7[address(arg1)][t].field_552
                        stor7[address(arg1)][u].field_584 = 0
                        stor7[address(arg1)][u].field_584 = 0
                        stor7[address(arg1)][u].field_768 = stor7[address(arg1)][t].field_768
                        stor7[address(arg1)][u].field_1024 = stor7[address(arg1)][t].field_1024
                        stor7[address(arg1)][u].field_1280 = uint8(bool(stor7[address(arg1)][t].field_1280))
                        if not u - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if stor7[address(arg1)].field_0 < 1:
                            revert with 'NH{q', 17
                        if u + 1 < stor7[address(arg1)].field_0 - 1:
                            if 1 > !(u + 1):
                                revert with 'NH{q', 17
                            t = u + 2
                            u = u + 1
                            continue 
                        if not stor7[address(arg1)].field_0:
                            revert with 'NH{q', 49
                        mem[0] = sha3(address(arg1), 7)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)].field_0--
                        if idx > -2:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) + (2 * stor7[address(arg1)].field_768)
                        continue 
                    revert with 'NH{q', 50
                if not stor7[address(arg1)].field_0:
                    revert with 'NH{q', 49
                mem[0] = sha3(address(arg1), 7)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)].field_0--
                if idx > -2:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) + (2 * stor7[address(arg1)].field_768)
                continue 
            idx = 0
            while idx < arg4:
                _505 = mem[64]
                mem[64] = mem[64] + 256
                mem[_505] = sub_ebbbb74a
                mem[_505 + 32] = arg3
                mem[_505 + 64] = uint8(arg2)
                mem[_505 + 96] = uint32(block.timestamp)
                mem[_505 + 128] = uint32(block.timestamp)
                mem[_505 + 160] = 0
                mem[_505 + 192] = 0
                mem[_505 + 224] = 0
                stor7[address(arg1)].field_0++
                mem[0] = sha3(address(arg1), 7)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = sub_ebbbb74a
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = arg3
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = uint8(arg2)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_520 = uint32(block.timestamp)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_552 = uint32(block.timestamp)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_1024 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_1280 = 0
                if sub_ebbbb74a > 4294967294:
                    revert with 'NH{q', 17
                sub_ebbbb74a = uint32(sub_ebbbb74a + 1)
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require ext_code.size(0xc0e972b6b76fcefa4963e1422ee0f258dc1222c2)
            delegate 0xc0e972b6b76fcefa4963e1422ee0f258dc1222c2.0xbc2b405c with:
                 gas gas_remaining wei
                args 3, address(arg1), stor7[address(arg1)].field_0
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            if not -uint8(arg2) + 2:
                if sub_ccfdcf80 < sub_aa34b8ac * arg4:
                    revert with 'NH{q', 17
                sub_ccfdcf80 += -1 * sub_aa34b8ac * arg4
                if sub_4588b13b > !arg4:
                    revert with 'NH{q', 17
                sub_4588b13b += arg4
                if sub_2bd06359[address(arg1)] < sub_aa34b8ac * arg4:
                    revert with 'NH{q', 17
                sub_2bd06359[address(arg1)] += -1 * sub_aa34b8ac * arg4
                if sub_e5b87faa[address(arg1)] > !arg4:
                    revert with 'NH{q', 17
                sub_e5b87faa[address(arg1)] += arg4
            else:
                if not -uint8(arg2) + 3:
                    if sub_4588b13b < sub_aa34b8ac * arg4:
                        revert with 'NH{q', 17
                    sub_4588b13b += -1 * sub_aa34b8ac * arg4
                    if sub_7f940e17 > !arg4:
                        revert with 'NH{q', 17
                    sub_7f940e17 += arg4
                    if sub_e5b87faa[address(arg1)] < sub_aa34b8ac * arg4:
                        revert with 'NH{q', 17
                    sub_e5b87faa[address(arg1)] += -1 * sub_aa34b8ac * arg4
                    if sub_2be704a5[address(arg1)] > !arg4:
                        revert with 'NH{q', 17
                    sub_2be704a5[address(arg1)] += arg4
        else:
            if -uint8(arg2) + 3:
                revert with 0, 'ERROR: Wrong level to update'
            if sub_a4e7674f and arg4 > -1 / sub_a4e7674f:
                revert with 'NH{q', 17
            if sub_2be704a5[address(arg1)] > !arg4:
                revert with 'NH{q', 17
            if sub_2be704a5[address(arg1)] + arg4 >= sub_9ce6a9d8:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERROR: node limit reached, can't upgrade'
            if sub_a4e7674f * arg4 > sub_e5b87faa[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERROR: don't have enough previous tier nodes'
            if sub_8f418658 and arg4 > -1 / sub_8f418658:
                revert with 'NH{q', 17
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_8f418658 * arg4:
                revert with 0, 'ERROR: DO NOT HAVE ENOUGH TOKEN'
            idx = 0
            s = 0
            while idx < sub_a4e7674f * arg4:
                if not -stor7[address(arg1)].field_0:
                    revert with 0, 'ERROR: don't have enough previous tier nodes'
                if 0 >= stor7[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 7)
                _292 = mem[64]
                mem[64] = mem[64] + 256
                mem[_292] = stor7[address(arg1)].field_0
                mem[_292 + 32] = stor7[address(arg1)].field_256
                mem[_292 + 64] = stor7[address(arg1)].field_512
                mem[_292 + 96] = stor7[address(arg1)].field_520
                mem[_292 + 128] = stor7[address(arg1)].field_552
                mem[_292 + 160] = stor7[address(arg1)].field_768
                mem[_292 + 192] = stor7[address(arg1)].field_1024
                mem[_292 + 224] = bool(stor7[address(arg1)].field_1280)
                if uint8(arg2) < 1:
                    revert with 'NH{q', 17
                if stor7[address(arg1)].field_512 != uint8(uint8(arg2) - 1):
                    idx = idx
                    s = s
                    continue 
                if stor7[address(arg1)].field_1280:
                    idx = idx
                    s = s
                    continue 
                if block.timestamp < stor7[address(arg1)].field_552:
                    revert with 'NH{q', 17
                if not -stor7[address(arg1)].field_512 + 2:
                    if block.timestamp - stor7[address(arg1)].field_552 and sub_e0633ef4 > -1 / block.timestamp - stor7[address(arg1)].field_552:
                        revert with 'NH{q', 17
                    if (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) > !stor7[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if s > !((block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) + stor7[address(arg1)].field_768):
                        revert with 'NH{q', 17
                    if s + (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) + stor7[address(arg1)].field_768 > !stor7[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if 0 >= stor7[address(arg1)].field_0:
                        revert with 0, 'index > node of user length'
                    if stor7[address(arg1)].field_0 < 1:
                        revert with 'NH{q', 17
                    if var92002 < stor7[address(arg1)].field_0 - 1:
                        if 1 > !var96002:
                            revert with 'NH{q', 17
                        t = var98003 + 1
                        u = var98006
                        while t < stor7[address(arg1)].field_0:
                            if u >= stor7[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(arg1), 7)
                            stor7[address(arg1)][u].field_0 = stor7[address(arg1)][t].field_0
                            stor7[address(arg1)][u].field_256 = stor7[address(arg1)][t].field_256
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                            stor7[address(arg1)][u].field_552 = stor7[address(arg1)][t].field_552
                            stor7[address(arg1)][u].field_584 = 0
                            stor7[address(arg1)][u].field_584 = 0
                            stor7[address(arg1)][u].field_768 = stor7[address(arg1)][t].field_768
                            stor7[address(arg1)][u].field_1024 = stor7[address(arg1)][t].field_1024
                            stor7[address(arg1)][u].field_1280 = uint8(bool(stor7[address(arg1)][t].field_1280))
                            if not u - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor7[address(arg1)].field_0 < 1:
                                revert with 'NH{q', 17
                            if u + 1 < stor7[address(arg1)].field_0 - 1:
                                if 1 > !(u + 1):
                                    revert with 'NH{q', 17
                                t = u + 2
                                u = u + 1
                                continue 
                            if not stor7[address(arg1)].field_0:
                                revert with 'NH{q', 49
                            mem[0] = sha3(address(arg1), 7)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)].field_0--
                            if idx > -2:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) + (2 * stor7[address(arg1)].field_768)
                            continue 
                        revert with 'NH{q', 50
                    if not stor7[address(arg1)].field_0:
                        revert with 'NH{q', 49
                    mem[0] = sha3(address(arg1), 7)
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)].field_0--
                    if idx > -2:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) + (2 * stor7[address(arg1)].field_768)
                    continue 
                if -stor7[address(arg1)].field_512 + 3:
                    if block.timestamp - stor7[address(arg1)].field_552 and sub_de2c12d5 > -1 / block.timestamp - stor7[address(arg1)].field_552:
                        revert with 'NH{q', 17
                    if (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) > !stor7[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if s > !((block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) + stor7[address(arg1)].field_768):
                        revert with 'NH{q', 17
                    if s + (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) + stor7[address(arg1)].field_768 > !stor7[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if 0 >= stor7[address(arg1)].field_0:
                        revert with 0, 'index > node of user length'
                    if stor7[address(arg1)].field_0 < 1:
                        revert with 'NH{q', 17
                    if var92002 < stor7[address(arg1)].field_0 - 1:
                        if 1 > !var96002:
                            revert with 'NH{q', 17
                        t = var98003 + 1
                        u = var98006
                        while t < stor7[address(arg1)].field_0:
                            if u >= stor7[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(arg1), 7)
                            stor7[address(arg1)][u].field_0 = stor7[address(arg1)][t].field_0
                            stor7[address(arg1)][u].field_256 = stor7[address(arg1)][t].field_256
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                            stor7[address(arg1)][u].field_552 = stor7[address(arg1)][t].field_552
                            stor7[address(arg1)][u].field_584 = 0
                            stor7[address(arg1)][u].field_584 = 0
                            stor7[address(arg1)][u].field_768 = stor7[address(arg1)][t].field_768
                            stor7[address(arg1)][u].field_1024 = stor7[address(arg1)][t].field_1024
                            stor7[address(arg1)][u].field_1280 = uint8(bool(stor7[address(arg1)][t].field_1280))
                            if not u - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor7[address(arg1)].field_0 < 1:
                                revert with 'NH{q', 17
                            if u + 1 < stor7[address(arg1)].field_0 - 1:
                                if 1 > !(u + 1):
                                    revert with 'NH{q', 17
                                t = u + 2
                                u = u + 1
                                continue 
                            if not stor7[address(arg1)].field_0:
                                revert with 'NH{q', 49
                            mem[0] = sha3(address(arg1), 7)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)].field_0--
                            if idx > -2:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) + (2 * stor7[address(arg1)].field_768)
                            continue 
                        revert with 'NH{q', 50
                    if not stor7[address(arg1)].field_0:
                        revert with 'NH{q', 49
                    mem[0] = sha3(address(arg1), 7)
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)].field_0--
                    if idx > -2:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) + (2 * stor7[address(arg1)].field_768)
                    continue 
                if block.timestamp - stor7[address(arg1)].field_552 and sub_e52f4e1b > -1 / block.timestamp - stor7[address(arg1)].field_552:
                    revert with 'NH{q', 17
                if (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) > !stor7[address(arg1)].field_768:
                    revert with 'NH{q', 17
                if s > !((block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) + stor7[address(arg1)].field_768):
                    revert with 'NH{q', 17
                if s + (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) + stor7[address(arg1)].field_768 > !stor7[address(arg1)].field_768:
                    revert with 'NH{q', 17
                if 0 >= stor7[address(arg1)].field_0:
                    revert with 0, 'index > node of user length'
                if stor7[address(arg1)].field_0 < 1:
                    revert with 'NH{q', 17
                if var93002 < stor7[address(arg1)].field_0 - 1:
                    if 1 > !var97002:
                        revert with 'NH{q', 17
                    t = var99003 + 1
                    u = var99006
                    while t < stor7[address(arg1)].field_0:
                        if u >= stor7[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 7)
                        stor7[address(arg1)][u].field_0 = stor7[address(arg1)][t].field_0
                        stor7[address(arg1)][u].field_256 = stor7[address(arg1)][t].field_256
                        stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                        stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                        stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                        stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                        stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                        stor7[address(arg1)][u].field_552 = stor7[address(arg1)][t].field_552
                        stor7[address(arg1)][u].field_584 = 0
                        stor7[address(arg1)][u].field_584 = 0
                        stor7[address(arg1)][u].field_768 = stor7[address(arg1)][t].field_768
                        stor7[address(arg1)][u].field_1024 = stor7[address(arg1)][t].field_1024
                        stor7[address(arg1)][u].field_1280 = uint8(bool(stor7[address(arg1)][t].field_1280))
                        if not u - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if stor7[address(arg1)].field_0 < 1:
                            revert with 'NH{q', 17
                        if u + 1 < stor7[address(arg1)].field_0 - 1:
                            if 1 > !(u + 1):
                                revert with 'NH{q', 17
                            t = u + 2
                            u = u + 1
                            continue 
                        if not stor7[address(arg1)].field_0:
                            revert with 'NH{q', 49
                        mem[0] = sha3(address(arg1), 7)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)].field_0--
                        if idx > -2:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) + (2 * stor7[address(arg1)].field_768)
                        continue 
                    revert with 'NH{q', 50
                if not stor7[address(arg1)].field_0:
                    revert with 'NH{q', 49
                mem[0] = sha3(address(arg1), 7)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)].field_0--
                if idx > -2:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) + (2 * stor7[address(arg1)].field_768)
                continue 
            idx = 0
            while idx < arg4:
                _493 = mem[64]
                mem[64] = mem[64] + 256
                mem[_493] = sub_ebbbb74a
                mem[_493 + 32] = arg3
                mem[_493 + 64] = uint8(arg2)
                mem[_493 + 96] = uint32(block.timestamp)
                mem[_493 + 128] = uint32(block.timestamp)
                mem[_493 + 160] = 0
                mem[_493 + 192] = 0
                mem[_493 + 224] = 0
                stor7[address(arg1)].field_0++
                mem[0] = sha3(address(arg1), 7)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = sub_ebbbb74a
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = arg3
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = uint8(arg2)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_520 = uint32(block.timestamp)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_552 = uint32(block.timestamp)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_1024 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_1280 = 0
                if sub_ebbbb74a > 4294967294:
                    revert with 'NH{q', 17
                sub_ebbbb74a = uint32(sub_ebbbb74a + 1)
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require ext_code.size(0xc0e972b6b76fcefa4963e1422ee0f258dc1222c2)
            delegate 0xc0e972b6b76fcefa4963e1422ee0f258dc1222c2.0xbc2b405c with:
                 gas gas_remaining wei
                args 3, address(arg1), stor7[address(arg1)].field_0
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            if not -uint8(arg2) + 2:
                if sub_ccfdcf80 < sub_a4e7674f * arg4:
                    revert with 'NH{q', 17
                sub_ccfdcf80 += -1 * sub_a4e7674f * arg4
                if sub_4588b13b > !arg4:
                    revert with 'NH{q', 17
                sub_4588b13b += arg4
                if sub_2bd06359[address(arg1)] < sub_a4e7674f * arg4:
                    revert with 'NH{q', 17
                sub_2bd06359[address(arg1)] += -1 * sub_a4e7674f * arg4
                if sub_e5b87faa[address(arg1)] > !arg4:
                    revert with 'NH{q', 17
                sub_e5b87faa[address(arg1)] += arg4
            else:
                if not -uint8(arg2) + 3:
                    if sub_4588b13b < sub_a4e7674f * arg4:
                        revert with 'NH{q', 17
                    sub_4588b13b += -1 * sub_a4e7674f * arg4
                    if sub_7f940e17 > !arg4:
                        revert with 'NH{q', 17
                    sub_7f940e17 += arg4
                    if sub_e5b87faa[address(arg1)] < sub_a4e7674f * arg4:
                        revert with 'NH{q', 17
                    sub_e5b87faa[address(arg1)] += -1 * sub_a4e7674f * arg4
                    if sub_2be704a5[address(arg1)] > !arg4:
                        revert with 'NH{q', 17
                    sub_2be704a5[address(arg1)] += arg4
    else:
        if gateKeeperAddress != msg.sender:
            revert with 0, 'Fuck off'
        if not -uint8(arg2) + 2:
            if sub_aa34b8ac and arg4 > -1 / sub_aa34b8ac:
                revert with 'NH{q', 17
            if sub_e5b87faa[address(arg1)] > !arg4:
                revert with 'NH{q', 17
            if sub_e5b87faa[address(arg1)] + arg4 >= sub_c9c081b1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERROR: node limit reached, can't upgrade'
            if sub_aa34b8ac * arg4 > sub_2bd06359[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERROR: don't have enough previous tier nodes'
            if sub_338e4796 and arg4 > -1 / sub_338e4796:
                revert with 'NH{q', 17
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_338e4796 * arg4:
                revert with 0, 'ERROR: DO NOT HAVE ENOUGH TOKEN'
            idx = 0
            s = 0
            while idx < sub_aa34b8ac * arg4:
                if not -stor7[address(arg1)].field_0:
                    revert with 0, 'ERROR: don't have enough previous tier nodes'
                if 0 >= stor7[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 7)
                _337 = mem[64]
                mem[64] = mem[64] + 256
                mem[_337] = stor7[address(arg1)].field_0
                mem[_337 + 32] = stor7[address(arg1)].field_256
                mem[_337 + 64] = stor7[address(arg1)].field_512
                mem[_337 + 96] = stor7[address(arg1)].field_520
                mem[_337 + 128] = stor7[address(arg1)].field_552
                mem[_337 + 160] = stor7[address(arg1)].field_768
                mem[_337 + 192] = stor7[address(arg1)].field_1024
                mem[_337 + 224] = bool(stor7[address(arg1)].field_1280)
                if uint8(arg2) < 1:
                    revert with 'NH{q', 17
                if stor7[address(arg1)].field_512 != uint8(uint8(arg2) - 1):
                    idx = idx
                    s = s
                    continue 
                if stor7[address(arg1)].field_1280:
                    idx = idx
                    s = s
                    continue 
                if block.timestamp < stor7[address(arg1)].field_552:
                    revert with 'NH{q', 17
                if not -stor7[address(arg1)].field_512 + 2:
                    if block.timestamp - stor7[address(arg1)].field_552 and sub_e0633ef4 > -1 / block.timestamp - stor7[address(arg1)].field_552:
                        revert with 'NH{q', 17
                    if (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) > !stor7[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if s > !((block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) + stor7[address(arg1)].field_768):
                        revert with 'NH{q', 17
                    if s + (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) + stor7[address(arg1)].field_768 > !stor7[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if 0 >= stor7[address(arg1)].field_0:
                        revert with 0, 'index > node of user length'
                    if stor7[address(arg1)].field_0 < 1:
                        revert with 'NH{q', 17
                    if var92002 < stor7[address(arg1)].field_0 - 1:
                        if 1 > !var96002:
                            revert with 'NH{q', 17
                        t = var98003 + 1
                        u = var98006
                        while t < stor7[address(arg1)].field_0:
                            if u >= stor7[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(arg1), 7)
                            stor7[address(arg1)][u].field_0 = stor7[address(arg1)][t].field_0
                            stor7[address(arg1)][u].field_256 = stor7[address(arg1)][t].field_256
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                            stor7[address(arg1)][u].field_552 = stor7[address(arg1)][t].field_552
                            stor7[address(arg1)][u].field_584 = 0
                            stor7[address(arg1)][u].field_584 = 0
                            stor7[address(arg1)][u].field_768 = stor7[address(arg1)][t].field_768
                            stor7[address(arg1)][u].field_1024 = stor7[address(arg1)][t].field_1024
                            stor7[address(arg1)][u].field_1280 = uint8(bool(stor7[address(arg1)][t].field_1280))
                            if not u - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor7[address(arg1)].field_0 < 1:
                                revert with 'NH{q', 17
                            if u + 1 < stor7[address(arg1)].field_0 - 1:
                                if 1 > !(u + 1):
                                    revert with 'NH{q', 17
                                t = u + 2
                                u = u + 1
                                continue 
                            if not stor7[address(arg1)].field_0:
                                revert with 'NH{q', 49
                            mem[0] = sha3(address(arg1), 7)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)].field_0--
                            if idx > -2:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) + (2 * stor7[address(arg1)].field_768)
                            continue 
                        revert with 'NH{q', 50
                    if not stor7[address(arg1)].field_0:
                        revert with 'NH{q', 49
                    mem[0] = sha3(address(arg1), 7)
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)].field_0--
                    if idx > -2:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) + (2 * stor7[address(arg1)].field_768)
                    continue 
                if -stor7[address(arg1)].field_512 + 3:
                    if block.timestamp - stor7[address(arg1)].field_552 and sub_de2c12d5 > -1 / block.timestamp - stor7[address(arg1)].field_552:
                        revert with 'NH{q', 17
                    if (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) > !stor7[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if s > !((block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) + stor7[address(arg1)].field_768):
                        revert with 'NH{q', 17
                    if s + (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) + stor7[address(arg1)].field_768 > !stor7[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if 0 >= stor7[address(arg1)].field_0:
                        revert with 0, 'index > node of user length'
                    if stor7[address(arg1)].field_0 < 1:
                        revert with 'NH{q', 17
                    if var92002 < stor7[address(arg1)].field_0 - 1:
                        if 1 > !var96002:
                            revert with 'NH{q', 17
                        t = var98003 + 1
                        u = var98006
                        while t < stor7[address(arg1)].field_0:
                            if u >= stor7[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(arg1), 7)
                            stor7[address(arg1)][u].field_0 = stor7[address(arg1)][t].field_0
                            stor7[address(arg1)][u].field_256 = stor7[address(arg1)][t].field_256
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                            stor7[address(arg1)][u].field_552 = stor7[address(arg1)][t].field_552
                            stor7[address(arg1)][u].field_584 = 0
                            stor7[address(arg1)][u].field_584 = 0
                            stor7[address(arg1)][u].field_768 = stor7[address(arg1)][t].field_768
                            stor7[address(arg1)][u].field_1024 = stor7[address(arg1)][t].field_1024
                            stor7[address(arg1)][u].field_1280 = uint8(bool(stor7[address(arg1)][t].field_1280))
                            if not u - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor7[address(arg1)].field_0 < 1:
                                revert with 'NH{q', 17
                            if u + 1 < stor7[address(arg1)].field_0 - 1:
                                if 1 > !(u + 1):
                                    revert with 'NH{q', 17
                                t = u + 2
                                u = u + 1
                                continue 
                            if not stor7[address(arg1)].field_0:
                                revert with 'NH{q', 49
                            mem[0] = sha3(address(arg1), 7)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)].field_0--
                            if idx > -2:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) + (2 * stor7[address(arg1)].field_768)
                            continue 
                        revert with 'NH{q', 50
                    if not stor7[address(arg1)].field_0:
                        revert with 'NH{q', 49
                    mem[0] = sha3(address(arg1), 7)
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)].field_0--
                    if idx > -2:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) + (2 * stor7[address(arg1)].field_768)
                    continue 
                if block.timestamp - stor7[address(arg1)].field_552 and sub_e52f4e1b > -1 / block.timestamp - stor7[address(arg1)].field_552:
                    revert with 'NH{q', 17
                if (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) > !stor7[address(arg1)].field_768:
                    revert with 'NH{q', 17
                if s > !((block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) + stor7[address(arg1)].field_768):
                    revert with 'NH{q', 17
                if s + (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) + stor7[address(arg1)].field_768 > !stor7[address(arg1)].field_768:
                    revert with 'NH{q', 17
                if 0 >= stor7[address(arg1)].field_0:
                    revert with 0, 'index > node of user length'
                if stor7[address(arg1)].field_0 < 1:
                    revert with 'NH{q', 17
                if var93002 < stor7[address(arg1)].field_0 - 1:
                    if 1 > !var97002:
                        revert with 'NH{q', 17
                    t = var99003 + 1
                    u = var99006
                    while t < stor7[address(arg1)].field_0:
                        if u >= stor7[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 7)
                        stor7[address(arg1)][u].field_0 = stor7[address(arg1)][t].field_0
                        stor7[address(arg1)][u].field_256 = stor7[address(arg1)][t].field_256
                        stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                        stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                        stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                        stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                        stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                        stor7[address(arg1)][u].field_552 = stor7[address(arg1)][t].field_552
                        stor7[address(arg1)][u].field_584 = 0
                        stor7[address(arg1)][u].field_584 = 0
                        stor7[address(arg1)][u].field_768 = stor7[address(arg1)][t].field_768
                        stor7[address(arg1)][u].field_1024 = stor7[address(arg1)][t].field_1024
                        stor7[address(arg1)][u].field_1280 = uint8(bool(stor7[address(arg1)][t].field_1280))
                        if not u - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if stor7[address(arg1)].field_0 < 1:
                            revert with 'NH{q', 17
                        if u + 1 < stor7[address(arg1)].field_0 - 1:
                            if 1 > !(u + 1):
                                revert with 'NH{q', 17
                            t = u + 2
                            u = u + 1
                            continue 
                        if not stor7[address(arg1)].field_0:
                            revert with 'NH{q', 49
                        mem[0] = sha3(address(arg1), 7)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)].field_0--
                        if idx > -2:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) + (2 * stor7[address(arg1)].field_768)
                        continue 
                    revert with 'NH{q', 50
                if not stor7[address(arg1)].field_0:
                    revert with 'NH{q', 49
                mem[0] = sha3(address(arg1), 7)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)].field_0--
                if idx > -2:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) + (2 * stor7[address(arg1)].field_768)
                continue 
            idx = 0
            while idx < arg4:
                _529 = mem[64]
                mem[64] = mem[64] + 256
                mem[_529] = sub_ebbbb74a
                mem[_529 + 32] = arg3
                mem[_529 + 64] = uint8(arg2)
                mem[_529 + 96] = uint32(block.timestamp)
                mem[_529 + 128] = uint32(block.timestamp)
                mem[_529 + 160] = 0
                mem[_529 + 192] = 0
                mem[_529 + 224] = 0
                stor7[address(arg1)].field_0++
                mem[0] = sha3(address(arg1), 7)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = sub_ebbbb74a
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = arg3
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = uint8(arg2)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_520 = uint32(block.timestamp)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_552 = uint32(block.timestamp)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_1024 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_1280 = 0
                if sub_ebbbb74a > 4294967294:
                    revert with 'NH{q', 17
                sub_ebbbb74a = uint32(sub_ebbbb74a + 1)
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require ext_code.size(0xc0e972b6b76fcefa4963e1422ee0f258dc1222c2)
            delegate 0xc0e972b6b76fcefa4963e1422ee0f258dc1222c2.0xbc2b405c with:
                 gas gas_remaining wei
                args 3, address(arg1), stor7[address(arg1)].field_0
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            if not -uint8(arg2) + 2:
                if sub_ccfdcf80 < sub_aa34b8ac * arg4:
                    revert with 'NH{q', 17
                sub_ccfdcf80 += -1 * sub_aa34b8ac * arg4
                if sub_4588b13b > !arg4:
                    revert with 'NH{q', 17
                sub_4588b13b += arg4
                if sub_2bd06359[address(arg1)] < sub_aa34b8ac * arg4:
                    revert with 'NH{q', 17
                sub_2bd06359[address(arg1)] += -1 * sub_aa34b8ac * arg4
                if sub_e5b87faa[address(arg1)] > !arg4:
                    revert with 'NH{q', 17
                sub_e5b87faa[address(arg1)] += arg4
            else:
                if not -uint8(arg2) + 3:
                    if sub_4588b13b < sub_aa34b8ac * arg4:
                        revert with 'NH{q', 17
                    sub_4588b13b += -1 * sub_aa34b8ac * arg4
                    if sub_7f940e17 > !arg4:
                        revert with 'NH{q', 17
                    sub_7f940e17 += arg4
                    if sub_e5b87faa[address(arg1)] < sub_aa34b8ac * arg4:
                        revert with 'NH{q', 17
                    sub_e5b87faa[address(arg1)] += -1 * sub_aa34b8ac * arg4
                    if sub_2be704a5[address(arg1)] > !arg4:
                        revert with 'NH{q', 17
                    sub_2be704a5[address(arg1)] += arg4
        else:
            if -uint8(arg2) + 3:
                revert with 0, 'ERROR: Wrong level to update'
            if sub_a4e7674f and arg4 > -1 / sub_a4e7674f:
                revert with 'NH{q', 17
            if sub_2be704a5[address(arg1)] > !arg4:
                revert with 'NH{q', 17
            if sub_2be704a5[address(arg1)] + arg4 >= sub_9ce6a9d8:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERROR: node limit reached, can't upgrade'
            if sub_a4e7674f * arg4 > sub_e5b87faa[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERROR: don't have enough previous tier nodes'
            if sub_8f418658 and arg4 > -1 / sub_8f418658:
                revert with 'NH{q', 17
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_8f418658 * arg4:
                revert with 0, 'ERROR: DO NOT HAVE ENOUGH TOKEN'
            idx = 0
            s = 0
            while idx < sub_a4e7674f * arg4:
                if not -stor7[address(arg1)].field_0:
                    revert with 0, 'ERROR: don't have enough previous tier nodes'
                if 0 >= stor7[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 7)
                _322 = mem[64]
                mem[64] = mem[64] + 256
                mem[_322] = stor7[address(arg1)].field_0
                mem[_322 + 32] = stor7[address(arg1)].field_256
                mem[_322 + 64] = stor7[address(arg1)].field_512
                mem[_322 + 96] = stor7[address(arg1)].field_520
                mem[_322 + 128] = stor7[address(arg1)].field_552
                mem[_322 + 160] = stor7[address(arg1)].field_768
                mem[_322 + 192] = stor7[address(arg1)].field_1024
                mem[_322 + 224] = bool(stor7[address(arg1)].field_1280)
                if uint8(arg2) < 1:
                    revert with 'NH{q', 17
                if stor7[address(arg1)].field_512 != uint8(uint8(arg2) - 1):
                    idx = idx
                    s = s
                    continue 
                if stor7[address(arg1)].field_1280:
                    idx = idx
                    s = s
                    continue 
                if block.timestamp < stor7[address(arg1)].field_552:
                    revert with 'NH{q', 17
                if not -stor7[address(arg1)].field_512 + 2:
                    if block.timestamp - stor7[address(arg1)].field_552 and sub_e0633ef4 > -1 / block.timestamp - stor7[address(arg1)].field_552:
                        revert with 'NH{q', 17
                    if (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) > !stor7[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if s > !((block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) + stor7[address(arg1)].field_768):
                        revert with 'NH{q', 17
                    if s + (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) + stor7[address(arg1)].field_768 > !stor7[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if 0 >= stor7[address(arg1)].field_0:
                        revert with 0, 'index > node of user length'
                    if stor7[address(arg1)].field_0 < 1:
                        revert with 'NH{q', 17
                    if var93002 < stor7[address(arg1)].field_0 - 1:
                        if 1 > !var97002:
                            revert with 'NH{q', 17
                        t = var99003 + 1
                        u = var99006
                        while t < stor7[address(arg1)].field_0:
                            if u >= stor7[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(arg1), 7)
                            stor7[address(arg1)][u].field_0 = stor7[address(arg1)][t].field_0
                            stor7[address(arg1)][u].field_256 = stor7[address(arg1)][t].field_256
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                            stor7[address(arg1)][u].field_552 = stor7[address(arg1)][t].field_552
                            stor7[address(arg1)][u].field_584 = 0
                            stor7[address(arg1)][u].field_584 = 0
                            stor7[address(arg1)][u].field_768 = stor7[address(arg1)][t].field_768
                            stor7[address(arg1)][u].field_1024 = stor7[address(arg1)][t].field_1024
                            stor7[address(arg1)][u].field_1280 = uint8(bool(stor7[address(arg1)][t].field_1280))
                            if not u - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor7[address(arg1)].field_0 < 1:
                                revert with 'NH{q', 17
                            if u + 1 < stor7[address(arg1)].field_0 - 1:
                                if 1 > !(u + 1):
                                    revert with 'NH{q', 17
                                t = u + 2
                                u = u + 1
                                continue 
                            if not stor7[address(arg1)].field_0:
                                revert with 'NH{q', 49
                            mem[0] = sha3(address(arg1), 7)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)].field_0--
                            if idx > -2:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) + (2 * stor7[address(arg1)].field_768)
                            continue 
                        revert with 'NH{q', 50
                    if not stor7[address(arg1)].field_0:
                        revert with 'NH{q', 49
                    mem[0] = sha3(address(arg1), 7)
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)].field_0--
                    if idx > -2:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + (block.timestamp * sub_e0633ef4) - (stor7[address(arg1)].field_552 * sub_e0633ef4) + (2 * stor7[address(arg1)].field_768)
                    continue 
                if -stor7[address(arg1)].field_512 + 3:
                    if block.timestamp - stor7[address(arg1)].field_552 and sub_de2c12d5 > -1 / block.timestamp - stor7[address(arg1)].field_552:
                        revert with 'NH{q', 17
                    if (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) > !stor7[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if s > !((block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) + stor7[address(arg1)].field_768):
                        revert with 'NH{q', 17
                    if s + (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) + stor7[address(arg1)].field_768 > !stor7[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if 0 >= stor7[address(arg1)].field_0:
                        revert with 0, 'index > node of user length'
                    if stor7[address(arg1)].field_0 < 1:
                        revert with 'NH{q', 17
                    if var93002 < stor7[address(arg1)].field_0 - 1:
                        if 1 > !var97002:
                            revert with 'NH{q', 17
                        t = var99003 + 1
                        u = var99006
                        while t < stor7[address(arg1)].field_0:
                            if u >= stor7[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(arg1), 7)
                            stor7[address(arg1)][u].field_0 = stor7[address(arg1)][t].field_0
                            stor7[address(arg1)][u].field_256 = stor7[address(arg1)][t].field_256
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                            stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                            stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                            stor7[address(arg1)][u].field_552 = stor7[address(arg1)][t].field_552
                            stor7[address(arg1)][u].field_584 = 0
                            stor7[address(arg1)][u].field_584 = 0
                            stor7[address(arg1)][u].field_768 = stor7[address(arg1)][t].field_768
                            stor7[address(arg1)][u].field_1024 = stor7[address(arg1)][t].field_1024
                            stor7[address(arg1)][u].field_1280 = uint8(bool(stor7[address(arg1)][t].field_1280))
                            if not u - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor7[address(arg1)].field_0 < 1:
                                revert with 'NH{q', 17
                            if u + 1 < stor7[address(arg1)].field_0 - 1:
                                if 1 > !(u + 1):
                                    revert with 'NH{q', 17
                                t = u + 2
                                u = u + 1
                                continue 
                            if not stor7[address(arg1)].field_0:
                                revert with 'NH{q', 49
                            mem[0] = sha3(address(arg1), 7)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                            stor7[address(arg1)].field_0--
                            if idx > -2:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) + (2 * stor7[address(arg1)].field_768)
                            continue 
                        revert with 'NH{q', 50
                    if not stor7[address(arg1)].field_0:
                        revert with 'NH{q', 49
                    mem[0] = sha3(address(arg1), 7)
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                    stor7[address(arg1)].field_0--
                    if idx > -2:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + (block.timestamp * sub_de2c12d5) - (stor7[address(arg1)].field_552 * sub_de2c12d5) + (2 * stor7[address(arg1)].field_768)
                    continue 
                if block.timestamp - stor7[address(arg1)].field_552 and sub_e52f4e1b > -1 / block.timestamp - stor7[address(arg1)].field_552:
                    revert with 'NH{q', 17
                if (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) > !stor7[address(arg1)].field_768:
                    revert with 'NH{q', 17
                if s > !((block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) + stor7[address(arg1)].field_768):
                    revert with 'NH{q', 17
                if s + (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) + stor7[address(arg1)].field_768 > !stor7[address(arg1)].field_768:
                    revert with 'NH{q', 17
                if 0 >= stor7[address(arg1)].field_0:
                    revert with 0, 'index > node of user length'
                if stor7[address(arg1)].field_0 < 1:
                    revert with 'NH{q', 17
                if var94002 < stor7[address(arg1)].field_0 - 1:
                    if 1 > !var98002:
                        revert with 'NH{q', 17
                    t = var100003 + 1
                    u = var100006
                    while t < stor7[address(arg1)].field_0:
                        if u >= stor7[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 7)
                        stor7[address(arg1)][u].field_0 = stor7[address(arg1)][t].field_0
                        stor7[address(arg1)][u].field_256 = stor7[address(arg1)][t].field_256
                        stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                        stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                        stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                        stor7[address(arg1)][u].field_512 = stor7[address(arg1)][t].field_512
                        stor7[address(arg1)][u].field_520 = stor7[address(arg1)][t].field_520
                        stor7[address(arg1)][u].field_552 = stor7[address(arg1)][t].field_552
                        stor7[address(arg1)][u].field_584 = 0
                        stor7[address(arg1)][u].field_584 = 0
                        stor7[address(arg1)][u].field_768 = stor7[address(arg1)][t].field_768
                        stor7[address(arg1)][u].field_1024 = stor7[address(arg1)][t].field_1024
                        stor7[address(arg1)][u].field_1280 = uint8(bool(stor7[address(arg1)][t].field_1280))
                        if not u - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if stor7[address(arg1)].field_0 < 1:
                            revert with 'NH{q', 17
                        if u + 1 < stor7[address(arg1)].field_0 - 1:
                            if 1 > !(u + 1):
                                revert with 'NH{q', 17
                            t = u + 2
                            u = u + 1
                            continue 
                        if not stor7[address(arg1)].field_0:
                            revert with 'NH{q', 49
                        mem[0] = sha3(address(arg1), 7)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                        stor7[address(arg1)].field_0--
                        if idx > -2:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) + (2 * stor7[address(arg1)].field_768)
                        continue 
                    revert with 'NH{q', 50
                if not stor7[address(arg1)].field_0:
                    revert with 'NH{q', 49
                mem[0] = sha3(address(arg1), 7)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = 0
                stor7[address(arg1)].field_0--
                if idx > -2:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (block.timestamp * sub_e52f4e1b) - (stor7[address(arg1)].field_552 * sub_e52f4e1b) + (2 * stor7[address(arg1)].field_768)
                continue 
            idx = 0
            while idx < arg4:
                _517 = mem[64]
                mem[64] = mem[64] + 256
                mem[_517] = sub_ebbbb74a
                mem[_517 + 32] = arg3
                mem[_517 + 64] = uint8(arg2)
                mem[_517 + 96] = uint32(block.timestamp)
                mem[_517 + 128] = uint32(block.timestamp)
                mem[_517 + 160] = 0
                mem[_517 + 192] = 0
                mem[_517 + 224] = 0
                stor7[address(arg1)].field_0++
                mem[0] = sha3(address(arg1), 7)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = sub_ebbbb74a
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = arg3
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_512 = uint8(arg2)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_520 = uint32(block.timestamp)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_552 = uint32(block.timestamp)
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_768 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_1024 = 0
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_1280 = 0
                if sub_ebbbb74a > 4294967294:
                    revert with 'NH{q', 17
                sub_ebbbb74a = uint32(sub_ebbbb74a + 1)
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require ext_code.size(0xc0e972b6b76fcefa4963e1422ee0f258dc1222c2)
            delegate 0xc0e972b6b76fcefa4963e1422ee0f258dc1222c2.0xbc2b405c with:
                 gas gas_remaining wei
                args 3, address(arg1), stor7[address(arg1)].field_0
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            if not -uint8(arg2) + 2:
                if sub_ccfdcf80 < sub_a4e7674f * arg4:
                    revert with 'NH{q', 17
                sub_ccfdcf80 += -1 * sub_a4e7674f * arg4
                if sub_4588b13b > !arg4:
                    revert with 'NH{q', 17
                sub_4588b13b += arg4
                if sub_2bd06359[address(arg1)] < sub_a4e7674f * arg4:
                    revert with 'NH{q', 17
                sub_2bd06359[address(arg1)] += -1 * sub_a4e7674f * arg4
                if sub_e5b87faa[address(arg1)] > !arg4:
                    revert with 'NH{q', 17
                sub_e5b87faa[address(arg1)] += arg4
            else:
                if not -uint8(arg2) + 3:
                    if sub_4588b13b < sub_a4e7674f * arg4:
                        revert with 'NH{q', 17
                    sub_4588b13b += -1 * sub_a4e7674f * arg4
                    if sub_7f940e17 > !arg4:
                        revert with 'NH{q', 17
                    sub_7f940e17 += arg4
                    if sub_e5b87faa[address(arg1)] < sub_a4e7674f * arg4:
                        revert with 'NH{q', 17
                    sub_e5b87faa[address(arg1)] += -1 * sub_a4e7674f * arg4
                    if sub_2be704a5[address(arg1)] > !arg4:
                        revert with 'NH{q', 17
                    sub_2be704a5[address(arg1)] += arg4
    return s
}



}
