contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
const sub_57118e61(?) = 1000000 * 10^18


function poolLength() payable {
    return ('storage', 256, 0, 12)
}

function sub_2674f63e(?) payable {
    require calldata.size - 4 >= 32
    return bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg1'), 2))))
}

function getPoolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= ('storage', 256, 0, 12):
        revert with 0, 'dpid >= poolInfo.length'
    return ('storage', 160, 0, ('add', ('mul', 15, ('param', 'arg1')), ('sha3', 12))), 
           ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))),
           ('storage', 256, 0, ('add', 2, ('mul', 15, ('param', 'arg1')), ('sha3', 12))),
           ('storage', 256, 0, ('add', 3, ('mul', 15, ('param', 'arg1')), ('sha3', 12))),
           ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))),
           ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))),
           ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))),
           ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12))),
           ('storage', 256, 0, ('add', 8, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
}

function totalStaked(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= ('storage', 256, 0, 12):
        revert with 0, 'dpid >= poolInfo.length'
    return ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
}

function getMultiSignatureAddress() payable {
    return ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975))
}

function sub_7e9e60ec(?) payable {
    return ('storage', 160, 0, 8)
}

function owner() payable {
    return ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'"))
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 11))))), 
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 11)))))),
           ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 11))))))
}

function sub_953ae071(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= ('storage', 256, 0, 12):
        revert with 0, 'dpid >= poolInfo.length'
    return ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), 
           bool(('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))),
           ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))),
           ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))),
           ('storage', 256, 0, ('add', 13, ('mul', 15, ('param', 'arg1')), ('sha3', 12))),
           bool(('storage', 8, 0, ('add', 14, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))),
           ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
}

function sub_a145efbb(?) payable {
    return ('storage', 256, 0, 5)
}

function sub_b1698602(?) payable {
    require calldata.size - 4 >= 32
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 10))), 
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), 10))))
}

function sub_d32fc2ac(?) payable {
    return ('storage', 256, 0, 7)
}

function sub_e09de19a(?) payable {
    return ('storage', 160, 0, 9)
}

function sub_e15ed13e(?) payable {
    return ('storage', 160, 0, 4)
}

function rewardToken() payable {
    return ('storage', 160, 0, 3)
}

function sub_fb9c5856(?) payable {
    return ('storage', 256, 0, 6)
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")))
}

function txOrigin() payable {
    return ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")), 
           ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'"))
}

function sub_b40643a9(?) payable {
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) == msg.sender:
        return True
    return (('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) == msg.sender)
}

function sub_1147ff0b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < ('storage', 256, 0, 12)
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 10))), 
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), 10)))),
           ('storage', 256, 0, ('add', 2, ('mul', 15, ('param', 'arg1')), ('sha3', 12))),
           ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12))),
           ('storage', 256, 0, ('add', 9, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
}

function setHalt(bool arg1) payable {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    73,
                    0x6570726f78794f776e65723a2063616c6c6572206d757374206265207468652070726f7879206f776e657220616e64206120636f6e747261637420616e64206e6f7420657870697265,
                    mem[237 len 23]
    Mask(96, 0, stor[0].field_160) = Mask(96, 0, arg1)
}

function renounceOwnership() payable {
    if ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    73,
                    0x6570726f78794f776e65723a2063616c6c6572206d757374206265207468652070726f7879206f776e657220616e64206120636f6e747261637420616e64206e6f7420657870697265,
                    mem[237 len 23]
    emit OwnershipTransferred(('storage', 160, 0, 0), 0);
    address(stor[0].field_0) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    73,
                    0x6570726f78794f776e65723a2063616c6c6572206d757374206265207468652070726f7879206f776e657220616e64206120636f6e747261637420616e64206e6f7420657870697265,
                    mem[237 len 23]
    emit OwnershipTransferred(('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")), arg1);
    address(stor[sha3('org.defrost.Owner.storage')].field_0) = arg1
    Mask(96, 0, stor[sha3('org.defrost.Owner.storage')].field_160) = 0
}

function setRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    46,
                    0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
    if not arg1:
        revert with 0, 'input zero address'
    address(stor[3].field_0) = arg1
}

function disableExtEnableClaim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    46,
                    0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
    if arg1 >= ('storage', 256, 0, 12):
        revert with 0, 'dpid >= poolInfo.length'
    if ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        revert with 0, 
                    32,
                    65,
                    0x7763616e206f6e6c792064697361626c6520657874456e61626c65436c61696d207768656e20657874456e61626c654465706f7369742069732064697361626c65,
                    mem[calldata.size + 333 len 31]
    uint8(stor[(15 * arg1) + sha3(12) + 14].field_0) = 0
}

function sub_9a6489ae(?) payable {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    46,
                    0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
    if arg1 >= ('storage', 256, 0, 12):
        revert with 0, 'dpid >= poolInfo.length'
    if ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        call ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).0x5312ea8e with:
             gas gas_remaining wei
            args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint8(stor[(15 * arg1) + sha3(12) + 10].field_160) = 0
        emit EmergencyWithdraw(arg1);
}

function sub_f6c1da1a(?) payable {
    require calldata.size - 4 >= 64
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    46,
                    0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
    emit OriginTransferred(arg1, arg2);
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) == arg1:
        address(stor[sha3('org.defrost.Origin.storage.0')].field_0) = arg2
        Mask(96, 0, stor[sha3('org.defrost.Origin.storage.0')].field_160) = 0
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != arg1:
            revert with 0, 
                        32,
                        50,
                        0x4f726967696e5472616e73666572726564203a206f6c64206f726967696e20697320696c6c6567616c206164647265737300,
                        mem[calldata.size + 318 len 14]
        address(stor[sha3('org.defrost.Origin.storage.1')].field_0) = arg2
        Mask(96, 0, stor[sha3('org.defrost.Origin.storage.1')].field_160) = 0
}

function setDoubleFarming(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    46,
                    0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
    if arg1 >= ('storage', 256, 0, 12):
        revert with 0, 'dpid >= poolInfo.length'
    if not arg2:
        revert with 0, 'extFarmAddr == 0x0'
    require arg1 < ('storage', 256, 0, 12)
    if ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        revert with 0, 'cannot set extFramAddr again'
    require ext_code.size(arg2)
    staticcall arg2.poolLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 >= ext_call.return_data[0]:
        revert with 0, 'bad _extPid'
    require ext_code.size(arg2)
    staticcall arg2.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ('storage', 160, 0, ('add', ('mul', 15, ('param', 'arg1')), ('sha3', 12))) != ext_call.return_data[12 len 20]:
        revert with 0, 
                    32,
                    45,
                    0x6b706f6f6c206d69736d61746368206265747765656e20646546726f73744661726d20616e6420657874466172,
                    ext_call.return_data[113 len 15],
                    mem[calldata.size + 328 len 4]
    address(stor[(15 * arg1) + sha3(12) + 10].field_0) = arg2
    uint256(stor[(15 * arg1) + sha3(12) + 11].field_0) = arg3
    emit SetExtFarm(arg1, address(arg2), arg3);
}

function totalUnclaimedExtFarmReward(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    while idx < ('storage', 256, 0, 12):
        mem[0] = 12
        if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 12))):
            idx = idx + 1
            continue 
        if ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 12))) != arg1:
            idx = idx + 1
            continue 
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
            _33 = mem[64]
            mem[64] = mem[64] + 64
            mem[_33] = 26
            mem[_33 + 32] = 'SafeMath: division by zero'
            _35 = mem[64]
            mem[64] = mem[64] + 64
            mem[_35] = 30
            mem[_35 + 32] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))) <= 0:
                if -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))) < -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _37 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _37 + 68] = mem[idx + _35 + 32]
                idx = idx + 32
                continue 
            mem[_37 + 68] = mem[_37 + 70 len 30]
            revert with memory
              from mem[64]
               len _37 + -mem[64] + 100
        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 12))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _34 = mem[64]
        mem[64] = mem[64] + 64
        mem[_34] = 26
        mem[_34 + 32] = 'SafeMath: division by zero'
        _36 = mem[64]
        mem[64] = mem[64] + 64
        mem[_36] = 30
        mem[_36 + 32] = 'SafeMath: subtraction overflow'
        if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))) <= ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
            idx = idx + 1
            continue 
        _40 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _40 + 68] = mem[idx + _36 + 32]
            idx = idx + 32
            continue 
        mem[_40 + 68] = mem[_40 + 70 len 30]
        revert with memory
          from mem[64]
           len _40 + -mem[64] + 100
    return 0
}

function sub_8609f288(?) payable {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    46,
                    0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
    require ext_code.size(('storage', 160, 0, 3))
    staticcall ('storage', 160, 0, 3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, 3))
    staticcall ('storage', 160, 0, 3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(('storage', 160, 0, 3)):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[calldata.size + 300 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
    call ('storage', 160, 0, 3) with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[calldata.size + 364 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if calldata.size + 72:
            require calldata.size + 72 >= 32
            if not msg.sender, Mask(96, 64, this.address) >> 64:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[calldata.size + 410 len 22]
    else:
        mem[calldata.size + 332 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[calldata.size + 332]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[calldata.size + ceil32(return_data.size) + 411 len 22]
    emit 0xcab27fff: address(arg1), ext_call.return_data[0]
}

function sub_158e6218(?) payable {
    require calldata.size - 4 >= 224
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    46,
                    0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
    if block.number >= arg3:
        revert with 0, 'block.number >= bonusEndBlock'
    if block.timestamp >= arg2:
        revert with 0, 
                    32,
                    39,
                    0xfe73746172742074696d65206973206561726c696572207468616e2063757272656e742074696d,
                    mem[calldata.size + 307 len 25]
    if block.number > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg3 - block.number:
        if block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 >= block.timestamp:
            revert with 0, 
                        32,
                        42,
                        0x74657374696d61746520656e642074696d65206973206561726c79207468616e2073746172742074696d,
                        mem[calldata.size + 374 len 22]
    else:
        if (arg3 * arg7) - (block.number * arg7) / arg3 - block.number != arg7:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
        if (arg3 * arg7) - (block.number * arg7) + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 >= (arg3 * arg7) - (block.number * arg7) + block.timestamp:
            revert with 0, 
                        32,
                        42,
                        0x74657374696d61746520656e642074696d65206973206561726c79207468616e2073746172742074696d,
                        mem[calldata.size + 374 len 22]
    if not arg1:
        revert with 0, '_lpToken == 0'
    idx = 0
    while idx < ('storage', 256, 0, 12):
        mem[0] = 12
        if ('storage', 160, 0, ('add', ('mul', 15, ('var', 0)), ('sha3', 12))) == arg1:
            revert with 0, 'add: LP already added'
        idx = idx + 1
        continue 
    uint256(stor[12].field_0) = ('storage', 256, 0, 12) + 1
    address(stor[(15 * ('storage', 256, 0, 12)) + sha3(12)].field_0) = arg1
    uint256(stor[(15 * ('storage', 256, 0, 12)) + sha3(12) + 1].field_0) = 0
    uint256(stor[(15 * ('storage', 256, 0, 12)) + sha3(12) + 2].field_0) = 0
    uint256(stor[(15 * ('storage', 256, 0, 12)) + sha3(12) + 3].field_0) = 0
    uint256(stor[(15 * ('storage', 256, 0, 12)) + sha3(12) + 4].field_0) = arg3
    uint256(stor[(15 * ('storage', 256, 0, 12)) + sha3(12) + 5].field_0) = 0
    uint256(stor[(15 * ('storage', 256, 0, 12)) + sha3(12) + 6].field_0) = 0
    uint256(stor[(15 * ('storage', 256, 0, 12)) + sha3(12) + 7].field_0) = arg4
    uint256(stor[(15 * ('storage', 256, 0, 12)) + sha3(12) + 8].field_0) = 0
    uint256(stor[(15 * ('storage', 256, 0, 12)) + sha3(12) + 9].field_0) = arg2
    address(stor[(15 * ('storage', 256, 0, 12)) + sha3(12) + 10].field_0) = 0
    Mask(96, 0, stor[(15 * ('storage', 256, 0, 12)) + sha3(12) + 10].field_160) = 0
    uint256(stor[(15 * ('storage', 256, 0, 12)) + sha3(12) + 11].field_0) = 0
    uint256(stor[(15 * ('storage', 256, 0, 12)) + sha3(12) + 12].field_0) = 0
    uint256(stor[(15 * ('storage', 256, 0, 12)) + sha3(12) + 13].field_0) = 0
    uint8(stor[(15 * ('storage', 256, 0, 12)) + sha3(12) + 14].field_0) = 0
    uint256(stor[sha3(('storage', 256, 0, 12) - 1, 10)].field_0) = arg5
    uint256(stor[sha3(('storage', 256, 0, 12) - 1, 10) + 1].field_0) = arg6
}

function extRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= ('storage', 256, 0, 12):
        revert with 0, 'dpid >= poolInfo.length'
    if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        return 0
    require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
    staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).joePerSec() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
    staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[64] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
    staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).totalAllocPoint() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, ('add', ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
    staticcall ('storage', 160, 0, ('add', ('mul', 15, ('param', 'arg1')), ('sha3', 12))).0x70a08231 with:
            gas gas_remaining wei
           args ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).0x93f1a40b with:
                gas gas_remaining wei
               args arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        return 0
    if not block.timestamp - ext_call.return_data[64]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).0x93f1a40b with:
                gas gas_remaining wei
               args arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not 0 / ext_call.return_data[0] / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 1000000 * 10^18)
    if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0]) / block.timestamp - ext_call.return_data[64] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0]):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).0x93f1a40b with:
                gas gas_remaining wei
               args arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not 0 / ext_call.return_data[0] / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 1000000 * 10^18)
    if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32]) / (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0]) != ext_call.return_data[32]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.timestamp * ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32]):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).0x93f1a40b with:
                gas gas_remaining wei
               args arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not 0 / ext_call.return_data[0] / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 1000000 * 10^18)
    if (1000000 * 10^18 * block.timestamp * ext_call.return_data[0] * ext_call.return_data[32]) - (1000000 * 10^18 * ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32]) / (block.timestamp * ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32]) != 1000000 * 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
    staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).0x93f1a40b with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not (1000000 * 10^18 * block.timestamp * ext_call.return_data[0] * ext_call.return_data[32]) - (1000000 * 10^18 * ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] / ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * (1000000 * 10^18 * block.timestamp * ext_call.return_data[0] * ext_call.return_data[32]) - (1000000 * 10^18 * ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] / ext_call.return_data[0] / (1000000 * 10^18 * block.timestamp * ext_call.return_data[0] * ext_call.return_data[32]) - (1000000 * 10^18 * ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    return (ext_call.return_data[0] * (1000000 * 10^18 * block.timestamp * ext_call.return_data[0] * ext_call.return_data[32]) - (1000000 * 10^18 * ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32]) / ext_call.return_data[0] / ext_call.return_data[0] / 1000000 * 10^18)
}

