contract main {




// =====================  Runtime code  =====================


#
#  - sub_2f7c8e57(?)
#  - _getNodesLastClaimTime(address arg1)
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
    delegate 0x4c8c051ede8479adbae93b45dbed87b92932ff71.0x732a2ccf with:
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
    delegate 0x4c8c051ede8479adbae93b45dbed87b92932ff71.0x732a2ccf with:
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
    delegate 0x4c8c051ede8479adbae93b45dbed87b92932ff71.0x732a2ccf with:
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
    require ext_code.size(0x4c8c051ede8479adbae93b45dbed87b92932ff71)
    delegate 0x4c8c051ede8479adbae93b45dbed87b92932ff71.0xbc2b405c with:
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
    delegate 0x4c8c051ede8479adbae93b45dbed87b92932ff71.0x732a2ccf with:
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
    delegate 0x4c8c051ede8479adbae93b45dbed87b92932ff71.0x732a2ccf with:
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
            require ext_code.size(0x4c8c051ede8479adbae93b45dbed87b92932ff71)
            delegate 0x4c8c051ede8479adbae93b45dbed87b92932ff71.0xbc2b405c with:
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
            require ext_code.size(0x4c8c051ede8479adbae93b45dbed87b92932ff71)
            delegate 0x4c8c051ede8479adbae93b45dbed87b92932ff71.0xbc2b405c with:
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
            require ext_code.size(0x4c8c051ede8479adbae93b45dbed87b92932ff71)
            delegate 0x4c8c051ede8479adbae93b45dbed87b92932ff71.0xbc2b405c with:
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
            require ext_code.size(0x4c8c051ede8479adbae93b45dbed87b92932ff71)
            delegate 0x4c8c051ede8479adbae93b45dbed87b92932ff71.0xbc2b405c with:
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
