contract main {




// =====================  Runtime code  =====================


#
#  - sub_37696eec(?)
#  - _distributeRewards()
#
address tokenAddress;
uint256 gasForDistribution;
uint256 lastDistributionCount;
uint256 lastIndexProcessed;
uint256 totalNodesCreated;
uint256 totalRewardStaked;
uint256 stor16;
uint256 stor17;
mapping of struct stor4;
mapping of struct sub_16e22e66;
mapping of uint8 stor6;
mapping of uint256 sub_4c895770;
array of uint8 stor8;
uint8 stor9;
uint8 stor9; offset 8
address gateKeeperAddress; offset 16

function sub_16e22e66(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_16e22e66[arg1 << 248].field_768
}

function sub_3fc3e64a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_16e22e66[arg1 << 248].field_0
}

function gateKeeper() payable {
    return gateKeeperAddress
}

function sub_4c895770(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_4c895770[arg1][arg2]
}

function distribution() payable {
    return bool(uint8(stor9.field_8))
}

function lastIndexProcessed() payable {
    return lastIndexProcessed
}

function autoDistri() payable {
    return bool(uint8(stor9.field_0))
}

function totalRewardStaked() payable {
    return totalRewardStaked
}

function sub_9d3c20ba(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    return sub_4c895770[address(arg1)][arg2 << 248]
}

function sub_a7c5fdef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_16e22e66[arg1 << 248].field_1024
}

function sub_abfc3efb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_16e22e66[arg1].field_0, 
           sub_16e22e66[arg1].field_256,
           sub_16e22e66[arg1].field_512,
           sub_16e22e66[arg1].field_768,
           sub_16e22e66[arg1].field_1024,
           sub_16e22e66[arg1].field_1280
}

function sub_b6e9c4b4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return bool(stor6[arg1])
}

function totalNodesCreated() payable {
    return totalNodesCreated
}

function sub_d04375ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_16e22e66[arg1 << 248].field_256
}

function sub_d0c8bc91(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_16e22e66[arg1 << 248].field_512
}

function gasForDistribution() payable {
    return gasForDistribution
}

function sub_ea524cd2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_16e22e66[arg1 << 248].field_1280
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

function sub_7c942fa6(?) payable {
    return stor16, stor17
}

function sub_ea55e24e(?) payable {
    require calldata.size - 4 >= 64
    if tokenAddress != msg.sender:
        require msg.sender == gateKeeperAddress
    stor16 = arg1
    stor17 = arg2
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        require msg.sender == gateKeeperAddress
    tokenAddress = arg1
}

function sub_27c7179e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == bool(arg2)
    if tokenAddress != msg.sender:
        require msg.sender == gateKeeperAddress
    stor6[arg1 << 248] = uint8(bool(arg2))
}

function sub_3be92e1b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    if tokenAddress != msg.sender:
        require msg.sender == gateKeeperAddress
    uint8(stor9.field_0) = uint8(bool(arg1))
    gasForDistribution = arg2
}

function sub_3add38de(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    if arg2 and sub_16e22e66[arg1 << 248].field_1024 > -1 / arg2:
        revert with 0, 17
    if not sub_16e22e66[arg1 << 248].field_1280:
        revert with 0, 18
    return (arg2 * sub_16e22e66[arg1 << 248].field_1024 / sub_16e22e66[arg1 << 248].field_1280)
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xe6e0eb35bcd81b1192da89f73d5786bfa05faf47)
    delegate 0xe6e0eb35bcd81b1192da89f73d5786bfa05faf47.0x732a2ccf with:
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
    require ext_code.size(0xe6e0eb35bcd81b1192da89f73d5786bfa05faf47)
    delegate 0xe6e0eb35bcd81b1192da89f73d5786bfa05faf47.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] > 0)
}