function enableDoubleFarming(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    46,
                    0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
    if arg1 >= ('storage', 256, 0, 12):
        revert with 0, 'dpid >= poolInfo.length'
    if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        revert with 0, 32, 36, 0x64706f6f6c206e6f7420737570706f72747320646f75626c65206661726d696e67207965, mem[calldata.size + 304 len 28]
    if arg2 != bool(('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).JOE() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(('storage', 160, 0, ('add', ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        if arg2:
            call ('storage', 160, 0, ('add', ('mul', 15, ('param', 'arg1')), ('sha3', 12))).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                uint8(stor[(15 * arg1) + sha3(12) + 14].field_0) = 1
            else:
                require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
                call ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).0xe2bbb158 with:
                     gas gas_remaining wei
                    args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                uint8(stor[(15 * arg1) + sha3(12) + 14].field_0) = 1
                if ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
                    staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).JOE() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[(15 * arg1) + sha3(12) + 12].field_0) = ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        else:
            call ('storage', 160, 0, ('add', ('mul', 15, ('param', 'arg1')), ('sha3', 12))).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
            staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).0x93f1a40b with:
                    gas gas_remaining wei
                   args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0]:
                require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
                call ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).0x441a3e70 with:
                     gas gas_remaining wei
                    args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
                staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).JOE() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * arg1) + sha3(12) + 12].field_0) = ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        Mask(96, 0, stor[(15 * arg1) + sha3(12) + 10].field_160) = Mask(96, 0, arg2)
        emit DoubleFarmingEnable(arg1, arg2);
}

function distributeFinalExtReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) == msg.sender:
        mem[128] = address(msg.sender)
        mem[148] = address(this.address)
        mem[168] = msg.value
        mem[200 len calldata.size] = call.data[0 len calldata.size]
        mem[96] = calldata.size + 72
        mem[64] = calldata.size + 200
        mem[calldata.size + 204] = sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])
        mem[calldata.size + 236] = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
        require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
        mem[calldata.size + 200] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        46,
                        0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                        mem[calldata.size + 314 len 18]
        uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
        if arg1 >= ('storage', 256, 0, 12):
            revert with 0, 'dpid >= poolInfo.length'
        mem[0] = 12
        if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            revert with 0, 'pool not supports double farming'
        idx = 0
        while idx < ('storage', 256, 0, 12):
            mem[0] = 12
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 12))):
                idx = idx + 1
                continue 
            if ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                idx = idx + 1
                continue 
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                _217 = mem[64]
                mem[64] = mem[64] + 64
                mem[_217] = 26
                mem[_217 + 32] = 'SafeMath: division by zero'
                _239 = mem[64]
                mem[64] = mem[64] + 64
                mem[_239] = 30
                mem[_239 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))) <= 0:
                    if -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))) < -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _244 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _244 + 68] = mem[idx + _239 + 32]
                    idx = idx + 32
                    continue 
                mem[_244 + 68] = mem[_244 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _244 + -mem[64] + 100
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 12))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _220 = mem[64]
            mem[64] = mem[64] + 64
            mem[_220] = 26
            mem[_220 + 32] = 'SafeMath: division by zero'
            _242 = mem[64]
            mem[64] = mem[64] + 64
            mem[_242] = 30
            mem[_242 + 32] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))) <= ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                idx = idx + 1
                continue 
            _252 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _252 + 68] = mem[idx + _242 + 32]
                idx = idx + 32
                continue 
            mem[_252 + 68] = mem[_252 + 70 len 30]
            revert with memory
              from mem[64]
               len _252 + -mem[64] + 100
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).JOE() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _216 = mem[64]
        mem[64] = mem[64] + 64
        mem[_216] = 30
        mem[_216 + 32] = 'SafeMath: subtraction overflow'
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
        mem[128] = address(msg.sender)
        mem[148] = address(this.address)
        mem[168] = msg.value
        mem[200 len calldata.size] = call.data[0 len calldata.size]
        mem[96] = calldata.size + 72
        mem[64] = calldata.size + 200
        mem[calldata.size + 204] = sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])
        mem[calldata.size + 236] = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
        require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
        mem[calldata.size + 200] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        46,
                        0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                        mem[calldata.size + 314 len 18]
        uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
        if arg1 >= ('storage', 256, 0, 12):
            revert with 0, 'dpid >= poolInfo.length'
        mem[0] = 12
        if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            revert with 0, 'pool not supports double farming'
        idx = 0
        while idx < ('storage', 256, 0, 12):
            mem[0] = 12
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 12))):
                idx = idx + 1
                continue 
            if ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                idx = idx + 1
                continue 
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                _219 = mem[64]
                mem[64] = mem[64] + 64
                mem[_219] = 26
                mem[_219 + 32] = 'SafeMath: division by zero'
                _241 = mem[64]
                mem[64] = mem[64] + 64
                mem[_241] = 30
                mem[_241 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))) <= 0:
                    if -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))) < -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _247 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _247 + 68] = mem[idx + _241 + 32]
                    idx = idx + 32
                    continue 
                mem[_247 + 68] = mem[_247 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _247 + -mem[64] + 100
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 12))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _221 = mem[64]
            mem[64] = mem[64] + 64
            mem[_221] = 26
            mem[_221 + 32] = 'SafeMath: division by zero'
            _243 = mem[64]
            mem[64] = mem[64] + 64
            mem[_243] = 30
            mem[_243 + 32] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))) <= ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                idx = idx + 1
                continue 
            _257 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _257 + 68] = mem[idx + _243 + 32]
                idx = idx + 32
                continue 
            mem[_257 + 68] = mem[_257 + 70 len 30]
            revert with memory
              from mem[64]
               len _257 + -mem[64] + 100
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).JOE() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _218 = mem[64]
        mem[64] = mem[64] + 64
        mem[_218] = 30
        mem[_218 + 32] = 'SafeMath: subtraction overflow'
    if 0 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 > ext_call.return_data[0]:
        revert with 0, 32, 35, 0x6d64697374696275746520746f6f206d7563682065787465726e616c20726577617264, mem[mem[64] + 103 len 29]
    if not arg2:
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            revert with 0, 'SafeMath: addition overflow'
        uint256(stor[(15 * arg1) + sha3(12) + 12].field_0) = ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
    else:
        if 1000000 * 10^18 * arg2 / arg2 != 1000000 * 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * arg2 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * arg2 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            revert with 0, 'SafeMath: addition overflow'
        uint256(stor[(15 * arg1) + sha3(12) + 12].field_0) = ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * arg2 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
}

function sub_79939f86(?) payable {
    require calldata.size - 4 >= 160
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    46,
                    0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
    if arg1 >= ('storage', 256, 0, 12):
        revert with 0, 'dpid >= poolInfo.length'
    if arg2 <= block.number:
        revert with 0, '_bonusEndBlock <= block.number'
    require arg1 < ('storage', 256, 0, 12)
    if block.number > ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        if ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            require arg1 < ('storage', 256, 0, 12)
            if block.number <= ('storage', 256, 0, ('add', 2, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * arg1) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            else:
                if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) >= ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[(15 * arg1) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
                else:
                    if block.number < ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[(15 * arg1) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
                        else:
                            if (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) / block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) != ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
                            if not (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[(15 * arg1) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
                            else:
                                if (1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) / (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) != 1000000 * 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
                                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                                    revert with 0, 'SafeMath: division by zero'
                                if ((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[(15 * arg1) + sha3(12) + 6].field_0) = ((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
                    else:
                        if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) > ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[(15 * arg1) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
                        else:
                            if (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) / ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) != ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
                            if not (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[(15 * arg1) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
                            else:
                                if (1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) / (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) != 1000000 * 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
                                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                                    revert with 0, 'SafeMath: division by zero'
                                if ((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[(15 * arg1) + sha3(12) + 6].field_0) = ((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        uint256(stor[(15 * arg1) + sha3(12) + 5].field_0) = block.number
    require arg1 < ('storage', 256, 0, 12)
    if ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) <= block.number:
        uint256(stor[(15 * arg1) + sha3(12) + 3].field_0) = block.number
    uint256(stor[(15 * arg1) + sha3(12) + 4].field_0) = arg2
    uint256(stor[(15 * arg1) + sha3(12) + 7].field_0) = arg3
    uint256(stor[sha3(arg1, 10)].field_0) = arg4
    uint256(stor[sha3(arg1, 10) + 1].field_0) = arg5
    emit UpdatePoolInfo(arg1, arg2, arg3);
}

function quitExtFarm(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) == msg.sender:
        mem[128] = address(msg.sender)
        mem[148] = address(this.address)
        mem[168] = msg.value
        mem[200 len calldata.size] = call.data[0 len calldata.size]
        mem[96] = calldata.size + 72
        mem[64] = calldata.size + 200
        mem[calldata.size + 236] = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
        require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        46,
                        0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                        mem[calldata.size + 314 len 18]
        uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
        require ext_code.size(arg1)
        staticcall arg1.JOE() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[calldata.size + 204] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[calldata.size + 200] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ('storage', 256, 0, 12):
            mem[0] = 12
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 12))):
                idx = idx + 1
                continue 
            if ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 12))) != arg1:
                idx = idx + 1
                continue 
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                _189 = mem[64]
                mem[64] = mem[64] + 64
                mem[_189] = 26
                mem[_189 + 32] = 'SafeMath: division by zero'
                _208 = mem[64]
                mem[64] = mem[64] + 64
                mem[_208] = 30
                mem[_208 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))) <= 0:
                    if -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))) < -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _218 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _218 + 68] = mem[idx + _208 + 32]
                    idx = idx + 32
                    continue 
                mem[_218 + 68] = mem[_218 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _218 + -mem[64] + 100
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 12))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _194 = mem[64]
            mem[64] = mem[64] + 64
            mem[_194] = 26
            mem[_194 + 32] = 'SafeMath: division by zero'
            _215 = mem[64]
            mem[64] = mem[64] + 64
            mem[_215] = 30
            mem[_215 + 32] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))) <= ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                idx = idx + 1
                continue 
            _230 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _230 + 68] = mem[idx + _215 + 32]
                idx = idx + 32
                continue 
            mem[_230 + 68] = mem[_230 + 70 len 30]
            revert with memory
              from mem[64]
               len _230 + -mem[64] + 100
        if 0 > ext_call.return_data[0]:
            revert with 0, 'extreward shortage'
        _180 = mem[64]
        mem[64] = mem[64] + 64
        mem[_180] = 30
        mem[_180 + 32] = 'SafeMath: subtraction overflow'
        _186 = mem[64]
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = ext_call.return_data[0]
        _187 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_187 + 32 len 4] = unknown_0xa9059cbb(?????)
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'SafeERC20: call to non-contract'
        _197 = mem[_187]
        mem[_186 + 100 len floor32(mem[_187])] = mem[_187 + 32 len floor32(mem[_187])]
        mem[_186 + floor32(mem[_187]) + -(mem[_187] % 32) + 132 len mem[_187] % 32] = mem[_187 + -(mem[_187] % 32) + floor32(mem[_187]) + 64 len mem[_187] % 32]
        call address(ext_call.return_data[0]).mem[_186 + 100 len 4] with:
             gas gas_remaining wei
            args mem[_186 + 104 len _197 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_186 + 210 len 22]
        else:
            mem[_186 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[_186 + 132]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_186 + ceil32(return_data.size) + 211 len 22]
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
        mem[128] = address(msg.sender)
        mem[148] = address(this.address)
        mem[168] = msg.value
        mem[200 len calldata.size] = call.data[0 len calldata.size]
        mem[96] = calldata.size + 72
        mem[64] = calldata.size + 200
        mem[calldata.size + 236] = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
        require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        46,
                        0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                        mem[calldata.size + 314 len 18]
        uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
        require ext_code.size(arg1)
        staticcall arg1.JOE() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[calldata.size + 204] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[calldata.size + 200] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ('storage', 256, 0, 12):
            mem[0] = 12
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 12))):
                idx = idx + 1
                continue 
            if ('storage', 160, 0, ('add', 10, ('mul', 15, ('var', 0)), ('sha3', 12))) != arg1:
                idx = idx + 1
                continue 
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                _193 = mem[64]
                mem[64] = mem[64] + 64
                mem[_193] = 26
                mem[_193 + 32] = 'SafeMath: division by zero'
                _213 = mem[64]
                mem[64] = mem[64] + 64
                mem[_213] = 30
                mem[_213 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))) <= 0:
                    if -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))) < -('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _221 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _221 + 68] = mem[idx + _213 + 32]
                    idx = idx + 32
                    continue 
                mem[_221 + 68] = mem[_221 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _221 + -mem[64] + 100
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 12))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _195 = mem[64]
            mem[64] = mem[64] + 64
            mem[_195] = 26
            mem[_195 + 32] = 'SafeMath: division by zero'
            _217 = mem[64]
            mem[64] = mem[64] + 64
            mem[_217] = 30
            mem[_217 + 32] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 13, ('mul', 15, ('var', 0)), ('sha3', 12))) <= ('storage', 256, 0, ('add', 12, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                idx = idx + 1
                continue 
            _239 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _239 + 68] = mem[idx + _217 + 32]
                idx = idx + 32
                continue 
            mem[_239 + 68] = mem[_239 + 70 len 30]
            revert with memory
              from mem[64]
               len _239 + -mem[64] + 100
        if 0 > ext_call.return_data[0]:
            revert with 0, 'extreward shortage'
        _181 = mem[64]
        mem[64] = mem[64] + 64
        mem[_181] = 30
        mem[_181 + 32] = 'SafeMath: subtraction overflow'
        _190 = mem[64]
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = ext_call.return_data[0]
        _191 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_191 + 32 len 4] = unknown_0xa9059cbb(?????)
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'SafeERC20: call to non-contract'
        _201 = mem[_191]
        mem[_190 + 100 len floor32(mem[_191])] = mem[_191 + 32 len floor32(mem[_191])]
        mem[_190 + floor32(mem[_191]) + -(mem[_191] % 32) + 132 len mem[_191] % 32] = mem[_191 + -(mem[_191] % 32) + floor32(mem[_191]) + 64 len mem[_191] % 32]
        call address(ext_call.return_data[0]).mem[_190 + 100 len 4] with:
             gas gas_remaining wei
            args mem[_190 + 104 len _201 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_190 + 210 len 22]
        else:
            mem[_190 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[_190 + 132]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_190 + ceil32(return_data.size) + 211 len 22]
    emit QuitExtReward(address(arg1), address(ext_call.return_data[0]), address(arg2), ext_call.return_data[0]);
}

function pendingExtReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= ('storage', 256, 0, 12):
        revert with 0, 'dpid >= poolInfo.length'
    if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        return 0
    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        return 0
    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
        return 0
    if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))))
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
    mem[132] = this.address
    require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
    staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _17 = mem[96 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
    _19 = uint32(this.address), mem[164 len 28]
    require uint32(this.address), mem[164 len 28] <= 4294967296
    require uint32(this.address), mem[164 len 28] + 32 <= return_data.size
    require return_data.size >= mem[uint32(this.address), mem[164 len 28] + 96] + uint32(this.address), mem[164 len 28] + 32 and mem[uint32(this.address), mem[164 len 28] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[uint32(this.address), mem[164 len 28] + 96]
    _26 = mem[_19 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_19 + 96])] = mem[_19 + 128 len ceil32(mem[_19 + 96])]
    if not _26 % 32:
        if not _17:
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_26 + ceil32(return_data.size) + 293 len 31]
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))))
        if 1000000 * 10^18 * _17 / _17 != 1000000 * 10^18:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[_26 + ceil32(return_data.size) + 229 len 31]
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[_26 + ceil32(return_data.size) + 293 len 31]
    else:
        if not _17:
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_26) + ceil32(return_data.size) + 325 len 31]
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))))
        if 1000000 * 10^18 * _17 / _17 != 1000000 * 10^18:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[floor32(_26) + ceil32(return_data.size) + 261 len 31]
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[floor32(_26) + ceil32(return_data.size) + 325 len 31]
    ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_17')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_17')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _17 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))))
}