function sub_9867ae29(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == uint8(arg1)
    if tokenAddress != msg.sender:
        require msg.sender == gateKeeperAddress
    sub_16e22e66[arg1 << 248].field_0 = arg2
    sub_16e22e66[arg1 << 248].field_256 = arg3
    sub_16e22e66[arg1 << 248].field_512 = arg5
    sub_16e22e66[arg1 << 248].field_768 = arg4
    sub_16e22e66[arg1 << 248].field_1024 = arg6
    sub_16e22e66[arg1 << 248].field_1280 = arg7
    stor8.length++
    stor8[stor8.length.field_5].field_0 = !(255 * 256^stor8.length % 32) and stor8[stor8.length.field_5].field_0 or 256^stor8.length % 32 * uint8(arg1)
    stor6[arg1 << 248] = 1
}

function sub_b2e853e3(?) payable {
    mem[64] = (32 * stor8.length) + 128
    mem[96] = stor8.length
    if not stor8.length:
        mem[(32 * stor8.length) + 128] = 32
        mem[(32 * stor8.length) + 160] = stor8.length
        idx = 0
        s = (32 * stor8.length) + 192
        t = 128
        while idx < stor8.length:
            mem[s] = mem[t + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor8.length) + 128
           len (96 * stor8.length) + 64
    mem[128] = uint8(stor8.field_0)
    idx = 128
    s = 0
    while (32 * stor8.length) + 96 > idx:
        mem[idx + 32] = stor('name', 'stor8', 8)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[(32 * stor8.length) + 128] = 32
    mem[(32 * stor8.length) + 160] = stor8.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor8.length:
        mem[s] = mem[t + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor8.length) + -mem[64] + 192
}

function sub_6591f30a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 and stor16 > -1 / arg2:
        revert with 0, 17
    if not stor17:
        revert with 0, 18
    idx = 0
    s = 0
    s = arg2 * stor16 / stor17
    while idx < stor8.length:
        if arg2 and sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_1024 > -1 / arg2:
            revert with 0, 17
        if not sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_1280:
            revert with 0, 18
        mem[0] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]
        if sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_0 <= sub_4c895770[address(arg1)][stor8[0.03125 / idx].field_(8 * idx % 32) - 248]:
            mem[32] = 5
            if sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_0 and arg2 * sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_1024 / sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_1280 > -1 / sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_0:
                revert with 0, 17
            if s > !(sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_0 * arg2 * sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_1024 / sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_1280):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]
            s = s + (sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_0 * arg2 * sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_1024 / sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_1280)
            continue 
        mem[32] = sha3(address(arg1), 7)
        if sub_4c895770[address(arg1)][stor8[0.03125 / idx].field_(8 * idx % 32) - 248] and arg2 * sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_1024 / sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_1280 > -1 / sub_4c895770[address(arg1)][stor8[0.03125 / idx].field_(8 * idx % 32) - 248]:
            revert with 0, 17
        if s > !(sub_4c895770[address(arg1)][stor8[0.03125 / idx].field_(8 * idx % 32) - 248] * arg2 * sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_1024 / sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_1280):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]
        s = s + (sub_4c895770[address(arg1)][stor8[0.03125 / idx].field_(8 * idx % 32) - 248] * arg2 * sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_1024 / sub_16e22e66[stor8[0.03125 / idx].field_(8 * idx % 32) - 248].field_1280)
        continue 
    return s
}

function _cashoutAllNodesReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        require msg.sender == gateKeeperAddress
    require stor4[address(arg1)].field_0
    idx = 0
    s = 0
    t = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        if s > !stor4[address(arg1)][idx].field_768:
            revert with 0, 17
        stor4[address(arg1)][idx].field_768 = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor4[address(arg1)][idx].field_768
        t = (4 * idx) + sha3(sha3(address(arg1), 4))
        continue 
    return (s * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0)
}

function _getRewardAmountOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xe6e0eb35bcd81b1192da89f73d5786bfa05faf47)
    delegate 0xe6e0eb35bcd81b1192da89f73d5786bfa05faf47.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] > 0
    idx = 0
    s = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        if s > !stor4[address(arg1)][idx].field_768:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor4[address(arg1)][idx].field_768
        continue 
    return (s * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0 * stor4[address(arg1)].field_0)
}



}