function sub_7d35a034(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= ('storage', 256, 0, 12):
        revert with 0, 'dpid >= poolInfo.length'
    if block.number <= ('storage', 256, 0, ('add', 5, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    require arg1 < ('storage', 256, 0, 12)
    if block.number <= ('storage', 256, 0, ('add', 2, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: division by zero'
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) >= ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: division by zero'
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    if block.number < ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 'SafeMath: division by zero'
            if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if (block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) != ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))):
            if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 'SafeMath: division by zero'
            if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if (1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / (block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) != 1000000 * 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: division by zero'
        if ((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if ((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               (((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) > ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        revert with 0, 'SafeMath: subtraction overflow'
    if not ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: division by zero'
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    if (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) != ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))):
        if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: division by zero'
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    if (1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) != 1000000 * 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
        revert with 0, 'SafeMath: division by zero'
    if ((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
        revert with 0, 'SafeMath: addition overflow'
    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    if ((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
           (((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
}

function sub_c1520a90(?) payable {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) == msg.sender:
        mem[128] = address(msg.sender)
        mem[148] = address(this.address)
        mem[168] = msg.value
        mem[200 len calldata.size] = call.data[0 len calldata.size]
        mem[96] = calldata.size + 72
        mem[64] = calldata.size + 200
        mem[calldata.size + 236] = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
        require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        46,
                        0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                        mem[calldata.size + 314 len 18]
        uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
        if not arg1:
            revert with 0, '_to == 0'
        mem[calldata.size + 204] = this.address
        require ext_code.size(('storage', 160, 0, 3))
        staticcall ('storage', 160, 0, 3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[calldata.size + 200] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = mem[mem[64]]
        while idx < ('storage', 256, 0, 12):
            if block.number <= ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))):
                revert with 0, 32, 38, 0x657175697420626c6f636b2e6e756d626572203c3d207069642e626f6e7573456e64426c6f63, mem[mem[64] + 106 len 26]
            require idx < ('storage', 256, 0, 12)
            mem[0] = 12
            if block.number <= ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))):
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    _1254 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1254] = 26
                    mem[_1254 + 32] = 'SafeMath: division by zero'
                    _1352 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1352] = 30
                    mem[_1352 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                        _1382 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1382 + 68] = mem[idx + _1352 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1382 + 68] = mem[_1382 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1382 + -mem[64] + 100
                    _1452 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1452] = 30
                    mem[_1452 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _1495 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1495 + 68] = mem[idx + _1452 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1495 + 68] = mem[_1495 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1495 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1271 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1271] = 26
                mem[_1271 + 32] = 'SafeMath: division by zero'
                _1369 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1369] = 30
                mem[_1369 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                    _1404 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1404 + 68] = mem[idx + _1369 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1404 + 68] = mem[_1404 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1404 + -mem[64] + 100
                _1471 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1471] = 30
                mem[_1471 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    continue 
                _1521 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1521 + 68] = mem[idx + _1471 + 32]
                    idx = idx + 32
                    continue 
                mem[_1521 + 68] = mem[_1521 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1521 + -mem[64] + 100
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    _1270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1270] = 26
                    mem[_1270 + 32] = 'SafeMath: division by zero'
                    _1368 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1368] = 30
                    mem[_1368 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                        _1401 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1401 + 68] = mem[idx + _1368 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1401 + 68] = mem[_1401 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1401 + -mem[64] + 100
                    _1468 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1468] = 30
                    mem[_1468 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _1518 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1518 + 68] = mem[idx + _1468 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1518 + 68] = mem[_1518 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1518 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1282 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1282] = 26
                mem[_1282 + 32] = 'SafeMath: division by zero'
                _1381 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1381] = 30
                mem[_1381 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                    _1429 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1429 + 68] = mem[idx + _1381 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1429 + 68] = mem[_1429 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1429 + -mem[64] + 100
                _1490 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1490] = 30
                mem[_1490 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    continue 
                _1547 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1547 + 68] = mem[idx + _1490 + 32]
                    idx = idx + 32
                    continue 
                mem[_1547 + 68] = mem[_1547 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1547 + -mem[64] + 100
            require idx < ('storage', 256, 0, 12)
            mem[0] = 12
            if block.number <= ('storage', 256, 0, ('add', 2, ('mul', 15, ('var', 0)), ('sha3', 12))):
                _1380 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1380] = 26
                mem[_1380 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1380 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12)))
                uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    _1734 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1734] = 26
                    mem[_1734 + 32] = 'SafeMath: division by zero'
                    _1787 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1787] = 30
                    mem[_1787 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                        _1819 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1819 + 68] = mem[idx + _1787 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1819 + 68] = mem[_1819 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1819 + -mem[64] + 100
                    _1862 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1862] = 30
                    mem[_1862 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _1896 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1896 + 68] = mem[idx + _1862 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1896 + 68] = mem[_1896 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1896 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1759 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1759] = 26
                mem[_1759 + 32] = 'SafeMath: division by zero'
                _1802 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1802] = 30
                mem[_1802 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                    _1838 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1838 + 68] = mem[idx + _1802 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1838 + 68] = mem[_1838 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1838 + -mem[64] + 100
                _1875 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1875] = 30
                mem[_1875 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    continue 
                _1921 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1921 + 68] = mem[idx + _1875 + 32]
                    idx = idx + 32
                    continue 
                mem[_1921 + 68] = mem[_1921 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1921 + -mem[64] + 100
            if ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) >= ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))):
                _1400 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1400] = 26
                mem[_1400 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    s = 32
                    while s < 26:
                        mem[s + mem[64] + 68] = mem[s + _1400 + 32]
                        s = s + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12)))
                uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    _1758 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1758] = 26
                    mem[_1758 + 32] = 'SafeMath: division by zero'
                    _1801 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1801] = 30
                    mem[_1801 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                        _1835 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1835 + 68] = mem[idx + _1801 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1835 + 68] = mem[_1835 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1835 + -mem[64] + 100
                    _1872 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1872] = 30
                    mem[_1872 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _1918 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1918 + 68] = mem[idx + _1872 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1918 + 68] = mem[_1918 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1918 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1773 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1773] = 26
                mem[_1773 + 32] = 'SafeMath: division by zero'
                _1818 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1818] = 30
                mem[_1818 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                    _1851 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1851 + 68] = mem[idx + _1818 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1851 + 68] = mem[_1851 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1851 + -mem[64] + 100
                _1891 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1891] = 30
                mem[_1891 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    continue 
                _1950 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1950 + 68] = mem[idx + _1891 + 32]
                    idx = idx + 32
                    continue 
                mem[_1950 + 68] = mem[_1950 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1950 + -mem[64] + 100
            if block.number < ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))):
                _1250 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1250] = 30
                mem[_1250 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) > block.number:
                    _1276 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1276 + 68] = mem[idx + _1250 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1276 + 68] = mem[_1276 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1276 + -mem[64] + 100
                if not block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    _1512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1512] = 26
                    mem[_1512 + 32] = 'SafeMath: division by zero'
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1512 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[(15 * idx) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        _1784 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1784] = 26
                        mem[_1784 + 32] = 'SafeMath: division by zero'
                        _1870 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1870] = 30
                        mem[_1870 + 32] = 'SafeMath: subtraction overflow'
                        if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                            _1912 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1912 + 68] = mem[idx + _1870 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1912 + 68] = mem[_1912 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1912 + -mem[64] + 100
                        _2011 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2011] = 30
                        mem[_2011 + 32] = 'SafeMath: subtraction overflow'
                        if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                            idx = idx + 1
                            s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                            continue 
                        _2099 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2099 + 68] = mem[idx + _2011 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2099 + 68] = mem[_2099 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2099 + -mem[64] + 100
                    if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1797 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1797] = 26
                    mem[_1797 + 32] = 'SafeMath: division by zero'
                    _1889 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1889] = 30
                    mem[_1889 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                        _1942 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1942 + 68] = mem[idx + _1889 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1942 + 68] = mem[_1942 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1942 + -mem[64] + 100
                    _2053 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2053] = 30
                    mem[_2053 + 32] = 'SafeMath: subtraction overflow'
                    if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _2142 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2142 + 68] = mem[idx + _2053 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2142 + 68] = mem[_2142 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2142 + -mem[64] + 100
                if (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) / block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))):
                    _1538 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1538] = 26
                    mem[_1538 + 32] = 'SafeMath: division by zero'
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1538 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[(15 * idx) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        _1796 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1796] = 26
                        mem[_1796 + 32] = 'SafeMath: division by zero'
                        _1888 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1888] = 30
                        mem[_1888 + 32] = 'SafeMath: subtraction overflow'
                        if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                            _1939 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1939 + 68] = mem[idx + _1888 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1939 + 68] = mem[_1939 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1939 + -mem[64] + 100
                        _2050 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2050] = 30
                        mem[_2050 + 32] = 'SafeMath: subtraction overflow'
                        if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                            idx = idx + 1
                            s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                            continue 
                        _2139 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2139 + 68] = mem[idx + _2050 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2139 + 68] = mem[_2139 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2139 + -mem[64] + 100
                    if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1813 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1813] = 26
                    mem[_1813 + 32] = 'SafeMath: division by zero'
                    _1911 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1911] = 30
                    mem[_1911 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                        _1973 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1973 + 68] = mem[idx + _1911 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1973 + 68] = mem[_1973 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1973 + -mem[64] + 100
                    _2094 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2094] = 30
                    mem[_2094 + 32] = 'SafeMath: subtraction overflow'
                    if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _2184 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2184 + 68] = mem[idx + _2094 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2184 + 68] = mem[_2184 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2184 + -mem[64] + 100
                if (1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) / (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) != 1000000 * 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1564 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1564] = 26
                mem[_1564 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1564 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if ((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(12) + 6].field_0) = ((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12)))
                uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    _1812 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1812] = 26
                    mem[_1812 + 32] = 'SafeMath: division by zero'
                    _1910 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1910] = 30
                    mem[_1910 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                        _1970 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1970 + 68] = mem[idx + _1910 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1970 + 68] = mem[_1970 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1970 + -mem[64] + 100
                    _2091 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2091] = 30
                    mem[_2091 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _2181 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2181 + 68] = mem[idx + _2091 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2181 + 68] = mem[_2181 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2181 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1832 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1832] = 26
                mem[_1832 + 32] = 'SafeMath: division by zero'
                _1938 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1938] = 30
                mem[_1938 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                    _2006 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2006 + 68] = mem[idx + _1938 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2006 + 68] = mem[_2006 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2006 + -mem[64] + 100
                _2134 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2134] = 30
                mem[_2134 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    continue 
                _2218 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2218 + 68] = mem[idx + _2134 + 32]
                    idx = idx + 32
                    continue 
                mem[_2218 + 68] = mem[_2218 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2218 + -mem[64] + 100
            _1251 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1251] = 30
            mem[_1251 + 32] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))):
                _1279 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1279 + 68] = mem[idx + _1251 + 32]
                    idx = idx + 32
                    continue 
                mem[_1279 + 68] = mem[_1279 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1279 + -mem[64] + 100
            if not ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))):
                _1541 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1541] = 26
                mem[_1541 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1541 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12)))
                uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    _1800 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1800] = 26
                    mem[_1800 + 32] = 'SafeMath: division by zero'
                    _1890 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1890] = 30
                    mem[_1890 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                        _1947 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1947 + 68] = mem[idx + _1890 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1947 + 68] = mem[_1947 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1947 + -mem[64] + 100
                    _2062 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2062] = 30
                    mem[_2062 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _2154 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2154 + 68] = mem[idx + _2062 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2154 + 68] = mem[_2154 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2154 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1817 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1817] = 26
                mem[_1817 + 32] = 'SafeMath: division by zero'
                _1916 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1916] = 30
                mem[_1916 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                    _1981 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1981 + 68] = mem[idx + _1916 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1981 + 68] = mem[_1981 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1981 + -mem[64] + 100
                _2107 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2107] = 30
                mem[_2107 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    continue 
                _2196 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2196 + 68] = mem[idx + _2107 + 32]
                    idx = idx + 32
                    continue 
                mem[_2196 + 68] = mem[_2196 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2196 + -mem[64] + 100
            if (('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) / ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))):
                _1568 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1568] = 26
                mem[_1568 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1568 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12)))
                uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    _1816 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1816] = 26
                    mem[_1816 + 32] = 'SafeMath: division by zero'
                    _1915 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1915] = 30
                    mem[_1915 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                        _1978 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1978 + 68] = mem[idx + _1915 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1978 + 68] = mem[_1978 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1978 + -mem[64] + 100
                    _2104 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2104] = 30
                    mem[_2104 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _2193 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2193 + 68] = mem[idx + _2104 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2193 + 68] = mem[_2193 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2193 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1834 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1834] = 26
                mem[_1834 + 32] = 'SafeMath: division by zero'
                _1946 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1946] = 30
                mem[_1946 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                    _2017 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2017 + 68] = mem[idx + _1946 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2017 + 68] = mem[_2017 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2017 + -mem[64] + 100
                _2149 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2149] = 30
                mem[_2149 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    continue 
                _2229 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2229 + 68] = mem[idx + _2149 + 32]
                    idx = idx + 32
                    continue 
                mem[_2229 + 68] = mem[_2229 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2229 + -mem[64] + 100
            if (1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) / (('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) != 1000000 * 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1592 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1592] = 26
            mem[_1592 + 32] = 'SafeMath: division by zero'
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1592 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if ((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            uint256(stor[(15 * idx) + sha3(12) + 6].field_0) = ((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12)))
            uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                _1833 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1833] = 26
                mem[_1833 + 32] = 'SafeMath: division by zero'
                _1945 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1945] = 30
                mem[_1945 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                    _2014 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2014 + 68] = mem[idx + _1945 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2014 + 68] = mem[_2014 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2014 + -mem[64] + 100
                _2146 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2146] = 30
                mem[_2146 + 32] = 'SafeMath: subtraction overflow'
                if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                    idx = idx + 1
                    s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    continue 
                _2226 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2226 + 68] = mem[idx + _2146 + 32]
                    idx = idx + 32
                    continue 
                mem[_2226 + 68] = mem[_2226 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2226 + -mem[64] + 100
            if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1850 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1850] = 26
            mem[_1850 + 32] = 'SafeMath: division by zero'
            _1977 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1977] = 30
            mem[_1977 + 32] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                _2057 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2057 + 68] = mem[idx + _1977 + 32]
                    idx = idx + 32
                    continue 
                mem[_2057 + 68] = mem[_2057 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2057 + -mem[64] + 100
            _2188 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2188] = 30
            mem[_2188 + 32] = 'SafeMath: subtraction overflow'
            if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                idx = idx + 1
                s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                continue 
            _2255 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _2255 + 68] = mem[idx + _2188 + 32]
                idx = idx + 32
                continue 
            mem[_2255 + 68] = mem[_2255 + 70 len 30]
            revert with memory
              from mem[64]
               len _2255 + -mem[64] + 100
        mem[mem[64] + 4] = this.address
        require ext_code.size(('storage', 160, 0, 3))
        staticcall ('storage', 160, 0, 3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if s <= ext_call.return_data[0]:
            _1208 = mem[64]
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = s
            _1209 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1209 + 32 len 4] = unknown_0xa9059cbb(?????)
            if not ext_code.size(('storage', 160, 0, 3)):
                revert with 0, 'SafeERC20: call to non-contract'
            _1223 = mem[_1209]
            mem[_1208 + 100 len floor32(mem[_1209])] = mem[_1209 + 32 len floor32(mem[_1209])]
            mem[_1208 + floor32(mem[_1209]) + -(mem[_1209] % 32) + 132 len mem[_1209] % 32] = mem[_1209 + -(mem[_1209] % 32) + floor32(mem[_1209]) + 64 len mem[_1209] % 32]
            call ('storage', 160, 0, 3).mem[_1208 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_1208 + 104 len _1223 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_1208 + 210 len 22]
            else:
                mem[_1208 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_1208 + 132]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_1208 + ceil32(return_data.size) + 211 len 22]
        else:
            _1211 = mem[64]
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = ext_call.return_data[0]
            _1212 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1212 + 32 len 4] = unknown_0xa9059cbb(?????)
            if not ext_code.size(('storage', 160, 0, 3)):
                revert with 0, 'SafeERC20: call to non-contract'
            _1227 = mem[_1212]
            mem[_1211 + 100 len floor32(mem[_1212])] = mem[_1212 + 32 len floor32(mem[_1212])]
            mem[_1211 + floor32(mem[_1212]) + -(mem[_1212] % 32) + 132 len mem[_1212] % 32] = mem[_1212 + -(mem[_1212] % 32) + floor32(mem[_1212]) + 64 len mem[_1212] % 32]
            call ('storage', 160, 0, 3).mem[_1211 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_1211 + 104 len _1227 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_1211 + 210 len 22]
            else:
                mem[_1211 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_1211 + 132]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_1211 + ceil32(return_data.size) + 211 len 22]
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
        mem[128] = address(msg.sender)
        mem[148] = address(this.address)
        mem[168] = msg.value
        mem[200 len calldata.size] = call.data[0 len calldata.size]
        mem[96] = calldata.size + 72
        mem[64] = calldata.size + 200
        mem[calldata.size + 236] = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
        require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
        staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        46,
                        0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                        mem[calldata.size + 314 len 18]
        uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
        if not arg1:
            revert with 0, '_to == 0'
        mem[calldata.size + 204] = this.address
        require ext_code.size(('storage', 160, 0, 3))
        staticcall ('storage', 160, 0, 3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[calldata.size + 200] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = mem[mem[64]]
        while idx < ('storage', 256, 0, 12):
            if block.number <= ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))):
                revert with 0, 32, 38, 0x657175697420626c6f636b2e6e756d626572203c3d207069642e626f6e7573456e64426c6f63, mem[mem[64] + 106 len 26]
            require idx < ('storage', 256, 0, 12)
            mem[0] = 12
            if block.number <= ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))):
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    _1267 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1267] = 26
                    mem[_1267 + 32] = 'SafeMath: division by zero'
                    _1363 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1363] = 30
                    mem[_1363 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                        _1391 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1391 + 68] = mem[idx + _1363 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1391 + 68] = mem[_1391 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1391 + -mem[64] + 100
                    _1461 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1461] = 30
                    mem[_1461 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _1507 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1507 + 68] = mem[idx + _1461 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1507 + 68] = mem[_1507 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1507 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1275 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1275] = 26
                mem[_1275 + 32] = 'SafeMath: division by zero'
                _1375 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1375] = 30
                mem[_1375 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                    _1417 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1417 + 68] = mem[idx + _1375 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1417 + 68] = mem[_1417 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1417 + -mem[64] + 100
                _1482 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1482] = 30
                mem[_1482 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    continue 
                _1535 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1535 + 68] = mem[idx + _1482 + 32]
                    idx = idx + 32
                    continue 
                mem[_1535 + 68] = mem[_1535 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1535 + -mem[64] + 100
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    _1274 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1274] = 26
                    mem[_1274 + 32] = 'SafeMath: division by zero'
                    _1374 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1374] = 30
                    mem[_1374 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                        _1414 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1414 + 68] = mem[idx + _1374 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1414 + 68] = mem[_1414 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1414 + -mem[64] + 100
                    _1479 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1479] = 30
                    mem[_1479 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _1532 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1532 + 68] = mem[idx + _1479 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1532 + 68] = mem[_1532 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1532 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1289 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1289] = 26
                mem[_1289 + 32] = 'SafeMath: division by zero'
                _1390 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1390] = 30
                mem[_1390 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                    _1442 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1442 + 68] = mem[idx + _1390 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1442 + 68] = mem[_1442 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1442 + -mem[64] + 100
                _1502 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1502] = 30
                mem[_1502 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    continue 
                _1560 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1560 + 68] = mem[idx + _1502 + 32]
                    idx = idx + 32
                    continue 
                mem[_1560 + 68] = mem[_1560 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1560 + -mem[64] + 100
            require idx < ('storage', 256, 0, 12)
            mem[0] = 12
            if block.number <= ('storage', 256, 0, ('add', 2, ('mul', 15, ('var', 0)), ('sha3', 12))):
                _1389 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1389] = 26
                mem[_1389 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1389 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12)))
                uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    _1749 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1749] = 26
                    mem[_1749 + 32] = 'SafeMath: division by zero'
                    _1793 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1793] = 30
                    mem[_1793 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                        _1829 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1829 + 68] = mem[idx + _1793 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1829 + 68] = mem[_1829 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1829 + -mem[64] + 100
                    _1867 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1867] = 30
                    mem[_1867 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _1907 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1907 + 68] = mem[idx + _1867 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1907 + 68] = mem[_1907 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1907 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1769 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1769] = 26
                mem[_1769 + 32] = 'SafeMath: division by zero'
                _1811 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1811] = 30
                mem[_1811 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                    _1847 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1847 + 68] = mem[idx + _1811 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1847 + 68] = mem[_1847 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1847 + -mem[64] + 100
                _1884 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1884] = 30
                mem[_1884 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    continue 
                _1935 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1935 + 68] = mem[idx + _1884 + 32]
                    idx = idx + 32
                    continue 
                mem[_1935 + 68] = mem[_1935 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1935 + -mem[64] + 100
            if ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) >= ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))):
                _1413 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1413] = 26
                mem[_1413 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    s = 32
                    while s < 26:
                        mem[s + mem[64] + 68] = mem[s + _1413 + 32]
                        s = s + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12)))
                uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    _1768 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1768] = 26
                    mem[_1768 + 32] = 'SafeMath: division by zero'
                    _1810 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1810] = 30
                    mem[_1810 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                        _1844 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1844 + 68] = mem[idx + _1810 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1844 + 68] = mem[_1844 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1844 + -mem[64] + 100
                    _1881 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1881] = 30
                    mem[_1881 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _1932 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1932 + 68] = mem[idx + _1881 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1932 + 68] = mem[_1932 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1932 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1777 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1777] = 26
                mem[_1777 + 32] = 'SafeMath: division by zero'
                _1828 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1828] = 30
                mem[_1828 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                    _1856 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1856 + 68] = mem[idx + _1828 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1856 + 68] = mem[_1856 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1856 + -mem[64] + 100
                _1902 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1902] = 30
                mem[_1902 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    continue 
                _1966 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1966 + 68] = mem[idx + _1902 + 32]
                    idx = idx + 32
                    continue 
                mem[_1966 + 68] = mem[_1966 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1966 + -mem[64] + 100
            if block.number < ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))):
                _1263 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1263] = 30
                mem[_1263 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) > block.number:
                    _1283 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1283 + 68] = mem[idx + _1263 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1283 + 68] = mem[_1283 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1283 + -mem[64] + 100
                if not block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    _1526 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1526] = 26
                    mem[_1526 + 32] = 'SafeMath: division by zero'
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1526 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[(15 * idx) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        _1790 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1790] = 26
                        mem[_1790 + 32] = 'SafeMath: division by zero'
                        _1879 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1879] = 30
                        mem[_1879 + 32] = 'SafeMath: subtraction overflow'
                        if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                            _1926 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1926 + 68] = mem[idx + _1879 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1926 + 68] = mem[_1926 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1926 + -mem[64] + 100
                        _2032 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2032] = 30
                        mem[_2032 + 32] = 'SafeMath: subtraction overflow'
                        if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                            idx = idx + 1
                            s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                            continue 
                        _2121 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2121 + 68] = mem[idx + _2032 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2121 + 68] = mem[_2121 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2121 + -mem[64] + 100
                    if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1806 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1806] = 26
                    mem[_1806 + 32] = 'SafeMath: division by zero'
                    _1900 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1900] = 30
                    mem[_1900 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                        _1958 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1958 + 68] = mem[idx + _1900 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1958 + 68] = mem[_1958 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1958 + -mem[64] + 100
                    _2074 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2074] = 30
                    mem[_2074 + 32] = 'SafeMath: subtraction overflow'
                    if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _2165 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2165 + 68] = mem[idx + _2074 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2165 + 68] = mem[_2165 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2165 + -mem[64] + 100
                if (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) / block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))):
                    _1551 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1551] = 26
                    mem[_1551 + 32] = 'SafeMath: division by zero'
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1551 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[(15 * idx) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        _1805 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1805] = 26
                        mem[_1805 + 32] = 'SafeMath: division by zero'
                        _1899 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1899] = 30
                        mem[_1899 + 32] = 'SafeMath: subtraction overflow'
                        if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                            _1955 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1955 + 68] = mem[idx + _1899 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1955 + 68] = mem[_1955 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1955 + -mem[64] + 100
                        _2071 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2071] = 30
                        mem[_2071 + 32] = 'SafeMath: subtraction overflow'
                        if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                            idx = idx + 1
                            s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                            continue 
                        _2162 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2162 + 68] = mem[idx + _2071 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2162 + 68] = mem[_2162 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2162 + -mem[64] + 100
                    if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1823 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1823] = 26
                    mem[_1823 + 32] = 'SafeMath: division by zero'
                    _1925 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1925] = 30
                    mem[_1925 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                        _1991 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1991 + 68] = mem[idx + _1925 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1991 + 68] = mem[_1991 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1991 + -mem[64] + 100
                    _2116 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2116] = 30
                    mem[_2116 + 32] = 'SafeMath: subtraction overflow'
                    if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _2203 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2203 + 68] = mem[idx + _2116 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2203 + 68] = mem[_2203 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2203 + -mem[64] + 100
                if (1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) / (block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) != 1000000 * 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1576 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1576] = 26
                mem[_1576 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1576 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if ((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(12) + 6].field_0) = ((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12)))
                uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    _1822 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1822] = 26
                    mem[_1822 + 32] = 'SafeMath: division by zero'
                    _1924 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1924] = 30
                    mem[_1924 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                        _1988 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1988 + 68] = mem[idx + _1924 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1988 + 68] = mem[_1988 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1988 + -mem[64] + 100
                    _2113 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2113] = 30
                    mem[_2113 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _2200 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2200 + 68] = mem[idx + _2113 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2200 + 68] = mem[_2200 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2200 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1841 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1841] = 26
                mem[_1841 + 32] = 'SafeMath: division by zero'
                _1954 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1954] = 30
                mem[_1954 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                    _2027 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2027 + 68] = mem[idx + _1954 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2027 + 68] = mem[_2027 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2027 + -mem[64] + 100
                _2157 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2157] = 30
                mem[_2157 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    continue 
                _2233 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2233 + 68] = mem[idx + _2157 + 32]
                    idx = idx + 32
                    continue 
                mem[_2233 + 68] = mem[_2233 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2233 + -mem[64] + 100
            _1264 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1264] = 30
            mem[_1264 + 32] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))):
                _1286 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1286 + 68] = mem[idx + _1264 + 32]
                    idx = idx + 32
                    continue 
                mem[_1286 + 68] = mem[_1286 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1286 + -mem[64] + 100
            if not ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))):
                _1554 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1554] = 26
                mem[_1554 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1554 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12)))
                uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    _1809 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1809] = 26
                    mem[_1809 + 32] = 'SafeMath: division by zero'
                    _1901 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1901] = 30
                    mem[_1901 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                        _1963 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1963 + 68] = mem[idx + _1901 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1963 + 68] = mem[_1963 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1963 + -mem[64] + 100
                    _2083 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2083] = 30
                    mem[_2083 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _2177 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2177 + 68] = mem[idx + _2083 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2177 + 68] = mem[_2177 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2177 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1827 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1827] = 26
                mem[_1827 + 32] = 'SafeMath: division by zero'
                _1930 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1930] = 30
                mem[_1930 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                    _1999 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1999 + 68] = mem[idx + _1930 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1999 + 68] = mem[_1999 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1999 + -mem[64] + 100
                _2129 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2129] = 30
                mem[_2129 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    continue 
                _2215 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2215 + 68] = mem[idx + _2129 + 32]
                    idx = idx + 32
                    continue 
                mem[_2215 + 68] = mem[_2215 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2215 + -mem[64] + 100
            if (('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) / ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))):
                _1580 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1580] = 26
                mem[_1580 + 32] = 'SafeMath: division by zero'
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1580 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[(15 * idx) + sha3(12) + 6].field_0) = (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12)))
                uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    _1826 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1826] = 26
                    mem[_1826 + 32] = 'SafeMath: division by zero'
                    _1929 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1929] = 30
                    mem[_1929 + 32] = 'SafeMath: subtraction overflow'
                    if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                        _1996 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1996 + 68] = mem[idx + _1929 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1996 + 68] = mem[_1996 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1996 + -mem[64] + 100
                    _2126 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2126] = 30
                    mem[_2126 + 32] = 'SafeMath: subtraction overflow'
                    if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                        idx = idx + 1
                        s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                        continue 
                    _2212 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2212 + 68] = mem[idx + _2126 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2212 + 68] = mem[_2212 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2212 + -mem[64] + 100
                if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1843 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1843] = 26
                mem[_1843 + 32] = 'SafeMath: division by zero'
                _1962 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1962] = 30
                mem[_1962 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                    _2038 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2038 + 68] = mem[idx + _1962 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2038 + 68] = mem[_2038 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2038 + -mem[64] + 100
                _2172 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2172] = 30
                mem[_2172 + 32] = 'SafeMath: subtraction overflow'
                if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                    idx = idx + 1
                    s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    continue 
                _2244 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2244 + 68] = mem[idx + _2172 + 32]
                    idx = idx + 32
                    continue 
                mem[_2244 + 68] = mem[_2244 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2244 + -mem[64] + 100
            if (1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) / (('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) != 1000000 * 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1606 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1606] = 26
            mem[_1606 + 32] = 'SafeMath: division by zero'
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1606 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if ((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) < ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            uint256(stor[(15 * idx) + sha3(12) + 6].field_0) = ((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('mul', 15, ('var', 0)), ('sha3', 12)))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12)))) + ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12)))
            uint256(stor[(15 * idx) + sha3(12) + 5].field_0) = block.number
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))):
                _1842 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1842] = 26
                mem[_1842 + 32] = 'SafeMath: division by zero'
                _1961 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1961] = 30
                mem[_1961 + 32] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > 0:
                    _2035 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2035 + 68] = mem[idx + _1961 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2035 + 68] = mem[_2035 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2035 + -mem[64] + 100
                _2169 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2169] = 30
                mem[_2169 + 32] = 'SafeMath: subtraction overflow'
                if -('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                    idx = idx + 1
                    s = s + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                    continue 
                _2241 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2241 + 68] = mem[idx + _2169 + 32]
                    idx = idx + 32
                    continue 
                mem[_2241 + 68] = mem[_2241 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2241 + -mem[64] + 100
            if ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) != ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1855 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1855] = 26
            mem[_1855 + 32] = 'SafeMath: division by zero'
            _1995 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1995] = 30
            mem[_1995 + 32] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) > ('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18:
                _2078 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2078 + 68] = mem[idx + _1995 + 32]
                    idx = idx + 32
                    continue 
                mem[_2078 + 68] = mem[_2078 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2078 + -mem[64] + 100
            _2207 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2207] = 30
            mem[_2207 + 32] = 'SafeMath: subtraction overflow'
            if (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12))) <= s:
                idx = idx + 1
                s = s - (('storage', 256, 0, ('add', 6, ('mul', 15, ('var', 0)), ('sha3', 12))) * ('storage', 256, 0, ('add', 1, ('mul', 15, ('var', 0)), ('sha3', 12))) / 1000000 * 10^18) + ('storage', 256, 0, ('add', 8, ('mul', 15, ('var', 0)), ('sha3', 12)))
                continue 
            _2269 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _2269 + 68] = mem[idx + _2207 + 32]
                idx = idx + 32
                continue 
            mem[_2269 + 68] = mem[_2269 + 70 len 30]
            revert with memory
              from mem[64]
               len _2269 + -mem[64] + 100
        mem[mem[64] + 4] = this.address
        require ext_code.size(('storage', 160, 0, 3))
        staticcall ('storage', 160, 0, 3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if s <= ext_call.return_data[0]:
            _1214 = mem[64]
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = s
            _1215 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1215 + 32 len 4] = unknown_0xa9059cbb(?????)
            if not ext_code.size(('storage', 160, 0, 3)):
                revert with 0, 'SafeERC20: call to non-contract'
            _1231 = mem[_1215]
            mem[_1214 + 100 len floor32(mem[_1215])] = mem[_1215 + 32 len floor32(mem[_1215])]
            mem[_1214 + floor32(mem[_1215]) + -(mem[_1215] % 32) + 132 len mem[_1215] % 32] = mem[_1215 + -(mem[_1215] % 32) + floor32(mem[_1215]) + 64 len mem[_1215] % 32]
            call ('storage', 160, 0, 3).mem[_1214 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_1214 + 104 len _1231 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_1214 + 210 len 22]
            else:
                mem[_1214 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_1214 + 132]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_1214 + ceil32(return_data.size) + 211 len 22]
        else:
            _1217 = mem[64]
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = ext_call.return_data[0]
            _1218 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1218 + 32 len 4] = unknown_0xa9059cbb(?????)
            if not ext_code.size(('storage', 160, 0, 3)):
                revert with 0, 'SafeERC20: call to non-contract'
            _1235 = mem[_1218]
            mem[_1217 + 100 len floor32(mem[_1218])] = mem[_1218 + 32 len floor32(mem[_1218])]
            mem[_1217 + floor32(mem[_1218]) + -(mem[_1218] % 32) + 132 len mem[_1218] % 32] = mem[_1218 + -(mem[_1218] % 32) + floor32(mem[_1218]) + 64 len mem[_1218] % 32]
            call ('storage', 160, 0, 3).mem[_1217 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_1217 + 104 len _1235 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_1217 + 210 len 22]
            else:
                mem[_1217 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_1217 + 132]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_1217 + ceil32(return_data.size) + 211 len 22]
    emit 0xd44b1c45: address(arg1), s
}

function allPendingReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= ('storage', 256, 0, 12):
        revert with 0, 'dpid >= poolInfo.length'
    if block.number <= ('storage', 256, 0, ('add', 5, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[160] = 30
            mem[192] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 >= ('storage', 256, 0, 12):
                revert with 0, 'dpid >= poolInfo.length'
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            mem[224] = 0xffcd426300000000000000000000000000000000000000000000000000000000
            mem[228] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            mem[260] = this.address
            require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
            staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 128
            _183 = mem[224 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            _185 = uint32(this.address), mem[292 len 28]
            require uint32(this.address), mem[292 len 28] <= 4294967296
            require uint32(this.address), mem[292 len 28] + 32 <= return_data.size
            require return_data.size >= mem[uint32(this.address), mem[292 len 28] + 224] + uint32(this.address), mem[292 len 28] + 32 and mem[uint32(this.address), mem[292 len 28] + 224] <= 4294967296
            mem[ceil32(return_data.size) + 224] = mem[uint32(this.address), mem[292 len 28] + 224]
            _255 = mem[_185 + 224]
            mem[ceil32(return_data.size) + 256 len ceil32(mem[_185 + 224])] = mem[_185 + 256 len ceil32(mem[_185 + 224])]
            if not _255 % 32:
                if not _183:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_255 + ceil32(return_data.size) + 421 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _183 / _183 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_255 + ceil32(return_data.size) + 357 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_255 + ceil32(return_data.size) + 421 len 31]
            else:
                if not _183:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_255) + ceil32(return_data.size) + 453 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _183 / _183 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_255) + ceil32(return_data.size) + 389 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_255) + ceil32(return_data.size) + 453 len 31]
            ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_183')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_183')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 >= ('storage', 256, 0, 12):
            revert with 0, 'dpid >= poolInfo.length'
        if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        mem[224] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[228] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        mem[260] = this.address
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 128
        _203 = mem[224 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        _205 = uint32(this.address), mem[292 len 28]
        require uint32(this.address), mem[292 len 28] <= 4294967296
        require uint32(this.address), mem[292 len 28] + 32 <= return_data.size
        require return_data.size >= mem[uint32(this.address), mem[292 len 28] + 224] + uint32(this.address), mem[292 len 28] + 32 and mem[uint32(this.address), mem[292 len 28] + 224] <= 4294967296
        mem[ceil32(return_data.size) + 224] = mem[uint32(this.address), mem[292 len 28] + 224]
        _276 = mem[_205 + 224]
        mem[ceil32(return_data.size) + 256 len ceil32(mem[_205 + 224])] = mem[_205 + 256 len ceil32(mem[_205 + 224])]
        if not _276 % 32:
            if not _203:
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_276 + ceil32(return_data.size) + 421 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if 1000000 * 10^18 * _203 / _203 != 1000000 * 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_276 + ceil32(return_data.size) + 357 len 31]
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _203 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _203 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _203 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _203 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_276 + ceil32(return_data.size) + 421 len 31]
        else:
            if not _203:
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_276) + ceil32(return_data.size) + 453 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if 1000000 * 10^18 * _203 / _203 != 1000000 * 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_276) + ceil32(return_data.size) + 389 len 31]
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _203 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _203 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _203 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _203 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_276) + ceil32(return_data.size) + 453 len 31]
        ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_203')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_203')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _203 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
               ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _203 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[160] = 30
            mem[192] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 >= ('storage', 256, 0, 12):
                revert with 0, 'dpid >= poolInfo.length'
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            mem[224] = 0xffcd426300000000000000000000000000000000000000000000000000000000
            mem[228] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            mem[260] = this.address
            require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
            staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 128
            _212 = mem[224 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            _214 = uint32(this.address), mem[292 len 28]
            require uint32(this.address), mem[292 len 28] <= 4294967296
            require uint32(this.address), mem[292 len 28] + 32 <= return_data.size
            require return_data.size >= mem[uint32(this.address), mem[292 len 28] + 224] + uint32(this.address), mem[292 len 28] + 32 and mem[uint32(this.address), mem[292 len 28] + 224] <= 4294967296
            mem[ceil32(return_data.size) + 224] = mem[uint32(this.address), mem[292 len 28] + 224]
            _280 = mem[_214 + 224]
            mem[ceil32(return_data.size) + 256 len ceil32(mem[_214 + 224])] = mem[_214 + 256 len ceil32(mem[_214 + 224])]
            if not _280 % 32:
                if not _212:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_280 + ceil32(return_data.size) + 421 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _212 / _212 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_280 + ceil32(return_data.size) + 357 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _212 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _212 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _212 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _212 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_280 + ceil32(return_data.size) + 421 len 31]
            else:
                if not _212:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_280) + ceil32(return_data.size) + 453 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _212 / _212 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_280) + ceil32(return_data.size) + 389 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _212 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _212 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _212 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _212 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_280) + ceil32(return_data.size) + 453 len 31]
            ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_212')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_212')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _212 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _212 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 >= ('storage', 256, 0, 12):
            revert with 0, 'dpid >= poolInfo.length'
        if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        mem[224] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[228] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        mem[260] = this.address
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 128
        _231 = mem[224 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        _233 = uint32(this.address), mem[292 len 28]
        require uint32(this.address), mem[292 len 28] <= 4294967296
        require uint32(this.address), mem[292 len 28] + 32 <= return_data.size
        require return_data.size >= mem[uint32(this.address), mem[292 len 28] + 224] + uint32(this.address), mem[292 len 28] + 32 and mem[uint32(this.address), mem[292 len 28] + 224] <= 4294967296
        mem[ceil32(return_data.size) + 224] = mem[uint32(this.address), mem[292 len 28] + 224]
        _293 = mem[_233 + 224]
        mem[ceil32(return_data.size) + 256 len ceil32(mem[_233 + 224])] = mem[_233 + 256 len ceil32(mem[_233 + 224])]
        if not _293 % 32:
            if not _231:
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_293 + ceil32(return_data.size) + 421 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if 1000000 * 10^18 * _231 / _231 != 1000000 * 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_293 + ceil32(return_data.size) + 357 len 31]
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _231 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _231 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _231 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _231 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_293 + ceil32(return_data.size) + 421 len 31]
        else:
            if not _231:
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_293) + ceil32(return_data.size) + 453 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if 1000000 * 10^18 * _231 / _231 != 1000000 * 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_293) + ceil32(return_data.size) + 389 len 31]
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _231 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _231 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _231 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _231 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_293) + ceil32(return_data.size) + 453 len 31]
        ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_231')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_231')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _231 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
               ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _231 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    require arg1 < ('storage', 256, 0, 12)
    if block.number <= ('storage', 256, 0, ('add', 2, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: division by zero'
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 >= ('storage', 256, 0, 12):
                revert with 0, 'dpid >= poolInfo.length'
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            mem[288] = 0xffcd426300000000000000000000000000000000000000000000000000000000
            mem[292] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            mem[324] = this.address
            require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
            staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 128
            _875 = mem[288 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            _877 = uint32(this.address), mem[356 len 28]
            require uint32(this.address), mem[356 len 28] <= 4294967296
            require uint32(this.address), mem[356 len 28] + 32 <= return_data.size
            require return_data.size >= mem[uint32(this.address), mem[356 len 28] + 288] + uint32(this.address), mem[356 len 28] + 32 and mem[uint32(this.address), mem[356 len 28] + 288] <= 4294967296
            mem[ceil32(return_data.size) + 288] = mem[uint32(this.address), mem[356 len 28] + 288]
            _998 = mem[_877 + 288]
            mem[ceil32(return_data.size) + 320 len ceil32(mem[_877 + 288])] = mem[_877 + 320 len ceil32(mem[_877 + 288])]
            if not _998 % 32:
                if not _875:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_998 + ceil32(return_data.size) + 485 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _875 / _875 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_998 + ceil32(return_data.size) + 421 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _875 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _875 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _875 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _875 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_998 + ceil32(return_data.size) + 485 len 31]
            else:
                if not _875:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_998) + ceil32(return_data.size) + 517 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _875 / _875 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_998) + ceil32(return_data.size) + 453 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _875 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _875 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _875 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _875 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_998) + ceil32(return_data.size) + 517 len 31]
            ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_875')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_875')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _875 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _875 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 >= ('storage', 256, 0, 12):
            revert with 0, 'dpid >= poolInfo.length'
        if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        mem[288] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[292] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        mem[324] = this.address
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 128
        _914 = mem[288 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        _916 = uint32(this.address), mem[356 len 28]
        require uint32(this.address), mem[356 len 28] <= 4294967296
        require uint32(this.address), mem[356 len 28] + 32 <= return_data.size
        require return_data.size >= mem[uint32(this.address), mem[356 len 28] + 288] + uint32(this.address), mem[356 len 28] + 32 and mem[uint32(this.address), mem[356 len 28] + 288] <= 4294967296
        mem[ceil32(return_data.size) + 288] = mem[uint32(this.address), mem[356 len 28] + 288]
        _1036 = mem[_916 + 288]
        mem[ceil32(return_data.size) + 320 len ceil32(mem[_916 + 288])] = mem[_916 + 320 len ceil32(mem[_916 + 288])]
        if not _1036 % 32:
            if not _914:
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1036 + ceil32(return_data.size) + 485 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if 1000000 * 10^18 * _914 / _914 != 1000000 * 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_1036 + ceil32(return_data.size) + 421 len 31]
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _914 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _914 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _914 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _914 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_1036 + ceil32(return_data.size) + 485 len 31]
        else:
            if not _914:
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1036) + ceil32(return_data.size) + 517 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if 1000000 * 10^18 * _914 / _914 != 1000000 * 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_1036) + ceil32(return_data.size) + 453 len 31]
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _914 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _914 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _914 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _914 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_1036) + ceil32(return_data.size) + 517 len 31]
        ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_914')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_914')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _914 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
               ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _914 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) >= ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: division by zero'
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 >= ('storage', 256, 0, 12):
                revert with 0, 'dpid >= poolInfo.length'
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            mem[288] = 0xffcd426300000000000000000000000000000000000000000000000000000000
            mem[292] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            mem[324] = this.address
            require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
            staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 128
            _910 = mem[288 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            _912 = uint32(this.address), mem[356 len 28]
            require uint32(this.address), mem[356 len 28] <= 4294967296
            require uint32(this.address), mem[356 len 28] + 32 <= return_data.size
            require return_data.size >= mem[uint32(this.address), mem[356 len 28] + 288] + uint32(this.address), mem[356 len 28] + 32 and mem[uint32(this.address), mem[356 len 28] + 288] <= 4294967296
            mem[ceil32(return_data.size) + 288] = mem[uint32(this.address), mem[356 len 28] + 288]
            _1034 = mem[_912 + 288]
            mem[ceil32(return_data.size) + 320 len ceil32(mem[_912 + 288])] = mem[_912 + 320 len ceil32(mem[_912 + 288])]
            if not _1034 % 32:
                if not _910:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_1034 + ceil32(return_data.size) + 485 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _910 / _910 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1034 + ceil32(return_data.size) + 421 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _910 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _910 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _910 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _910 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1034 + ceil32(return_data.size) + 485 len 31]
            else:
                if not _910:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_1034) + ceil32(return_data.size) + 517 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _910 / _910 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1034) + ceil32(return_data.size) + 453 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _910 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _910 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _910 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _910 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1034) + ceil32(return_data.size) + 517 len 31]
            ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_910')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_910')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _910 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _910 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 >= ('storage', 256, 0, 12):
            revert with 0, 'dpid >= poolInfo.length'
        if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        mem[288] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[292] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        mem[324] = this.address
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 128
        _950 = mem[288 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        _952 = uint32(this.address), mem[356 len 28]
        require uint32(this.address), mem[356 len 28] <= 4294967296
        require uint32(this.address), mem[356 len 28] + 32 <= return_data.size
        require return_data.size >= mem[uint32(this.address), mem[356 len 28] + 288] + uint32(this.address), mem[356 len 28] + 32 and mem[uint32(this.address), mem[356 len 28] + 288] <= 4294967296
        mem[ceil32(return_data.size) + 288] = mem[uint32(this.address), mem[356 len 28] + 288]
        _1070 = mem[_952 + 288]
        mem[ceil32(return_data.size) + 320 len ceil32(mem[_952 + 288])] = mem[_952 + 320 len ceil32(mem[_952 + 288])]
        if not _1070 % 32:
            if not _950:
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1070 + ceil32(return_data.size) + 485 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if 1000000 * 10^18 * _950 / _950 != 1000000 * 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_1070 + ceil32(return_data.size) + 421 len 31]
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _950 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _950 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _950 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _950 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_1070 + ceil32(return_data.size) + 485 len 31]
        else:
            if not _950:
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1070) + ceil32(return_data.size) + 517 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if 1000000 * 10^18 * _950 / _950 != 1000000 * 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_1070) + ceil32(return_data.size) + 453 len 31]
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _950 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _950 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _950 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _950 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_1070) + ceil32(return_data.size) + 517 len 31]
        ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_950')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_950')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _950 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
               ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _950 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if block.number < ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 'SafeMath: division by zero'
            if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 >= ('storage', 256, 0, 12):
                    revert with 0, 'dpid >= poolInfo.length'
                if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           0
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           0
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           0
                if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                mem[352] = 0xffcd426300000000000000000000000000000000000000000000000000000000
                mem[356] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
                mem[388] = this.address
                require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
                staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 352
                require return_data.size >= 128
                _1087 = mem[352 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
                _1089 = uint32(this.address), mem[420 len 28]
                require uint32(this.address), mem[420 len 28] <= 4294967296
                require uint32(this.address), mem[420 len 28] + 32 <= return_data.size
                require return_data.size >= mem[uint32(this.address), mem[420 len 28] + 352] + uint32(this.address), mem[420 len 28] + 32 and mem[uint32(this.address), mem[420 len 28] + 352] <= 4294967296
                mem[ceil32(return_data.size) + 352] = mem[uint32(this.address), mem[420 len 28] + 352]
                _1217 = mem[_1089 + 352]
                mem[ceil32(return_data.size) + 384 len ceil32(mem[_1089 + 352])] = mem[_1089 + 384 len ceil32(mem[_1089 + 352])]
                if not _1217 % 32:
                    if not _1087:
                        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                            revert with 0, 'SafeMath: division by zero'
                        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                            revert with 0, 'SafeMath: addition overflow'
                        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                                   -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                        if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[_1217 + ceil32(return_data.size) + 549 len 31]
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if 1000000 * 10^18 * _1087 / _1087 != 1000000 * 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_1217 + ceil32(return_data.size) + 485 len 31]
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1087 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1087 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1087 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1087 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_1217 + ceil32(return_data.size) + 549 len 31]
                else:
                    if not _1087:
                        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                            revert with 0, 'SafeMath: division by zero'
                        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                            revert with 0, 'SafeMath: addition overflow'
                        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                                   -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                        if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[floor32(_1217) + ceil32(return_data.size) + 581 len 31]
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if 1000000 * 10^18 * _1087 / _1087 != 1000000 * 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_1217) + ceil32(return_data.size) + 517 len 31]
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1087 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1087 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1087 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1087 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_1217) + ceil32(return_data.size) + 581 len 31]
                ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_1087')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_1087')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1087 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1087 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 >= ('storage', 256, 0, 12):
                revert with 0, 'dpid >= poolInfo.length'
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            mem[352] = 0xffcd426300000000000000000000000000000000000000000000000000000000
            mem[356] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            mem[388] = this.address
            require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
            staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 352
            require return_data.size >= 128
            _1122 = mem[352 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            _1124 = uint32(this.address), mem[420 len 28]
            require uint32(this.address), mem[420 len 28] <= 4294967296
            require uint32(this.address), mem[420 len 28] + 32 <= return_data.size
            require return_data.size >= mem[uint32(this.address), mem[420 len 28] + 352] + uint32(this.address), mem[420 len 28] + 32 and mem[uint32(this.address), mem[420 len 28] + 352] <= 4294967296
            mem[ceil32(return_data.size) + 352] = mem[uint32(this.address), mem[420 len 28] + 352]
            _1272 = mem[_1124 + 352]
            mem[ceil32(return_data.size) + 384 len ceil32(mem[_1124 + 352])] = mem[_1124 + 384 len ceil32(mem[_1124 + 352])]
            if not _1272 % 32:
                if not _1122:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_1272 + ceil32(return_data.size) + 549 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _1122 / _1122 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1272 + ceil32(return_data.size) + 485 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1122 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1122 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1122 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1122 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1272 + ceil32(return_data.size) + 549 len 31]
            else:
                if not _1122:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_1272) + ceil32(return_data.size) + 581 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _1122 / _1122 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1272) + ceil32(return_data.size) + 517 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1122 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1122 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1122 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1122 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1272) + ceil32(return_data.size) + 581 len 31]
            ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_1122')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_1122')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1122 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1122 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if (block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / block.number - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) != ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))):
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 'SafeMath: division by zero'
            if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 >= ('storage', 256, 0, 12):
                    revert with 0, 'dpid >= poolInfo.length'
                if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           0
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           0
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           0
                if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                mem[352] = 0xffcd426300000000000000000000000000000000000000000000000000000000
                mem[356] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
                mem[388] = this.address
                require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
                staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 352
                require return_data.size >= 128
                _1118 = mem[352 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
                _1120 = uint32(this.address), mem[420 len 28]
                require uint32(this.address), mem[420 len 28] <= 4294967296
                require uint32(this.address), mem[420 len 28] + 32 <= return_data.size
                require return_data.size >= mem[uint32(this.address), mem[420 len 28] + 352] + uint32(this.address), mem[420 len 28] + 32 and mem[uint32(this.address), mem[420 len 28] + 352] <= 4294967296
                mem[ceil32(return_data.size) + 352] = mem[uint32(this.address), mem[420 len 28] + 352]
                _1270 = mem[_1120 + 352]
                mem[ceil32(return_data.size) + 384 len ceil32(mem[_1120 + 352])] = mem[_1120 + 384 len ceil32(mem[_1120 + 352])]
                if not _1270 % 32:
                    if not _1118:
                        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                            revert with 0, 'SafeMath: division by zero'
                        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                            revert with 0, 'SafeMath: addition overflow'
                        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                                   -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                        if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[_1270 + ceil32(return_data.size) + 549 len 31]
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if 1000000 * 10^18 * _1118 / _1118 != 1000000 * 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_1270 + ceil32(return_data.size) + 485 len 31]
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1118 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1118 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1118 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1118 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_1270 + ceil32(return_data.size) + 549 len 31]
                else:
                    if not _1118:
                        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                            revert with 0, 'SafeMath: division by zero'
                        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                            revert with 0, 'SafeMath: addition overflow'
                        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                                   -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                        if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[floor32(_1270) + ceil32(return_data.size) + 581 len 31]
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if 1000000 * 10^18 * _1118 / _1118 != 1000000 * 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_1270) + ceil32(return_data.size) + 517 len 31]
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1118 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1118 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1118 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1118 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_1270) + ceil32(return_data.size) + 581 len 31]
                ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_1118')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_1118')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1118 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1118 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 >= ('storage', 256, 0, 12):
                revert with 0, 'dpid >= poolInfo.length'
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            mem[352] = 0xffcd426300000000000000000000000000000000000000000000000000000000
            mem[356] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            mem[388] = this.address
            require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
            staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 352
            require return_data.size >= 128
            _1161 = mem[352 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            _1163 = uint32(this.address), mem[420 len 28]
            require uint32(this.address), mem[420 len 28] <= 4294967296
            require uint32(this.address), mem[420 len 28] + 32 <= return_data.size
            require return_data.size >= mem[uint32(this.address), mem[420 len 28] + 352] + uint32(this.address), mem[420 len 28] + 32 and mem[uint32(this.address), mem[420 len 28] + 352] <= 4294967296
            mem[ceil32(return_data.size) + 352] = mem[uint32(this.address), mem[420 len 28] + 352]
            _1336 = mem[_1163 + 352]
            mem[ceil32(return_data.size) + 384 len ceil32(mem[_1163 + 352])] = mem[_1163 + 384 len ceil32(mem[_1163 + 352])]
            if not _1336 % 32:
                if not _1161:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_1336 + ceil32(return_data.size) + 549 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _1161 / _1161 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1336 + ceil32(return_data.size) + 485 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1161 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1161 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1161 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1161 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1336 + ceil32(return_data.size) + 549 len 31]
            else:
                if not _1161:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_1336) + ceil32(return_data.size) + 581 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _1161 / _1161 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1336) + ceil32(return_data.size) + 517 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1161 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1161 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1161 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1161 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1336) + ceil32(return_data.size) + 581 len 31]
            ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_1161')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_1161')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1161 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1161 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if (1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / (block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) != 1000000 * 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: division by zero'
        if ((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 >= ('storage', 256, 0, 12):
                revert with 0, 'dpid >= poolInfo.length'
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            mem[352] = 0xffcd426300000000000000000000000000000000000000000000000000000000
            mem[356] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            mem[388] = this.address
            require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
            staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 352
            require return_data.size >= 128
            _1157 = mem[352 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            _1159 = uint32(this.address), mem[420 len 28]
            require uint32(this.address), mem[420 len 28] <= 4294967296
            require uint32(this.address), mem[420 len 28] + 32 <= return_data.size
            require return_data.size >= mem[uint32(this.address), mem[420 len 28] + 352] + uint32(this.address), mem[420 len 28] + 32 and mem[uint32(this.address), mem[420 len 28] + 352] <= 4294967296
            mem[ceil32(return_data.size) + 352] = mem[uint32(this.address), mem[420 len 28] + 352]
            _1334 = mem[_1159 + 352]
            mem[ceil32(return_data.size) + 384 len ceil32(mem[_1159 + 352])] = mem[_1159 + 384 len ceil32(mem[_1159 + 352])]
            if not _1334 % 32:
                if not _1157:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_1334 + ceil32(return_data.size) + 549 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _1157 / _1157 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1334 + ceil32(return_data.size) + 485 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1157 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1157 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1157 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1157 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1334 + ceil32(return_data.size) + 549 len 31]
            else:
                if not _1157:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_1334) + ceil32(return_data.size) + 581 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _1157 / _1157 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1334) + ceil32(return_data.size) + 517 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1157 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1157 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1157 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1157 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1334) + ceil32(return_data.size) + 581 len 31]
            ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_1157')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_1157')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1157 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1157 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if ((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 >= ('storage', 256, 0, 12):
            revert with 0, 'dpid >= poolInfo.length'
        if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        mem[352] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[356] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        mem[388] = this.address
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 352
        require return_data.size >= 128
        _1204 = mem[352 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        _1206 = uint32(this.address), mem[420 len 28]
        require uint32(this.address), mem[420 len 28] <= 4294967296
        require uint32(this.address), mem[420 len 28] + 32 <= return_data.size
        require return_data.size >= mem[uint32(this.address), mem[420 len 28] + 352] + uint32(this.address), mem[420 len 28] + 32 and mem[uint32(this.address), mem[420 len 28] + 352] <= 4294967296
        mem[ceil32(return_data.size) + 352] = mem[uint32(this.address), mem[420 len 28] + 352]
        _1404 = mem[_1206 + 352]
        mem[ceil32(return_data.size) + 384 len ceil32(mem[_1206 + 352])] = mem[_1206 + 384 len ceil32(mem[_1206 + 352])]
        if not _1404 % 32:
            if not _1204:
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           (((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1404 + ceil32(return_data.size) + 549 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if 1000000 * 10^18 * _1204 / _1204 != 1000000 * 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_1404 + ceil32(return_data.size) + 485 len 31]
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1204 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1204 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1204 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1204 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_1404 + ceil32(return_data.size) + 549 len 31]
        else:
            if not _1204:
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           (((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1404) + ceil32(return_data.size) + 581 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if 1000000 * 10^18 * _1204 / _1204 != 1000000 * 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_1404) + ceil32(return_data.size) + 517 len 31]
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1204 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1204 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1204 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1204 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_1404) + ceil32(return_data.size) + 581 len 31]
        ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_1204')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_1204')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1204 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               (((1000000 * 10^18 * block.number * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
               ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1204 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    if ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) > ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        revert with 0, 'SafeMath: subtraction overflow'
    if not ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: division by zero'
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 >= ('storage', 256, 0, 12):
                revert with 0, 'dpid >= poolInfo.length'
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            mem[352] = 0xffcd426300000000000000000000000000000000000000000000000000000000
            mem[356] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            mem[388] = this.address
            require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
            staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 352
            require return_data.size >= 128
            _1142 = mem[352 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            _1144 = uint32(this.address), mem[420 len 28]
            require uint32(this.address), mem[420 len 28] <= 4294967296
            require uint32(this.address), mem[420 len 28] + 32 <= return_data.size
            require return_data.size >= mem[uint32(this.address), mem[420 len 28] + 352] + uint32(this.address), mem[420 len 28] + 32 and mem[uint32(this.address), mem[420 len 28] + 352] <= 4294967296
            mem[ceil32(return_data.size) + 352] = mem[uint32(this.address), mem[420 len 28] + 352]
            _1286 = mem[_1144 + 352]
            mem[ceil32(return_data.size) + 384 len ceil32(mem[_1144 + 352])] = mem[_1144 + 384 len ceil32(mem[_1144 + 352])]
            if not _1286 % 32:
                if not _1142:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_1286 + ceil32(return_data.size) + 549 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _1142 / _1142 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1286 + ceil32(return_data.size) + 485 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1142 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1142 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1142 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1142 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1286 + ceil32(return_data.size) + 549 len 31]
            else:
                if not _1142:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_1286) + ceil32(return_data.size) + 581 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _1142 / _1142 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1286) + ceil32(return_data.size) + 517 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1142 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1142 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1142 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1142 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1286) + ceil32(return_data.size) + 581 len 31]
            ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_1142')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_1142')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1142 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1142 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 >= ('storage', 256, 0, 12):
            revert with 0, 'dpid >= poolInfo.length'
        if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        mem[352] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[356] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        mem[388] = this.address
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 352
        require return_data.size >= 128
        _1183 = mem[352 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        _1185 = uint32(this.address), mem[420 len 28]
        require uint32(this.address), mem[420 len 28] <= 4294967296
        require uint32(this.address), mem[420 len 28] + 32 <= return_data.size
        require return_data.size >= mem[uint32(this.address), mem[420 len 28] + 352] + uint32(this.address), mem[420 len 28] + 32 and mem[uint32(this.address), mem[420 len 28] + 352] <= 4294967296
        mem[ceil32(return_data.size) + 352] = mem[uint32(this.address), mem[420 len 28] + 352]
        _1347 = mem[_1185 + 352]
        mem[ceil32(return_data.size) + 384 len ceil32(mem[_1185 + 352])] = mem[_1185 + 384 len ceil32(mem[_1185 + 352])]
        if not _1347 % 32:
            if not _1183:
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1347 + ceil32(return_data.size) + 549 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if 1000000 * 10^18 * _1183 / _1183 != 1000000 * 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_1347 + ceil32(return_data.size) + 485 len 31]
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_1347 + ceil32(return_data.size) + 549 len 31]
        else:
            if not _1183:
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1347) + ceil32(return_data.size) + 581 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if 1000000 * 10^18 * _1183 / _1183 != 1000000 * 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_1347) + ceil32(return_data.size) + 517 len 31]
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_1347) + ceil32(return_data.size) + 581 len 31]
        ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_1183')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_1183')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
               ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1183 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    if (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) - ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) != ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))):
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: division by zero'
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 >= ('storage', 256, 0, 12):
                revert with 0, 'dpid >= poolInfo.length'
            if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       0
            if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            mem[352] = 0xffcd426300000000000000000000000000000000000000000000000000000000
            mem[356] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            mem[388] = this.address
            require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
            staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 352
            require return_data.size >= 128
            _1179 = mem[352 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
            _1181 = uint32(this.address), mem[420 len 28]
            require uint32(this.address), mem[420 len 28] <= 4294967296
            require uint32(this.address), mem[420 len 28] + 32 <= return_data.size
            require return_data.size >= mem[uint32(this.address), mem[420 len 28] + 352] + uint32(this.address), mem[420 len 28] + 32 and mem[uint32(this.address), mem[420 len 28] + 352] <= 4294967296
            mem[ceil32(return_data.size) + 352] = mem[uint32(this.address), mem[420 len 28] + 352]
            _1345 = mem[_1181 + 352]
            mem[ceil32(return_data.size) + 384 len ceil32(mem[_1181 + 352])] = mem[_1181 + 384 len ceil32(mem[_1181 + 352])]
            if not _1345 % 32:
                if not _1179:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_1345 + ceil32(return_data.size) + 549 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _1179 / _1179 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1345 + ceil32(return_data.size) + 485 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1179 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1179 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1179 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1179 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1345 + ceil32(return_data.size) + 549 len 31]
            else:
                if not _1179:
                    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                        revert with 0, 'SafeMath: addition overflow'
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                               -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                    if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_1345) + ceil32(return_data.size) + 581 len 31]
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if 1000000 * 10^18 * _1179 / _1179 != 1000000 * 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1345) + ceil32(return_data.size) + 517 len 31]
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1179 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1179 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1179 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1179 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1345) + ceil32(return_data.size) + 581 len 31]
            ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_1179')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_1179')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1179 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1179 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 >= ('storage', 256, 0, 12):
            revert with 0, 'dpid >= poolInfo.length'
        if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        mem[352] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[356] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        mem[388] = this.address
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 352
        require return_data.size >= 128
        _1225 = mem[352 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        _1227 = uint32(this.address), mem[420 len 28]
        require uint32(this.address), mem[420 len 28] <= 4294967296
        require uint32(this.address), mem[420 len 28] + 32 <= return_data.size
        require return_data.size >= mem[uint32(this.address), mem[420 len 28] + 352] + uint32(this.address), mem[420 len 28] + 32 and mem[uint32(this.address), mem[420 len 28] + 352] <= 4294967296
        mem[ceil32(return_data.size) + 352] = mem[uint32(this.address), mem[420 len 28] + 352]
        _1413 = mem[_1227 + 352]
        mem[ceil32(return_data.size) + 384 len ceil32(mem[_1227 + 352])] = mem[_1227 + 384 len ceil32(mem[_1227 + 352])]
        if not _1413 % 32:
            if not _1225:
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1413 + ceil32(return_data.size) + 549 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if 1000000 * 10^18 * _1225 / _1225 != 1000000 * 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_1413 + ceil32(return_data.size) + 485 len 31]
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1225 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1225 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1225 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1225 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_1413 + ceil32(return_data.size) + 549 len 31]
        else:
            if not _1225:
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1413) + ceil32(return_data.size) + 581 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if 1000000 * 10^18 * _1225 / _1225 != 1000000 * 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_1413) + ceil32(return_data.size) + 517 len 31]
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1225 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1225 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1225 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1225 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_1413) + ceil32(return_data.size) + 581 len 31]
        ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_1225')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_1225')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1225 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               ((0 / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
               ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1225 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    if (1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / (('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) != 1000000 * 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    mem[160] = 26
    mem[192] = 'SafeMath: division by zero'
    if not ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
        revert with 0, 'SafeMath: division by zero'
    if ((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) < ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
        revert with 0, 'SafeMath: addition overflow'
    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 >= ('storage', 256, 0, 12):
            revert with 0, 'dpid >= poolInfo.length'
        if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   0
        if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        mem[352] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[356] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        mem[388] = this.address
        require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
        staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 352
        require return_data.size >= 128
        _1221 = mem[352 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
        _1223 = uint32(this.address), mem[420 len 28]
        require uint32(this.address), mem[420 len 28] <= 4294967296
        require uint32(this.address), mem[420 len 28] + 32 <= return_data.size
        require return_data.size >= mem[uint32(this.address), mem[420 len 28] + 352] + uint32(this.address), mem[420 len 28] + 32 and mem[uint32(this.address), mem[420 len 28] + 352] <= 4294967296
        mem[ceil32(return_data.size) + 352] = mem[uint32(this.address), mem[420 len 28] + 352]
        _1411 = mem[_1223 + 352]
        mem[ceil32(return_data.size) + 384 len ceil32(mem[_1223 + 352])] = mem[_1223 + 384 len ceil32(mem[_1223 + 352])]
        if not _1411 % 32:
            if not _1221:
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_1411 + ceil32(return_data.size) + 549 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if 1000000 * 10^18 * _1221 / _1221 != 1000000 * 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_1411 + ceil32(return_data.size) + 485 len 31]
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1221 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1221 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1221 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1221 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_1411 + ceil32(return_data.size) + 549 len 31]
        else:
            if not _1221:
                if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                    revert with 0, 'SafeMath: addition overflow'
                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                           -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                           -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
                if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_1411) + ceil32(return_data.size) + 581 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if 1000000 * 10^18 * _1221 / _1221 != 1000000 * 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_1411) + ceil32(return_data.size) + 517 len 31]
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1221 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1221 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1221 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1221 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_1411) + ceil32(return_data.size) + 581 len 31]
        ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_1221')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_1221')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1221 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               -('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
               ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1221 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    if ((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) + ('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    mem[224] = 26
    mem[256] = 'SafeMath: division by zero'
    mem[288] = 30
    mem[320] = 'SafeMath: subtraction overflow'
    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg1 >= ('storage', 256, 0, 12):
        revert with 0, 'dpid >= poolInfo.length'
    if not ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               (((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
               0
    if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               (((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
               0
    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               (((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
               0
    if not ('storage', 8, 160, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
               (((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
               (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
    mem[352] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[356] = ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
    mem[388] = this.address
    require ext_code.size(('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))
    staticcall ('storage', 160, 0, ('add', 10, ('mul', 15, ('param', 'arg1')), ('sha3', 12))).pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args ('storage', 256, 0, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 352
    require return_data.size >= 128
    _1273 = mem[352 len 4], ('storage', 224, 32, ('add', 11, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))
    _1275 = uint32(this.address), mem[420 len 28]
    require uint32(this.address), mem[420 len 28] <= 4294967296
    require uint32(this.address), mem[420 len 28] + 32 <= return_data.size
    require return_data.size >= mem[uint32(this.address), mem[420 len 28] + 352] + uint32(this.address), mem[420 len 28] + 32 and mem[uint32(this.address), mem[420 len 28] + 352] <= 4294967296
    mem[ceil32(return_data.size) + 352] = mem[uint32(this.address), mem[420 len 28] + 352]
    _1476 = mem[_1275 + 352]
    mem[ceil32(return_data.size) + 384 len ceil32(mem[_1275 + 352])] = mem[_1275 + 384 len ceil32(mem[_1275 + 352])]
    if not _1476 % 32:
        if not _1273:
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_1476 + ceil32(return_data.size) + 549 len 31]
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if 1000000 * 10^18 * _1273 / _1273 != 1000000 * 10^18:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[_1476 + ceil32(return_data.size) + 485 len 31]
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1273 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1273 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1273 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1273 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[_1476 + ceil32(return_data.size) + 549 len 31]
    else:
        if not _1273:
            if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
                revert with 0, 'SafeMath: addition overflow'
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                       (((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                       -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
            if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_1476) + ceil32(return_data.size) + 581 len 31]
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (0 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if 1000000 * 10^18 * _1273 / _1273 != 1000000 * 10^18:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[floor32(_1476) + ceil32(return_data.size) + 517 len 31]
        if not ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            revert with 0, 'SafeMath: division by zero'
        if ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1273 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))) < 1000000 * 10^18 * _1273 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))):
            revert with 0, 'SafeMath: addition overflow'
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))):
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
                   (((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
                   -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
        if (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1273 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))) != ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) + (1000000 * 10^18 * _1273 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))):
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[floor32(_1476) + ceil32(return_data.size) + 581 len 31]
    ('eq', ('div', ('add', ('mul', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('mul', ('div', ('mul', 1000000000000000000000000, ('var', '_1273')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12)))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))), ('add', ('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))), ('div', ('mul', 1000000000000000000000000, ('var', '_1273')), ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))))))
    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) > (('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1273 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))), 
           (((1000000 * 10^18 * ('storage', 256, 0, ('add', 4, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) - (1000000 * 10^18 * ('storage', 256, 0, ('add', 5, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('add', 7, ('sha3', 12), ('mul', 15, ('param', 'arg1'))))) / ('storage', 256, 0, ('add', 1, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (('storage', 256, 0, ('add', 6, ('sha3', 12), ('mul', 15, ('param', 'arg1')))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))),
           ((('storage', 256, 0, ('add', 12, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) + (1000000 * 10^18 * _1273 / ('storage', 256, 0, ('add', 1, ('mul', 15, ('param', 'arg1')), ('sha3', 12))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11)))))) / 1000000 * 10^18) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 11))))))
}



}
